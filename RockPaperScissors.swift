/*
  RockPaperScissors.swift
  
  By Zefeng Wang
  Created on December 2, 2021
  This program reads the user's input of either rock, paper, or scissors and 
   will compare it with the computer's choice, which is random. It will then
   display the result. 
*/

// Array of possible moves
let moves = ["rock", "paper", "scissors"]

while true {
	// Ask user for a move and reads input
	print("Please enter either 0(rock), 1(paper), or 2(scissors): ")
	let playerNum = Int(readLine()!)!
	let computerNum = Int.random(in: 0..<3)
	let computerMove = moves[computerNum]
	if let playerMove = Optional(moves[playerNum]) {
		// Compare player’s move with computer’s move and displays the result
		if playerNum == computerNum {
			print("Player picked \(playerMove) and computer picked \(computerMove), so it's a tie!")
		} else if (playerNum > computerNum) && !(playerNum == 2 && computerNum == 0)
			|| (computerNum == 2 && playerNum == 0) {
			print("Player picked \(playerMove) and computer picked \(computerMove), so Player wins!")
		} else {
			print("Player picked \(playerMove) and computer picked \(computerMove), so Computer wins!")
		}
	} else {
        	print("Please enter an integer of either 0, 1, or 2.")
	}
	break
}
