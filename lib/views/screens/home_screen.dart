import 'package:fatura/views/screens/el3ohda_screen.dart';
import 'package:fatura/views/screens/elwared_screen.dart';
import 'package:fatura/views/screens/masrofat_screen.dart';
import 'package:fatura/views/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 24, 50, 1.0),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.05,
                ),
                Text("أهلا بك في برنامج فواتيرك",
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                HomeButton(
                  text: 'المصروفات',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MasrofatScreen();
                      },
                    ));
                  },
                  width: size.width,
                  height: size.width * 0.2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                HomeButton(
                  text: 'الوارد',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ElwaredScreen();
                      },
                    ));
                  },
                  width: size.width,
                  height: size.width * 0.2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                HomeButton(
                  text: 'بند العهده',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return El3ohdaScreen();
                      },
                    ));
                  },
                  width: size.width,
                  height: size.width * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
