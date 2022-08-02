import 'package:flutter/material.dart';

class SingleNote extends StatelessWidget {
  int noteid;

  // constructor of the class single note
  SingleNote({Key key, this.noteid}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noteid != null ? "Edit note" : "create note"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Note title",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Note content",
              ),
            ),
            SizedBox(height: 18,),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                color: Theme.of(context).primaryColor,
                child: Text("Submit", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
