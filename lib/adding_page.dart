import 'dart:convert';

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
        padding: EdgeInsets.only(top: 5.0, left: 15.0),
        children: [
          TextField(
            controller: titleController,
             decoration: InputDecoration(
               hintText: 'Title',
             ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextField(
              controller: descriptionController,
                 decoration: InputDecoration(
                   hintText: 'Description',

                 ),
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
            ),
          ),

          SizedBox(height: 20,),

          ElevatedButton(
              onPressed: ()
              {
                submitData();
              },

              child: Text(
                 'Submit'
              )
          )
        ],
      ),
    );
  }

  Future <void> submitData() async
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
     final url = 'https://api.nstack.in/v1/todos';
     final uri = Uri.parse(url);
     final response = await http.post(
         uri,
         body: jsonEncode(body),
         headers: {
           'Content-Type': 'application/json'
         }
     );
    // Show success or fail message based on status
    
    if(response.statusCode == 201)
      {
        print('Success');
      }

    else {
        print('Failed');
        print(response.body);
    }



  }
}
