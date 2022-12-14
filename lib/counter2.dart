import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/my_provider.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
          width: 150,
          height: 150,
          child:  Center(
            child: Text(
              '${Provider.of<MyProvider>(context).counter}',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          )),
    );
  }
}
