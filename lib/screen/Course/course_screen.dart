import 'package:e_robot_school/screen/homepages/detailPage.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  var titleList = [
    "Robotics",
    "Canva",
    "Scratch",
    "Web Application",
    "Mobile App"
  ];
  var descList = [
    "Robotic is a ",
    "Canva is a ",
    "Scratch is a ",
    "We Design is a ",
    "Mobile app is a"
  ];
  var imgList = [
    'Image/erobot.jpg',
    'Image/canva.png',
    'Image/scratch.png',
    'Image/web.png',
    'Image/mobile.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text("Course"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(titleList[index]);
               // Navigator.of(context).push(
                //    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleList[index],
                            style: TextStyle(fontSize: 25),
                          ),
                          Container(
                            width: width,
                            child: Text(
                              descList[index],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
