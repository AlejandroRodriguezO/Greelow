part of 'counter_cubit.dart';

@immutable
class CounterState extends Equatable {
  const CounterState({this.value = 0});
  final int value;

  @override
  List<Object?> get props => [value];

  CounterState copyWith({
    int? value,
  }) {
    return CounterState(
      value: value ?? this.value,
    );
  }
}
