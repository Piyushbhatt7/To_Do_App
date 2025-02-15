import 'package:flutter/material.dart';

class AddingTodoPage extends StatefulWidget {
  const AddingTodoPage({super.key});

  @override
  State<AddingTodoPage> createState() => _AddingTodoPageState();
}

class _AddingTodoPageState extends State<AddingTodoPage> {
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
             decoration: InputDecoration(
               hintText: 'Title',
             ),
          ),

          TextField(
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
}
