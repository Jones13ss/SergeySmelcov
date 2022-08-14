//
//  main.swift
//  4l_Sergey_Smelsov
//
//  Created by Jones on 12.04.2022.
//

import Foundation

// MARK: - enum

enum engineState {
    case start,
         stop
    
}

enum windowsState {
    case open,
         close
    
}

enum trunkState {
    case full,
         empty
    
}

enum HatchStatus {
    case open
    case close
    
}

enum Podgruzka {
    case loading
    case complted
    
}


// MARK: - class

class someCar {
    
    let enigne: engineState
    let windows: windowsState
    let trunk: trunkState
    let brand: String
    let model: String
    var trunkVolume: Double
    
    init(engine: engineState,
         windows: windowsState,
         trunk: trunkState,
         brand: String,
         model: String,
         trunkVolume: Double) {
        
        self.enigne = engine
        self.windows = windows
        self.trunk = trunk
        self.brand = brand
        self.model = model
        self.trunkVolume = trunkVolume
        
    }
}

//MARK: Class Sport

class SportCar: someCar {
    
    var hatchStatus: HatchStatus
    
    init(engine: engineState,
         windows: windowsState,
         trunk: trunkState,
         brand: String,
         model: String,
         trunkVolume: Double,
         hatchStatus: HatchStatus) {
        
        self.hatchStatus = hatchStatus
        
        super.init(engine: .start,
                   windows: .close,
                   trunk: .full,
                   brand: "Lada",
                   model: "Vesta",
                   trunkVolume: 100)
    
    }
        
    func openHatch() {
        hatchStatus = .open
        
    }
    
    func closeHatch() {
        hatchStatus = .close
    }
}



//MARK: Truck Car

class Truckar: someCar {

    var podgruzka: Podgruzka

    init(engine: engineState,
         windows: windowsState,
         trunk: trunkState,
         brand: String,
         model: String,
         trunkVolume: Double,
         podgruzka: Podgruzka) {

        self.podgruzka = podgruzka

        super.init(engine: .start,
                   windows: .open,
                   trunk: .empty,
                   brand: "SAAB",
                   model: "i200",
                   trunkVolume: 1500)
        
    }

    func fullPogruzka() {
        podgruzka = .loading

    }

    func emptyPogruzka () {
        podgruzka = .complted
    }
    
}

    

let sportBMW = SportCar(engine: .start,
                        windows: .open,
                        trunk: .empty,
                        brand: "BMW",
                        model: "M3",
                        trunkVolume: 200,
                        hatchStatus: .open)

let TrunkSaab = Truckar(engine: .stop,
                        windows: .open,
                        trunk: .full,
                        brand: "SAAB",
                        model: "i200",
                        trunkVolume: 1500,
                        podgruzka: .complted)
    
let SomeCar = someCar(engine: .stop,
                      windows: .open,
                      trunk: .empty,
                      brand: "Hyndai",
                      model: "Accent",
                      trunkVolume: 150)



print(sportBMW.brand, ",",
      sportBMW.model, ",",
      sportBMW.hatchStatus, ",",
      sportBMW.windows, ",",
      sportBMW.hatchStatus, ",")

print(TrunkSaab.brand, ",",TrunkSaab.model, ",",
      TrunkSaab.trunk, ",",
      TrunkSaab.trunkVolume, ",",
      TrunkSaab.podgruzka, ",")

print(SomeCar.brand, ",",
      SomeCar.model, ",",
      SomeCar.enigne, ".",
      SomeCar.windows, ",")
