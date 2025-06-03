
import 'package:flutter/material.dart';
import 'theme.dart';

class Signup extends StatefulWidget {
  const Signup({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Signup> createState() => _SignupState();

  Widget signupGridWidget() {

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 7.0,
          childAspectRatio: 2 / 2, // Width to height ratio of items
        ), itemBuilder: (BuildContext context, int index) {
      return Container(decoration: BoxDecoration(border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(11)),
        child: Center(child : Text("name $index"))
        ,);
    });
  }


}

class _SignupState extends State<Signup> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),),
        body: Center(child: widget.signupGridWidget()),);
  }
}

