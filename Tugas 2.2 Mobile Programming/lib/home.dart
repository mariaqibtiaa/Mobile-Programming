import 'package:flutter/material.dart';
import 'package:profile_page/widgets/info_card.dart';

// our data
const phone = "+62 0651 18230";
const email = "maria.065118230@unpak.ac.id";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              Text(
                "Maria Qibtia",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Source Sans Pro",
                ),
              ),
              Text(
                "Mobile Programming",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            ],
          ),
        ));
  }
}
