// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_editor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CodeEditorModel {
  double get currentWidth => throw _privateConstructorUsedError;
  double get defaultWidth => throw _privateConstructorUsedError;
  double get currentHeight => throw _privateConstructorUsedError;
  double get defaultHeight => throw _privateConstructorUsedError;
  CodeController get codeController => throw _privateConstructorUsedError;
  WidgetsToImageController get widgetsToImageController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeEditorModelCopyWith<CodeEditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeEditorModelCopyWith<$Res> {
  factory $CodeEditorModelCopyWith(
          CodeEditorModel value, $Res Function(CodeEditorModel) then) =
      _$CodeEditorModelCopyWithImpl<$Res, CodeEditorModel>;
  @useResult
  $Res call(
      {double currentWidth,
      double defaultWidth,
      double currentHeight,
      double defaultHeight,
      CodeController codeController,
      WidgetsToImageController widgetsToImageController});
}

/// @nodoc
class _$CodeEditorModelCopyWithImpl<$Res, $Val extends CodeEditorModel>
    implements $CodeEditorModelCopyWith<$Res> {
  _$CodeEditorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWidth = null,
    Object? defaultWidth = null,
    Object? currentHeight = null,
    Object? defaultHeight = null,
    Object? codeController = null,
    Object? widgetsToImageController = null,
  }) {
    return _then(_value.copyWith(
      currentWidth: null == currentWidth
          ? _value.currentWidth
          : currentWidth // ignore: cast_nullable_to_non_nullable
              as double,
      defaultWidth: null == defaultWidth
          ? _value.defaultWidth
          : defaultWidth // ignore: cast_nullable_to_non_nullable
              as double,
      currentHeight: null == currentHeight
          ? _value.currentHeight
          : currentHeight // ignore: cast_nullable_to_non_nullable
              as double,
      defaultHeight: null == defaultHeight
          ? _value.defaultHeight
          : defaultHeight // ignore: cast_nullable_to_non_nullable
              as double,
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as CodeController,
      widgetsToImageController: null == widgetsToImageController
          ? _value.widgetsToImageController
          : widgetsToImageController // ignore: cast_nullable_to_non_nullable
              as WidgetsToImageController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeEditorModelCopyWith<$Res>
    implements $CodeEditorModelCopyWith<$Res> {
  factory _$$_CodeEditorModelCopyWith(
          _$_CodeEditorModel value, $Res Function(_$_CodeEditorModel) then) =
      __$$_CodeEditorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double currentWidth,
      double defaultWidth,
      double currentHeight,
      double defaultHeight,
      CodeController codeController,
      WidgetsToImageController widgetsToImageController});
}

/// @nodoc
class __$$_CodeEditorModelCopyWithImpl<$Res>
    extends _$CodeEditorModelCopyWithImpl<$Res, _$_CodeEditorModel>
    implements _$$_CodeEditorModelCopyWith<$Res> {
  __$$_CodeEditorModelCopyWithImpl(
      _$_CodeEditorModel _value, $Res Function(_$_CodeEditorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWidth = null,
    Object? defaultWidth = null,
    Object? currentHeight = null,
    Object? defaultHeight = null,
    Object? codeController = null,
    Object? widgetsToImageController = null,
  }) {
    return _then(_$_CodeEditorModel(
      currentWidth: null == currentWidth
          ? _value.currentWidth
          : currentWidth // ignore: cast_nullable_to_non_nullable
              as double,
      defaultWidth: null == defaultWidth
          ? _value.defaultWidth
          : defaultWidth // ignore: cast_nullable_to_non_nullable
              as double,
      currentHeight: null == currentHeight
          ? _value.currentHeight
          : currentHeight // ignore: cast_nullable_to_non_nullable
              as double,
      defaultHeight: null == defaultHeight
          ? _value.defaultHeight
          : defaultHeight // ignore: cast_nullable_to_non_nullable
              as double,
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as CodeController,
      widgetsToImageController: null == widgetsToImageController
          ? _value.widgetsToImageController
          : widgetsToImageController // ignore: cast_nullable_to_non_nullable
              as WidgetsToImageController,
    ));
  }
}

/// @nodoc

class _$_CodeEditorModel
    with DiagnosticableTreeMixin
    implements _CodeEditorModel {
  const _$_CodeEditorModel(
      {required this.currentWidth,
      required this.defaultWidth,
      required this.currentHeight,
      required this.defaultHeight,
      required this.codeController,
      required this.widgetsToImageController});

  @override
  final double currentWidth;
  @override
  final double defaultWidth;
  @override
  final double currentHeight;
  @override
  final double defaultHeight;
  @override
  final CodeController codeController;
  @override
  final WidgetsToImageController widgetsToImageController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CodeEditorModel(currentWidth: $currentWidth, defaultWidth: $defaultWidth, currentHeight: $currentHeight, defaultHeight: $defaultHeight, codeController: $codeController, widgetsToImageController: $widgetsToImageController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CodeEditorModel'))
      ..add(DiagnosticsProperty('currentWidth', currentWidth))
      ..add(DiagnosticsProperty('defaultWidth', defaultWidth))
      ..add(DiagnosticsProperty('currentHeight', currentHeight))
      ..add(DiagnosticsProperty('defaultHeight', defaultHeight))
      ..add(DiagnosticsProperty('codeController', codeController))
      ..add(DiagnosticsProperty(
          'widgetsToImageController', widgetsToImageController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeEditorModel &&
            (identical(other.currentWidth, currentWidth) ||
                other.currentWidth == currentWidth) &&
            (identical(other.defaultWidth, defaultWidth) ||
                other.defaultWidth == defaultWidth) &&
            (identical(other.currentHeight, currentHeight) ||
                other.currentHeight == currentHeight) &&
            (identical(other.defaultHeight, defaultHeight) ||
                other.defaultHeight == defaultHeight) &&
            (identical(other.codeController, codeController) ||
                other.codeController == codeController) &&
            (identical(
                    other.widgetsToImageController, widgetsToImageController) ||
                other.widgetsToImageController == widgetsToImageController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWidth, defaultWidth,
      currentHeight, defaultHeight, codeController, widgetsToImageController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeEditorModelCopyWith<_$_CodeEditorModel> get copyWith =>
      __$$_CodeEditorModelCopyWithImpl<_$_CodeEditorModel>(this, _$identity);
}

abstract class _CodeEditorModel implements CodeEditorModel {
  const factory _CodeEditorModel(
          {required final double currentWidth,
          required final double defaultWidth,
          required final double currentHeight,
          required final double defaultHeight,
          required final CodeController codeController,
          required final WidgetsToImageController widgetsToImageController}) =
      _$_CodeEditorModel;

  @override
  double get currentWidth;
  @override
  double get defaultWidth;
  @override
  double get currentHeight;
  @override
  double get defaultHeight;
  @override
  CodeController get codeController;
  @override
  WidgetsToImageController get widgetsToImageController;
  @override
  @JsonKey(ignore: true)
  _$$_CodeEditorModelCopyWith<_$_CodeEditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
