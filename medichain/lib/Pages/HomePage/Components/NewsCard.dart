import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  String image_path = "";
  NewsCard({Key? key, required this.image_path}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
        

      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Transform.scale(
        scale: 1.2,
          child: Image.asset(widget.image_path, fit: BoxFit.cover),
        ),
      ),

      );
  }
}