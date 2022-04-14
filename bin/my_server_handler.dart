import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MyServerHandler {
  Handler get handler {
    final rout = Router();

    // GET basics
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

    // POST basics
    rout.post("/login", (Request req) async {
      // get values from application body
      String jsonStringValues = await req.readAsString();
      Map jsonMapValues = jsonDecode(jsonStringValues);

      String _user = "marcosrgrave";
      String _password = "dart2022-backend";

      String? userInput = jsonMapValues["user"];
      String? passwordInput = jsonMapValues["password"];

      if (userInput == _user && passwordInput == _password) {
        return Response.ok("Congratulations! You are logged in!");
      } else {
        return Response.forbidden("Invalid Access. Please, try again.");
      }
    });

    return rout;
  }
}
