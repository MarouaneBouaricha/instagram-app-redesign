import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _getHearder(context),
            _getGallery(context),
            _getBottomBar(context),
          ],
        ),
      ),
    );
  }
}

_getHearder(context) {
  return Positioned(
    top: 0,
    child: Container(
      height: 455,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 5, left: 5),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "e.johnson",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                        ),
                      ],
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
                      Image.asset('assets/menu.png', width: 24),
                      SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage("assets/face1.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "21",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Text(
                      "563",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Text(
                      "172",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 7.0),
            child: Row(
              children: [
                Text(
                  "Elliot Johnson",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 7,
                ),
                Image.asset(
                  "assets/circle.png",
                  width: 8,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Freelance Artist/Generalist TD",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 14.0),
            child: Row(
              children: [
                Text(
                  "Freelance Artist/Generalist TD.Available Now",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 14.0),
            child: Row(
              children: [
                Text(
                  "United Kingdom",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  child: Center(
                      child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.grey[800]),
                  )),
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  child: Center(
                      child: Text(
                    "Promotions",
                    style: TextStyle(color: Colors.grey[800]),
                  )),
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  child: Center(
                      child: Text(
                    "Insights",
                    style: TextStyle(color: Colors.grey[800]),
                  )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _getNewStoryBtn(),
                _getBoxHighlights(
                    image: AssetImage('assets/behance.png'),
                    color: Color(0xff0d4dff),
                    text: "Behance"),
                _getBoxHighlights(
                    image: AssetImage('assets/dribble.png'),
                    color: Color(0xffFC0E66),
                    text: "Dribble"),
                _getBoxHighlights(
                    image: AssetImage('assets/pinterest.png'),
                    color: Color(0xffFC0000),
                    text: "Pinterest"),
                _getBoxHighlights(
                    image: AssetImage('assets/food.png'),
                    color: Color(0xff6D31EA),
                    text: "Food"),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width /2,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1.0, color: Color(0xffFC0E66))),
                ),
                child: Center(
                  child: Icon(
                    Icons.grid_view,
                    color: Color(0xffFC0E66),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width /2,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1.0, color: Colors.grey)),
                ),
                child: ImageIcon(AssetImage("assets/user_location.png"), size: 25, color: Colors.grey[700],),//Icon(Icons.account_box), 
                
              ),
            ],
          )
        ],
      ),
    ),
  );
}

_getNewStoryBtn() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.grey)),
            ),
            Text(
              '+',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("New"),
      )
    ],
  );
}

_getBoxHighlights({ImageProvider image, Color color, String text}) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Positioned(
            top: 5,
            bottom: 5,
            left: 5,
            right: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image(
                color: Colors.white,
                width: 30,
                height: 30,
                image: image,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          text,
        ),
      ),
    ],
  );
}

_getGallery(context) {
  return Container(
    child: ListView(
      padding: EdgeInsets.only(top: 470, left: 30, right: 30),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/fifth.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      width: 160,
                      height: 130,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/second.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      width: 160,
                      height: 170,
                      image: AssetImage("assets/cat.jpg"),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
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
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/face1.jpg",
                width: 28,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
