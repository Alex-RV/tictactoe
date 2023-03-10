class Player {
  static const x = "X";
  static const o = "O";
  static const empty = "";
}

class Game {
  static const boardLength = 9;
  static const double blockSize = 100.0;

  //Empty board
  late List<String> board;

  Game() {
    board = initGameBoard();
  }

  void resetBoard() {
    board = initGameBoard();
  }

  static List<String> initGameBoard() =>
      List.generate(boardLength, (index) => Player.empty);

  bool winnerCheck(String player, int index) {
    // Define the winning patterns
    final patterns = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6] // Diagonals
    ];

    // Check if any of the winning patterns is satisfied by the player's moves
    for (final pattern in patterns) {
      print(pattern);
      if (pattern.every((index) => board[index] == player)) {
        print(board[index]);
        return true;
      }
    }

    return false;
  }
}
