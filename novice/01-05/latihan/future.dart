import 'dart:async';

Future<void> printDailyNewsDigest() async {
  var newsDigest = await gatherNewsReports();
  print(newsDigest);
} // di print terakhir, tidak sesui dengan urutan yang ada di main() karnea  printDailyNewsDigest() memanggil fungsi gatherNewsReports() yang didelay selma 1 detik

main() {
  printDailyNewsDigest(); //delay, dijalankan terakhir
  printWinningLotteryNumbers();
  printWeatherForecast();
  printBaseballScore();
}
//output

/*Winning lotto numbers: [23, 63, 87, 26, 2]
Tomorrow's forecast: 70F, sunny.
Baseball score: Red Sox 10, Yankees 0
<gathered news goes here>*/

printWinningLotteryNumbers() {
  print('Winning lotto numbers: [23, 63, 87, 26, 2]');
}

printWeatherForecast() {
  print("Tomorrow's forecast: 70F, sunny.");
}

printBaseballScore() {
  print('Baseball score: Red Sox 10, Yankees 0');
}

const news = '<gathered news goes here>';
const oneSecond = Duration(seconds: 1);

// Imagine that this function is more complex and slow. :)
Future<String> gatherNewsReports() => Future.delayed(oneSecond, () => news);

// Alternatively, you can get news from a server using features
// from either dart:io or dart:html. For example:
//
// import 'dart:html';
//
// Future<String> gatherNewsReportsFromServer() => HttpRequest.getString(
//      'https://www.dartlang.org/f/dailyNewsDigest.txt',
//    );
