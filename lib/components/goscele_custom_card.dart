import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  List<Widget> fills;
  VoidCallback callback;
  double leftMargin;

  CustomCard(
      {@required this.title, this.fills, this.callback, this.leftMargin});

  @override
  Widget build(BuildContext context) {
    final List<Widget> bodyWidget = [
      Container(
        child: Text(
          this.title,
          style: TextStyle(fontSize: 18),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 10),
      ),
    ];

    if (fills != null && fills.isNotEmpty) {
      bodyWidget.addAll(fills);
    } else {
      bodyWidget.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "(empty)",
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
            ],
          ),
        ),
      );
    }

    if (callback == null) {
      callback = () {};
    }

    if (leftMargin == null) {
      leftMargin = 0;
    }

    return Card(
      margin: EdgeInsets.fromLTRB(leftMargin, 4, 4, 4),
      child: InkWell(
        onTap: callback,
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: bodyWidget,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
