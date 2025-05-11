import 'package:blog_app/core/error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<User> sinUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<String> sinInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final SupabaseClient client;
  //  = SupabaseClient(
  //   AppSecrets.supabaseUrl,
  //   AppSecrets.supabaseAnonKey,
  // );

  AuthRemoteDataSourceImpl(this.client);
  @override
  Future<String> sinInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement sinInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<User> sinUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await client.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );
      if (response.user == null) {
        throw const ServerException("User Is null");
      }
      return response.user!;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
