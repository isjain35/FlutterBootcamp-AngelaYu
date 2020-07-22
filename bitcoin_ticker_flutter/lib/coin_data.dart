import 'networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'bitcoin',
  'ethereum',
  'litecoin',
];

class CoinData {
  String coinApi = 'https://api.coingecko.com/api/v3/simple/price';
  Future getCoinData(String currency) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$coinApi?ids=${cryptoList[0]},${cryptoList[1]},${cryptoList[2]}&vs_currencies=$currency');
    var coinData = await networkHelper.getData();
    return coinData;
  }
}
