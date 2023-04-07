import 'package:flutter/material.dart';

class Course {
  String title;
  String description;
  String imgCourse;

  Course(
      {required this.title,
      required this.description,
      required this.imgCourse});
}

List<Course> courseList = [

  Course(
    title: 'Robotics', 
    description: 'Robotics is a', 
    imgCourse: 'Image/erobot.jpg',
  ),
  Course(
    title: 'Canva', 
    description: 'Robotics is a', 
    imgCourse: 'Image/canva.png',
  ),
  Course(
    title: 'Scratch', 
    description: 'Robotics is a', 
    imgCourse: 'Image/scratch.png',
  ),
  Course(
    title: 'Web Application', 
    description: 'Robotics is a', 
    imgCourse: 'Image/web.png',
  ),
  Course(
    title: 'Mobile app', 
    description: 'Robotics is a', 
    imgCourse: 'Image/mobile.jpg',
  ),

];
