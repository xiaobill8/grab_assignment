import 'package:grab_assignment/config/config.dart';
import 'package:grab_assignment/presentation/screens/screens.dart';
import 'package:grab_assignment/config/custom_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final helloWorldProvider = Provider((_) => 'Hello world');
final valueProvider = StateProvider((ref) => 10);

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
// class MyApp extends ConsumerWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final int value = ref.watch(counterProvider);

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Example')),
//         body: Center(
//           child: Text('$value'),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: () => increment(context)),
//       ),
//     );
//   }

//   void increment(BuildContext context) {
//     context.read(counterProvider).state++;
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.primaryTheme,
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: Dashboard.routeName,
    );
  }
}
