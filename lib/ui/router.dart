import 'package:bingo_collection/ui/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/list/:userId',
      builder: (context, state) {
        final userId = state.pathParameters['userId'];
        return HomeScreen(userId: userId);
      },
    ),
    GoRoute(
      path: '/list/:userId/:bingoId',
      builder: (context, state) {
        final userId = state.pathParameters['userId'];
        final bingoId = state.pathParameters['bingoId'];
        return HomeScreen(
          userId: userId,
          bingoId: bingoId,
        );
      },
    ),
  ],
);
