import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color color;
  final double textSize;
  const BotonAzul({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = Colors.white,
    this.textSize = 17,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: SizedBox(
        height: 45,
        child: Center(
          child: Text(
            'Ingresar',
            style: TextStyle(
              color: color,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
