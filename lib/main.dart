import 'package:flutter/material.dart';
import 'package:flutter_travel/FadeAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hr.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(.2),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.4)
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Center(
                      child: Text(
                        'what you would like to find ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search for cities places...',
                            hintStyle: TextStyle(fontSize: 14)),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Best Destination',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                PageFadeAnimation(  itemcate('assets/images/united.jpg', 'United'), 500),
                  PageFadeAnimation(itemcate('assets/images/canada.jpg', 'Canada'),1000),
                  PageFadeAnimation(itemcate('assets/images/greece.jpg', 'Greece'),1500)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: Colors.blue.withOpacity(.2)),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blue,
                  )),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: Colors.blue.withOpacity(.2)),
                  child: Center(
                      child: Icon(
                    Icons.ac_unit,
                    color: Colors.blue,
                  )),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: Colors.blue.withOpacity(.2)),
                  child: Center(
                      child: Icon(
                    Icons.align_horizontal_center,
                    color: Colors.blue,
                  )),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  child: Text(
                    'Best Hotel',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PageFadeAnimation(itemcate('assets/images/alexander.jpg', 'alexander'),500),
                      PageFadeAnimation(itemcate('assets/images/fernando.jpg', 'fernando'),1000),
                      PageFadeAnimation(itemcate('assets/images/sara.jpg', 'sara'),1500)
                    ],
                  ),
                )
              ]),
            )
          ]),
        ));
  }

  Widget itemcate(image, title) {
    return AspectRatio(
      aspectRatio: 1.5 / 1.7,
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.3)
              ])),
          child: Container(
            margin: EdgeInsets.only(left: 10, bottom: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
