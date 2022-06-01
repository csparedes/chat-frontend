import 'package:chat_frontend/pages/chat_page.dart';
import 'package:chat_frontend/pages/loading_page.dart';
import 'package:chat_frontend/pages/login_page.dart';
import 'package:chat_frontend/pages/not_found_page.dart';
import 'package:chat_frontend/pages/register_page.dart';
import 'package:chat_frontend/pages/usuarios_page.dart';
import 'package:fluro/fluro.dart';

class MyHandlers {
  static Handler chat = Handler(
    handlerFunc: ((context, parameters) => const ChatPage()),
  );

  static Handler loading = Handler(
    handlerFunc: ((context, parameters) => const LoadingPage()),
  );

  static Handler login = Handler(
    handlerFunc: ((context, parameters) => const LoginPage()),
  );

  static Handler register = Handler(
    handlerFunc: ((context, parameters) => const RegisterPage()),
  );

  static Handler usuarios = Handler(
    handlerFunc: ((context, parameters) => const UsuariosPage()),
  );

  static Handler notFound = Handler(
    handlerFunc: ((context, parameters) => const NotFoundPage()),
  );
}
