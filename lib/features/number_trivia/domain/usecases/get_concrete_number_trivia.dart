import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

import '../repositories/number_trivia_repositories.dart';

import 'package:meta/meta.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  // api.com/42
  //api.com/random

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;
  Params({@required this.number}) : super([number]);
}
