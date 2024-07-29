import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class TesKepribadianScreen extends StatelessWidget {
  const TesKepribadianScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tes Kepribadian",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
      ),
      body: Center(
        child: Text(
          "Coming Soon",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
