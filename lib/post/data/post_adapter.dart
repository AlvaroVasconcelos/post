import '../cubit/post.dart';

abstract final class PostAdapter {
  static Post fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'] as String,
      description: json['body'] as String,
    );
  }

  static Map<String, dynamic> toJson(Post post) {
    return {
      'title': post.title,
      'body': post.description,
    };
  }
}
