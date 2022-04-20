import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class LoginAPI {
  Handler get loginHandler {
    Router rout = Router();

    rout.post("/login", (Request req) {
      return Response.ok("Rota de Login");
    });

    return rout;
  }
}
