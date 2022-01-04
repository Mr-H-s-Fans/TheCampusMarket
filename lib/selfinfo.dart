import 'package:flutter/material.dart';
class SelfInfo extends StatefulWidget {
  const SelfInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SelfInfoState();
}

class SelfInfoState extends State<SelfInfo> {
  List menuTitles = [
    '我的消息',
    '访问记录',
    '我的帖子',
    '我的问答',
    '我的活动',
    '我的团队',
    '邀请好友',
  ];
  List menuIcons = [
    Icons.message,
    Icons.print,
    Icons.error,
    Icons.phone,
    Icons.send,
    Icons.people,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            //用户头像
            return Container(
              color: Colors.black12,
              height: 150.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/ic-head-defalut.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '点击头像登录',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            );
          }
          index -= 1;
          return ListTile(
            leading: Icon(menuIcons[index]), //左图标
            title: Text(menuTitles[index]), //中间标题
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        }, //分隔线
        itemCount: menuTitles.length + 1);
  }

}
