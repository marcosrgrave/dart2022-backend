import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MyServerHandler {
  Handler get handler {
    final rout = Router();

    rout.get("/", (Request request) {
      return Response(200, body: "Main Route");
    });

    rout.get("/home", (Request request) {
      return Response(200, body: "Home Route");
    });

    rout.get("/hello.world", (Request request) {
      return Response(200, body: "Hello World!");
    });

    rout.get("/amanda", (Request request) {
      return Response(200, body: "Oi, linda.");
    });

    return rout;
  }
}