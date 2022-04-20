import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class MyServer {
  Future<void> initialize({
    required Handler handler,
    required String address,
    required int port,
  }) async {

    await shelf_io.serve(handler, address, port);
    print("Server Initialized in http://$address:$port");
  }
}
