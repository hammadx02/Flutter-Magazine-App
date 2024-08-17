// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:magazine_app/pages/single_article.dart';
// import 'package:route_transitions/route_transitions.dart';

// class SinglePage extends StatefulWidget {
//   final String image;
//   final String title;
//   final String date;
//   final double offset;
//   SinglePage(
//       {Key? key, required this.image, required this.title, required this.date, required this.offset})
//       : super(key: key);

//   @override
//   _SinglePageState createState() => _SinglePageState();
// }

// class _SinglePageState extends State<SinglePage>
//     with SingleTickerProviderStateMixin {
//   late List<String> title;
//   late Animation opacity;
//   late Animation scaleUp;
//   late AnimationController animationController;
//   Color verticalBorderColor = Colors.blue;

//   @override
//   void initState() {
//     super.initState();

//     title = widget.title.split(" ");
//     animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
//           ..addListener(() {
//             setState(() {});
//           });
//     scaleUp = Tween(begin: Offset(0.0, 20), end: Offset(0.0, 0.0)).animate(
//         CurvedAnimation(curve: Curves.easeIn, parent: animationController));
//     opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//         curve: Interval(0.4, 1.0, curve: Curves.easeIn),
//         parent: animationController));
//     animationController.forward();
//   }

//   @override
//   void dispose() {
//     animationController.reverse();
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: widget.image,
//       child: Material(
//         child: Stack(
//           children: <Widget>[
//             Positioned.fill(
//               child: Image(
//                 image: AssetImage("images/${widget.image}"),
//                 fit: BoxFit.fitHeight,
//                 alignment: Alignment(-widget.offset.abs(), 0),
//               ),
//             ),
//             Positioned.fill(
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Colors.black.withOpacity(0.5),
//                     Colors.transparent
//                   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//                 ),
//               ),
//             ),
//             Positioned(
//                 top: MediaQuery.of(context).size.height / 2.5,
//                 child: Transform.translate(
//                   offset: scaleUp.value,
//                   child: Opacity(
//                     opacity: opacity.value,
//                     child: Container(
//                       margin: EdgeInsets.only(top: 10),
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         children: <Widget>[
//                           Text(
//                             title[0].toUpperCase(),
//                             softWrap: false,
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontSize: 54,
//                                 color: Colors.white,
//                                 letterSpacing: 8,
//                                 fontFamily: "Butler"),
//                           ),
//                           Text(
//                             title[1].toUpperCase(),
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 letterSpacing: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                                 fontFamily: "Butler"),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             Positioned(
//               bottom: MediaQuery.of(context).size.height / 5,
//               child: Container(
//                 width: MediaQuery.of(context).size.width - 40,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 height: 0.8,
//                 color: Colors.white,
//               ),
//             ),
//             Positioned(
//               bottom: MediaQuery.of(context).size.height / 20,
//               child: Container(
//                 width: MediaQuery.of(context).size.width - 40,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "03",
//                               style: TextStyle(
//                                   fontSize: 28,
//                                   fontFamily: "Butler",
//                                   color: Colors.white),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               width: 40,
//                               color: Colors.white,
//                               height: 0.8,
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Container(
//                               width: 40,
//                               color: Colors.white,
//                               height: 0.8,
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "06",
//                               style: TextStyle(
//                                   fontSize: 28,
//                                   fontFamily: "Butler",
//                                   color: Colors.white),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(PageRouteTransition(
//                             animationType: AnimationType.FADE,
//                             builder: (BuildContext context) => SingleArticle(
//                                   image: widget.image,
//                                   title: widget.title,
//                                   date: widget.date,
//                                   verticalBorderColor: verticalBorderColor,
//                                 )));
//                       },
//                       child: Container(
//                         width: 120,
//                         child: Text(
//                           "read article".toUpperCase(),
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 28,
//                               fontFamily: "Butler"),
//                           textAlign: TextAlign.end,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:magazine_app/pages/single_article.dart';

// class SinglePage extends StatefulWidget {
//   final String image;
//   final String title;
//   final String date;
//   final double offset;
//   SinglePage(
//       {Key? key, required this.image, required this.title, required this.date, required this.offset})
//       : super(key: key);

//   @override
//   _SinglePageState createState() => _SinglePageState();
// }

// class _SinglePageState extends State<SinglePage>
//     with SingleTickerProviderStateMixin {
//   late List<String> title;
//   late Animation opacity;
//   late Animation scaleUp;
//   late AnimationController animationController;
//   Color verticalBorderColor = Colors.blue;

//   @override
//   void initState() {
//     super.initState();

//     title = widget.title.split(" ");
//     animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
//           ..addListener(() {
//             setState(() {});
//           });
//     scaleUp = Tween(begin: Offset(0.0, 20), end: Offset(0.0, 0.0)).animate(
//         CurvedAnimation(curve: Curves.easeIn, parent: animationController));
//     opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//         curve: Interval(0.4, 1.0, curve: Curves.easeIn),
//         parent: animationController));
//     animationController.forward();
//   }

//   @override
//   void dispose() {
//     animationController.reverse();
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: widget.image,
//       child: Material(
//         child: Stack(
//           children: <Widget>[
//             Positioned.fill(
//               child: Image(
//                 image: AssetImage("images/${widget.image}"),
//                 fit: BoxFit.fitHeight,
//                 alignment: Alignment(-widget.offset.abs(), 0),
//               ),
//             ),
//             Positioned.fill(
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Colors.black.withOpacity(0.5),
//                     Colors.transparent
//                   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.height / 2.5,
//               child: Transform.translate(
//                 offset: scaleUp.value,
//                 child: Opacity(
//                   opacity: opacity.value,
//                   child: Container(
//                     margin: EdgeInsets.only(top: 10),
//                     width: MediaQuery.of(context).size.width,
//                     child: Column(
//                       children: <Widget>[
//                         Text(
//                           title[0].toUpperCase(),
//                           softWrap: false,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 54,
//                               color: Colors.white,
//                               letterSpacing: 8,
//                               fontFamily: "Butler"),
//                         ),
//                         Text(
//                           title[1].toUpperCase(),
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 20,
//                               letterSpacing: 30,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w300,
//                               fontFamily: "Butler"),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: MediaQuery.of(context).size.height / 5,
//               child: Container(
//                 width: MediaQuery.of(context).size.width - 40,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 height: 0.8,
//                 color: Colors.white,
//               ),
//             ),
//             Positioned(
//               bottom: MediaQuery.of(context).size.height / 20,
//               child: Container(
//                 width: MediaQuery.of(context).size.width - 40,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "03",
//                               style: TextStyle(
//                                   fontSize: 28,
//                                   fontFamily: "Butler",
//                                   color: Colors.white),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               width: 40,
//                               color: Colors.white,
//                               height: 0.8,
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Container(
//                               width: 40,
//                               color: Colors.white,
//                               height: 0.8,
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "06",
//                               style: TextStyle(
//                                   fontSize: 28,
//                                   fontFamily: "Butler",
//                                   color: Colors.white),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           PageRouteBuilder(
//                             pageBuilder: (context, animation, secondaryAnimation) => SingleArticle(
//                               image: widget.image,
//                               title: widget.title,
//                               date: widget.date,
//                               verticalBorderColor: verticalBorderColor,
//                             ),
//                             transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                               const begin = 0.0;
//                               const end = 1.0;
//                               const curve = Curves.easeIn;

//                               var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//                               var opacityAnimation = animation.drive(tween);

//                               return FadeTransition(
//                                 opacity: opacityAnimation,
//                                 child: child,
//                               );
//                             },
//                           ),
//                         );
//                       },
//                       child: Container(
//                         width: 120,
//                         child: Text(
//                           "read article".toUpperCase(),
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 28,
//                               fontFamily: "Butler"),
//                           textAlign: TextAlign.end,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:magazine_app/pages/single_article.dart';

class SinglePage extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;

  SinglePage({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.offset,
  }) : super(key: key);

  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> scaleUp;
  late Animation<double> opacity;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    )..addListener(() {
        setState(() {});
      });

    scaleUp = Tween<Offset>(
      begin: Offset(0.0, 20),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));

    opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.4, 1.0, curve: Curves.easeIn),
    ));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.image,
      child: Material(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                "images/${widget.image}",
                fit: BoxFit.cover,
                alignment: Alignment(-widget.offset.abs(), 0),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              child: Transform.translate(
                offset: scaleUp.value,
                child: Opacity(
                  opacity: opacity.value,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.title.toUpperCase().split(" ")[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 54,
                            color: Colors.white,
                            letterSpacing: 8,
                            fontFamily: "Butler",
                          ),
                        ),
                        Text(
                          widget.title.toUpperCase().split(" ").length > 1
                              ? widget.title.toUpperCase().split(" ")[1]
                              : '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Butler",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 5,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 0.8,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 20,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "03",
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Butler",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 40,
                              height: 0.8,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 0.8,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "06",
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Butler",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => SingleArticle(
                              image: widget.image,
                              title: widget.title,
                              date: widget.date,
                              verticalBorderColor: Colors.blue,
                            ),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = 0.0;
                              const end = 1.0;
                              const curve = Curves.easeIn;

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var opacityAnimation = animation.drive(tween);

                              return FadeTransition(
                                opacity: opacityAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 120,
                        child: Text(
                          "read article".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: "Butler",
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
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
