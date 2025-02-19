import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:prueba/main.dart';
import 'package:prueba/pages/for_you/for_you_page.dart';
import 'package:prueba/pages/home/cubit/counter_cubit.dart';
import 'package:prueba/pages/home/home_page.dart';
import 'package:prueba/pages/main/main_page.dart';
import 'package:prueba/pages/move_money/move_money_page.dart';

import '../pages/cards/cards_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/splash/splash_page.dart';
import '../di/di.dart';
import 'routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
mixin RouterMixin on State<MyApp> {
  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: Routes.splash.path,
      routes: <RouteBase>[
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          name: Routes.splash.name,
          path: Routes.splash.path,
          builder: (_, __) {
            return const SplashPage();
          },
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          name: Routes.profile.name,
          path: Routes.profile.path,
          builder: (_, __) {
            return const ProfilePage();
          },
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          name: Routes.notification.name,
          path: Routes.notification.path,
          pageBuilder: (_, __) {
            return BottomSheetPage(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.vertical(
                        top:  Radius.circular(20))),
                width: double.infinity,
                height: double.infinity,
                child: const Column(
                  children: [
                    Text('data'),
                  ],
                ),
              ),
            );
          },
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => MainPage(
            navigationShell: navigationShell,
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.home.name,
                  path: Routes.home.path,
                  pageBuilder: (context, state) => NoTransitionPage(
                    child: BlocProvider<CounterCubit>(
                      create: (context) => locator<CounterCubit>(),
                      child: const HomePage(),
                    ),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.moveMoney.name,
                  path: Routes.moveMoney.path,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: MoveMoneyPage(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.cards.name,
                  path: Routes.cards.path,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: CardsPage(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.forYou.name,
                  path: Routes.forYou.path,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: ForYouPage(),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
    return _router!;
  }
}

class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage({
    required this.child,
    this.showDragHandle = false,
    this.useSafeArea = true,
    super.key,
  });
  final Widget child;
  final bool showDragHandle;
  final bool useSafeArea;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
      settings: this,
      isScrollControlled: true,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      constraints:
          BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * .8),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return (ModalRoute.of(context)?.settings as BottomSheetPage<T>).child;
      });
}
