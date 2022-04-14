import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MyServerHandler {
  Handler get handler {
    final rout = Router();

    // get basics
    rout.get("/", (Request req) {
      return Response(200, body: "Main Route");
    });

    // Query Parameters
    rout.get("/home", (Request req) {
      return Response(200, body: "Home Route");
    });

    rout.get("/hello.world/<someName>", (Request req, String someName) {
      return Response(200, body: "Hello World , $someName!");
    });

    rout.get("/queryInput", (Request req) {
      String? firstQueryInput = req.url.queryParameters["fqi"];
      String? intNumber = req.url.queryParameters["intNumber"];
      return Response(200, body: "Query input is: $firstQueryInput $intNumber");
    });

    return rout;
  }
}
