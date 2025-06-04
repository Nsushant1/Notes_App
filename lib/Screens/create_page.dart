import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Create Notes"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder: myBorder,
                enabledBorder: myBorder,
              ),
            ),
          ],
        ),
      ),
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
