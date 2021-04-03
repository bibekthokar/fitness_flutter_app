import 'package:fitness_mobile/config/constants.dart';
import 'package:fitness_mobile/config/palette.dart';
import 'package:flutter/material.dart';

class DesignContainer extends StatelessWidget {
  final Widget child;
  const DesignContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              color: Palette.gray6.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.only(top: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            color: Palette.gray6,
          ),
          child: child,
        ),
      ],
    );
  }
}
