import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(count.toString(), style: TextStyle(fontSize: 30.0),),
            Class2(count),
            RaisedButton(
              child: Text("Add"),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton : FloatingActionButton(
          child: Icon(Icons.call_missed_outgoing),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Class3(count)));
          }),
    );
  }
}

class Class2 extends StatelessWidget {
  final int count;
  Class2(this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(count.toString(), style: TextStyle(fontSize: 30.0),),
    );
  }
}


class Class3 extends StatelessWidget {
  final int count;

  Class3(this.count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(count.toString(), style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
