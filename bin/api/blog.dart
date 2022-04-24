import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Blog {
  Handler get blogHandler {
    Router rout = Router();

    // Current blog articles
    rout.get("/blog", (Request req) {
      return Response.ok("Blog accessed.");
    });

    // Adding a new article
    rout.post("/blog", (Request req) {
      return Response.ok("New article added.");
    });

    // Updating an article
    // e.g., /blog?id=12345
    rout.put("/blog", (Request req) {
      String? id = req.url.queryParameters["id"];
      return Response.ok("Article of id: $id has been updated.");
    });

    // Deleting an article
    // e.g., /blog?id=12345
    rout.delete("/blog", (Request req) {
      String? id = req.url.queryParameters["id"];
      return Response.ok("Article of id $id has been deleted.");
    });

    return rout;
  }
}
