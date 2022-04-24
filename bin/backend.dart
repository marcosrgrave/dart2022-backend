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
    address: await CustomEnv.get<String>(key: "server_address"),
    port: await CustomEnv.get<int>(key: "server_port"),
    // had to convert 'get port' to int
  );
}
