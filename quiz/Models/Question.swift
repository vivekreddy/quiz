//
//  Question.swift
//  quiz
//
//  Created by Vivek on 18/05/23.
//

import Foundation

struct Question: Identifiable {
    let id: UUID
    var desc: String
    var answers: [Answer]
    var correctAnswer: Int
    
    init(id: UUID = UUID(), desc: String, answers: [String], correctAnswer: Int) {
        self.id = id
        self.desc = desc
        self.answers = answers.map { Answer(desc: $0) }
        self.correctAnswer = correctAnswer
    }
}

extension Question {
    struct Answer: Identifiable {
        let id: UUID
        var desc: String
        
        init(id: UUID = UUID(), desc: String) {
            self.id = id
            self.desc = desc
        }
    }
    static var emptyQuestion: Question {
        Question(desc: "", answers: [], correctAnswer: 1)
    }
}

extension Question {
    static let sampleData: [Question] =
    [
        Question(desc: "What color is a banana?",
                   answers: ["Yellow", "Red", "Blue"],
                   correctAnswer: 1),
        Question(desc: "What is the shape of a cricket ground",
                   answers: ["Rectangle", "Round", "Square"],
                   correctAnswer: 2),
        Question(desc: "When was the iPhone launched",
                   answers: ["2003", "2005", "2007"],
                   correctAnswer: 3)
    ]
}
