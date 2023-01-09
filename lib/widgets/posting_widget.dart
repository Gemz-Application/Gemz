import 'package:flutter/material.dart';

class PostingForm extends StatefulWidget {
  const PostingForm({super.key});

  @override
  PostingFormState createState() {
    return PostingFormState();
  }
}

class PostingFormState extends State<PostingForm> {
  final _formKey = GlobalKey<FormState>();
  final _formColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: _formColor,
          border: Border.all(
            color: Colors.blueAccent,
            width: 2,
          )
        ),
        child: Form(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "GEMZ Link",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your link..."
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
                "Original Thought",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Type your thoughts..."
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
                child: const Text('SHARE'),
              ),
            ),
          ]),
        ));
  }
}