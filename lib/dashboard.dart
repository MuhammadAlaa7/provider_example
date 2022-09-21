import 'package:flutter/material.dart';


import 'container1.dart';
import 'counter2.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(

          margin: const EdgeInsets.all(10),
          width: 410,
          height: 410,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text('Dashboard', style: TextStyle(fontSize: 60),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const  [
                  Counter1(),
                  SizedBox(width: 10,),
                  Counter2(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
