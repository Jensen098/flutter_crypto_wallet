class Coin {
  final String id;
  final String symbol;
  final String name;
  final String imageUrl;
  final num currentPrice;
  final num marketCap;
  final num marketCapRank;
  final num highPrice;
  final num lowPrice;
  final num marketCapChangePercentage;

  Coin({
    this.id,
    this.symbol,
    this.name,
    this.imageUrl,
    this.currentPrice,
    this.marketCap,
    this.marketCapRank,
    this.highPrice,
    this.lowPrice,
    this.marketCapChangePercentage,
  });
}
