import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  bool _isSwitched = false;

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
          title: Column(
            children: const [
              Text('알림설정', style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold)),
              Text('NEAT-SOFT', style: TextStyle(fontSize: 12.0, fontFamily: 'NanumGothic',)),
            ],
          )
      ),
      body: Container(
        color: const Color(0xff2b2b2b),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: const Text('내소식에서 확인할 알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                ),
              ),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff767676)),
                  ),
                  color: Color(0xff2b2b2b),
                ),
                child: Row(
                  children: const [
                    Expanded(child: Text('댓글알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                    Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                  ],
                )
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: const [
                      Expanded(child: Text('관심글의 댓글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Icon(Icons.chevron_right, color: Colors.white,),
                    ],
                  )
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: [
                      const Expanded(child: Text('공지알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Switch(
                        activeColor: Colors.white,
                        value: _isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            _isSwitched = value;
                          });
                        },
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                height: 20,
                alignment: Alignment.bottomLeft,
                child: const Text('새글피드 구독 항목과 푸시알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                ),
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: const [
                      Expanded(child: Text('키워드 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Icon(Icons.chevron_right, color: Colors.white,),
                    ],
                  )
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: const [
                      Expanded(child: Text('멤버 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Icon(Icons.chevron_right, color: Colors.white,),
                    ],
                  )
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: const [
                      Expanded(child: Text('게시판 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Icon(Icons.chevron_right, color: Colors.white,),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: const Text('이 카페의 전체 푸시알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                ),
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: [
                      const Expanded(child: Text('푸시알림 받기', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Switch(
                        activeColor: Colors.white,
                        value: _isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            _isSwitched = value;
                          });
                        },
                      ),
                    ],
                  )
              ),
              Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.chevron_right, color: Colors.white,),
                      Expanded(child: Text('댓글 푸시알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                      Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                    ],
                  )
              ),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff767676)),
                  ),
                  color: Color(0xff2b2b2b),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.chevron_right, color: Colors.white,),
                    const Expanded(child: Text('새글 푸시알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                    Switch(
                      activeColor: Colors.white,
                      value: _isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}