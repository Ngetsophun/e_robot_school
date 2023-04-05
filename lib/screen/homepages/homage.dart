import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_robot_school/alert_exit_dialog.dart';
import 'package:e_robot_school/screen/Course/course_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<String> imgList = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
  ];

  List data = [
    {'color': Color(0xffff6968)},
    {'color': Color(0xffff8f61)},
    {'color': Color(0xffff6968)},
    {'color': Color(0xffff8f61)},
    {'color': Color(0xffff6968)},
    {'color': Color(0xffff8f61)},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.person,
            size: 100,
            color: Colors.white,
          )),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomePageScreen()));
            },
          ),
          ListTile(
            title: Text(
              "About US",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.payment_outlined,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Course",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.countertops,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CourseScreen()));
            },
          ),
          ListTile(
            title: Text(
              "Exit",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Are you sure?"),
                        content: Text("Do you want to exit an App?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text('No')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text('Yes'))
                        ],
                      ));
            },
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
                child: CarouselSlider(
                    items: imgList.map((item) {
                      return Container(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {});
                      },
                      enlargeCenterPage: true,
                    ))),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: GridView.builder(
                  padding: EdgeInsets.all(12),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("E-Robot"),
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ]),
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
