import 'fetch_post_state.dart';
import 'post.dart';

abstract final class FetchPostStateFactory {
  static FetchPostState createLoading() {
    return LoadingFetchState();
  }

  static FetchPostState createSuccess(List<Post> posts) {
    return SuccessFetchState(posts: posts);
  }

  static FetchPostState createError({required String error}) {
    return ErrorFetchState(error: error);
  }
}
