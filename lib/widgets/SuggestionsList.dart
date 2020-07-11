import 'dart:math';

import 'package:flutter/material.dart';
import '../models/Suggestion.dart';

class SuggestionsList extends StatelessWidget {
  final List<Suggestion> suggestions;
  final updateSuggestion;
  final addSuggestion;
  const SuggestionsList({Key key, this.suggestions, this.updateSuggestion,this.addSuggestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(suggestions[1]);

    return Container(

        margin: new EdgeInsets.symmetric(vertical: 20.0),
        padding: new EdgeInsets.all( 8.0),
     //   decoration: new BoxDecoration(color: Colors.blue[100]),
     child: SingleChildScrollView(
        child: new Column(
        children: <Widget>[
       new IconButton(icon: new Icon(Icons.add_box),  onPressed: () {
         Random rnd = new Random();
         int id = rnd.nextInt(50);
         
         addSuggestion(Suggestion(id: id,name: "aleesha kanwal",isFavourite: 1));
       }),
          new ListView.builder(
              scrollDirection: Axis.vertical,
             shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
    itemCount: suggestions.length,
    itemBuilder: (context, index) => ListTile(
    title: Text(suggestions[index].name ?? ""),
    trailing: IconButton(
    icon: Icon(
    Icons.favorite,
    color:
    suggestions[index].isFavourite == 1 ? Colors.red : Colors.grey,
    ),
    onPressed: () {
    int currentStatus = suggestions[index].isFavourite;

    updateSuggestion(Suggestion(
    id: suggestions[index].id,
    name: suggestions[index].name,
    isFavourite: currentStatus == 1 ? 0 : 1));
    },
    )))

    ],
    )));

   /*     child: ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestions[index].name ?? ""),
        trailing: IconButton(
          icon: Icon(
            Icons.favorite,
            color:
                suggestions[index].isFavourite == 1 ? Colors.red : Colors.grey,
          ),
          onPressed: () {
            int currentStatus = suggestions[index].isFavourite;

            updateSuggestion(Suggestion(
                id: suggestions[index].id,
                name: suggestions[index].name,
                isFavourite: currentStatus == 1 ? 0 : 1));
          },
        ),
      ),
    ));*/
  }
}


