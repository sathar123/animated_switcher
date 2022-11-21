import 'package:flutter/material.dart';

class Animation_Image extends StatefulWidget {
  @override
  State<Animation_Image> createState() => _HomeState();
}

class _HomeState extends State<Animation_Image> {
  var index = 0;

  final widgets = [
    Image.network(
      'https://i.pinimg.com/736x/c1/b9/58/c1b958dab96cef9bd47a3ac6415c7165--dubai-architecture-amazing-architecture.jpg',
      fit: BoxFit.cover,
      key: Key('1'),
    ),
    Image.network(
      'https://images.unsplash.com/photo-1581260466152-d2c0303e54f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8OSUzQTE2fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      fit: BoxFit.cover,
      key: Key('2'),
    ),
    Image.network(
      'https://images.unsplash.com/photo-1598896189857-ea965a5e1e12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGltcHJvdmVtZW50fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      fit: BoxFit.cover,
      key: Key('3'),
    ),
  ];

  //late final AnimatedSwitcherLayoutBuilder layoutBuilder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> value) {
                // return ScaleTransition(scale: value, child: child);
                return RotationTransition(
                  turns: value,
                  child: child,
                );
              },
              child: widgets[index],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (widgets.length == index + 1) {
              index = 0;
            } else
              index += 1;
          });
        },
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
