import 'package:flutter/material.dart';
import 'package:flutter_pas/controller/list_makanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String deskripsiMakanan;
  late String gambarMakanan;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    deskripsiMakanan = arguments['deskripsiMakanan'];
    gambarMakanan = arguments['gambarMakanan'];
  }

  // Mengubah harga String menjadi int
  int get harga => int.parse(hargaMakanan);

  // Menghitung pajak 5%
  int get pajak => ListMakanan.nominalPajak(harga);

  // Menghitung total pembayaran
  int get total => ListMakanan.hargaSetelahPajak(harga);

  // Tombol pembelian
  void beliProduk() {
    Get.defaultDialog(
      title: "Konfirmasi Pembelian",
      content: Column(
        children: [
          Text("Nama Makanan: $namaMakanan"),

          SizedBox(height: 10),

          Text("Harga: ${ListMakanan.formatRupiah(harga)}"),

          Text("Pajak 5%: ${ListMakanan.formatRupiah(pajak)}"),

          Divider(),

          Text(
            "Total: ${ListMakanan.formatRupiah(total)}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.green,
            ),
          ),
        ],
      ),
      textConfirm: "OK",
      onConfirm: () {
        Get.back();
      },
    );
  }
}