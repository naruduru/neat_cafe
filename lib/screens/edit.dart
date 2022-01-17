import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        backgroundColor: const Color(0xff2b2b2b),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        actions: [
          TextButton(
            style : TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(
                fontFamily: 'NanumGothic',
              ),
            ),
            onPressed: () {
              Navigator.maybePop(context);
            },
            child: const Text("임시저장", style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic',)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 9, right: 15, bottom: 10),
            child: TextButton(
              style : ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                  elevation: MaterialStateProperty.all<double>(2.0),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    } else {
                      return Colors.lightGreen;
                    }
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
                  })
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is TextButton'))),
              child: const Text("등록", style: TextStyle(fontSize: 15.0, fontFamily: 'NanumGothic', color: Colors.white)),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          color: const Color(0xff2b2b2b),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.green,
                                  child: Column(children: [
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
                                        Expanded(child: Text('게시판 선택', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
                                        Icon(Icons.arrow_drop_down, color: Colors.white,),
                                      ],
                                    )
                                  ),
                                  Container(
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(width: 1, color: Color(0xff767676)),
                                      ),
                                      color: Color(0xff2b2b2b),
                                    ),
                                    child: const TextField(
                                      style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        filled : true,
                                        fillColor: Color(0xff2b2b2b),
                                        hintText: '제목',
                                        hintStyle : TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
                                        contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent)
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent)
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: TextField(
                                      maxLines: null,
                                      minLines: null,
                                      expands: true,
                                      keyboardType: TextInputType.multiline,
                                      style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
                                      decoration: InputDecoration(
                                        filled : true,
                                        fillColor: Color(0xff2b2b2b),
                                        hintText: '내용을 입력하세요.',
                                        hintStyle : TextStyle(fontSize: 12.0, color: Color(0xff767676), fontFamily: 'NanumGothic'),
                                        contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent)
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                  ),
                                ),
                              ),
                            ]
                        ),
                      )
                    )
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt_outlined),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: () {

                      },
                    ),
                  ],
                ),
            ],
          ),
          ),
        );
      },
          // Column(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: <Widget>[
          //       const Text('Red container should be scrollable'),
          //       // SingleChildScrollView(
          //       //   scrollDirection: Axis.vertical,
          //       //   child: Column(
          //       //     mainAxisSize: MainAxisSize.max,
          //       //     mainAxisAlignment: MainAxisAlignment.start,
          //       //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //       //     children: [
          //       //     const Text('Red container should be scrollable'),
          //       //     Container(
          //       //         color: Colors.red,
          //       //         padding: const EdgeInsets.all(20.0),
          //       //         child: Container(
          //       //           width: double.infinity,
          //       //           // height: 700.0,
          //       //           padding: const EdgeInsets.all(10.0),
          //       //           color: Colors.white.withOpacity(0.7),
          //       //           child: const Text('I will have a column here'),
          //       //         ),
          //       //     ),Container(
          //       //         color: Colors.red,
          //       //         padding: const EdgeInsets.all(20.0),
          //       //         child: Container(
          //       //           width: double.infinity,
          //       //           // height: 700.0,
          //       //           padding: const EdgeInsets.all(10.0),
          //       //           color: Colors.white.withOpacity(0.7),
          //       //           child: const Text('I will have a column here'),
          //       //         ),
          //       //       ),Container(
          //       //         color: Colors.red,
          //       //         padding: const EdgeInsets.all(20.0),
          //       //         child: Container(
          //       //           width: double.infinity,
          //       //           // height: 700.0,
          //       //           padding: const EdgeInsets.all(10.0),
          //       //           color: Colors.white.withOpacity(0.7),
          //       //           child: const Text('I will have a column here'),
          //       //         ),
          //       //       ),Container(
          //       //         color: Colors.red,
          //       //         padding: const EdgeInsets.all(20.0),
          //       //         child: Container(
          //       //           width: double.infinity,
          //       //           // height: 700.0,
          //       //           padding: const EdgeInsets.all(10.0),
          //       //           color: Colors.white.withOpacity(0.7),
          //       //           child: const Text('I will have a column here'),
          //       //         ),
          //       //       ),Container(
          //       //         color: Colors.red,
          //       //         padding: const EdgeInsets.all(20.0),
          //       //         child: Container(
          //       //           width: double.infinity,
          //       //           // height: 700.0,
          //       //           padding: const EdgeInsets.all(10.0),
          //       //           color: Colors.white.withOpacity(0.7),
          //       //           child: const Text('I will have a column here'),
          //       //         ),
          //       //       ),
          //       //   ],
          //       //   ),
          //       // ),
          //       const Text('Red container should be scrollable'),
          //     ],
          //   ),
                // child: TextField(
                //   maxLines: null,
                //   minLines: null,
                //   // expands: true,
                //   keyboardType: TextInputType.multiline,
                //   style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
                //   decoration: InputDecoration(
                //     filled : true,
                //     fillColor: Color(0xff2b2b2b),
                //     hintText: '내용을 입력하세요.',
                //     hintStyle : TextStyle(fontSize: 12.0, color: Color(0xff767676), fontFamily: 'NanumGothic'),
                //     contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                //     enabledBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(color: Colors.transparent)
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(color: Colors.transparent)
                //     ),
                //   ),
                // ),
          //   ],
          // ),
          // ),
      // Container(
      //     color: const Color(0xff2b2b2b),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
      //       child: Column(
      //         children: [
      //           SingleChildScrollView(
      //             child: Container(
      //             child: Column(
      //               children: [
      //                 Container(
      //                   height: 40,
      //                   decoration: const BoxDecoration(
      //                     border: Border(
      //                       bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //                     ),
      //                     color: Color(0xff2b2b2b),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 50,
      //                   decoration: const BoxDecoration(
      //                     border: Border(
      //                       bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //                     ),
      //                     color: Color(0xff2b2b2b),
      //                   ),
      //                   child: const TextField(
      //                     style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //                     decoration: InputDecoration(
      //                       filled : true,
      //                       fillColor: Color(0xff2b2b2b),
      //                       hintText: '제목',
      //                       hintStyle : TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //                       contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //                       enabledBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                       focusedBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //
      //
      //             child: Row(
      //               children: const [
      //                 Expanded(child: Text('게시판 선택', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
      //                 Icon(Icons.arrow_drop_down, color: Colors.white,),
      //               ],
      //             )
      //           ),
      //           Container(
      //             height: 50,
      //             decoration: const BoxDecoration(
      //               border: Border(
      //                 bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //               ),
      //               color: Color(0xff2b2b2b),
      //             ),
      //             child: const TextField(
      //               style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //               decoration: InputDecoration(
      //                 filled : true,
      //                 fillColor: Color(0xff2b2b2b),
      //                 hintText: '제목',
      //                 hintStyle : TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //                 contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //                 enabledBorder: UnderlineInputBorder(
      //                     borderSide: BorderSide(color: Colors.transparent)
      //                 ),
      //                 focusedBorder: UnderlineInputBorder(
      //                     borderSide: BorderSide(color: Colors.transparent)
      //                 ),
      //               ),
      //             ),
      //           ),
      //           const Expanded(child: TextField(
      //             maxLines: null,
      //             minLines: null,
      //             expands: true,
      //             keyboardType: TextInputType.multiline,
      //             style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
      //             decoration: InputDecoration(
      //               filled : true,
      //               fillColor: Color(0xff2b2b2b),
      //               hintText: '내용을 입력하세요.',
      //               hintStyle : TextStyle(fontSize: 12.0, color: Color(0xff767676), fontFamily: 'NanumGothic'),
      //               contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //               enabledBorder: UnderlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.transparent)
      //               ),
      //               focusedBorder: UnderlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.transparent)
      //               ),
      //             ),
      //           ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      //   child: Padding(
      //     padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
      //     child: Column(
      //       children: [
      //         Expanded(
      //           child: Container(
      //             color: Colors.red,
      //             child: Column(
      //               children: [
      //                 Container(
      //                   height: 40,
      //                   decoration: const BoxDecoration(
      //                     border: Border(
      //                       bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //                     ),
      //                     color: Color(0xff2b2b2b),
      //                   ),
      //                   child: Row(
      //                     children: const [
      //                       Expanded(child: Text('게시판 선택', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
      //                       Icon(Icons.arrow_drop_down, color: Colors.white,),
      //                     ],
      //                   )
      //                 ),
      //                 Container(
      //                   height: 50,
      //                   decoration: const BoxDecoration(
      //                     border: Border(
      //                       bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //                     ),
      //                     color: Color(0xff2b2b2b),
      //                   ),
      //                   child: const TextField(
      //                     style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //                     decoration: InputDecoration(
      //                       filled : true,
      //                       fillColor: Color(0xff2b2b2b),
      //                       hintText: '제목',
      //                       hintStyle : TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //                       contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //                       enabledBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                       focusedBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 const TextField(
      //                     maxLines: null,
      //                     minLines: null,
      //                     // expands: true,
      //                     keyboardType: TextInputType.multiline,
      //                     style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
      //                     decoration: InputDecoration(
      //                       filled : true,
      //                       fillColor: Color(0xff2b2b2b),
      //                       hintText: '내용을 입력하세요.',
      //                       hintStyle : TextStyle(fontSize: 12.0, color: Color(0xff767676), fontFamily: 'NanumGothic'),
      //                       contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //                       enabledBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                       focusedBorder: UnderlineInputBorder(
      //                           borderSide: BorderSide(color: Colors.transparent)
      //                       ),
      //                     ),
      //                   ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           color: Colors.yellow,
      //           child: Row(
      //             children: [
      //               IconButton(
      //                 icon: const Icon(Icons.camera_alt_outlined),
      //                 iconSize: 25.0,
      //                 color: Colors.white,
      //                 onPressed: () {
      //
      //                 },
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     //   child: Column(
      //     //     children: [
      //     //       Container(
      //     //           height: 40,
      //     //           decoration: const BoxDecoration(
      //     //             border: Border(
      //     //               bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //     //             ),
      //     //             color: Color(0xff2b2b2b),
      //     //           ),
      //     //           child: Row(
      //     //             children: const [
      //     //               Expanded(child: Text('게시판 선택', style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),),),
      //     //               Icon(Icons.arrow_drop_down, color: Colors.white,),
      //     //             ],
      //     //           )
      //     //       ),
      //     //       Container(
      //     //         height: 50,
      //     //         decoration: const BoxDecoration(
      //     //           border: Border(
      //     //             bottom: BorderSide(width: 1, color: Color(0xff767676)),
      //     //           ),
      //     //           color: Color(0xff2b2b2b),
      //     //         ),
      //     //         child: const TextField(
      //     //           style: TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //     //           decoration: InputDecoration(
      //     //             filled : true,
      //     //             fillColor: Color(0xff2b2b2b),
      //     //             hintText: '제목',
      //     //             hintStyle : TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'NanumGothic', fontWeight: FontWeight.bold),
      //     //             contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //     //             enabledBorder: UnderlineInputBorder(
      //     //                 borderSide: BorderSide(color: Colors.transparent)
      //     //             ),
      //     //             focusedBorder: UnderlineInputBorder(
      //     //                 borderSide: BorderSide(color: Colors.transparent)
      //     //             ),
      //     //           ),
      //     //         ),
      //     //       ),
      //     //       const SizedBox(
      //     //         height: 300,
      //     //         child: TextField(
      //     //           keyboardType: TextInputType.multiline,
      //     //           maxLines: null,
      //     //           style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'NanumGothic'),
      //     //           decoration: InputDecoration(
      //     //             filled : true,
      //     //             fillColor: Color(0xff2b2b2b),
      //     //             hintText: '내용을 입력하세요.',
      //     //             hintStyle : TextStyle(fontSize: 12.0, color: Color(0xff767676), fontFamily: 'NanumGothic'),
      //     //             contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      //     //             enabledBorder: UnderlineInputBorder(
      //     //                 borderSide: BorderSide(color: Colors.transparent)
      //     //             ),
      //     //             focusedBorder: UnderlineInputBorder(
      //     //                 borderSide: BorderSide(color: Colors.transparent)
      //     //             ),
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     //     Container(
      //     //       height: 50,
      //     //       decoration: const BoxDecoration(
      //     //         border: Border(
      //     //           top: BorderSide(width: 1, color: Color(0xff767676)),
      //     //         ),
      //     //         color: Color(0xff2b2b2b),
      //     //       ),
      //     //       child: Row(
      //     //         children: [
      //     //           IconButton(
      //     //             icon: const Icon(Icons.camera_alt_outlined),
      //     //             iconSize: 25.0,
      //     //             color: Colors.white,
      //     //             onPressed: () {
      //     //
      //     //             },
      //     //           ),
      //     //         ],
      //     //       )
      //     //     ),
      //     //   ],
      //     // ),
      //   )
      // ),
      ),
    );
  }
}