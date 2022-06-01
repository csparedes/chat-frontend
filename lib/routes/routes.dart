import 'package:chat_frontend/routes/handlers.dart';
import 'package:fluro/fluro.dart';

class MyFluroRouter {
  static final FluroRouter router = FluroRouter();
  //* Routes
  static String chatRoute = '/chat';
  static String loadingRoute = '/loading';
  static String loginRoute = '/login';
  static String registerRoute = '/register';
  static String usuariosRoute = '/usuarios';
  //* Define Routes
  static void configureRoutes() {
    router.define(
      chatRoute,
      handler: MyHandlers.chat,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      loadingRoute,
      handler: MyHandlers.loading,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      loginRoute,
      handler: MyHandlers.login,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      registerRoute,
      handler: MyHandlers.register,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      usuariosRoute,
      handler: MyHandlers.usuarios,
      transitionType: TransitionType.inFromBottom,
    );

    router.notFoundHandler = MyHandlers.notFound;
  }
}
