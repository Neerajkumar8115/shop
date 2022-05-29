import 'dart:html';

import 'package:flutter/material.dart';
import 'package:codepur/models/catalogModel.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Selected item'),
      ),
    );
    // Center(
    //   child: ElevatedButton(
    //     onPressed: () {
    //       Navigator.pop(context);
    //     },
    //     child: Text(
    //       'Back',
    //     ),
    //   ),
    // );
  }
}
