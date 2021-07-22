import UIKit

enum DoorState {
    case open, closed
}

enum Transmission {
    case auto, manual
}

enum EngineState {
    case on, off
}

enum TankLevel {
    case filled, empty
}

enum Trailer {
    case big, small
}

struct SportCar {
    var brand: String
    var yearOfIssue: Int
    var transmission: Transmission
    var maxSpeed: Int
    var parkingSensor: Bool
    var engineState: EngineState
    var tankLevel: TankLevel
    var doorState: DoorState
    mutating func engineOn() {
        engineState = .on
    }
    mutating func engineOff() {
        engineState = .off
    }
    mutating func doorState(_ doorState: DoorState) {
        self.doorState = doorState
    }
    mutating func emptyTank() {
        tankLevel = .empty
    }
    mutating func fillTank() {
        tankLevel = .filled
    }
    func carParameters() {
        print("Модель машины: \(brand)")
        print("Год выпуска: \(yearOfIssue) год")
        print("Коробка передач: \(transmission == .auto ? "автомат" : "механика")")
        print("Максимальная скорость: \(maxSpeed) км/ч")
        print("Парктроник: \(parkingSensor ? "имеется" : "отсутствует")")
        print("Состояние двигателя: \(engineState == .on ? "включен" : "выключен")")
        print("Уровень бензина в бензобаке: \(tankLevel == .filled ? "заполнен" : "пустой")")
        print("Состояние дверей: \(doorState == .open ? "открыты" : "закрыты")\n")
    }
}

struct TruckCar {
    var brand: String
    var trunkCapacity: Int
    var trunkFilledCapacity: Int
    var trailer: Trailer
    var engineCapacity: Int
    var engineState: EngineState
    var tankLevel: TankLevel
    var doorState: DoorState
    mutating func openDoor() {
        doorState = .open
    }
    mutating func closeDoor() {
        doorState = .closed
    }
    mutating func engineState(_ engineState: EngineState) {
        self.engineState = engineState
    }
    mutating func emptyTank() {
        tankLevel = .empty
    }
    mutating func fillTank() {
        tankLevel = .filled
    }
    func carParameters() {
        print("Модель машины: \(brand)")
        print("Объем багажника: \(trunkCapacity) литров")
        print("Заполненный объем багажника: \(trunkFilledCapacity) литров")
        print("Размер прицепа: \(trailer == .big ? "большой" : "маленький")")
        print("Объем двигателя: \(engineCapacity) см3")
        print("Состояние двигателя: \(engineState == .on ? "включен" : "выключен")")
        print("Уровень бензина в бензобаке: \(tankLevel == .filled ? "заполнен" : "пустой")")
        print("Состояние дверей: \(doorState == .open ? "открыты" : "закрыты")\n")
    }
}


var sportCar1 = SportCar(brand: "BMW", yearOfIssue: 2011, transmission: .auto, maxSpeed: 350, parkingSensor: true, engineState: .off, tankLevel: .filled, doorState: .closed)
sportCar1.engineOn()
sportCar1.maxSpeed = 385


var sportCar2 = SportCar(brand: "Chevrolet", yearOfIssue: 2015, transmission: .manual, maxSpeed: 370, parkingSensor: true, engineState: .off, tankLevel: .empty, doorState: .closed)
sportCar2.doorState(.open)
sportCar2.fillTank()

sportCar1.carParameters()
sportCar2.carParameters()



var truckCar1 = TruckCar(brand: "Volvo", trunkCapacity: 1000, trunkFilledCapacity: 550, trailer: .big, engineCapacity: 3, engineState: .on, tankLevel: .filled, doorState: .closed)
truckCar1.openDoor()
truckCar1.engineState(.off)


var truckCar2 = TruckCar(brand: "Freightliner", trunkCapacity: 612, trunkFilledCapacity: 300, trailer: .small, engineCapacity: 2, engineState: .off, tankLevel: .empty, doorState: .closed)
truckCar2.fillTank()
truckCar2.engineState(.on)

truckCar1.carParameters()
truckCar2.carParameters()

