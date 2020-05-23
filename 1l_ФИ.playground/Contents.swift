import UIKit

let firstCatet = 2
let secondCatet = 8

let square = (firstCatet*secondCatet)/2
print("Площадь треугольника: \(square) см")

let hypotenuseC = sqrt((Double)(firstCatet * secondCatet) + (Double)(firstCatet*secondCatet))
let hypoValue = "\(round(hypotenuseC))"  // не разобралась как убирать дурацкие нули :с
print("Гипотенуза треугольника: \(hypoValue) см")

let perimeter = Double(firstCatet + secondCatet) + hypotenuseC
let periValue = "\(round(perimeter))"
print("Периметр треугольника: \(periValue) см")

