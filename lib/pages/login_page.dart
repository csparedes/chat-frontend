import 'package:chat_frontend/widgets/boton_azul.dart';
import 'package:chat_frontend/widgets/conditions.dart';
import 'package:chat_frontend/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import 'package:chat_frontend/routes/routes.dart';

import 'package:chat_frontend/widgets/labels.dart';
import 'package:chat_frontend/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(
                  assetName: 'assets/tag-logo.png',
                  text: 'Messenger',
                ),
                const _Form(),
                Labels(
                  label: 'No tienes cuenta?',
                  hint: 'Registrate ahora!',
                  routeName: MyFluroRouter.registerRoute,
                ),
                const Conditions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textController: emailCtrl,
            onSubmitted: (val) {},
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passwordCtrl,
            isPassword: true,
            onSubmitted: (val) {
              print(emailCtrl.text);
              print(passwordCtrl.text);
            },
          ),
          BotonAzul(
            onPressed: () {
              print(emailCtrl.text);
              print(passwordCtrl.text);
            },
            text: 'Ingresar',
          )
        ],
      ),
    );
  }
}
