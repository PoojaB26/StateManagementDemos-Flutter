import 'package:flutter/material.dart';
import 'package:state_management/counter.dart';

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  static int count = 0;
  Counter counter = new Counter(count);

  @override
  Widget build(BuildContext context) {


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
              onPressed: (){
                setState(() {
                  count = counter.addCount();

                });
              },
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
