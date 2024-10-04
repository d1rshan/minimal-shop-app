import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget widget;
  final void Function()? onTap;

  const MyButton({super.key, required this.widget, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(
          //   color: Colors.white,
          //   width: 1,
          // ),
        ),
        padding: const EdgeInsets.all(20),
        child: widget,
      ),
    );
  }
}
