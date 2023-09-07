import 'dart:io';

void main() {
  // Expense Calculator
  // Title
  print('--------------------Daily Expense Calculator--------------------');

  // Spendings pre-assigned not using command-line input for now.

  // Calculations
  double totalAmount = addAmount();
  double limit = limitAmount();

  double groceries = spentGroceries();
  double cab = spentCab();
  double gas = spentGas();
  double extra = spentExtra();

  double totalSpent = groceries + cab + gas + extra;
  double check = totalSpent;

  double remBalance = totalAmount - totalSpent;

  // Conditions to check the spent amount wether it is above the limit or not.
  if (check <= limit) {
    print(
        '''$groceries\$ Spent on Groceries.\n$cab\$ Spent on Cab.\n$gas\$ Spent on Gas.\n$extra\$ Spent on Extra.''');
    print('\nTotal amount spent: $totalSpent.');
    print('Remaining Balance: $remBalance');
  } else if (check > limit) {
    print(
        '\nYou have crossed the limited amount to be spent. Which is $limit\$ and You have spent $totalSpent\$.\n');
    print(
        '''$groceries\$ Spent on Groceries.\n$cab\$ Spent on Cab.\n$gas\$ Spent on Gas.\n$extra\$ Spent on Extra.''');
    print('\nTotal amount spent: $totalSpent\$.');
  } else {
    print('Limit reached');
  }
  mostMoneySpent(groceries: groceries, cab: cab, gas: gas, extra: extra);
}

// Total added amount
double addAmount() {
  print('Enter amount: ');
  String stramnt = stdin.readLineSync().toString();
  double numamnt = double.parse(stramnt);
  return numamnt;
}

// limited amount
double limitAmount() {
  print('Enter limit amount: ');
  String stramnt = stdin.readLineSync().toString();
  double numamnt = double.parse(stramnt);
  return numamnt;
}

// Input for spending
double spentGroceries() {
  print('Enter the amount spent on groceries: ');
  String strGroceries = stdin.readLineSync().toString();
  double numGroceries = double.parse(strGroceries);

  return numGroceries;
}

double spentCab() {
  print('Enter the amount spent on Cab: ');
  String strCab = stdin.readLineSync().toString();
  double numCab = double.parse(strCab);

  return numCab;
}

double spentGas() {
  print('Enter the amount spent on Gas: ');
  String strGas = stdin.readLineSync().toString();
  double numGas = double.parse(strGas);

  return numGas;
}

double spentExtra() {
  print('Enter the amount spent on Extra: ');
  String strExtra = stdin.readLineSync().toString();
  double numExtra = double.parse(strExtra);

  return numExtra;
}

// Most money spent checker function
void mostMoneySpent(
    {required groceries, required cab, required gas, required extra}) {
  // Conditions to check where most money is spent on.
  if (groceries > cab && groceries > gas && groceries > extra) {
    print('Most money spent: Groceries > $groceries\$');
  } else if (cab > groceries && cab > gas && cab > extra) {
    print('Most money spent: Cab > $cab\$.');
  } else if (gas > groceries && gas > cab && gas > extra) {
    print('Most money spent: Gas > $gas\$.');
  } else if (extra > groceries && extra > gas && extra > cab) {
    print('Most money spent: Extra > $extra\$.');
  }
}
