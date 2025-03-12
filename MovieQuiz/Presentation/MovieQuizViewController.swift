import UIKit

final class MovieQuizViewController: UIViewController, MovieQuizViewControllerProtocol
{
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var textLabel: UILabel!
    @IBOutlet private var counterLabel: UILabel!
    @IBOutlet private var yesButton: UIButton!
    @IBOutlet private var noButton: UIButton!
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!
    
    private var alertPresenter = AlertPresenter()
    private var presenter: MovieQuizPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = MovieQuizPresenter(viewController: self)
        activityIndicator.hidesWhenStopped = true
        presenter.viewController = self
    }
    
    func show(quiz result: QuizResultsViewModel) {
        let alertModel = presenter.makeResultsMessage(result: result)
        
        alertPresenter.showAlert(ViewController: self, quiz: alertModel)
    }
    
    func show(quiz step: QuizStepViewModel) {
        imageView.layer.cornerRadius = 20
        imageView.image = step.image
        textLabel.text = step.question
        counterLabel.text = step.questionNumber
        hideLoadingIndicator()
    }
    
    func highlightImageBorder(isCorrectAnswer: Bool) {
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 8
        imageView.layer.borderColor = isCorrectAnswer ? UIColor.ypGreen.cgColor : UIColor.ypRed.cgColor
    }
    
    func stopHighlightImageBorder() {
        self.imageView.layer.borderColor = nil
        self.imageView.layer.borderWidth = 0
        self.yesButton.isEnabled = true
        self.noButton.isEnabled = true
    }
    
    func showLoadingIndicator() {
        activityIndicator.startAnimating()
    }
    
    func hideLoadingIndicator() {
        activityIndicator.stopAnimating()
    }
    
    func showNetworkError(message: String)
    {
        hideLoadingIndicator()
        
        let model = AlertModel(title: "Ошибка",
                               message: message,
                               buttonText: "Попробовать еще раз") { [weak self] in
            guard let self = self else { return }
            self.presenter.restartGame()
            self.presenter.questionFactory?.loadData()
        }
        alertPresenter.showAlert(ViewController: self, quiz: model)
    }
    
    @IBAction private func yesButtonClicked(_ sender: Any)
    {
        presenter.yesButtonClicked()
        
        yesButton.isEnabled = false
        noButton.isEnabled = false
    }
    
    @IBAction private func noButtonClicked(_ sender: Any)
    {
        presenter.noButtonClicked()
        
        noButton.isEnabled = false
        yesButton.isEnabled = false
    }
}
