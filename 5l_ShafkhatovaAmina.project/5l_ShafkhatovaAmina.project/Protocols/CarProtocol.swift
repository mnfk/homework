import Foundation

protocol Car: AnyObject {
    var brand: String { get }
    var yearOfIssue: Int { get }
    var transmission: Transmission { get }
    var km: Int { get set }
    var engineState: EngineState { get set }
    var hatchState: HatchState { get set }
    var doorState: DoorState { get set }
    
    func changeEngineState(_ engineState: EngineState)
    func changeHatchState(_ hatchState: HatchState)
    func changeDoorState(_ doorState: DoorState)
}

extension Car {
    func changeEngineState(_ engineState: EngineState) {
        self.engineState = engineState
    }
    
    func changeHatchState(_ hatchState: HatchState) {
        self.hatchState = hatchState
    }
    
    func changeDoorState(_ doorState: DoorState) {
        self.doorState = doorState
    }
}
