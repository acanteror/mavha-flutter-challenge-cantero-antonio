import 'package:dashboard_timeline_ui_demo/data/fake.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class TypeNoteGrid extends StatelessWidget {
  const TypeNoteGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: context.pch(5), horizontal: context.pcw(5)),
      child: GridView.builder(
        itemCount: typeNotes.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          final typeNote = typeNotes[index];
          return Container(
            width: context.pcw(3),
            decoration: BoxDecoration(
                color: Colors.orange[100],
                border: Border.all(color: Colors.orange[100]),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  typeNote.iconData,
                  size: 40.0,
                  color: Colors.orange[400],
                ),
                Text(
                  '${typeNote.title}',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: context.pcw(7),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${typeNote.items} items',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}