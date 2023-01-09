import 'package:flutter/material.dart';
import 'package:gemz/widgets/post_contents.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
        child: SingleChildScrollView(
      child: Column(
        children: [
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
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: PostContents(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: PostContents(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: PostContents(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: PostContents(),
          ),
        ],
      ),
    ));
  }
}
