import UIKit

func evenNumberCheck(_ number: Int) -> Bool {
   return number % 2 == 0
}

evenNumberCheck(5)
evenNumberCheck(10)



func numberCheck(_ number: Int) -> Bool {
    return number % 3 == 0
  
}
 

numberCheck(10)
numberCheck(9)



var arrayNumbers = [Int](1...100)
arrayNumbers

for number in arrayNumbers {
    if numberCheck(number) == false || evenNumberCheck(number) == true {
        let index = arrayNumbers.index(of: number)
        arrayNumbers.remove(at: index!)
    }
}
print(arrayNumbers)


