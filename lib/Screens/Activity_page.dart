import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(
        height: 25,
    ),
         const Padding(
       padding: EdgeInsets.only(left: 20, right: 10),
           child: Text(
             'Rizwan Rizwan',
          style: TextStyle(
          fontSize: 32,
           height: 2,
            fontWeight: FontWeight.w900,
        ),
      ),
      ),
    ],
       )
        ), );
  }
}
