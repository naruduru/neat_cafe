import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final List<String> entries = <String>['123','123', '123','923','123','123','123','123','123','923','123','123'];

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
                          hintStyle : const TextStyle(color: Color(0xff767676), fontFamily: 'NanumGothic',),
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero, // 패딩 설정
                            constraints: const BoxConstraints(), // constraints
                            color: Colors.blue,
                            alignment: Alignment.centerRight,
                            icon: const Icon(Icons.cancel, size: 20, color: Color(0xff767676)),
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
      body: Column(
        children: [
          const Text('헤더1'),
          SingleChildScrollView(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(entries[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
          const Text('헤더2'),
        ],
      ),
    );
  }
}