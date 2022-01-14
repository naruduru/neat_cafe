import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          centerTitle: true,
          backgroundColor: const Color(0xfff53755),
          leading: IconButton(
            icon: const Icon(Icons.close),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {
              Navigator.maybePop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {
              },
            ),
          ],
          title: Column(
            children: const [
              Text('채팅', style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold)),
              Text('NEAT-SOFT', style: TextStyle(fontSize: 12.0, fontFamily: 'NanumGothic',)),
            ],
          )
      ),
      body: Container(
        color: const Color(0xff2b2b2b),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('참여중인 채팅이 없습니다.', style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic', color: Colors.white)),
              SizedBox(
                height: 5,
              ),
              Text('가입한 카페 멤버와 태칭을 시작해보세요', style: TextStyle(fontSize: 12.0, fontFamily: 'NanumGothic', color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}