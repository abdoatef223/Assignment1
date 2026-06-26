import 'package:flutter/material.dart';

Widget buildExploreButton({
  required String label,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFE03030),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Color(0xFFE03030),
              size: 20,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildCircleIconButton({
  required VoidCallback onTap,
  required IconData fallbackIcon,
  required String imagePath,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 52,
      height: 52,
      decoration: const BoxDecoration(
        color: Color(0xFFE03030),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) =>
              Icon(fallbackIcon, color: Colors.white, size: 24),
        ),
      ),
    ),
  );
}
