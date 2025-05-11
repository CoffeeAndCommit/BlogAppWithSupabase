import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, String>> signInWithEmailAndPassword({
    required String email,
    required String password,

  });
}
