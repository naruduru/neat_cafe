import 'package:flutter/material.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<String> entries = <String>[
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
  ];

  final List<String> subEntries = <String>[
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 40,
            backgroundColor: const Color(0xfff53755),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.home), onPressed: () {  },
              )
            ],
            centerTitle: true,
            pinned: true,
            expandedHeight: 160.0,
            title: _MyAppBarTitle(),
            flexibleSpace: _MyAppSpace(),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35),
              child: Stack(children: [
                Container(
                  height: 32,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff767676)),
                    ),
                    color: Color(0xff2b2b2b),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.white,
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 5,
                          color: Colors.white,
                        ),
                        insets: EdgeInsets.only(
                          left: 15,
                          right: 15
                        ),
                      ),
                      labelStyle: const TextStyle(fontSize: 12.0),
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(left: 0, right: 0),
                      tabs: [
                        Container(
                          width: 80,
                          height: 30.0,
                          color: const Color(0xff2b2b2b),
                          child: const Tab(text: '전체글'),
                        ),
                        Container(
                          width: 80,
                          height: 30.0,
                          color: const Color(0xff2b2b2b),
                          child: const Tab(text: '즐겨찾기'),
                        ),
                        Container(
                          width: 80,
                          height: 30.0,
                          color: const Color(0xff2b2b2b),
                          child: const Tab(text: '전체공지'),
                        ),
                      ]
                  ),
                ],
                ),
            ),
          ),
          buildList()
        ],
      ),
    );
  }

  buildList() {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) =>
        Container(
          color: const Color(0xff767676),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 81,
                color: const Color(0xff2b2b2b),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: const Color(0xff2b2b2b),
                  margin: const EdgeInsets.only(bottom: 1),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(entries[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'NanumGothic',
                      ),
                    ),
                    subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 11,color: Colors.white70,fontFamily: 'NanumGothic',),),
                    trailing: Container(
                      width: 30,
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: const [
                            Text('1'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 20,
                height: 81,
                color: const Color(0xff2b2b2b),
              ),
            ],
          ),
        ),
        childCount: 40
      ),
    );
  }

  disappear(shrinkOffset) {
    return 1 - shrinkOffset / 100;
  }
}

class _MyAppSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final FlexibleSpaceBarSettings settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
        final deltaExtent = settings.maxExtent - settings.minExtent;
        final double t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent).clamp(0.0, 1.0);
        final double fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Opacity(
          opacity: opacity,
          child: Column(
            children: [
              Flexible(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/volvo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('images/logo_icon.png'),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5, top: 10),
                            width: 200,
                            height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("니트소프트(NEAT-SOFT)",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      height: 1.0,
                                      fontFamily: 'NanumGothic',
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text("멤버 14명",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'NanumGothic',
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


class _MyAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final FlexibleSpaceBarSettings settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
        final deltaExtent = settings.maxExtent - settings.minExtent;
        final double t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent).clamp(0.0, 1.0);
        final double fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = Interval(fadeStart, fadeEnd).transform(t);

        return Opacity(
          opacity: opacity,
          child: const Text('NEAT-SOFT', style: TextStyle(
            fontSize: 15,
            fontFamily: 'NanumGothic',
          ),)
        );
      },
    );
  }
}