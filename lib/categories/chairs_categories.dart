import 'package:flutter/material.dart';

class ChairCategory extends StatelessWidget {
  const ChairCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //first scrolling items
          ListView.builder(itemBuilder: (_, __) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(),
            );
          })
        ],
      )),
    );
  }
}
