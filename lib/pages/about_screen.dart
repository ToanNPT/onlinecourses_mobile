import 'package:first_ui/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {Navigator.pop(context);},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AboutScreen()));},
                  icon: const Icon(
                    Icons.contact_support,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text("Developer: ToanNPT - 19110479",
                  style: new TextStyle(color: Colors.black, fontSize: 13)),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                    "Screen supported: Login, Home, Movie Detail and About",
                    style: new TextStyle(color: Colors.black, fontSize: 13))),
            Image(image: AssetImage('graphics/backgroundLogin.png')),
          ],

        ),
      ),
    );
  }
}
