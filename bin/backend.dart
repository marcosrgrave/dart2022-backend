import 'package:shelf/shelf.dart';

import 'api/blog.dart';
import 'api/login.dart';
import 'infra/my_server.dart';

void main() async {
  // multiple handlers method | design pattern: builder | cascade
  var cascadeHandler = Cascade()
      .add(
        LoginAPI().loginHandler,
      )
      .add(
        Blog().blogHandler,
      )
      .handler;

  var cascadeHandlerWithMiddle = Pipeline()
      .addMiddleware(
        logRequests(),
      )
      .addHandler(
        cascadeHandler,
      );

  await MyServer().initialize(cascadeHandlerWithMiddle);
}
