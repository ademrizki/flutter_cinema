import 'package:flutter/material.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    required this.message,
    required this.onError,
  });

  final String message;
  final Function() onError;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: onError,
            child: Text('Try again'),
          ),
        ],
      ),
    );
  }
}
