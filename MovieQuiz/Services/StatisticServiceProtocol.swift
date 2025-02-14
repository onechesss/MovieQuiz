//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by oneche$$$ on 11.02.2025.
//

import Foundation

protocol StatisticServiceProtocol {
    var gamesCount: Int { get }
    var bestGame: GameResult { get }
    var totalAccuracy: Double { get }
    
    func store(correct count: Int, total amount: Int)
}
