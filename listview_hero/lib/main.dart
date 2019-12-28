import 'package:flutter/material.dart';
import 'package:listview_hero/data/itemData.dart';
import 'package:listview_hero/screens/detailPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
          elevation: 0.2,
        ),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {

            String leadingTag = 'leadingTag$index';
            String titleTag = 'titleTag$index';
            String subtitleTag = 'subtitleTag$index';

            return ListTile(
              leading: Hero(
                tag: leadingTag,
                child: FlutterLogo(),
              ),
              title: Hero(
                tag: titleTag,
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(items[index].title)
                )
              ),
              subtitle: Hero(
                tag: subtitleTag,
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    items[index].subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(
                      leadingTag: leadingTag,
                      titleTag: titleTag,
                      subtitleTag: subtitleTag,
                      title: items[index].title,
                      subtitle: items[index].subtitle,
                    )
                  )
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        )
      );
  }
}
