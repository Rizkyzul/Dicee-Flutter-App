# 🎲 Aplikasi Dadu (Dicee) - Flutter

Aplikasi sederhana dan interaktif untuk mengocok dadu yang dibuat menggunakan Flutter. Aplikasi ini memungkinkan pengguna untuk mengacak dua dadu secara bersamaan dengan menekan tombol, menghasilkan angka acak setiap kali diklik.

Proyek ini dibuat sebagai bagian dari latihan logika pemrograman dan manajemen state di Flutter.

## 📱 Tampilan Aplikasi

<img src="https://github.com/londonappbrewery/Images/blob/master/dicee-demo.gif?raw=true" width="250" height="500"/>

## ✨ Fitur Utama

* **Interaktif**: Ketuk dadu di layar untuk mengocok.
* **Logika Acak**: Menggunakan `dart:math` untuk menghasilkan angka dadu (1-6) secara random.
* **State Management**: Implementasi `StatefulWidget` untuk memperbarui tampilan dadu secara dinamis (`setState`).
* **Efek Suara**: Menggunakan *package* `audioplayers` untuk memutar suara saat dadu dikocok (opsional).
* **Kode Bersih**: Menggunakan Custom Widget (`TombolDadu`) agar kode lebih rapi dan efisien (Prinsip DRY).

## 🛠️ Teknologi yang Digunakan

* **Framework**: Flutter (Bahasa Dart)
* **Packages**:
    * `audioplayers`: ^6.0.0 (untuk efek suara)
    * `cupertino_icons`: ^1.0.2





