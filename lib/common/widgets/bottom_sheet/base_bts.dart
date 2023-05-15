import 'package:flutter/material.dart';

class BaseBts extends StatefulWidget {
  const BaseBts({Key? key, required this.content}) : super(key: key);

  final Widget content;

  @override
  State<BaseBts> createState() => _BaseBtsState();
}

class _BaseBtsState extends State<BaseBts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: widget.content,
    );
  }
}
