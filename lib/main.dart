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
      child: MyHomePage(),
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

// 1. Extend [ConsumerStatefulWidget]
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 2. Extend [ConsumerState]
class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // 3. use ref.read() in the widget life-cycle methods
    final value = ref.read(valueProvider);
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    // 3. use ref.watch() to get the value of the provider
    final value = ref.watch(valueProvider);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Value: $value',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
