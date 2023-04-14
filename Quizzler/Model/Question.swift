//
//  Question.swift
//  Quizzler
//
//  Created by Edward Kheladze on 12.04.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
