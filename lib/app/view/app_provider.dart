import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../post/data/post_repository.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => PostRepository(),
        ),
      ],
      child: child,
    );
  }
}
