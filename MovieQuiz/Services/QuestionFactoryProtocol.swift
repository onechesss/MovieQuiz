//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by oneche$$$ on 09.02.2025.
//

import Foundation

protocol QuestionFactoryProtocol: AnyObject {
    func requestNextQuestion()
    func loadData()
}
