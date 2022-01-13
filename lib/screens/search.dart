import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final List<String> entries = <String>[
    '가마보코',
    '텐트',
    '타케노코',
    '타케노코2',
    '공구',
    '텐트',
    '타케노코',
    '타케노코2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        backgroundColor: const Color(0xfff53755),
        leading: TextButton(
          style : TextButton.styleFrom(
            primary: Colors.white,
            textStyle: const TextStyle(
              fontFamily: 'NanumGothic',
            ),
          ),
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: const Text("닫기", style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic',)),
        ),
        title: const Text('NEAT-SOFT'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children:[
                Expanded(
                  child:Container(
                    height: 40,
                    color: const Color(0xff2b2b2b),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                      child: TextField(
                        style: const TextStyle(fontSize: 15.0, color: Colors.white),
                        decoration: InputDecoration(
                          filled : true,
                          fillColor: const Color(0xff2b2b2b),
                          hintText: '검색어 입력',
                          hintStyle : const TextStyle(color: Colors.white70, fontFamily: 'NanumGothic',),
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero, // 패딩 설정
                            constraints: const BoxConstraints(), // constraints
                            color: Colors.blue,
                            alignment: Alignment.centerRight,
                            icon: const Icon(Icons.cancel, size: 20, color: Colors.white70),
                            onPressed: () { },
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 30,
                    height: 40,
                    color: const Color(0xff2b2b2b),
                    child: IconButton(
                      padding: EdgeInsets.zero, // 패딩 설정
                      constraints: const BoxConstraints(), // constraints
                      color: Colors.blue,
                      alignment: Alignment.centerLeft,
                      icon: const Icon(Icons.search, size: 25, color: Colors.white), onPressed: () {  },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff2b2b2b),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color(0xff2b2b2b),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 5),
                child: Text('최근검색어', style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: 'NanumGothic',)),
              ),
            ),
            Flexible(
              child: Container(
                color: const Color(0xff2b2b2b),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0xff767676)
                            ),
                          ), // This will create top borders for the rest
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          dense: true,
                          title: Text(entries[index], style: const TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'NanumGothic',)),
                          trailing: IconButton(
                            icon: const Icon(Icons.clear, color: Colors.white70,),
                            onPressed: () {
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                child: Container(
                    color: const Color(0xff2b2b2b),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                      child: Text('전체삭제 | 자동저장 끄기', style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: 'NanumGothic',)),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xff2b2b2b),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                    child: Text('닫기', style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: 'NanumGothic',)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}