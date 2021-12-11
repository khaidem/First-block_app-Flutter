part of 'cake_cubit.dart';

class CakeState extends Equatable {
  const CakeState({required this.cake});

  final int cake;

  @override
  List<Object> get props => [cake];
}
