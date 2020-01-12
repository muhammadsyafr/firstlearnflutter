import 'package:exercise/model/list.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  final int index;
  VerticalList(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(topRatedMovieList[index].imageUrl),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      topRatedMovieList[index].title,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 240,
                      child: Text(
                          topRatedMovieList[index].description,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600])),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
