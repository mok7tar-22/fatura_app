import 'package:fatura/views/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class MasrofatScreen extends StatelessWidget {
  static String routeName='masrofat';
  const MasrofatScreen({Key? key}) : super(key: key);

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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: MediaQuery.of(context).size.height*0.15,
            width: double.infinity,
            child:Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('نننننننننن',textDirection: TextDirection.ltr,),
                  Text('mmmmmmmmmm'),
                  Text('mmmmmmmmmmmmmm'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
