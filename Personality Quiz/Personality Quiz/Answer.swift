import Foundation

struct Answer {
    enum AnimalType: Character {
        case lion = "🦁", rabbit = "🐇", turtle = "🐢", cat = "🙀"
        
        var definition: String {
            switch self {
            case .lion:
                "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
                "You are very independent and enjoy spending time alone."
            case .rabbit:
                "You are very social and enjoy spending time with your friends and family."
            case .turtle: "You are very calm and enjoy spending time alone."
            }
        }
    }
    var text: String
    var type: AnimalType
}

