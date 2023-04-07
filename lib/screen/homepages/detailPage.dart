import 'package:e_robot_school/model/course.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course course;

  DetailPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          course.title,
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
      ),
      // body: Padding(padding: EdgeInsets.all(8.0),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Image.asset(course.imgCourse),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(course.description,textAlign: TextAlign.justify,),

      //     )
      //   ],
      // ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset(course.imgCourse),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      course.title + " Complete Course",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Create by E- Robot",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    Text(
                      "55 Video",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      // decoration: BoxDecoration(
                      //     color: Color(0xFFF53FF),
                      //     borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Material(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              onTap: () {
                                print("Get Start");
                              },
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 35),
                                child: Text(
                                  "Get Start",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // get _buildBody {
  //   // return SafeArea(

  //   );
  // }
}
