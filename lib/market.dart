import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MarketState();
}

class MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("校园集市"),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Card(
                color: Color.fromARGB(1, 157, 157, 157),
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                clipBehavior: Clip.antiAlias,
                semanticContainer: false,
                child: Container(
                  color: Color.fromARGB(85, 158, 158, 158),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // 头像行
                        Row(
                          children: <Widget>[
                            // 头像和昵称
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: ClipOval(
                                      child: Image(
                                        image: AssetImage("images/face_1.jpg"),
                                      ),
                                    ),
                                  ),
                                  Text("  王德发"),
                                ],
                              ),
                            ),
                            // 热度图标和评论数
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.fireplace),
                                Text("  114514条评论"),
                              ],
                            ), flex: 2,),
                          ],
                        ),
                        // 内容行
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text("天地玄黄，宇宙洪荒。日月盈昃，辰宿列张。寒来暑往，秋收冬藏。闰余成岁，律吕调阳。云腾致雨，露结为霜。金生丽水，玉出昆冈。剑号巨阙，珠称夜光。果珍李柰，菜重芥姜。海咸河淡，鳞潜羽翔。龙师火帝，鸟官人皇。始制文字，乃服衣裳。推位让国，有虞陶唐。吊民伐罪，周发殷汤。坐朝问道，垂拱平章。 ")
                        ),
                        // 标签行
                        Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("  #求助#"),
                            Text("  8年前，114514人围观"),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
