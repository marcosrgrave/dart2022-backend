import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class MyServer {
  Future<void> initialize(Handler handler) async {
    String address = "localhost";
    int port = 8080;

    await shelf_io.serve(handler, address, port);
    print("Server Initialized in http://$address:$port");
  }
}
