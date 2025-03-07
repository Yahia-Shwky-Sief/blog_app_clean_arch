import 'package:blog_app_clean_arch/core/common/entities/user.dart';
import 'package:blog_app_clean_arch/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> currentUser();
}