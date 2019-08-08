import 'dart:io';

class Deposit extends AtmMechine {
  static double deposit;

  void setdDeposit(double deposit) {
    deposit = deposit;
  }

  static double getdeposit() {
    return deposit;
  }
}

class Withdraw extends AtmMechine {
  static double withdraw = 0;

  void setwithdraw(double withdraw) {
    withdraw = withdraw;
  }

  static double getwithdraw() {
    return withdraw;
  }
}

class Balanceinquiry {
  static double balanche = 0;
  void setbalanche(double balanche) {
    balanche = balanche;
  }

  static double getbalanche() {
    return balanche;
  }
}

class AtmMechine {
  static void checkBalance() {
    print('Your current balance is ${Balanceinquiry.getbalanche()}');
  }

  static void withdrawMoney() {
    if (Balanceinquiry.balanche == 0) {
      print('Your current balance is zero.');
      print('You cannot withdraw!');
      print('You need to deposit money first.');
    } else if (Balanceinquiry.balanche <= 500) {
      print('You do not have sufficinet money to withdraw');
      print('Checked your balance to see your money in the bank.');
    } else if (Withdraw.withdraw > Balanceinquiry.balanche) {
      print('The amount you withdraw is greater than to your balance');
      print('Please check the amount you entered');
    } else {
      Balanceinquiry.balanche = Balanceinquiry.balanche - Withdraw.withdraw;
      print('You withdraw the amount of PHP ${Withdraw.withdraw}');
    }
  }

  static void depositMoney() {
    print('You deposited the amount of ${Deposit.deposit}');
  }
}

main(List<String> args) {
  int select = 0;
  int choice = 0;

  print('====================================================');
  print('Welcome to this simple ATM Machine');
  print('====================================================');

  print('Please select ATM TRansactions');
  print('Press [1] Deposite');
  print('Press [2] Withdraw');
  print('Press [3] Balance Inquiry');
  print('Press [4] Exit');

  stdout.write("What would you like to do?");
  select = int.parse(stdin.readLineSync());

  // if (select > 4) {
  //   print('Please select correct transaction');
  // } else {
  switch (select) {
    case 1:
      stdout.write("Enter the amount of money to deposit :");
      Deposit.deposit = double.parse(stdin.readLineSync());
      Balanceinquiry.balanche = Deposit.deposit + Balanceinquiry.balanche;
      AtmMechine.depositMoney();
      break;

    case 2:
      print(
          'To withdraw, make sure that you have sufficient balance in your account.');
      print(' ');
      stdout.write("Enter amount of money to withdraw :");
      Withdraw.withdraw = double.parse(stdin.readLineSync());
      AtmMechine.withdrawMoney();
      break;

    case 3:
      AtmMechine.checkBalance();
      break;

    default:
      print('Transaction exited.');
      break;
    // }
  }
}
