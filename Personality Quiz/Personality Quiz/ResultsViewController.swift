import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinishionLabel: UILabel!
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers = [Answer.AnimalType: Int]()
        for response in responses {
            frequencyOfAnswers[response.type, default: 0] += 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) in
            pair1.value > pair2.value
        }
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinishionLabel.text = mostCommonAnswer.definition
    }
}
