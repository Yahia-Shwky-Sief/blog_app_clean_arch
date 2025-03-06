import 'package:blog_app_clean_arch/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<Failure,Type>> call(Params params);
  
}