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
        : FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Text(
              label,
              style: TextStyle(color: Colors.amber),
            ),
            onPressed: onPressed,
          );
  }
}
