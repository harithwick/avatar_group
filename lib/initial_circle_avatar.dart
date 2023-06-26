import 'package:flutter/material.dart';
import 'package:group_circle_avatar/utils.dart';

class InitialCircleAvatar extends StatelessWidget {
  final Color backgroundColor;
  final String label;
  final double radius;
  final EdgeInsets margin;
  const InitialCircleAvatar(
      {Key? key,
      required this.backgroundColor,
      required this.label,
      this.radius = 24,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: margin,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius,
        child: CircleAvatar(
          radius: radius - 2,
          backgroundColor: backgroundColor,
          child: Text(
            Utils.getInitials(label),
            style: TextStyle(
                fontSize: 15,
                color: Utils.getTextColorBasedOnBackground(backgroundColor)),
          ),
        ),
      ),
    );
  }
}
