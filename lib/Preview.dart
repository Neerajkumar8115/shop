import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codepur/models/catalogModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Preview extends StatefulWidget {
  final Item catalog;
  Preview({Key? key, required this.catalog}) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  final String text = "Reading a review for a Cellphone ,today will"
      "see you confront stack of technical jargon"
      "ET offers a quick guide some associated terms"
      "and some of the more important consideration ";

  var isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
                isPressed ? Icons.favorite_rounded : FontAwesomeIcons.heart),
            color: isPressed ? Colors.red : Colors.blue,
            tooltip: 'Add to Favorite',
            onPressed: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.catalog.name,
          style: TextStyle(
            color: Colors.blueGrey[200],
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              widget.catalog.image,
              height: 240,
            ),
          ),
          Expanded(
            child: Container(
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    widget.catalog.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.catalog.decs,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 128, 108, 101),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 20,
                    child: Divider(color: Colors.blueGrey[500]),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        this.text,
                        textAlign: TextAlign.center,
                        // textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Buying not support yet"),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {},
                )));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              " Buy \u{20B9}${widget.catalog.price}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
              textScaleFactor: 1.1,
            ),
          )),
    );
  }
}
