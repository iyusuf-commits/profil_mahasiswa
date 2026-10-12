import 'package:flutter/material.dart';

import 'info_row.dart';

class ProfileInfo extends StatelessWidget {
  // Parameter name dan nim tetap dipertahankan agar tidak terjadi error
  // saat dipanggil dari profile_screen.dart
  final String name;
  final String nim;
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.nim,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Widget Text untuk nama dan NIM beserta SizedBox-nya sudah dihapus dari sini
        // karena sudah ditangani oleh ProfileHeader.
        const Divider(),
        const SizedBox(height: 16),
        InfoRow(icon: Icons.school, label: programStudi),
        InfoRow(icon: Icons.email, label: email),
        InfoRow(icon: Icons.location_on, label: lokasi),
      ],
    );
  }
}