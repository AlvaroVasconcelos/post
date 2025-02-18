import 'package:bloc/bloc.dart';

import '../data/post_repository.dart';
import 'fetch_post_state.dart';
import 'fetch_post_state_factory.dart';

class FetchPostCubit extends Cubit<FetchPostState> {
  FetchPostCubit(this.repository)
      : super(FetchPostStateFactory.createLoading());
  final PostRepository repository;

  Future<void> fetch() async {
    emit(FetchPostStateFactory.createLoading());
    final posts = await repository.fetchPosts();
    if (posts == null) {
      emit(FetchPostStateFactory.createError(error: 'Failed to fetch posts'));
      return;
    }
    emit(FetchPostStateFactory.createSuccess(posts));
  }
}
