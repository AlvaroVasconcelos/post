import 'post.dart';

abstract class FetchPostState {
  FetchPostState({required this.posts});

  final List<Post> posts;
}

class LoadingFetchState extends FetchPostState {
  LoadingFetchState() : super(posts: []);
}

class SuccessFetchState extends FetchPostState {
  SuccessFetchState({required super.posts});
}

class ErrorFetchState extends FetchPostState {
  ErrorFetchState({required this.error}) : super(posts: []);
  final String error;
}
