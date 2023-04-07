class DataHomePage {
  String nameTeam;
  String imgHomePage;

  DataHomePage({required this.nameTeam, required this.imgHomePage});
}

List<DataHomePage> dataHomePageList = [
  DataHomePage(
    nameTeam: 'Robotics',
    imgHomePage: "Image/robotics.jpg",
  ),
  DataHomePage(
    nameTeam: 'Web Application',
    imgHomePage: 'Image/web.png',
  ),
  DataHomePage(
    nameTeam: 'Mobile App',
    imgHomePage: 'Image/mobile.jpg',
  ),
  DataHomePage(
    nameTeam: 'Research',
    imgHomePage: "Image/research.jpg",
  ),
  DataHomePage(
    nameTeam: 'UX/UI',
    imgHomePage: "Image/uxui.jpg",
  ),
  DataHomePage(
    nameTeam: 'Education',
    imgHomePage: "Image/education.jpg",
  ),
];
