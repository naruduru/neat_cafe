import 'package:flutter/material.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 150),
            pinned: true,
          ),
          buildList()
        ],
      ),
    );
  }

  buildList() {
    return SliverList(delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          dense:true,
          title: Text(entries[index]),
          subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 12,),),
        ), childCount: 40)
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate{
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppTitleBar(shrinkOffset),
        buildAppBar(shrinkOffset),
        buildInfo()
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }

  buildAppBar(double shrinkOffset) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(400.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
              }
          )
        ],
        centerTitle: true,
    ),
    );
  }

  appear(double shrinkOffset) {
    return shrinkOffset / expandedHeight;
  }

  buildBackground(double shrinkOffset) {
    return Opacity(opacity: disappear(shrinkOffset), child: Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/volvo.png'),
          fit: BoxFit.cover,
        ),
        ),
      ),
    );
  }

  disappear(double shrinkOffset) {
    return 1 - shrinkOffset / expandedHeight;
  }

  buildAppTitleBar(double shrinkOffset) {
    return Opacity(opacity: appear(shrinkOffset), child: Container(
      padding: const EdgeInsets.only(top: 15),
      color: const Color(0xfff53755),
      child: Column(
        children: const [
          Text('NS게시판', style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
          ),
        ],
        ),
      ),
    );
  }

  buildInfo() {
    return Positioned(
      top: 90,
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
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "니트소프트(NEAT-SOFT)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 1.0
                  ),
                ),
                SizedBox(height: 3,),
                Text(
                  "멤버 14명",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}