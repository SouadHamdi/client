import 'package:flutter/material.dart';
import 'package:travelcompanion/main.dart';

import '../../circuits/circuit.dart';
import '../userProfil.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {
            onPressed:
            () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserProfil()))
                };
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        IconButton(
            onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CircuitList()))
                },
            icon: const Icon(
              Icons.train_outlined,
              size: 35,
            )),
      ],
    ));
  }
}
