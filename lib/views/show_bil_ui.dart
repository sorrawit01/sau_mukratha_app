import 'dart:io';

import 'package:flutter/material.dart';

class ShowBilUI extends StatefulWidget {
  double? payTotal;
  File? imgFile;

  ShowBilUI({
    super.key,
    this.payTotal,
    this.imgFile,
  });

  @override
  State<ShowBilUI> createState() => _ShowBilUIState();
}

class _ShowBilUIState extends State<ShowBilUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Show Bill'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Total ${widget.payTotal}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.file(
                widget.imgFile!,
                height: 200,
              )
            ],
          ),
        ));
  }
}
