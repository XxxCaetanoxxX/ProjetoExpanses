import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  @override
  final String label;
  final void Function() onPressed;

  AdaptativeButton({
    required this.label,
    required this.onPressed,
  });

  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            color: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.30,
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: onPressed,
            ),
          );
  }
}
