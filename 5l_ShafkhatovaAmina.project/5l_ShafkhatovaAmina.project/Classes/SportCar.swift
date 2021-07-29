import Foundation

class SportCar: Car {
    var brand: String
    var yearOfIssue: Int
    var transmission: Transmission
    var km: Int
    var engineState: EngineState
    var hatchState: HatchState
    var doorState: DoorState
    var maxSpeed: Int
    var top: Top
    
    init(brand: String, yearOfIssue: Int, transmission: Transmission,
         km: Int, engineState: EngineState, hatchState: HatchState,
         doorState: DoorState, maxSpeed: Int, top: Top) {
        self.brand = brand
        self.yearOfIssue = yearOfIssue
        self.transmission = transmission
        self.km = km
        self.engineState = engineState
        self.hatchState = hatchState
        self.doorState = doorState
        self.maxSpeed = maxSpeed
        self.top = top
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return """
            Модель машины: \(brand)
            Год выпуска: \(yearOfIssue) год
            Коробка передач: \(transmission.rawValue)
            Пробег: \(km) км
            Состояние двигателя: \(engineState.rawValue)
            Состояние багажника: \(hatchState.rawValue)
            Состояние дверей: \(doorState.rawValue)
            Максимальная скорость: \(maxSpeed) км/ч
            Тип кузова: \(top.rawValue)\n
            """
    }
}
