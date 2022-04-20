import 'package:shelf/shelf.dart';

import 'api/blog.dart';
import 'api/login.dart';
import 'infra/my_server.dart';
import 'utils/custom_env.dart';

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

  await MyServer().initialize(
    handler: cascadeHandlerWithMiddle,
    address: await CustomEnv.get(key: "server_address"),
    port: 8080, // await CustomEnv.get(key: "server_port"),
    // must convert get port to int
  );
}
