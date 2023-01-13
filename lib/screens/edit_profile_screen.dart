import 'package:flutter/material.dart';
import 'package:gemz/screens/edit_profile_screen.dart';
import 'package:gemz/widgets/profile_widgets/edit_profile_form.dart';
import 'package:gemz/widgets/profile_widgets/profile_image.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const userName = "William Nguyen";
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Edit Profile'),
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            color: Colors.black,
            child: Column(children: [
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
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: ProfilePicture(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: EditProfile(),
              ),
            ])));
  }
}
