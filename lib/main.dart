import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysample/notmain.dart';

void main() {
  Get.lazyPut(() => Imagen());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final imagen = Get.find<Imagen>();

  static const String _title = 'genshin';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: GetBuilder<Imagen>(
            builder: (imagen) => Container(
              width: 600,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagen.imiages[imagen.x]),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        floatingActionButton: GetBuilder<Imagen>(
          builder: (imagen) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  imagen.botonnext();
                },
                child: const Icon(Icons.arrow_back),
              ),
              FloatingActionButton(
                onPressed: () {
                  imagen.botonprev();
                },
                child: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
