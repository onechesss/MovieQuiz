//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by oneche$$$ on 11.02.2025.
//

import Foundation

final class StatisticService: StatisticServiceProtocol {
    private let storage: UserDefaults = .standard

    var gamesCount: Int {
        get { storage.integer(forKey: "gamesCount") }
        set { storage.set(newValue, forKey: "gamesCount") }
    }
    
    var bestGame: GameResult {
        get {
            let correct = storage.integer(forKey: "correct")
            let total = storage.integer(forKey: "total")
            let date = (storage.string(forKey: "date") ?? nil)
            
            return GameResult(correct: correct, total: total, date: date ?? "")
        }
        set {
            storage.set(newValue.correct, forKey: "correct")
            storage.set(newValue.total, forKey: "total")
            storage.set(newValue.date, forKey: "date")
        }
    }
    
    var totalAccuracy: Double {
        let correctAnswers = storage.integer(forKey: "total")
        let numberOfGames = storage.integer(forKey: "gamesCount")
        
        return Double(correctAnswers * 100) / Double((numberOfGames * 10))
    }
    
    func store(correct count: Int, total amount: Int) {
        gamesCount += amount
        bestGame.total += count
        
        if count > bestGame.correct {
            bestGame.correct = count
            bestGame.date = Date().dateTimeString
        }
    }
    
    
}
