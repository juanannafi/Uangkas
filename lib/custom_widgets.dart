import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class HistoryActivityCard extends StatefulWidget {
  const HistoryActivityCard({Key? key}) : super(key: key);

  @override
  State<HistoryActivityCard> createState() => _HistoryActivityCardState();
}

class _HistoryActivityCardState extends State<HistoryActivityCard> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/history_activity.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return _items.isNotEmpty?Expanded(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index){
            return Card(
          key: ValueKey(_items[index]["id"]),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          color: Colors.white,
          elevation: 2,
          child: ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  color: const Color.fromARGB(255, 0, 0, 128)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _items[index]["title"],
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 128),
                      fontWeight: FontWeight.w700,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    _items[index]["nominal"],
                    style: const TextStyle(
                      color: Color.fromARGB(255, 52, 168, 83),
                      fontWeight: FontWeight.w700,
                      fontSize: 17
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _items[index]["subtitle"],
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 128),
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                    ),
                  ),
                  Text(
                    _items[index]["date"],
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 128),
                      fontWeight: FontWeight.w500,
                      fontSize: 10
                    ),
                  ),
                ],
              )),
        );
          }
        )
      ) : ElevatedButton(onPressed: (){readJson();}, child: const Text("Click Me!"))
    ;
  }
}