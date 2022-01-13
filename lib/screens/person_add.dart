import 'package:flutter/material.dart';

class PersonAdd extends StatefulWidget {
  const PersonAdd({Key? key}) : super(key: key);

  @override
  _PersonAddState createState() => _PersonAddState();
}

class _PersonAddState extends State<PersonAdd> {
  List<Choice> choices = <Choice>[
    Choice(title: '카카오톡', icon: Icons.home),
    Choice(title: '문자', icon: Icons.messenger),
    Choice(title: '이메일', icon: Icons.email_outlined),
    Choice(title: '네이버 ID', icon: Icons.phone),
    Choice(title: '초대링크', icon: Icons.link),
    Choice(title: 'QR 코드', icon: Icons.qr_code),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color(0xff2b2b2b),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, top: 30, right: 15, bottom: 5),
                child: Text('새로운 멤버들을 초대해보세요!', style: TextStyle(fontSize: 12, color: Colors.white, fontFamily: 'NanumGothic',)),
              ),
            ),
            Flexible(
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
                                  color: const Color.fromRGBO(77, 77, 77, 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0)
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(
                                      choices[position].icon,
                                      size: 40,
                                      color: Colors.white,
                                    ),
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
          ],
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;

  Choice({required this.title, required this.icon});
}