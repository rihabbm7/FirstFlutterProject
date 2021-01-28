import 'package:flutter/material.dart';

class Product extends SearchDelegate<String> {
  final productsList = [
    "bonnets",
    "chaussettes",
    "pull",
    "gants",
  ];
  final recentproduct = ["bonnets"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentproduct
        : productsList.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                showResults(context);
              },
              leading: Icon(Icons.playlist_add_check),
              title: RichText(
                  text: TextSpan(
                      text: suggestionList[index].substring(0, query.length),
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.black26))
                  ])),
            ),
        itemCount: suggestionList.length);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Card(
          color: Colors.pink[100],
          child: Center(child: Text(query)),
        ),
      ),
    );
  }
}
