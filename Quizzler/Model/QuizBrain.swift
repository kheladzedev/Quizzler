//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Edward Kheladze on 14.04.2023.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Единственный в мире продукт, который никогда не портится — это мед.", a: "Правда"),
        Question(q: "Позвоночник верблюда повторяет форму его горбов", a: "Ложь"),
        Question(q: "Лягушки никогда не пьют", a: "Правда"),
        Question(q: "На вершине горы будет теплее, потому что ближе к солнцу.", a: "Ложь"),
        Question(q: "День Октябрьской революции отмечают в октябре", a: "Ложь"),
        Question(q: "Белые медведи имеют черную кожу, а их шерсть прозрачная.", a: "Правда"),
        Question(q: "Столетняя война продолжалась сто лет", a: "Ложь"),
        Question(q: "У дождевых червей по пять сердец", a: "Правда"),
        Question(q: "Львы-самцы спят до 20 часов в сутки'.", a: "Правда"),
        Question(q: "Канарские острова назвали так из-за того, что там живут канарейки", a: "Ложь"),
        Question(q: "Если дерево посадить корнями вверх, его корни превратятся в ветки", a: "Ложь"),
        Question(q: "Чихать с открытыми глазами невозможно", a: "Правда")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}


