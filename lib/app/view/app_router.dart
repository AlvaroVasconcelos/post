import 'package:flutter/material.dart';

import '../../post/post.dart';
import '../../post/view/list_post_provider.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) {
              return const ListPostProvider(
                child: ListPostPage(),
              );
            },
          );
        }

        return null;
      },
    );
  }
}
