import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/fetch_post_cubit.dart';
import '../cubit/fetch_post_state.dart';
import 'add_post_page.dart';
import 'add_post_provider.dart';
import 'widgets/post_listview.dart';

class ListPostPage extends StatefulWidget {
  const ListPostPage({super.key});

  @override
  State<ListPostPage> createState() => _ListPostPageState();
}

class _ListPostPageState extends State<ListPostPage> {
  void onListeners(BuildContext context, FetchPostState state) {
    if (state is ErrorFetchState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            state.error,
          ),
        ),
      );
      return;
    }
  }

  Future<void> createPost() async {
    await Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) {
          return const AddPostProvider(
            child: AddPostPage(),
          );
        },
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FetchPostCubit>().fetch();
    });
  }

  @override
  void initState() {
    super.initState();
    context.read<FetchPostCubit>().fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocConsumer<FetchPostCubit, FetchPostState>(
        listener: onListeners,
        builder: (context, state) {
          if (state is ErrorFetchState) {
            return Center(
              child: Text(state.error),
            );
          }

          if (state is LoadingFetchState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Center(
            child: PostListView(posts: state.posts),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createPost,
        child: const Icon(Icons.add),
      ),
    );
  }
}
