import 'package:flutter/material.dart';
import '../widgets/posting_widget.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      color: Colors.black,
      child: Column(
        children: const [
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
                      padding: EdgeInsets.only(top: 90),
                      child: Text("Haven't posted yet?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30))),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 20, top: 15, right: 20, bottom: 40),
                      child: Center(child: Text(
                          "Share a quick gem of content today so that you can connect and explore with the rest!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)))),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 50),
                    child: PostingForm(),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30),
                      child: Center(
                        child: Text(
                          "Tip: Keep a list of your favourite links all in one place so that you've always got new Gemz to share!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.bold)))),
        ],
      ),
    );
  }
}
