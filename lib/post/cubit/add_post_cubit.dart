import 'package:bloc/bloc.dart';

import '../data/post_repository.dart';
import 'add_post_state.dart';
import 'add_post_state_factory.dart';
import 'post.dart';

class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit(this.repository) : super(AddPostStateFactory.createInitial());
  final PostRepository repository;

  Future<void> add(Post post) async {
    emit(AddPostStateFactory.createLoading());

    final result = await repository.createPost(post);
    if (result) {
      emit(AddPostStateFactory.createSuccess());
    } else {
      emit(AddPostStateFactory.createError(error: 'Failed to add new Post'));
    }
  }
}
