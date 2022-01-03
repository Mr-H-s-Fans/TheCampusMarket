import 'package:flutter/material.dart';

class SelfInfo extends StatefulWidget {
  const SelfInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SelfInfoState();
}

class SelfInfoState extends State<SelfInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("我的信息"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Information..."),
            ],
          ),
        ),
      ),
    );
  }

}
