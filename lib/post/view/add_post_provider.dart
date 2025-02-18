import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../post.dart';

class AddPostProvider extends StatelessWidget {
  const AddPostProvider({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddPostCubit>(
      create: (context) => AddPostCubit(context.read()),
      child: child,
    );
  }
}
