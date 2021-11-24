
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieNetwork extends StatefulWidget {

  @override
  _LottieNetworkState createState() => _LottieNetworkState();
}

class _LottieNetworkState extends State<LottieNetwork> {
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
            Text("Lottie animation form network"),

            Lottie.network(
                  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
          ],
        ),
      ),
    );
  }
}
