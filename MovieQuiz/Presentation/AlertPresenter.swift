//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by oneche$$$ on 10.02.2025.
//

import Foundation
import UIKit

class AlertPresenter {

    func showAlert(ViewController: UIViewController, quiz result: AlertModel) {
        let alert = UIAlertController(
            title: result.title,
            message: result.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: result.buttonText, style: .default, handler: { action in result.completion() })
        
        alert.addAction(action)
        
        ViewController.present(alert, animated: true, completion: nil)
    }
}
