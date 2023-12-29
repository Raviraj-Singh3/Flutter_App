import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: ThemeData().primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => goBack(context), child: Text('GO BACK')),
      ),
    );
  }

  goBack(context) {
    Navigator.pop(context);
  }
}
