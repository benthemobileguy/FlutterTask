import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/presentation/resources/font-manager.dart';

class MainButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final String icon;
  final Color color, textColor, borderColor;

  MainButton({
    this.text,
    this.onPressed,
    this.textColor,
    this.borderColor,
    this.color,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement custom properties
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(56),
            border: Border.all(color: borderColor, width: 1)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Container(
                    padding: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(icon),
                  )
                : Container(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeightManager.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
