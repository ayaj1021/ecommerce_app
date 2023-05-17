import 'package:flutter/material.dart';

class TopIconsButton extends StatelessWidget {
  const TopIconsButton({
    super.key,
    required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(iconData),
    );
  }
}
