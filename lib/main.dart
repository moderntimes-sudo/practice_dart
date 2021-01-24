import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
    home:JapanCard(),
  ));

class JapanCard extends StatefulWidget {
  @override
  _JapanCardState createState() => _JapanCardState();
}

class _JapanCardState extends State<JapanCard> {

  int japanLevel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
        title:Text("Japan ID Card"),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation:0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            japanLevel+=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body:Padding(
        padding:EdgeInsets.fromLTRB(30, 40, 30, 0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/icon2.jpg"),
                radius:60,
              ),
            ),
            Divider(
              height:90,
              color:Colors.grey[600],
            ),
            Text(
              "NAME",
              style:TextStyle(
                color:Colors.grey,
                letterSpacing:2,
              )
            ),
            SizedBox(height:10),
            Text(
                "Junji Adachi",
                style:TextStyle(
                  color:Colors.amberAccent[100],
                  letterSpacing:2,
                  fontSize: 28,
                  fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:30),
            Text(
                "Current level",
                style:TextStyle(
                  color:Colors.grey,
                  letterSpacing:2,
                )
            ),
            SizedBox(height:10),
            Text(
                "$japanLevel",
                style:TextStyle(
                    color:Colors.amberAccent[100],
                    letterSpacing:2,
                    fontSize: 28,
                    fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color:Colors.grey[400],
                ),
                SizedBox(width:10),
                Text(
                  "junjiadachi7@gmail.com",
                  style:TextStyle(
                    color:Colors.grey[400],
                    fontSize: 18,
                    letterSpacing:1,
                  )
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

