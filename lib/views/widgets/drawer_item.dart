import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String title;
  Function() onPressed;
  IconData icon;
   DrawerItem({Key? key,required this.title,required this.icon,required this.onPressed}) : super(key: key);
  var style=TextStyle(fontSize: 30, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return   ListTile(
      trailing: Icon(
        icon,

        size: 30,
        color: Colors.white,
      ),
      title: Text(
      title,
        style:style ,
      ),
      onTap: () {
        Navigator.pop(context);
       onPressed();
      },
    );
  }
}
