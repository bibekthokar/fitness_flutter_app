import 'package:fitness_mobile/config/palette.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final dynamic icon;
  final Color color;
  final Color textColor;
  final Function onPressed;
  final Color iconBg;

  const Button({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.icon,
    this.iconBg,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

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
            backgroundColor: MaterialStateProperty.all<Color>(color)),
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              if (icon != null)
                Positioned(
                  left: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: color != null
                          ? Palette.gray1
                          : Palette.gray1.withOpacity(.3),
                    ),
                    child: icon,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
