import 'package:flutter/material.dart';

import 'app_provider.dart';
import 'app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const AppProvider(
        child: AppRouter(),
      ),
    );
  }
}
