import 'package:codeshot/src/features/code_editor/code_editor_model.dart';
import 'package:codeshot/src/utils/file_saver/file_saver_service.dart';
import 'package:codeshot/src/utils/file_saver/url_launcher_service.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:highlight/languages/dart.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class CodeEditorController extends StateNotifier<CodeEditorModel> {
  CodeEditorController({
    required this.fileSaverService,
    required this.urlLauncherService,
  }) : super(
          CodeEditorModel(
            currentWidth: 700,
            defaultWidth: 700,
            currentHeight: 450,
            defaultHeight: 450,
            codeController: CodeController(
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
            ),
            widgetsToImageController: WidgetsToImageController(),
          ),
        );

  final FileSaverService fileSaverService;
  final UrlLauncherService urlLauncherService;

  Future<void> takeScreenshot() async {
    final bytes = await state.widgetsToImageController.capture();
    fileSaverService.saveSingleFile(
        fileName: 'picture',
        bytes: bytes!,
        extension: 'png',
        mimeType: MimeType.PNG);
  }

  Future<void> launchCodeShotGitHubRepository() => urlLauncherService
      .launchUrlFromUrl("https://github.com/mafreud/codeshot");

  void onHorizontalDragRight(double newValue) {
    updateWidth(state.currentWidth + newValue);
    if (state.currentWidth < state.defaultWidth) {
      updateWidth(state.defaultWidth);
    }
  }

  void onVerticalDragUpdate(double newValue) {
    updateHeight(state.currentHeight + newValue);
    if (state.currentHeight < state.defaultHeight) {
      updateHeight(state.currentHeight);
    }
  }

  void updateHeight(double newHeight) {
    state = state.copyWith(currentHeight: newHeight);
  }

  void updateWidth(double newWidth) {
    state = state.copyWith(currentWidth: newWidth);
  }
}

final codeEditorControllerProvider =
    StateNotifierProvider<CodeEditorController, CodeEditorModel>((ref) {
  return CodeEditorController(
      fileSaverService: ref.watch(fileSaverServiceProvider),
      urlLauncherService: ref.watch(urlLauncherServiceProvider));
});
