import 'package:flutter/material.dart';
import 'package:ueu_libapp/theme.dart';

class DjournalCard extends StatelessWidget {
  const DjournalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 380,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/jurnal_img.png',
            width: 235,
            height: 230,
            fit: BoxFit.fitHeight,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Technology',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'ALGORITMA FLOYD-WARSHALL DALAM MENENTUKAN RUTE MULTI-STOP UNTUK EFISIENSI PENGIRIMAN BARANG',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
