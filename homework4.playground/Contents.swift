import UIKit

enum engine {
    case on, off }
    
class Car {
var mark: String
var year: Int
var color: UIColor
var engineCondition: engine
static var countCars = 0
init(mark: String, year: Int, color: UIColor, engineCondition: engine) {
    self.mark = mark
    self.year = year
    self.color = color
    self.engineCondition = engineCondition
    Car.countCars += 1
    }
    func startEngine() {
        engineCondition = .on
    }
    func paintCarToRed() {
        color = .red }
}
var car1 = Car(mark: "Honda", year: 2008, color: .gray, engineCondition: .off)
var car2 = Car(mark: "Toyota", year: 2001, color: .blue, engineCondition: .on)
var car3 = Car(mark: "Mazda", year: 2017, color: .orange, engineCondition: .off)
car1.startEngine()
car2.paintCarToRed()
print(car1.engineCondition)
print(Car.countCars)
enum trunkState {
    case open, close
}
enum trunkSize {
    case small, middle, large
}
class TrunkCar : Car {
    var trunk : trunkState
    var trunkSize : trunkSize
    init(mark: String, year: Int, color: UIColor, engineCondition: engine, trunk: trunkState, trunkSize: trunkSize) {
        self.trunk = trunk
        self.trunkSize = trunkSize
        super.init(mark: mark, year: year, color: color, engineCondition: engineCondition)
    }
    func openTruck() {
        trunk = .open
    }
    func truckMessage() {
        print("Размер багажника у автомобиля \(mark) - \(trunkSize)")
    }
}
var trunkCar1 = TrunkCar(mark: "BMW", year: 2019, color: .purple, engineCondition: .on, trunk: .close, trunkSize: .middle)
var trunkCar2 = TrunkCar(mark: "Mercedes", year: 2009, color: .lightGray, engineCondition: .off, trunk: .close, trunkSize: .large)
var trunkCar3 = TrunkCar(mark: "Suzuki", year: 2001, color: .white, engineCondition: .off, trunk: .open, trunkSize: .large)
trunkCar1.openTruck()
trunkCar3.truckMessage()
print(trunkCar2.trunk)


enum transmission {
    case auto, mannual
}
class sportCar : Car {
    var trans: transmission
    var turboEngine : Bool
    init(mark: String, year: Int, color: UIColor, engineCondition: engine, turboEngine: Bool, trans: transmission) {
        self.trans = trans
        self.turboEngine = turboEngine
        super.init(mark: mark, year: year, color: color, engineCondition: engineCondition)
}
    override func startEngine() {
        print("Требуется заправка")
    }
    func carMark(){
        print("Вам представлена спортивная машина марки \(mark) \(year) года выпуска.")
    }
}
var sportCar1 = sportCar(mark: "Ferrari", year: 2017, color: .red, engineCondition: .off, turboEngine: true, trans: .mannual)
var sportCar2 = sportCar(mark: "Bugatti", year: 2019, color: .darkGray, engineCondition: .on, turboEngine: true, trans: .auto)
var sportCar3 = sportCar(mark: "UAZ PATRIOT", year: 2020, color: .brown, engineCondition: .off, turboEngine: false, trans: .mannual)
sportCar1.startEngine()
sportCar2.carMark()

