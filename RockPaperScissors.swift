/*
  RockPaperScissors.swift
  
  By Zefeng Wang
  Created on December 2, 2021
  This program reads the user's input of either rock, paper, or scissors and 
   will compare it with the computer's choice, which is random. It will then
   display the result. 
*/

let moves = ["rock", "paper", "scissors"]
while true {
	print("Please enter either 0(rock), 1(paper), or 2(scissors): ")
	let playerNum = Int(readLine()!)!
	let computerNum = Int.random(in: 0..<3)
	let computerMove = moves[computerNum]
	if let playerMove = Optional(moves[playerNum]) {
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
