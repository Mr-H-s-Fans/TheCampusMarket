import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchState();
}

class SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();
  late String tip;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("搜索"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        autofocus: false,
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "输入要检索的内容",
                        ),
                      ),
                      flex: 7,
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (ctx) {
                                  if (_controller.text.isEmpty) {
                                    tip = "检索内容不能为空";
                                  } else {
                                    tip = "正在搜索：${_controller.text}";
                                  }
                                  return SimpleDialog(
                                    title: Text("提示"),
                                    children: <Widget>[
                                      ListTile(
                                        title: Center(
                                          child: Text(tip),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Text("搜索")),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}