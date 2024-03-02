// import 'dart:io';

// void main() {
//   Engine engine = Engine();
//   engine.assign();
//   engine.showboard();
//   engine.stargame();
// }

// class Engine {
//   late int x, y;
//   int count = 0;
//   bool isOturn = true;

//   List<List<dynamic>> Allinputs = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9],
//   ];

// // assiging the
//   void assign() {
//     for (int i = 0; i < 3; i++) {
//       for (int j = 0; j < 3; j++) {
//         Allinputs[i][j] = '-';
//       }
//     }
//   }

// // program of "O"

//   void O() {
//     isOturn = false;

//     print("Turn's O : ");
//     print('Enter the position');

//     x = int.parse(stdin.readLineSync()!);
//     y = int.parse(stdin.readLineSync()!);

//     Allinputs[x][y] = "O";
//   }

//   void X() {
//     isOturn = true;

//     print("Turn's X : ");
//     print('Enter the position');

//     x = int.parse(stdin.readLineSync()!);
//     y = int.parse(stdin.readLineSync()!);

//     Allinputs[x][y] = "X";
//   }

// // checking for places

//   bool check() {
//     // Row - 1
//     if (Allinputs[0][0] == Allinputs[0][1] &&
//         Allinputs[0][1] == Allinputs[0][2]) {
//       return true;
//     }

//     // Row - 2

//     else if (Allinputs[1][0] == Allinputs[1][1] &&
//         Allinputs[1][1] == Allinputs[1][2]) {
//       return true;
//     }

//     // Row - 3

//     else if (Allinputs[2][0] == Allinputs[2][1] &&
//         Allinputs[2][1] == Allinputs[2][2]) {
//       return true;
//     }

//     // column - 1

//     else if (Allinputs[0][0] == Allinputs[1][0] &&
//         Allinputs[1][0] == Allinputs[2][0]) {
//       return true;
//     }

// // column - 2

//     else if (Allinputs[0][1] == Allinputs[1][1] &&
//         Allinputs[1][1] == Allinputs[2][1]) {
//       return true;
//     }

// // column - 3

//     else if (Allinputs[0][2] == Allinputs[1][2] &&
//         Allinputs[1][2] == Allinputs[2][2]) {
//       return true;
//     }
    
//     return false;
//   }

  

//   void stargame() {
//     if (isOturn) {
//       O();
//     } else {
//       X();
//     }

//     showboard();

//     if (check()) {
//       if (isOturn) {
//         print("Player O wins!");
//       } else {
//         print("Player X wins!");
//       }
//     }

//     stargame();
//   }

//   void showboard() {
//     print('');
//     for (var i = 0; i < 3; i++) {
//       for (var j = 0; j < 3; j++) {
//         stdout.write('${Allinputs[i][j]}  ');
//       }
//       print('');
//     }
//   }
// }
