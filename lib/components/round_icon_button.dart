import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback  onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 5.5,
      child: Icon(icon,size: 34),
      onPressed: onPressed!,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}