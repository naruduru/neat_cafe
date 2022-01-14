import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  bool isSwitched = false;

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const ListTile(
                title: Text('내소식에서 확인할 알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
              ),
              const Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
              ),
              Container(
                padding: const EdgeInsets.all(0),
                height: 40,
                color: Colors.red,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Container(color: Colors.deepPurple, child: const Text('댓글알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                  ),
                  trailing: const Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                  onTap: () => { },
                ),
              ),
              const Divider(color: Color(0xff767676), thickness: 1,),
              ListTile(
                title: const Text('댓글알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: const Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                onTap: () => { },
              ),
              const Divider(color: Color(0xff767676), thickness: 1, ),
              const ListTile(
                title: Text('관심글의 댓글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Icon(Icons.chevron_right, color: Colors.white,),
              ),
              const Divider(color: Color(0xff767676), thickness: 1,),
              ListTile(
                title: const Text('공지알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Switch(
                  activeColor: Colors.white,
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
              const Divider(color: Color(0xff767676),),
              const ListTile(
                title: Text('새글피드 구독 항목과 푸시알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
              ),
              const ListTile(
                title: Text('키워드 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Icon(Icons.chevron_right, color: Colors.white,),
              ),
              const Divider(color: Color(0xff767676),),
              const ListTile(
                title: Text('멤버 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Icon(Icons.chevron_right, color: Colors.white,),
              ),
              const Divider(color: Color(0xff767676),),
              const ListTile(
                title: Text('게시판 새글', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Icon(Icons.chevron_right, color: Colors.white,),
              ),
              const Divider(color: Color(0xff767676),),
              const ListTile(title: Text('이 카페의 전체 푸시알림을 설정하세요.', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
              ListTile(
                title: const Text('푸시알림 받기', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
              const Divider(color: Color(0xff767676),),
              ListTile(
                horizontalTitleGap: 0,
                minLeadingWidth: 0,
                leading: const Icon(Icons.chevron_right, color: Colors.white,),
                title: const Text('댓글 푸시알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                trailing: const Text('내 글의 댓글', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),
                onTap: () {},
              ),
              const Divider(color: Color(0xff767676),),
              ListTile(
                horizontalTitleGap: 0,
                minLeadingWidth: 0,
                leading: const Icon(Icons.chevron_right, color: Colors.white,),
                title: const Text('새글 푸시알림', style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
              const Divider(color: Color(0xff767676),),
            ],
          ),
        ),
      ),
    );
  }
}