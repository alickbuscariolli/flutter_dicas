import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/controllers/controller.dart';
import 'package:flutterdicas/dicas/flutter_dicas_24/repositories/api_repository.dart';

class FlutterDicas24 extends StatefulWidget {
  const FlutterDicas24({super.key});

  @override
  State<FlutterDicas24> createState() => _FlutterDicas24State();
}

class _FlutterDicas24State extends State<FlutterDicas24> {
  late Controller controller;
  final String postToLoad = '1';

  @override
  void initState() {
    controller = Controller(apiRepository: ApiRepository(dio: Dio()));

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      loadPost();
    });
    super.initState();
  }

  Future<void> loadPost() async {
    await controller.loadPost(postToLoad);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final post = controller.loadedPost;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 24 - Consumo de API com Dio'),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (controller.isLoading)
                const Center(child: CircularProgressIndicator()),
              if (post != null) ...[
                Text(
                  'Post id: ${post.id}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 12),
                Text(
                  'Post title: ${post.title}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 12),
                Text(
                  'Post body: ${post.body}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
              if (controller.errorMessage != null) ...[
                Text('Erro! ${controller.errorMessage}'),
                Center(
                  child: ElevatedButton(
                    child: const Text('Tentar novamente'),
                    onPressed: loadPost,
                  ),
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
