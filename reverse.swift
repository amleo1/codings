let word = "abcdefg"

//Using swift lib
String(word.characters.reverse()) //"gfedcba"
//Using char array and insert
func reverseString(wordToReverse: String) -> String {
    guard wordToReverse.characters.count > 1 else {
        return wordToReverse
    }

    var reversedWord = [Character]()
    
    for char in wordToReverse.characters {
        reversedWord.insert(char, atIndex: 0)
    }
    return String(reversedWord)
}
assert(reverseString(word) == "gfedcba")

//Swap in-place, using char array
func reverseString2(wordToReverse: String) -> String {
    guard wordToReverse.characters.count > 1 else {
        return wordToReverse
    }
    
    var newWord = Array(wordToReverse.characters)
    let maxIndex = newWord.count - 1
    
    for i in 0...maxIndex {
        if i > maxIndex - i {
            break
        }
        (newWord[i], newWord[maxIndex - i]) = (newWord[maxIndex - i], newWord[i])
    }
    return String(newWord)
}

assert(reverseString2(word) == "gfedcba")
