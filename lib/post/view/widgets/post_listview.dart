import 'package:flutter/material.dart';

import '../../cubit/post.dart';

class PostListView extends StatelessWidget {
  const PostListView({
    required this.posts,
    super.key,
  });
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return ListTile(
          title: Text(post.title, style: theme.textTheme.headlineMedium),
          subtitle: Text(post.description, style: theme.textTheme.bodySmall),
        );
      },
    );
  }
}
