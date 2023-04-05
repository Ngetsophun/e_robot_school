import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Movie movie;
  const DetailPage({super.key,required this.movie});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class Movie {
}


class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Column(
        children: [
          Image.asset(' ')],
      ),
    );
  }
}
