import 'package:exercise/model/list.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final int index;
  HorizontalList(this.index);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(movieList[index].imageUrl))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            movieList[index].title,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
