import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

import 'dart:convert';

import 'coin_card.dart';
import '../../data/coin_data.dart';
import '../../models/coin_model.dart';

class CryptoWallet extends StatefulWidget {
  const CryptoWallet({Key key}) : super(key: key);

  @override
  _CryptoWalletState createState() => _CryptoWalletState();
}

class _CryptoWalletState extends State<CryptoWallet> {
  @override
  void initState() {
    super.initState();
    try {
      fetchLocalCoinData();
    } catch (e) {
      print(e);
    }
  }

  Future<String> getJson() {
    return rootBundle.loadString('lib/data/coin_data.json');
  }

  void fetchLocalCoinData() async {
    var localCoinData = json.decode(await getJson());
    var localCoins = localCoinData;
    localCoins.forEach((localCoin) {
      final Coin coin = Coin(
        id: localCoin["id"],
        symbol: localCoin["symbol"].toString().toUpperCase(),
        name: localCoin["name"],
        imageUrl: localCoin["image"],
        currentPrice: localCoin["current_price"],
        marketCap: localCoin["market_cap"],
        marketCapRank: localCoin["market_cap_rank"],
        highPrice: localCoin["high_24h"],
        lowPrice: localCoin["low_24h"],
        marketCapChangePercentage:
            localCoin["market_cap_change_percentage_24h"],
      );
      context.read<CoinData>().addCoin(coin);
    });
  }

  @override
  Widget build(BuildContext context) {
    var coinList = context.watch<CoinData>().coinList;

    return ListView.separated(
      itemCount: coinList.length,
      itemBuilder: (context, index) => CoinCard(coin: coinList[index]),
      separatorBuilder: (context, index) => SizedBox(height: 8.0),
    );
  }
}
