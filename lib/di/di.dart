import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:prueba/di/authentication_injection.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  unawaited(authenticationInjection());
}
