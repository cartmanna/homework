import UIKit

var amountOfDeposit = 45000
var meterYears = 1
let annualPercentage = 10
while meterYears <= 5 {
let oneYearPercent = amountOfDeposit/100
let annualIncome = oneYearPercent * annualPercentage
amountOfDeposit = amountOfDeposit + annualIncome
meterYears += 1
}
print("Сумма вклада через 5 лет: \(amountOfDeposit) рублей.")
