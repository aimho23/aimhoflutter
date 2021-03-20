import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
      // body: Builder(
      //   builder: (BuildContext ctx) {
      //     return Center(
      //       child: FlatButton(
      //         child: Text(
      //           'Show me',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         color: Colors.red,
      //         onPressed: () {
      //           Scaffold.of(ctx).showSnackBar(SnackBar(
      //             content: Text('Hellow'),
      //           ));
      //         },
      //       ),
      //     );
      //   },
      // )
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Show me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
                'Hellow',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(microseconds: 1000),
            ));
          }),
    );
  }
}
