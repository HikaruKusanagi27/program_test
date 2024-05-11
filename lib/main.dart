import 'dart:io';

// 問題文No.1
void main() {
  // 標準入力から値を取得
  String input = stdin.readLineSync()!;
  int A = int.parse(input);

  // ゴールまでの距離を計算
  int distanceToGoal = A - 1;

  // サイコロを振る回数を計算
  int rolls = distanceToGoal ~/ 6;
  if (distanceToGoal % 6 != 0) {
    rolls++;
  }

  // 結果を出力
  print(rolls);
}

// 問題文No.2
// void main() {
//   // 標準入力から1次元リバーシの手順を読み込む
//   String moves = stdin.readLineSync() ?? '';

//   List<String> board = ['b', 'w']; // 初期盤面

//   // 各手を処理する
//   for (int i = 0; i < moves.length; i++) {
//     String move = moves[i];
//     String stone = i % 2 == 0 ? 'b' : 'w'; // 奇数手目は黒、偶数手目は白

//     if (move == 'L') {
//       board.insert(0, stone); // 左端に石を置く
//     } else {
//       board.add(stone); // 右端に石を置く
//     }

//     // 石をひっくり返す処理
//     flipStones(board);
//   }

//   // 結果の出力
//   int blackCount = board.where((x) => x == 'b').length;
//   int whiteCount = board.where((x) => x == 'w').length;
//   print('$blackCount $whiteCount');
// }

// void flipStones(List<String> board) {
//   int last = board.length - 1;
//   String lastStone = board[last];
//   int flipStart = -1;

//   // 石を置いた側から反対側までチェックし、ひっくり返すべき区間を探す
//   for (int j = last - 1; j >= 0; j--) {
//     if (board[j] == lastStone) {
//       flipStart = j;
//       break;
//     }
//   }

//   // 反転が必要な区間が存在すれば、その区間の石をひっくり返す
//   if (flipStart != -1 && flipStart + 1 < last) {
//     for (int k = flipStart + 1; k < last; k++) {
//       board[k] = lastStone;
//     }
//   }
// }

// 問題文No.3
// import 'dart:convert';

// void main() {
//   // 標準入力からデータを読み取り、トリムしてから処理を行う
//   String input = stdin.readLineSync(encoding: utf8)!.trim();
//   // 最小の順列を計算して出力する
//   print(findMinimumPermutation(input));
// }

// // 与えられた数字の文字列から最小の順列を見つける関数
// String findMinimumPermutation(String x) {
//   // 文字列を個々の文字に分割してリストにする
//   List<String> digits = x.split('');
//   // 数字をソートして昇順に並び替える
//   digits.sort();

//   // ソート後の最初の桁が '0' の場合、先頭に0が来ないように調整する
//   if (digits[0] == '0') {
//     // '0' でない最初のインデックスを見つける
//     int nonZeroIndex = digits.indexWhere((digit) => digit != '0');
//     // 非ゼロの桁が見つかった場合、その桁と '0' を交換する
//     if (nonZeroIndex != -1) {
//       digits[0] = digits[nonZeroIndex];
//       digits[nonZeroIndex] = '0';
//     }
//   }

//   // 最終的な順列を文字列として結合して返す
//   return digits.join('');
// }
