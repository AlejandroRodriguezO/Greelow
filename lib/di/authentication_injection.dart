import 'package:prueba/di/di.dart';
import 'package:prueba/pages/home/cubit/counter_cubit.dart';

Future<void> authenticationInjection() async {
  locator.registerFactory(() => CounterCubit());
}
