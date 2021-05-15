import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/coin_model.dart';
import '../../utils/constants.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;

  CoinCard({this.coin});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryColorLight,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              coin.imageUrl,
              fit: BoxFit.fill,
              width: 48.0,
              height: 48.0,
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.name,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  coin.symbol,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 12.0,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${coin.currentPrice}',
                    style: GoogleFonts.varela(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    '${coin.marketCapChangePercentage}%',
                    style: GoogleFonts.varela(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
