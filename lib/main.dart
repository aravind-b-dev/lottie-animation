import 'package:flutter/material.dart';
import 'lottie_asset.dart';
import 'lottie_network.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green
      ) ,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.green,
          title: Text("Lottie Aimation"),
          centerTitle: true,
        ),
        body:
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LottieNetwork()),
                  );
                },
                child: Text("Lottie from Network"),
              ),

              SizedBox(height: 15,),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LottieAsset()),
                  );
                },
                child: Text("Lottie from asset"),
              ),

            ],
          ),
        )
      // ListView(
      //   children: [
      //     // Load a Lottie file from your assets
      //     Lottie.asset('assets/lottie/84918-404-error-doodle-animation.json'),
      //     // Load a Lottie file from a remote url
      //     Lottie.network(
      //         'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      //   ],
      // ),
    );
  }
}
