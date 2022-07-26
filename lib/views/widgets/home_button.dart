import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  double width,height;
  final Function() onPressed;
 HomeButton({Key? key,required this.text,required this.width,required this.height,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                fixedSize: Size(width,height)),
            onPressed: onPressed,
            child: Text(
              text,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.white),
            )),
    );
  }
}
