import Foundation

enum DoorState: String {
    case open = "открыты"
    case closed = "закрыты"
}

enum Transmission: String {
    case auto = "автомат"
    case manual = "механика"
}

enum EngineState: String {
    case on = "включен"
    case off = "выключен"
}

enum HatchState: String {
    case open = "открыты"
    case closed = "закрыты"
}

enum Trailer: String {
    case big = "большой"
    case small = "маленький"
}

enum Top: String {
    case convertible = "открытый"
    case regular = "закрытый"
}

class Car {
    let brand: String
    let yearOfIssue: Int
    let transmission: Transmission
    var km: Int
    var engineState: EngineState
    var hatchState: HatchState
    var doorState: DoorState
    init(brand: String, yearOfIssue: Int, transmission: Transmission,
         km: Int, engineState: EngineState, hatchState: HatchState,
         doorState: DoorState) {
        self.brand = brand
        self.yearOfIssue = yearOfIssue
        self.transmission = transmission
        self.km = km
        self.engineState = engineState
        self.hatchState = hatchState
        self.doorState = doorState
    }
    func engineState(_ engineState: EngineState) {
    }
    func hatchState(_ hatchState: HatchState) {
    }
    func doorState(_ doorState: DoorState) {
    }
    func carParameters() {
    }
}

class SportCar: Car {
    let maxSpeed: Int
    let top: Top
    init(brand: String, yearOfIssue: Int, transmission: Transmission,
         km: Int, engineState: EngineState, hatchState: HatchState,
         doorState: DoorState, maxSpeed: Int, top: Top) {
        self.maxSpeed = maxSpeed
        self.top = top
        super.init(brand: brand, yearOfIssue: yearOfIssue,
                   transmission: transmission, km: km,
                   engineState: engineState, hatchState: hatchState,
                   doorState: doorState)
    }
    override func engineState(_ engineState: EngineState) {
        self.engineState = engineState
    }
    override func hatchState(_ hatchState: HatchState) {
        self.hatchState = hatchState
    }
    override func doorState(_ doorState: DoorState) {
        self.doorState = doorState
    }
    override func carParameters() {
        print("""
                 Модель машины: \(brand)
                 Год выпуска: \(yearOfIssue) год
                 Коробка передач: \(transmission.rawValue)
                 Пробег: \(km) км
                 Состояние двигателя: \(engineState.rawValue)
                 Состояние багажника: \(hatchState.rawValue)
                 Состояние дверей: \(doorState.rawValue)
                 Максимальная скорость: \(maxSpeed) км/ч
                 Тип кузова: \(top.rawValue)\n
                 """)
    }
}

class TruckCar: Car {
    let trailer: Trailer
    init(brand: String, yearOfIssue: Int, transmission: Transmission,
         km: Int, engineState: EngineState, hatchState: HatchState,
         doorState: DoorState, trailer: Trailer) {
        self.trailer = trailer
        super.init(brand: brand, yearOfIssue: yearOfIssue,
                   transmission: transmission, km: km,
                   engineState: engineState, hatchState: hatchState,
                   doorState: doorState)
    }
    override func engineState(_ engineState: EngineState) {
        self.engineState = engineState
    }
    override func hatchState(_ hatchState: HatchState) {
        self.hatchState = hatchState
    }
    override func doorState(_ doorState: DoorState) {
        self.doorState = doorState
    }
    override func carParameters() {
        print("""
                 Модель машины: \(brand)
                 Год выпуска: \(yearOfIssue) год
                 Коробка передач: \(transmission.rawValue)
                 Пробег: \(km) км
                 Состояние двигателя: \(engineState.rawValue)
                 Состояние багажника: \(hatchState.rawValue)
                 Состояние дверей: \(doorState.rawValue)
                 Размер прицепа: \(trailer.rawValue)
                 """)
    }
}


var sportCar1 = SportCar(brand: "BMW", yearOfIssue: 2015, transmission: .auto,
                         km: 0, engineState: .off, hatchState: .closed,
                         doorState: .closed, maxSpeed: 300, top: .convertible)
sportCar1.engineState(.on)
sportCar1.carParameters()

var truckCar1 = TruckCar(brand: "Volvo", yearOfIssue: 2000, transmission: .auto,
                         km: 7000, engineState: .on, hatchState: .closed,
                         doorState: .closed, trailer: .big)
truckCar1.hatchState(.open)
truckCar1.doorState(.open)
truckCar1.carParameters()
