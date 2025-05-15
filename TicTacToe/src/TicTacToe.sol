// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        // Rows
        for (uint8 i = 0; i < 3; i++) {
            uint8 a = board[i][0];
            uint8 b = board[i][1];
            uint8 c = board[i][2];
            if (a != 0 && a == b && b == c) return true;
        }

        // Columns
        for (uint8 i = 0; i < 3; i++) {
            uint8 a = board[0][i];
            uint8 b = board[1][i];
            uint8 c = board[2][i];
            if (a != 0 && a == b && b == c) return true;
        }

        // Diagonal top-left to bottom-right
        uint8 d1 = board[0][0];
        if (d1 != 0 && d1 == board[1][1] && board[1][1] == board[2][2]) return true;

        // Diagonal top-right to bottom-left
        uint8 d2 = board[0][2];
        if (d2 != 0 && d2 == board[1][1] && board[1][1] == board[2][0]) return true;

        return false;
    }
}
