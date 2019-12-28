import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String leadingTag;
  final String titleTag;
  final String subtitleTag;
  final String title;
  final String subtitle;

  DetailPage({Key key, this.leadingTag, this.titleTag, this.subtitleTag, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
          centerTitle: true,
          elevation: 0.2,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: leadingTag,
                  child: FlutterLogo(
                    size: 80,
                  ),
                ),
                SizedBox(height: 24.0),
                Hero(
                  tag: titleTag,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Hero(
                  tag: subtitleTag,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(subtitle)
                  ),
                )
              ],
            ),
          ),
        )
      );
  }
}
