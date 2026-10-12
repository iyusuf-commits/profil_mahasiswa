import 'package:flutter/material.dart';

// Import widget yang sudah dipecah sesuai prinsip Separation of Concerns (Latihan 1 & 4)
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // Latihan 3: Implementasi Expanded dan Flexible
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Expanded akan memaksa area informasi profil untuk memenuhi sisa layar bagian atas
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    // Latihan 4: Header Profil (Foto, Nama, NIM) dipisah ke widget tersendiri
                    const ProfileHeader(
                      name: 'Imam Yusuf Akmal',
                      nim: '25.11.6340',
                    ),
                    const SizedBox(height: 24),
                    // Karena widget aslinya mewajibkan (required) parameter name dan nim,
                    // data tetap dikirimkan ke sini agar tidak terjadi error kompilasi.
                    const ProfileInfo(
                      name: 'Imam Yusuf Akmal', 
                      nim: '25.11.6340',        
                      programStudi: 'S1 Informatika',
                      email: 'i.yusuf@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    const SizedBox(height: 24),
                    // Latihan 1: Row ikon sosial media
                    const SocialMediaRow(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            // Latihan 3 & 4: Tombol aksi dipisah ke widget tersendiri dan dibungkus Flexible
            const Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ActionButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}