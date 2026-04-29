import Foundation

struct Question {
    enum QuestionType {
        case single, multiple, ranged
    }
    
    var text: String
    var type: QuestionType
    var answers: [Answer]
}



