//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Jorge Soto on 22/06/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain{
    var currentNode = 0
    let storyArray = [
        Story(
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            ch1: "I'll hop in. Thanks for the help!", ch1D: 2,
            ch2: "Better ask him if he's a murderer first.", ch2D: 1
        ),
        Story(
            t: "He nods slowly, unfazed by the question.",
            ch1: "At least he's honest. I'll climb in.", ch1D: 2,
            ch2: "Wait, I know how to change a tire.", ch2D: 3
        ),
        Story(
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            ch1: "I love Elton John! Hand him the cassette tape.", ch1D: 5,
            ch2: "It's him or me! You take the knife and stab him.", ch2D: 4
        ),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            ch1: "The", ch1D: 0,
            ch2: "End", ch2D: 0
        ),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            ch1: "The", ch1D: 0,
            ch2: "End", ch2D: 0
        ),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            ch1: "The", ch1D: 0,
            ch2: "End", ch2D: 0
        ) ]
    
    func getStory()->String{
        return storyArray[currentNode].title
    }

    func getCh1() -> String {
        return storyArray[currentNode].choice1
    }

    func getCh2() -> String{
        return storyArray[currentNode].choice2
    }

    mutating func nextStory(choice:String){
        if choice == "choice1" {
            currentNode = storyArray[currentNode].choice1Destination
        }
        if choice == "choice2"{
            currentNode = storyArray[currentNode].choice2Destination
        }
    }
}
