import 'package:e_robot_school/model/course.dart';
import 'package:e_robot_school/screen/homepages/detailPage.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text("Course"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            Course course = courseList[index];
            return GestureDetector(
              onTap: () {
                print(course.title);
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage(course: course,)));
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      child: Image.asset(course.imgCourse),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.title,
                            style: TextStyle(fontSize: 25),
                          ),
                          Container(
                            width: width,
                            child: Text(
                              course.description
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
