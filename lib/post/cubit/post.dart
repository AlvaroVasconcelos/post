class Post {
  Post({
    required this.title,
    required this.description,
  });

  Post.empty()
      : title = '',
        description = '';

  final String title;
  final String description;

  Post copyWith({String? title, String? description}) {
    return Post(
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}
