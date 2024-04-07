import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widget_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreens.name,
      builder: (context, state) => const ButtonScreens(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreens.name,
      builder: (context, state) => const CardsScreens(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControlScreen.name,
      builder: (context, state) => const UiControlScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScroll.name,
      builder: (context, state) => const InfiniteScroll(),
    ),
  ],
);
