import 'package:grab_assignment/presentation/screens/dashboard.dart';
// import 'package:grab_assignment/presentation/screens/library/screens.dart';
import 'package:flutter/material.dart';
import '../presentation/screens/screens.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Dashboard.routeName:
        return Dashboard.route();
      // case MessagingScreen.routeName:
      //   return MessagingScreen.route();
      // case ExercisesScreen.routeName:
      //   return ExercisesScreen.route();
      // case UsersScreen.routeName:
      //   return UsersScreen.route();
      // case LibraryScreen.routeName:
      //   return LibraryScreen.route();
      // case CreateProgramScreen.routeName:
      //   return CreateProgramScreen.route();
      default:
        return Dashboard.route();
    }
  }
}
