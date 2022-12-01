import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => null,
            child: Icon(Icons.camera),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
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
                            padding: EdgeInsets.all(30),
                            controller: controller,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

// class PngHome extends StatefulWidget {
//   const PngHome({super.key});

//   @override
//   PngHomeState createState() => PngHomeState();
// }

// class PngHomeState extends State<PngHome> {
//   GlobalKey globalKey = GlobalKey();

//   Uint8List? imageByte;

//   Future<void> _capturePng() async {
//     RenderRepaintBoundary boundary =
//         globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//     ui.Image image = await boundary.toImage();
//     ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//     Uint8List pngBytes = byteData!.buffer.asUint8List();
//     setState(() {
//       imageByte = pngBytes;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<String> contentOfPage1 = [
//       """
// void main() {
//   print("Hello World!")
// }
//       """
//     ];

//     // The files displayed in the navigation bar of the editor.
//     // You are not limited.
//     // By default, [name] = "file.${language ?? 'txt'}", [language] = "text" and [code] = "",
//     List<FileEditor> files = [
//       FileEditor(
//         name: "hello.dart",
//         language: "dart",
//         code: contentOfPage1.join("\n"), // [code] needs a string
//       ),
//     ];

//     // The model used by the CodeEditor widget, you need it in order to control it.
//     // But, since 1.0.0, the model is not required inside the CodeEditor Widget.
//     EditorModel model = EditorModel(
//       files: files, // the files created above
//       // you can customize the editor as you wantq
//       styleOptions: EditorModelStyleOptions(
//         fontSize: 13,
//       ),
//     );

//     // A custom TextEditingController.
//     final myController = TextEditingController(text: 'hello!');

//     return RepaintBoundary(
//       key: globalKey,
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () async {
//             await _capturePng();
//             await FileSaver.instance.saveFile(
//               "hello",
//               imageByte!,
//               "png",
//               mimeType: MimeType.PNG,
//             );
//           },
//           child: const Icon(Icons.add),
//         ),
//         backgroundColor: Colors.amber,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: CodeEditor(
//                     model:
//                         model, // the model created above, not required since 1.0.0
//                     edit: true, // can edit the files ? by default true
//                     disableNavigationbar:
//                         false, // hide the navigation bar ? by default false
//                     onSubmit: (String? language,
//                         String?
//                             value) {}, // when the user confirms changes in one of the files
//                     textEditingController:
//                         myController, // Provide an optional, custom TextEditingController.
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
