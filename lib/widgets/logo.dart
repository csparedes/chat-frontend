import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String assetName;
  final String text;
  final double sizeText;
  const Logo({
    Key? key,
    required this.assetName,
    required this.text,
    this.sizeText = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(
              image: AssetImage(assetName),
            ),
            const SizedBox(height: 20),
            Text(
              text,
              style: TextStyle(fontSize: sizeText),
            ),
          ],
        ),
      ),
    );
  }
}
