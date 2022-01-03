import 'package:flutter/material.dart';

import 'package:hello/market.dart';
import 'package:hello/search.dart';
import 'package:hello/selfinfo.dart';

class CampusMarket extends StatefulWidget {
  const CampusMarket({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CampusMarketState();

}

class CampusMarketState extends State<CampusMarket> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Market(),
            Search(),
            SelfInfo(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: controller,
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.black,
            tabs: const <Widget>[
              Tab(
                text: "集市",
                icon: Icon(Icons.book),
              ),
              Tab(
                text: "搜索",
                icon: Icon(Icons.search),
              ),
              Tab(
                text: "我的",
                icon: Icon(Icons.people),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}