import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      color: Color.fromARGB(255, 33, 33, 33),
      child: Column(
        children: const [
          Divider(
            color: Colors.white,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
          Divider(
            color: Colors.blueAccent,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
          Padding(
              padding: EdgeInsets.only(top: 90),
              child: Text("Haven't posted yet?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30))),
          Padding(
              padding: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Text(
                  "Share a quick gem of content today so that you can connect and explore with the rest!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20))),

          //TODO: Finish Posting mechanism
          // Padding(
          //     padding: EdgeInsets.only(top: 90),
          //     child: Form(
          //       key: _postKey,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Text("Share your Gemz"),
          //           TextFormField(
          //             decoration: const InputDecoration(
          //               hintText: "Original Thought",
          //             ),
          //             validator: (String? value) {
          //               if (value == null || value.isEmpty) {
          //                 return 'Please enter your Gemz!';
          //               }
          //               return null;
          //             },
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.symmetric(vertical: 16.0),
          //             child: ElevatedButton(
          //               onPressed: () => {},
          //               child: const Text("SHARE"),
          //            ),
          //           ),
          //         ],
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                  "Tip: Keep a list of your favourite links all in one place so that you've always got new Gemz to share!",
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
