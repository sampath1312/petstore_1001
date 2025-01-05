import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petstore_sampathk_1001/features/cart/devices_iot.dart';
import 'package:petstore_sampathk_1001/features/login_screen/view/login_screen.dart';
import 'package:petstore_sampathk_1001/features/slpash/view/splash_scren.dart';
import 'package:petstore_sampathk_1001/routes/routes_constants.dart';

class AppRouter {

static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

static final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
      initialLocation: RoutesConstants.deviceScreen,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesConstants.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScren();
      },
    ),
    GoRoute(
      path: RoutesConstants.loginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.deviceScreen,
      builder: (BuildContext context, GoRouterState state) {
        return  DevicesScreen();
      },
    ),
    // GoRoute(
    //   path: RoutesConstants.homeScreen,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const HomeScreen();
    //   },
    // ),
  ],
    // GoRoute(
    //   path: RoutesConstants.carDetailsScreen,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const CarDetailsScreen();
    //   },
    // ),
    // GoRoute(
    //     path: RoutesConstants.bookingScreen,
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const BookingScreen();
    //     }),
    // GoRoute(
    //     path: RoutesConstants.favoriteScreen,
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const FavouritesScreen();
    //     }),
  //   GoRoute(
  //       path: RoutesConstants.addCar,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const AddCarScreen();
  //       }),
  //   GoRoute(
  //       path: RoutesConstants.profileScreen,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const ProfileScreen();
  //       })
  // ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  }
);
}
