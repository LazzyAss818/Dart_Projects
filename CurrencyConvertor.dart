import 'dart:io';

void main() {
  // Title
  print('---------------------CURRENCY CALCULATOR---------------------');
  print(
      'Choose a procedure:>\n1 for dollar into pkr.\n2 for pkr into dollar.'); // You can replace dollar or pkr with any other currency.
  
  print('\nChoose a number from above: ');
  String menuInput = stdin.readLineSync().toString();
  
  switch (menuInput) {
    case '1':
      double dlrTopkr = inputCurrencyDlr() * currencyRatesPkr();
      print('It is RS: $dlrTopkr.');
    case '2':
      double pkrTodlr = inputCurrencyPkr() / currencyRatesDlr();
      print('It is $pkrTodlr\$.');
  }
}

// Input for currency rates
double currencyRatesDlr() {
  print('Enter Dollar rate: ');
  String strdlrRate = stdin.readLineSync().toString();
  double numdlrRate = double.parse(strdlrRate);

  return numdlrRate;
}

double currencyRatesPkr() {
  print('Enter Pkr rate: ');
  String strpkrRate = stdin.readLineSync().toString();
  double numpkrRate = double.parse(strpkrRate);
  return numpkrRate;
}

// Input section using function
double inputCurrencyDlr() {
  print('Enter dollars: ');
  String strDollar = stdin.readLineSync().toString();
  double numDollar = double.parse(strDollar);

  return numDollar;
}

double inputCurrencyPkr() {
  print('Enter pkrs: ');
  String strPkr = stdin.readLineSync().toString();
  double numPkr = double.parse(strPkr);

  return numPkr;
}
