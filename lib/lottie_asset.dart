
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAsset extends StatefulWidget {

  @override
  _LottieAssetState createState() => _LottieAssetState();
}

class _LottieAssetState extends State<LottieAsset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.green,
        title: Text("Network Lottie"),
        centerTitle: true,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Lottie animation form asset"),

            Lottie.asset('assets/lottie/84918-404-error-doodle-animation.json'),
          ],
        ),
      ),
    );
  }
}
