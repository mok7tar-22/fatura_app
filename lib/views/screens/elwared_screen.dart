import 'package:fatura/views/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class ElwaredScreen extends StatelessWidget {
  const ElwaredScreen({Key? key}) : super(key: key);
  static String routeName='elwared';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        endDrawer:  MyDrawer(),
        backgroundColor: Color.fromRGBO(15, 24, 50, 1.0),

      ),
    );
  }
}
