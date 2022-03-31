import 'package:flutter/material.dart';

import 'add_student_page.dart';
import 'list_student_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Flutter FireStore Crud'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddStudentPage(),
                  ),
                );
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      body: ListStudentPage(),
    );
  }
}
