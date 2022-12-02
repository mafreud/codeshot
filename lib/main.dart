import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/dart.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CodeEditor(),
    );
  }
}

final controller = CodeController(
  text: """

class AppBarSample extends StatelessWidget {
  const AppBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo!'),
      ),
    );
  }
}
""",
  language: dart,
);

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  WidgetsToImageController imageController = WidgetsToImageController();
  Uint8List? bytes;
  late double currentWidth = 400.0;
  late double defaultWidth = 400.0;

  late double currentHeight = 300.0;
  late double defaultHeight = 300.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () async {
            final bytes = await imageController.capture();
            FileSaver.instance
                .saveFile("shot2", bytes!, "png", mimeType: MimeType.PNG);
          },
          child: const Icon(Icons.camera, color: Color(0xFF131313)),
        ),
        body: WidgetsToImage(
          controller: imageController,
          child: Stack(
            children: [
              Container(
                color: const Color(0xFF131313),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onHorizontalDragUpdate: _onHorizontalDragRight,
                  onVerticalDragUpdate: _onVerticalDragUpdate,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.resizeLeftRight,
                    opaque: true,
                    child: Container(
                      height: currentHeight,
                      width: currentWidth,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF8CE7CC),
                            Color(0xFF6355E8),
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CodeTheme(
                              data: CodeThemeData(),
                              child: SingleChildScrollView(
                                child: CodeField(
                                  padding: const EdgeInsets.all(30),
                                  controller: controller,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onHorizontalDragRight(DragUpdateDetails details) {
    setState(() {
      currentWidth += (details.delta.dx) * -1;
      if (currentWidth < defaultWidth) {
        currentWidth = defaultWidth;
      }
    });
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      currentHeight += (details.delta.dy) * -1;
      if (currentHeight < defaultHeight) {
        currentHeight = defaultHeight;
      }
    });
  }
}
