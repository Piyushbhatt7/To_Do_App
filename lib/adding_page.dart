import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AddingTodoPage extends StatefulWidget {
  const AddingTodoPage({super.key});

  @override
  State<AddingTodoPage> createState() => _AddingTodoPageState();
}

class _AddingTodoPageState extends State<AddingTodoPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(2),
        children: [
          TextField(
            controller: titleController,
             decoration: InputDecoration(
               hintText: 'Title',
             ),
          ),

          TextField(
            controller: descriptionController,
               decoration: InputDecoration(
                 hintText: 'Description',
               ),
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 8,
          ),

          SizedBox(width: 20,),

          ElevatedButton(
              onPressed: ()
              {

              },
              child: Text(
                 'Submit'
              )
          )
        ],
      ),
    );
  }

  void submitData()
  {
    // Get the data from from
     final title = titleController.text;
     final description = descriptionController.text;
     final body = {
       "title": title,
       "description": description,
       "is_completed": false,
     };
    // Submit data to the server // 13:20
    http.post(url)
    // Show success or fail message based on status


  }
}
