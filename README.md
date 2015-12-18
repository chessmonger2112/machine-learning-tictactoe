# Learning-TicTacToe

This is a rails application that allows either two people to play tic tac toe, or one player play against the ai. What is cool about this program is that the ai learns to from its mistakes. When it loses it saves the current position and the losing move to the database. When it is about to move it checks the database for a match of it's current position, and if one is found it gets a list of all the failing moves, and trys a different move to ensure not making the same mistake.

IMPORTANT: Either enter "no" to play against another person, or "yes" to play against the computer.
