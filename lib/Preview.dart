import 'dart:html';

import 'package:flutter/material.dart';
import 'package:codepur/models/catalogModel.dart';

class Preview extends StatelessWidget {
  final Item catalog;
  Preview({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  final String text = """Reading a review for a Cellphone ,today will 
                         see you confront stack of technical jargon
                          ET offers a quick guide some associated terms 
                          and some of the more important consideration """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Selected item',
          style: TextStyle(
            color: Colors.blueGrey[200],
          ),
        ),
      ),
      body:
          // Hero(
          //   tag: Key(catalog.id.toString()),
          Column(
        children: [
          Center(
            child: Image.network(
              catalog.image,
              height: 240,
            ),
          ),
          // Expanded(
          //   child: Container(
          //     width: 400,
          //     color: Colors.white,
          //     child: Column(
          //       children: [
          //         Text(
          //           catalog.name,
          //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //         ),
          Text(
            catalog.decs,
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 126, 102, 94),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              child: Text(
                this.text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
      //   ),
      // ),
      // ],
      // ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            "\u{20B9}${catalog.price}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w200,
            ),
            textScaleFactor: 1.1,
          ),
        ),
      ),
    );
  }
}
