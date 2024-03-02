import 'dart:io';

void main() {
  Engine engine = Engine();
  // engine.assign();
  engine.showboard();
  engine.stargame();
}

class Engine {
  late int x, y;
  int count = 0;
  bool isOturn = true;

  List<List<dynamic>> Allinputs = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  void O() {
    isOturn = false;

    print("Turn's O : ");
    print('Enter the position');

    stdout.write('Row : ');
    x = int.parse(stdin.readLineSync()!);
    stdout.write('Column : ');
    y = int.parse(stdin.readLineSync()!);

    if (Allinputs[x][y] == "X" || Allinputs[x][y] == "O") {
      print('---------------------------------------');
      print('Invalid!, this place is already filled');
      print('---------------------------------------');
      showboard();
      O();
    } else {
      Allinputs[x][y] = "O";
    }
  }

  void X() {
    isOturn = true;

    print("Turn's X : ");
    print('Enter the position');

    x = int.parse(stdin.readLineSync()!);
    y = int.parse(stdin.readLineSync()!);

    if (Allinputs[x][y] == "X" || Allinputs[x][y] == "O") {
      print('---------------------------------------');
      print('Invalid!, this place is already filled');
      print('---------------------------------------');
      showboard();
      X();
    } else {
      Allinputs[x][y] = "X";
    }
  }

// checking for places

  bool check() {
    // Check rows and columns for "O"
    for (int i = 0; i < 3; i++) {
      if (Allinputs[i][0] == "O" &&
          Allinputs[i][1] == "O" &&
          Allinputs[i][2] == "O") {
        return true; // Row win
      }
      if (Allinputs[0][i] == "O" &&
          Allinputs[1][i] == "O" &&
          Allinputs[2][i] == "O") {
        return true; // Column win
      }
    }

    // Check diagonals for "O"
    if (Allinputs[0][0] == "O" &&
        Allinputs[1][1] == "O" &&
        Allinputs[2][2] == "O") {
      return true; // Diagonal win
    }
    if (Allinputs[0][2] == "O" &&
        Allinputs[1][1] == "O" &&
        Allinputs[2][0] == "O") {
      return true; // AntiDiagonal win
    }

    return false;
  }

  void showboard() {
    print('');
    for (var i = 0; i < 3; i++) {
      for (var j = 0; j < 3; j++) {
        if (Allinputs[i][j] == 'X' || Allinputs[i][j] == 'O') {
          stdout.write('${Allinputs[i][j]} ');
        } else {
          stdout.write("- ");
        }
      }
      print('');
    }
  }

  void stargame() {
    if (isOturn) {
      O();
    } else {
      X();
    }

    showboard();
    bool isWin = check();

    if (isWin) {
      if (!isOturn) {
        print("Player O wins!");
      } else {
        print("Player X wins!");
      }
    } else {
      if (count < 9) {
        count++;
        stargame();
      } else {
        print('Match draw');
      }
    }
  }
}
