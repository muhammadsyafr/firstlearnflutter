import 'package:exercise/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import './widgets/horizontal_list.dart';
import './model/list.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Movie'),
        centerTitle: true,
        backgroundColor: Colors.red[200],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recomended',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                FlatButton(
                  child: Text('View All', style: TextStyle(fontSize: 12),),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (item, i) => HorizontalList(i),

              // children: <Widget>[
              //   // Horizontal From folder Widget
              //   // HorizontalList(),
              //   // HorizontalList(),
              // ],
            ),
          ),
          // SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Of 2020',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                FlatButton(
                  child: Text('View All', style: TextStyle(fontSize: 12),),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 1000,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: topRatedMovieList.length,
              itemBuilder: (item, i) => VerticalList(i),
              // children: <Widget>[
              //   VerticalList(),
              //   VerticalList(),
              //   VerticalList()
              // ],
            ),
          ),
          ],
        ),
      )
    );
  }
}
