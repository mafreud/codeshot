import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FileSaverService {
  static final _fileSaver = FileSaver.instance;

  Future<void> saveSingleFile({
    required String fileName,
    required Uint8List bytes,
    required String extension,
    required MimeType mimeType,
  }) =>
      _fileSaver.saveFile(fileName, bytes, extension, mimeType: mimeType);
}

final fileSaverServiceProvider = Provider<FileSaverService>((ref) {
  return FileSaverService();
});
