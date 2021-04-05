import 'package:flutter/material.dart';

class EmptyCard extends StatelessWidget {

  const EmptyCard({this.title, this.iconData});

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 80,
            color: Colors.black,
          ),
          const SizedBox(height: 16,),
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
