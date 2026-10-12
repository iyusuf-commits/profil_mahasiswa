import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Menuju profil $platform')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.pink, size: 30),
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work, color: Colors.blue, size: 30),
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code, color: Colors.black, size: 30),
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}