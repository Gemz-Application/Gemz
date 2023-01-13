import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  EditProfileState createState() {
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final _formColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your name..."
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                //todo
                //*have to figure out what to do with the user inputed data whether that is linking it up to the backend and feed page//
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Username",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your username..."
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                //todo
                //*have to figure out what to do with the user inputed data whether that is linking it up to the backend and feed page//
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Phone Number",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your number..."
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                //todo
                //*have to figure out what to do with the user inputed data whether that is linking it up to the backend and feed page//
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Bio:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your bio..."
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                //todo
                //*have to figure out what to do with the user inputed data whether that is linking it up to the backend and feed page//
                return null;
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Save'),
              ),
            ),
          ]),
        ));
  }
}