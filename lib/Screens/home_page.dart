import 'package:flutter/material.dart';
import 'package:notes_app/Screens/create_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NotesApp"), centerTitle: true),
      body: Center(child: Text("Home Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateNote()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
