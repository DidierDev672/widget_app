import 'package:go_router/go_router.dart';
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
  ],
);
