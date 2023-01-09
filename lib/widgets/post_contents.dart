import 'package:flutter/material.dart';

class PostContents extends StatelessWidget {
  const PostContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 400,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 43, 46, 49),
        border: Border.all(
          // color: Colors.white,
          color: const Color.fromARGB(255, 43, 46, 49),
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  width: 50,
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                          '/Users/oltimaloku/Projects/Gemz/lib/assets/portrait-happy-excited-man-blue-clothing-isolated-against-yellow-color-background-square-composition-portrait-happy-200740155.jpg')),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 5),
                      child: Text(
                        'oltimaloku_',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Vancouver, BC',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage(
                '/Users/oltimaloku/Projects/Gemz/lib/assets/maxresdefault.jpg'),
          ),
          Row(
            children: const [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.diamond, color: Colors.white, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add_comment_outlined,
                    color: Colors.white, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.send_and_archive_outlined,
                    color: Colors.white, size: 30),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('2,334 Gemz',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 8, 8),
                  child: Text('oltimaloku_',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              Text('Check out this awesome video!',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
