import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingControllerTitle =
        TextEditingController();
    final TextEditingController textEditingControllerDescription =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Create Notes"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextfield(
              textEditingController: textEditingControllerTitle,
              hintText: "Title",
            ),
            CustomTextfield(
              textEditingController: textEditingControllerDescription,
              hintText: "Description",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String title = textEditingControllerTitle.text;
          String description = textEditingControllerDescription.text;

          final Map<String, String> note = {
            "title": title,
            "description": description,

            "CreatedAt": DateTime.now().toString(),
          };
          print(note);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
