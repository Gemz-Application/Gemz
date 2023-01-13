import 'package:flutter/material.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  ProfilePictureState createState() {
    return ProfilePictureState();
  }
}

class ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
              '/Users/oltimaloku/Projects/Gemz/lib/assets/portrait-happy-excited-man-blue-clothing-isolated-against-yellow-color-background-square-composition-portrait-happy-200740155.jpg')),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 20.0,
        ),
      ),
    );
  }
}
