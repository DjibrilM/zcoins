class Currency {
  String title;
  String name;
  double rate;
  String progessRatePercentages;
  String currencyAvatar;
  List<double> progessData;

  Currency(
      {required this.progessData,
      required this.title,
      required this.name,
      required this.rate,
      required this.progessRatePercentages,
      required this.currencyAvatar});
}
