import 'package:flutter/material.dart';

class GroupChatWidget extends StatelessWidget {
  final String imagerl1;
  final String imagerl2;
  GroupChatWidget({this.imagerl1, this.imagerl2});
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * 0.23,
      height: deviceSize.height * 0.09,
      child: Stack(
        children: [
          Positioned(
            left: 15,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(imagerl2),
            ),
          ),
          Positioned(
            top: -1,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(imagerl1),
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            left: 22,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                '+3',
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GroupChatWidget2 extends StatelessWidget {
  final bool stories = false;
  final radius = 30.0;

  final _gradientDecoration = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF833AB4),
          Color(0xFFF77737),
          Color(0xFFE1306C),
          Color(0xFFC13584),
        ],
      ),
      shape: BoxShape.circle);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: radius * 2,
      width: 80,
      child: Column(
        children: [
          Container(
            decoration: stories == true ? _gradientDecoration : null,
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/donnaruma.jpg'),
                      radius: radius,
                    ),
                    stories == true
                        ? Center()
                        : Positioned(
                            right: 2,
                            top: 42,
                            child: Container(
                              padding: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightBlue,
                                border:
                                    Border.all(color: Colors.white, width: 2.5),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 16,
                                minHeight: 16,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              'Your storie',
              maxLines: 1,
              textAlign: TextAlign.start,
              textScaleFactor: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
