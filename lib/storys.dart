import 'package:flutter/material.dart';

class Storydetails extends StatefulWidget {
  const Storydetails(
      {key,
      required this.name,
      required this.getimage,
      required this.fullstory});
  final name;
  final fullstory;
  final getimage;

  @override
  State<Storydetails> createState() => _StorydetailsState();
}

class _StorydetailsState extends State<Storydetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.getimage))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.fullstory,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
