import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_app/theme/my_theme.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.red,
       borderRadius: BorderRadius.circular(18)),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.2,
          motion: DrawerMotion(),
          children: [
            SlidableAction(
                onPressed: (BuildContext) {},
                label: 'Delete',
                backgroundColor:Colors.red,
                icon: Icons.delete, borderRadius: BorderRadius.only(topLeft: Radius.circular(18),bottomLeft: Radius.circular(18))),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 4,
                  decoration: BoxDecoration(
                      color: MyTheme.lightPrimary,
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  width: 9,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'play basket ball',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: MyTheme.lightPrimary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          SizedBox(
                            width: 9,
                          ),
                          Text('10:20 AM'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                      color: MyTheme.lightPrimary,
                      borderRadius: BorderRadius.circular(18)),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
