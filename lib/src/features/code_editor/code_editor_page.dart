import 'package:codeshot/src/features/code_editor/code_editor_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

import '../../constants/colors.dart';

class CodeEditorPage extends ConsumerWidget {
  CodeEditorPage({super.key});

  final themes = [
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFBE3E95),
        Color(0xFF643FE2),
      ],
    ),
    const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xFF8CE7CC),
        Color(0xFF6355E8),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(codeEditorControllerProvider.notifier);
    final state = ref.watch(codeEditorControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Codeshot"),
        backgroundColor: darkGrey,
        actions: [
          IconButton(
              onPressed: () => controller.nextTheme(themes.length),
              icon: const Icon(Icons.change_circle)),
          IconButton(
            onPressed: controller.launchCodeShotGitHubRepository,
            icon: const Icon(FontAwesomeIcons.github),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: controller.takeScreenshot,
        child: const Icon(
          Icons.camera,
          color: darkGrey,
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: darkGrey,
          ),
          WidgetsToImage(
            controller: state.widgetsToImageController,
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) =>
                    controller.onHorizontalDragRight((details.delta.dx) * -1),
                onVerticalDragUpdate: (details) =>
                    controller.onVerticalDragUpdate((details.delta.dy) * -1),
                child: Container(
                  height: state.currentHeight,
                  width: state.currentWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: themes[state.themeIndex],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CodeTheme(
                          data: CodeThemeData(),
                          child: SingleChildScrollView(
                            child: CodeField(
                              padding: const EdgeInsets.all(30),
                              controller: state.codeController,
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
    );
  }
}
