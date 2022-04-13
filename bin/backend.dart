import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'my_server_handler.dart';

void main() async {
  MyServerHandler _server = MyServerHandler();

  final server = await shelf_io.serve(_server.handler, "localhost", 8080);

  print("Server Iniciated");
}
