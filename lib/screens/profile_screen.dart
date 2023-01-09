import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        color: Colors.black,
        child: Column(children: const [
          Divider(
            color: Colors.white,
            height: 5,
            thickness: 3,
            indent: 0,
            endIndent: 0,
          ),
          Divider(
            color: Colors.blueAccent,
            height: 5,
            thickness: 3,
            indent: 0,
            endIndent: 0,
          ),
        ]));
  }
}
