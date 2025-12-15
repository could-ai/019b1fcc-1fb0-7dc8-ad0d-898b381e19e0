import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Kuliah Pakar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F4C81)), // UII Blue tone
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ResumeScreen(),
      },
    );
  }
}

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  final String _resumeContent = '''
# RESUME KULIAH PAKAR MATA KULIAH WAJIB UNIVERSITAS (MKWU) TERPADU
**Universitas Islam Indonesia**

**Tema:** Internalisasi Nilai Anti Korupsi dalam Kehidupan Akademik
**Narasumber:** Bapak Ari Wibowo, S.H., M.H.
**Sambutan:** Prof. Dr. Jaka Nugraha, S.Si., M.Si.
**Moderator:** Ibu Dr. Dian Kus Pratiwi, S.H., M.H.

---

## 1. Pendahuluan dan Sambutan
Acara diawali dengan pembacaan ayat suci Al-Qur'an dan lagu Indonesia Raya. Dalam sambutannya, **Prof. Dr. Jaka Nugraha** menyoroti paradoks kondisi bangsa Indonesia. Beliau memaparkan bahwa Indonesia adalah negara yang sangat kaya akan sumber daya alam, namun angka kemiskinan masih cukup tinggi. Hal ini disebabkan oleh kebocoran anggaran negara (APBN) yang diperkirakan mencapai 30% akibat inefisiensi dan korupsi. Beliau menekankan bahwa korupsi bukan hanya masalah hukum, tetapi masalah moral.

## 2. Inti Materi: Potret Korupsi
**Bapak Ari Wibowo** membuka paparan dengan tinjauan historis bahwa korupsi telah menjadi masalah fundamental bangsa sejak lama.

### Kekayaan Alam vs Realita
Narasumber memaparkan data kekayaan Indonesia yang luar biasa (hutan, tambang, maritim) namun belum mampu menyejahterakan rakyat secara merata karena salah kelola. Kerugian negara akibat korupsi mencapai ratusan triliun rupiah.

### Penyebab Korupsi
Korupsi terjadi karena **Niat + Kesempatan**. Faktor pendorongnya meliputi:
1.  **Keserakahan & Hedonisme:** Gaya hidup pejabat yang mewah.
2.  **Biaya Politik Tinggi:** Modal besar untuk kampanye.
3.  **Hilangnya Moral:** Koruptor tidak lagi merasa malu.

### Korupsi di Lingkungan Akademik
Bibit korupsi bisa tumbuh di kampus, seperti:
-   Jasa joki skripsi.
-   Plagiarisme.
-   Mencontek.

## 3. Kesimpulan
Kejujuran adalah induk dari segala kebaikan. Mahasiswa didorong untuk aktif sebagai kontrol sosial dan membangun budaya jujur.

*"Daripada mengutuk kegelapan, lebih baik menyalakan obor penerang."*
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Kuliah Pakar'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Icon(Icons.description, size: 48, color: Colors.blue),
                    SizedBox(height: 8),
                    Text(
                      'Dokumen Resume Tersedia',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'File lengkap RESUME_KULIAH.md telah dibuat di folder proyek.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              _resumeContent,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
