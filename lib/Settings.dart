import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(121, 0, 255, 0.7),
        title: Text(
          "Settings",
          style:
          TextStyle(fontFamily: "Times New Roman"),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: <Widget> [
              Search(),
              Row1(),
              Row2(),
              Row3(),
              Row4(),
              Row5(),
              Row6(),
            ],
          ),
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}
bool _folded = true;

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(top: 10),
      duration: Duration(milliseconds: 300),
      width: _folded ? 56 : 200,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: _folded ? TextField(decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none ),
              )
                  : null,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_folded ? 32 : 0),
                    topRight: Radius.circular(32),
                    bottomLeft: Radius.circular(_folded ? 32 : 0),
                    bottomRight: Radius.circular(32),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      _folded ? Icons.search : Icons.close,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      _folded = !_folded;
                    });
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.account_circle, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 110, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.notifications, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 69, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.location_on, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 107, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.lock, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "Security",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 110, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Row5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.headset_mic, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "Help And Support",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Row6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.device_unknown, size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            children: <Widget> [
              Text(
                "About",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 129, top: 20),
          child: Column(
            children: <Widget> [
              Icon(Icons.arrow_forward_ios, size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}