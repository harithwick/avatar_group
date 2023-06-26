library group_circle_avatar;

import 'package:flutter/material.dart';
import 'package:group_circle_avatar/initial_circle_avatar.dart';

class CircleAvatarGroup extends StatelessWidget {
  const CircleAvatarGroup({Key? key}) : super(key: key);

  Widget buildAvatarGroup({required List ownerList, int maxCount = 2}) {
    // Application.calendarController.
    List<Widget> avatarList = [];

    if (ownerList.isEmpty) {
      return const SizedBox();
    }

    for (var i = 0; i < ownerList.length; i++) {
      if (i < maxCount) {
        avatarList.add(Positioned(
          left: (i * (1 - .4) * 40).toDouble(),
          top: 0,
          child: InitialCircleAvatar(
              backgroundColor: ownerList[i].color, label: ownerList[i].name),
        ));
      }
      if (i == maxCount) {
        avatarList.add(Positioned(
          left: (i * (1 - .4) * 40).toDouble(),
          top: 0,
          child: InitialCircleAvatar(
              backgroundColor: Colors.red,
              label: "+ ${avatarList.length - maxCount}"),
        ));
      }
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 90,
        height: 40,
        child: Stack(
          children: avatarList,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
