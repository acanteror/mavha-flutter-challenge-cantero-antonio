import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/widget/schedeule/schedeule_list.dart';
import 'package:dashboard_timeline_ui_demo/widget/schedeule/schedeule_header.dart';
import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/page/base_page.dart';

class SchedeulePage extends StatelessWidget {
  SchedeulePage({
    Key key,
    this.day,
  }) : super(key: key);

  final Day day;

  final List<Widget> _actions = <Widget>[
    IconButton(
      icon: Icon(Icons.calendar_today),
      onPressed: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Schedeule',
      actions: _actions,
      childTop: SchedeuleHeader(day: day),
      childBody: SchedeuleList(tasks: day.tasks),
    );
  }
}
