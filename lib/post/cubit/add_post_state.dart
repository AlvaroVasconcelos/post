abstract class AddPostState {}

class InitialAddState extends AddPostState {}

class LoadingAddState extends AddPostState {}

class SuccessAddState extends AddPostState {}

class ErrorAddState extends AddPostState {
  ErrorAddState({required this.error});
  final String error;
}
