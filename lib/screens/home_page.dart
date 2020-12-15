import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _getHeader(context),
            _getPostsList(context),
            _getBottomBarShadow(context),
            _getBottomBar(context),
          ],
        ),
      ),
    );
  }
}

_getHeader(context) {
  return Positioned(
    top: 0,
    child: Container(
      height: 160,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5, left: 5),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/logo.png',
                      width: 150,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset('assets/plus.png', width: 24),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.asset('assets/messenger.png', width: 24),
                      SizedBox(
                        width: 15.0,
                      ),
                      Image.asset('assets/heart_favorite.png', width: 24),
                      SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _getNewStoryBtn(),
                _getUserStory(
                    image: AssetImage('assets/face1.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face2.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face3.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face4.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face5.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face6.jpg'), newStory: true),
                _getUserStory(
                    image: AssetImage('assets/face.jpg'), newStory: true),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

_getNewStoryBtn() {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey)),
        ),
        Text(
          '+',
          style: TextStyle(
              color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w300),
        ),
      ],
    ),
  );
}

_getUserStory({ImageProvider image, bool newStory}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: newStory
                ? LinearGradient(
                    end: Alignment.bottomLeft,
                    begin: Alignment.topRight,
                    colors: [
                        Color(0xff5d68d8),
                        Color(0xfff358a7),
                        Color(0xfffdd776),
                        Color(0xffb339a2),
                      ])
                : null,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image(
            width: 45,
            height: 45,
            image: image,
          ),
        )
      ],
    ),
  );
}

_getPostsList(context) {
  return Container(
    child: ListView(
      padding: EdgeInsets.only(top: 160),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _getPost(
          image: AssetImage('assets/joseph-chan.jpg'),
          name: 'Jennifer_Cole',
          avatar: AssetImage('assets/face.jpg'),
          context: context,
        ),
        _getPost(
          image: AssetImage('assets/second.jpg'),
          name: 'Peter_Range',
          avatar: AssetImage('assets/face5.jpg'),
          context: context,
        ),
        _getPost(
          image: AssetImage('assets/cat.jpg'),
          name: 'SmartFox',
          avatar: AssetImage('assets/face4.jpg'),
          context: context,
        ),
        SizedBox(
          height: 100,
        )
      ],
    ),
  );
}

_getPost({ImageProvider image, String name, ImageProvider avatar, context}) {
  return Align(
    heightFactor: 0.82,
    alignment: Alignment.topCenter,
    child: Container(
      margin: EdgeInsets.all(12),
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: image,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(radius: 18, backgroundImage: avatar),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 60.0),
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite, color: Colors.redAccent),
                  Text(
                    ' 2.4K',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/comment.png",
                    width: 26,
                  ),
                  Text(
                    ' 175',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/bookmark.png",
                    width: 26,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

_getBottomBar(context) {
  return Positioned(
    bottom: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff000000),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              "assets/home.png",
              width: 24,
              color: Colors.white,
            ),
            Icon(Icons.search, size: 24, color: Colors.white),
            Image.asset(
              "assets/playlist.png",
              width: 24,
              color: Colors.white,
            ),
            Image.asset(
              "assets/basket.png",
              width: 24,
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/face1.jpg",
                  width: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

_getBottomBarShadow(context) {
  return Positioned(
    bottom: 0,
    child: Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Colors.grey.withOpacity(0.8),
            Colors.grey.withOpacity(0.01),
          ])),
    ),
  );
}
