import 'add_post_state.dart';

abstract final class AddPostStateFactory {
  static AddPostState createInitial() {
    return InitialAddState();
  }

  static AddPostState createLoading() {
    return LoadingAddState();
  }

  static AddPostState createSuccess() {
    return SuccessAddState();
  }

  static AddPostState createError({required String error}) {
    return ErrorAddState(error: error);
  }
}
