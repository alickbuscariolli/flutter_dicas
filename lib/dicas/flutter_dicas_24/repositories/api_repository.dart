import 'package:dio/dio.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/errors/api_exception.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/models/post_model.dart';

class ApiRepository {
  final Dio _dio;

  ApiRepository({required Dio dio}) : _dio = dio;

  Future<PostModel?> loadPost(String postId) async {
    try {
      final apiUrl = "https://jsonplaceholder.typicode.com/posts/$postId";

      final response = await _dio.get(apiUrl);
      return PostModel.fromMap(response.data);
    } on DioError {
      throw ApiException(message: "Erro ao carregar post");
    } catch (_) {
      throw ApiException(
        message: "Ocorreu um erro, por favor tente novamente mais tarde",
      );
    }
  }
}
