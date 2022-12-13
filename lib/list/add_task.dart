import 'package:flutter/material.dart';
import 'package:to_do_app/theme/my_theme.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.headline5,
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text(
              'Title',
            )),
          ),
          TextFormField(
            minLines: 4,
            maxLines: 4,
            decoration:  InputDecoration(label: Text('Description')),
          ),
          const SizedBox(height: 16,),

          Text('Select Date',style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 16,),
          InkWell(
              onTap: () {
                showTaskDatePicker();
              },
              child: Text(
                '10/13/1999',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: MyTheme.lightPrimary),
              )),
          const SizedBox(height: 28,),

          ElevatedButton(onPressed: (){}, child: Text('Submit'),),
        ],
      ),
    );
  }

  void showTaskDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
