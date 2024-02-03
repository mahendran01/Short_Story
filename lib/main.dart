import 'package:flutter/material.dart';
import 'package:shortstory/inputstorys.dart';
import 'package:shortstory/storys.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  var num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 60,
        title: Text(
          'Short Story',
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: liststory.length,
          itemBuilder: (BuildContext context, index) {
            var data = liststory[index];
            return Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Storydetails(
                                name: data.title,
                                getimage: data.image,
                                fullstory: data.story)));
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(data.image),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        data.title,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
