import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:project_one/my_flutter_app_icons.dart';

class Categories extends StatelessWidget {
  final categ = ["Tricot", "Crochet", "Bijouterie", "Broderie"];
  final images = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.pink[200],
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
              indicatorColor: Colors.pink,
              tabs: [
                Tab(
                    icon: Icon(MyFlutterApp.tricot,
                        size: 20.5, color: Colors.pink[700]),
                    iconMargin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                    text: ('Tricot')),
                Tab(
                    text: "Crochet",
                    icon: Icon(MyFlutterApp.tricot_1,
                        size: 20.5, color: Colors.pink[700]),
                    iconMargin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0)),
                Tab(
                    text: "Broderie",
                    icon: Icon(MyFlutterApp.broderie,
                        size: 20.5, color: Colors.pink[700]),
                    iconMargin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0)),
                Tab(
                    text: "Bijouterie",
                    icon: Icon(MyFlutterApp.collier,
                        size: 20.5, color: Colors.pink[700]),
                    iconMargin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0)),
              ],
            ),
          ),
          TabBarView(children: [
            Container(
              child: Text('data'),
            ),
            Container(
              child: Text('data'),
            ),
            Container(
              child: Text('data'),
            ),
            Container(
              child: Text('data'),
            )
          ])
        ],
      ),
    );
  }
}
