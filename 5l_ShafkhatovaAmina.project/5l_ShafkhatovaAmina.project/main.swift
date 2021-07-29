import Foundation

var sportCar1 = SportCar(brand: "BMW", yearOfIssue: 2015, transmission: .auto,
                         km: 0, engineState: .off, hatchState: .closed,
                         doorState: .closed, maxSpeed: 300, top: .convertible)
sportCar1.changeEngineState(.on)
print(sportCar1)


var truckCar1 = TruckCar(brand: "Volvo", yearOfIssue: 2000, transmission: .auto,
                         km: 7000, engineState: .on, hatchState: .closed,
                         doorState: .closed, trailer: .big)
truckCar1.changeHatchState(.open)
truckCar1.changeDoorState(.open)
print(truckCar1)

