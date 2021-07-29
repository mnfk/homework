import Foundation

class TruckCar: Car {
    var brand: String
    var yearOfIssue: Int
    var transmission: Transmission
    var km: Int
    var engineState: EngineState
    var hatchState: HatchState
    var doorState: DoorState
    let trailer: Trailer
    
    init(brand: String, yearOfIssue: Int, transmission: Transmission,
         km: Int, engineState: EngineState, hatchState: HatchState,
         doorState: DoorState, trailer: Trailer) {
        self.brand = brand
        self.yearOfIssue = yearOfIssue
        self.transmission = transmission
        self.km = km
        self.engineState = engineState
        self.hatchState = hatchState
        self.doorState = doorState
        self.trailer = trailer
    }
}

extension TruckCar: CustomStringConvertible {
    var description: String {
        return """
            Модель машины: \(brand)
            Год выпуска: \(yearOfIssue) год
            Коробка передач: \(transmission.rawValue)
            Пробег: \(km) км
            Состояние двигателя: \(engineState.rawValue)
            Состояние багажника: \(hatchState.rawValue)
            Состояние дверей: \(doorState.rawValue)
            Размер прицепа: \(trailer.rawValue)
            """
    }
}
