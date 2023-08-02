import 'package:flutter/material.dart';
import 'package:ueu_libapp/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.download_for_offline_outlined,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/jurnal_img.png',
            width: 400,
            height: 400,
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor2,
        ),
        child: Column(
          children: [
            //HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DIGITALISASI UMKM DENGAN MEMBANGUN APLIKASI E-COMMERCE MODEL BUSINESS TO CONSUMER (B2C) (STUDI KASUS: TOKO BALGIS CAKE)',
                          style: primaryTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Technology',
                          style: subtitleTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //YEAR
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(
                16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Published Year',
                  ),
                  Text(
                    '2022',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),

            //DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Pergantian bisnis konvensional menjadi bisnis digital, membuat jasa pengiriman barang semakin dibutuhkan oleh masyarakat saat ini. Jasa pengiriman barang juga semakin banyak digunakan setelah maraknya bisnis toko online yang masuk ke Indonesia. Peningkatan transaksi jual beli di toko online membuat jasa pengiriman semakin dibutuhkan khususnya di kota-kota besar Indonesia. Pengiriman barang yang dilakukan oleh seorang kurir dalam satu hari bisa mencapai ratusan alamat pengiriman dalam satu kali perjalanan. Pengiriman barang yang cepat dan efisien akan meningkatkan keuntungan perusahaan dan menambah kepuasan bagi konsumen yang menggunakan jasa pengiriman barang tersebut. Untuk mempermudah kurir dalam pengiriman barang, diperlukan suatu alat yang dapat digunakan untuk menentukan rute perjalanan pengiriman barang yang efisien dari titik awal sampai titik akhir. Oleh karena itu, perancangan aplikasi rute multi-stop dengan menggunakan Algoritma Floyd-Warshall diharapkan mampu membantu para kurir untuk menentukan rute yang efisien dalam pengiriman barang. Pengembangan aplikasi rute multi-stop menggunakan metode Extreme Programming (XP), yang mana memiliki karakteristik cepat, fleksibel, dan sesuai untuk tim pengembang kecil. Aplikasi rute multi-stop ini dirancang dan dikembangkan untuk platform mobile yang mendukung mobilitas kurir. Hasil penelitian membuktikan aplikasi rute multi-stop menggunakan Algoritma Floyd-Warshall dapat membantu kurir dalam mengirimkan barang dengan efisien.',
                    style: subtitleTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            //BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(
                defaultMargin,
              ),
            ),
            Container(
              width: 300,
              height: 54,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  backgroundColor: primaryColor,
                ),
                child: Text(
                  'Read More',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            header(),
            content(),
          ],
        ));
  }
}
