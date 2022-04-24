import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/article_model.dart';
import '../services/article_service.dart';

class Blog {
  final ArticleService _articleService;
  Blog(this._articleService);

  ArticleModel testArticle = ArticleModel(
    12345,
    "title",
    "content",
    "image",
    DateTime(2022, 4, 22),
    DateTime(2022, 4, 24),
  );

  Handler get blogHandler {
    Router rout = Router();

    // Current blog articles
    rout.get("/blog", (Request req) {
      // _articleService.getAll();
      return Response.ok("Blog accessed.");
    });

    // Adding a new article
    rout.post("/blog", (Request req) {
      // _articleService.save(testArticle);
      return Response.ok("New article added.");
    });

    // Updating an article
    // e.g., /blog?id=12345
    rout.put("/blog", (Request req) {
      String? id = req.url.queryParameters["id"];
      // _articleService.save(testArticle);
      return Response.ok("Article of id: $id has been updated.");
    });

    // Deleting an article
    // e.g., /blog?id=12345
    rout.delete("/blog", (Request req) {
      String? id = req.url.queryParameters["id"];
      // _articleService.delete(12345);
      return Response.ok("Article of id $id has been deleted.");
    });

    return rout;
  }
}
