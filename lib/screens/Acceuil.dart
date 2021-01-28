import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/Products/product.dart';
import 'package:project_one/screens/Widgets/Categories.dart';
import 'package:project_one/screens/Widgets/TopSold.dart';

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(body: SafeArea(child: AcceuilView())));
  }
}

class AcceuilView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AcceuilView();
}

/// This is the private State class that goes with MyStatefulWidget.
class _AcceuilView extends State<AcceuilView> {
  final List<String> images = ["pub.jpeg", "pub2.jpg"];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        key: scaffoldKey,
        appBar: AppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: Product());
                  })
            ],
            title: Text(
              "TricoClub",
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            backgroundColor: Colors.pinkAccent[200],
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                print('clicked');
              },
              focusColor: Colors.pink[200],
            )),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 155,
                  color: Colors.black12,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Card(
                          color: Colors.pinkAccent[100],
                          child: Image.asset("Assets/Images/" + images[index]),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Top Sold',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 250.0, child: TopSold()),
                Divider(
                  color: Colors.black26,
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                ),
                Categories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
