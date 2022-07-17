// import 'package:adonis_web_test/presentation/screens/dashboard/dashboard_controller.dart';
// import 'package:adonis_web_test/presentation/widgets/navigation_bar/navigation_bar.dart';
// import 'package:adonis_web_test/states/users/selected_client_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerWidget {
  static const routeName = "/dash";

  static Route route() => PageRouteBuilder(
        settings: const RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => Dashboard(),
        transitionDuration: const Duration(seconds: 0),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Row(
        // children: [
        //   // NavigationBar(),
        //   Expanded(
        //     child: Centre(
        //       child: Text("test"),
        //       // onPressed: () {
        //       //   final selectedClient = context.read(selectedClientStateProvider);
        //       //   print(selectedClient);
        //       // },
        //     ),
        //   )
        // ],
        children: <Widget> [
          const Text("Dashboard test"),
        ],
      ),
    );
  }
}
