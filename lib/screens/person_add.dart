import 'package:flutter/material.dart';

class PersonAdd extends StatefulWidget {
  const PersonAdd({Key? key}) : super(key: key);

  @override
  _PersonAddState createState() => _PersonAddState();
}

class _PersonAddState extends State<PersonAdd> {
  List<Choice> choices = <Choice>[
    Choice(title: '카카오톡', type: 'image', imageIcon: 'images/kakaotalk_icon.png', color: const Color.fromRGBO(250, 226, 60, 1.0)),
    Choice(title: '문자', type: 'icon', imageIcon: '', icon: Icons.message, color: Colors.cyan),
    Choice(title: '이메일', type: 'icon', imageIcon: '', icon: Icons.email, color: Colors.orange),
    Choice(title: '네이버 ID', type: 'image', imageIcon: 'images/naver_icon.png', color: const Color.fromRGBO(77, 77, 77, 1.0)),
    Choice(title: '초대링크', type: 'icon', imageIcon: '', icon: Icons.link, color: const Color.fromRGBO(77, 77, 77, 1.0)),
    Choice(title: 'QR 코드', type: 'icon', imageIcon: '', icon: Icons.qr_code, color: const Color.fromRGBO(77, 77, 77, 1.0)),
  ];

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
            Text('초대하기', style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold)),
            Text('NEAT-SOFT', style: TextStyle(fontSize: 12.0, fontFamily: 'NanumGothic',)),
          ],
        )
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff2b2b2b),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color(0xff2b2b2b),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, top: 30, right: 15, bottom: 5),
                child: Text('새로운 멤버들을 초대해보세요!', style: TextStyle(fontSize: 12, color: Colors.white, fontFamily: 'NanumGothic',)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, top: 10, right: 80, bottom: 10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Column(
                            children: [
                              Center(
                                child: Card(
                                  color: choices[position].color,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)
                                  ),
                                  elevation: 1,
                                  child: Padding(
                                    padding: choices[position].type == "icon" ? const EdgeInsets.all(10.0) : const EdgeInsets.all(6.0),
                                    child: choices[position].type == "icon" ?
                                    Icon(
                                      choices[position].icon,
                                      size: 30,
                                      color: Colors.white,
                                    ) :
                                    CircleAvatar(
                                      backgroundImage: AssetImage(choices[position].imageIcon),
                                      backgroundColor: Colors.transparent,
                                      radius: 19,
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    choices[position].title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 12, color: Colors.white, fontFamily: 'NanumGothic',),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      )
                    );
                  },
                  itemCount: choices.length,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff2b2b2b),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('영리 목적의 광고를 전송하면 정보통신망법에 따라 처벌 받을 수 있습니다.', style: TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'NanumGothic',)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('자세히 보기 >', style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'NanumGothic',)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final String type; // icon, image
  String imageIcon;
  IconData? icon;
  Color color;

  Choice({required this.title, required this.type, required this.imageIcon, this.icon, required this.color});
}