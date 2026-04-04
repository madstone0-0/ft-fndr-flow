import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ft_fndr_app/providers/auth_notifier.dart';
import 'package:ft_fndr_app/services/ApiService.dart';
import 'package:ft_fndr_app/services/auth_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupLocatorService() async {
  // Register secure storage
  getIt.registerSingleton<FlutterSecureStorage>(
    const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    ),
  );

  // Register Dio with interceptor
  final dio = Dio();
  dio.interceptors.add(AuthInterceptor(getIt<FlutterSecureStorage>()));
  getIt.registerSingleton<Dio>(dio);

  // Register API service
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  // Register Auth service
  getIt.registerLazySingleton<AuthService>(
    () => AuthService(getIt<ApiService>(), getIt<FlutterSecureStorage>()),
  );

  // Register Auth notifier
  getIt.registerSingleton<AuthNotifier>(AuthNotifier(getIt<AuthService>()));
}

// Dio interceptor to add auth token to requests
class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _secureStorage;

  AuthInterceptor(this._secureStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Skip adding token for auth endpoints
    if (options.path.contains('/auth/login') || options.path.contains('/auth/signup')) {
      return handler.next(options);
    }

    // Add token to headers
    final token = await _secureStorage.read(key: 'auth_token');
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized - token expired or invalid
    if (err.response?.statusCode == 401) {
      // Clear token from storage
      await _secureStorage.delete(key: 'auth_token');
    }

    handler.next(err);
  }
}

