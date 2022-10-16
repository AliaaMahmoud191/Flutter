import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text('Plus')),
                  Text('1',
                  style:TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
    ),
                  ),

                TextButton(onPressed: (){}, child: Text('Minus')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
