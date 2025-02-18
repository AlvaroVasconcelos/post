import 'dart:convert';

import 'package:http/http.dart' as http;

import '../cubit/post.dart';
import 'post_adapter.dart';

class PostRepository {
  static final _posts = <Post>[];
  final endpoint = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  Future<List<Post>?> fetchPosts() async {
    if (_posts.isNotEmpty) return _posts;
    final response = await http.get(endpoint);
    final postList = jsonDecode(response.body) as List;
    final postsMap = postList.cast<Map<String, dynamic>>();
    final posts = postsMap.map(PostAdapter.fromJson).toList();
    _posts.addAll(posts);
    return posts;
  }

  Future<bool> createPost(Post post) async {
    final bodyRequest = jsonEncode(PostAdapter.toJson(post));
    final response = await http.post(
      endpoint,
      body: bodyRequest,
      headers: {'Content-Type': 'application/json'},
    );
    if (_posts.isNotEmpty) {
      _posts.insert(0, post);
    }
    return response.statusCode == 201;
  }
}
