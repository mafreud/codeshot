import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'code_editor_model.freezed.dart';

@freezed
class CodeEditorModel with _$CodeEditorModel {
  const factory CodeEditorModel({
    required double currentWidth,
    required double defaultWidth,
    required double currentHeight,
    required double defaultHeight,
    required CodeController codeController,
    required WidgetsToImageController widgetsToImageController,
  }) = _CodeEditorModel;
}
