import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/coin_data.dart';
import 'screens/crypto_wallet/crypto_wallet_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CoinData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Center(child: CryptoWallet()),
      ),
    );
  }
}
