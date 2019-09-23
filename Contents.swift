import Foundation

var inputString = "vava"

func calculateMaxCountSameLetters(_ inputString: String) -> Dictionary<Character, Int> {
    
    var result: Dictionary<Character, Int> = Dictionary()
    
    guard var currentLetter = inputString.first else {
        return result
    }
    
    var countCurrent = 0
    
    func tryAddCurrentLetterInResult() {
        if result[currentLetter] ?? 0 < countCurrent {
            result[currentLetter] = countCurrent
        }
    }
    
    inputString.forEach({ letter in
        
        if currentLetter != letter {
            tryAddCurrentLetterInResult()
            
            currentLetter = letter
            countCurrent = 1
            return
        }
        
        countCurrent += 1
        
    })
    
    tryAddCurrentLetterInResult()
    return result
}

print(calculateMaxCountSameLetters(inputString))
