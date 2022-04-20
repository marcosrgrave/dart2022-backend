import 'dart:io';

class CustomEnv {
  static Map<String, String> _mapData = {};

  static Future get({
    required String key,
  }) async {
    if (_mapData.isEmpty) await _load();
    return _mapData[key];
  }

  static Future<String> _readFile() async {
    // must wait the read to be completed
    return await File(".env").readAsString();
  }

  static Future<void> _load() async {
    List<String> fileLines = (await _readFile()).split("\n");
    _mapData = {
      for (String line in fileLines) line.split("=")[0]: line.split("=")[1]
    };
  }
}
