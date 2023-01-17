import 'package:flutter/material.dart';
import 'package:gemz/screens/edit_profile_screen.dart';
import 'package:gemz/widgets/profile_widgets/edit_profile_form.dart';
import 'package:gemz/widgets/profile_widgets/profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const userName = "William Nguyen";
    return Container(
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
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Container(
                child: Row(children: [
                  Text(
                    "Name:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Text(
                    "William",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ]),
              )),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Container(
                child: Row(children: [
                  Text(
                    "Username:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Text(
                    "wnguye03",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ]),
              )),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Container(
                child: Row(children: [
                  Text(
                    "Phone Number:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Text(
                    "778-952-9703",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ]),
              )),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Container(
                child: Row(children: [
                  Text(
                    "Bio:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Text(
                    "I am...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ]),
              )),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                );
              },
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: const Text('Edit'),
            ),
          )
        ]));
  }
}
