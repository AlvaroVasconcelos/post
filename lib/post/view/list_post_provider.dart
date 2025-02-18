import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/fetch_post_cubit.dart';

class ListPostProvider extends StatelessWidget {
  const ListPostProvider({required this.child, super.key});

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchPostCubit(context.read()),
      child: child,
    );
  }
}
