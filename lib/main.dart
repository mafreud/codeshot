import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () async {
            final bytes = await imageController.capture();
            FileSaver.instance
                .saveFile("shot", bytes!, "png", mimeType: MimeType.PNG);
          },
          child: const Icon(Icons.camera),
        ),
        body: WidgetsToImage(
          controller: imageController,
          child: Stack(
            children: [
              Container(
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
                // child:
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PhysicalModel(
                      color: Colors.black,
                      elevation: 30,
                      child: CodeTheme(
                        data: CodeThemeData(styles: atomOneDarkTheme),
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
            ],
          ),
        ),
      ),
    );
  }
}
