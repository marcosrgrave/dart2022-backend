import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Blog {
  Handler get blogHandler {
    Router rout = Router();

    rout.get("/blog", (Request req) {
      return Response.ok("Blog accessed.");
    });

    return rout;
  }
}
