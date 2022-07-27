import 'package:fatura/views/screens/el3ohda_screen.dart';
import 'package:fatura/views/screens/elwared_screen.dart';
import 'package:fatura/views/screens/home_screen.dart';
import 'package:fatura/views/screens/masrofat_screen.dart';
import 'package:fatura/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.blue.shade900,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              DrawerItem(
                  title: "المصروفات",
                  icon: Icons.outbox,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name !=
                        MasrofatScreen.routeName)
                    {
                      Navigator.of(context)
                          .pushReplacementNamed(MasrofatScreen.routeName);
                    }
                  }),
              const SizedBox(height: 10),
              DrawerItem(
                  title: 'الوارد',
                  icon: Icons.arrow_circle_down_rounded,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name !=
                        ElwaredScreen.routeName)
                    {
                      Navigator.of(context)
                          .pushReplacementNamed(ElwaredScreen().routeName);
                    }
                  }),
              DrawerItem(
                  title: 'بند العهده',
                  icon: Icons.indeterminate_check_box,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return El3ohdaScreen();
                      },
                    ));
                  }),

              // ListTile(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: const [
              //       Icon(
              //         Icons.arrow_circle_down_rounded,
              //         size: 30,
              //         color: Colors.white,
              //       ),
              //       Text(
              //         'الوارد',
              //         style: TextStyle(
              //             fontSize: 30,
              //             color: Colors.white),
              //       )
              //     ],
              //   ),
              //   onTap: () {
              //     Navigator.pop(context);
              //     Navigator.push(context, MaterialPageRoute(builder: (_) => Waredat()));
              //   },
              // ),
              // ListTile(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: const [
              //       Icon(
              //         Icons.indeterminate_check_box,
              //         size: 30,
              //         color: Colors.white,
              //       ),
              //       Text(
              //         'بند العهده',
              //         style: TextStyle(
              //             fontSize: 30,
              //             color: Colors.white),
              //       )
              //     ],
              //   ),
              //   onTap: () {
              //     Navigator.pop(context);
              //     Navigator.push(context, MaterialPageRoute(builder: (_) => El3ohad()));
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
