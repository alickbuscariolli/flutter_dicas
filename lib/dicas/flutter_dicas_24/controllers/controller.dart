import 'package:flutterdicas/dicas/flutter_dicas_24/errors/api_exception.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/models/post_model.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/repositories/api_repository.dart';

class Controller {
  final ApiRepository _apiRepository;

  Controller({required ApiRepository apiRepository})
      : _apiRepository = apiRepository;

  bool isLoading = true;

  PostModel? loadedPost;

  String? errorMessage;

  Future<void> loadPost(String postId) async {
    try {
      errorMessage = null;
      isLoading = true;

      final post = await _apiRepository.loadPost(postId);

      loadedPost = post;
      isLoading = false;
    } catch (error) {
      if (error is ApiException) {
        errorMessage = error.message;
      }
      isLoading = false;
    }
  }
}
