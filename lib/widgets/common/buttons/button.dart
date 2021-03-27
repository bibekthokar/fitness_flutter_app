import 'package:fitness_mobile/config/palette.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color color;

  const Button({Key key, this.title, this.icon, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: () {},
        child: Stack(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Palette.whiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
