import 'package:flutter_pas/model/makanan_model.dart';
import 'package:get/get.dart';

class ListMakanan extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Special",
      hargaMakanan: "25000",
      deskripsiMakanan:
          "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      gambarMakanan: "https://1drv.ms/i/c/b921f99270925196/IQDNzxU98gH9TLTvYxnlMygUAXjohFywpgINHvzrNoJzCpA?e=Jlk1M9",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: "30000",
      deskripsiMakanan:
          "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      gambarMakanan: "https://1drv.ms/i/c/b921f99270925196/IQBEARYogs3GQ7roYkMkcIoYAboCY0sn2O9uVvBGHLBN2Jg?e=6fBAYi",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: "28000",
      deskripsiMakanan:
          "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      gambarMakanan: "https://1drv.ms/i/c/b921f99270925196/IQDLSUr5ur9NT5FuWwCoxQ6cAXCrYPLc9Ba_pPktpeDpN8o?e=hWf7RY",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: "20000",
      deskripsiMakanan:
          "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      gambarMakanan: "https://1drv.ms/i/c/b921f99270925196/IQAdWXnLT-k_SqelM9x3n2qYAaxv8Fc3WYgaOyc-7V-zYe4?e=SwO45e",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: "8000",
      deskripsiMakanan:
          "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      gambarMakanan: "https://1drv.ms/i/c/b921f99270925196/IQBQutP7_QgIS5qIM6xMjyJlAWSMDBvn2wC7S3hfGwhgWPU?e=np0xLE",
    ),
  ].obs;

  // Menghitung persentase pajak
  static int hitungPajak(int harga) {
    return 5;
  }

  // Menghitung nominal pajak
  static int nominalPajak(int harga) {
    int pajak = hitungPajak(harga);

    return harga * pajak ~/ 100;
  }

  // Menghitung harga setelah pajak
  static int hargaSetelahPajak(int harga) {
    int pajak = nominalPajak(harga);

    return harga + pajak;
  }

  // Format Rupiah
  static String formatRupiah(int harga) {
    String angka = harga.toString();

    angka = angka.replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (match) => '.',
    );

    return "Rp $angka";
  }
}