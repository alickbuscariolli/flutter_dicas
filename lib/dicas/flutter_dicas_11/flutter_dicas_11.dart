import 'package:flutter/material.dart';

class FlutterDicas11 extends StatefulWidget {
  const FlutterDicas11({Key? key}) : super(key: key);

  @override
  State<FlutterDicas11> createState() => _FlutterDicas11State();
}

class _FlutterDicas11State extends State<FlutterDicas11> {
  final list = <int>[1, 2, 3, 4, 5];
  final pageCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas - 11'),
      ),
      body: Column(
        children: [
          Expanded(
            // Carrossel
            child: PageView(
              controller: pageCtrl,
              children: list
                  .map(
                    (int number) => Center(
                      child: Text(
                        number.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          // Botões do carrossel
          CarouselButtons(listLength: list.length, pageCtrl: pageCtrl),
        ],
      ),
    );
  }
}

class CarouselButtons extends StatefulWidget {
  final PageController pageCtrl;
  final int listLength;

  const CarouselButtons(
      {required this.listLength, required this.pageCtrl, Key? key})
      : super(key: key);

  @override
  State<CarouselButtons> createState() => _CarouselButtonsState();
}

class _CarouselButtonsState extends State<CarouselButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: widget.pageCtrl.page!.toInt() > 0
              ? () async {
                  // Chama a página anterior do carrossel e atualiza a view com setState após o fim da animação
                  await widget.pageCtrl.previousPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.bounceIn,
                  );
                  setState(() {});
                }
              : null,
          child: const Text('Anterior'),
        ),
        TextButton(
          onPressed: widget.pageCtrl.page!.toInt() < widget.listLength - 1
              ? () async {
                  // Chama a proxima página do carrossel e atualiza a view com setState após o fim da animação
                  await widget.pageCtrl.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.bounceIn,
                  );
                  setState(() {});
                }
              : null,
          child: const Text('Proximo'),
        ),
      ],
    );
  }
}
