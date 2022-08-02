//
//  main.swift
//  l3_Smelcov_Sergey
//
//  Created by Jones on 30.07.2022.
//

import Foundation

print("Hello, World!")

enum engineState {
    case start, stop
}

enum windowsState{
    case open, close
}
enum trunkState {
    case full, empty
}


struct someCar {
    let brand: String
    let model: String
    var trunkVolume: Double {
        willSet {
            if (trunkState == .empty) &&
                (trunkVolume > 0) &&
                (trunkVolume != 0) &&
                (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print("\(brand) \(model) trunk free: \(space)")
            } else {
                print("\(brand)\(model) trunk full")
            }
        }
    }
    let release: Int
    
    var engineState: engineState {
        willSet {
            if newValue == .start {
                print("\(brand) \(model) двигатель запущен")
            } else {
                print("\(brand) \(model) двигатель заглушен") }
            }
        }
    var windowsState: windowsState {
        willSet {
            if newValue == .open{
                print("\(brand) \(model) окна открыты")
            } else {
                print("\(brand) \(model) окна закрыты")
            }
        }
    }
    var trunkState : trunkState
        mutating func emptyTrinck() {
            self.trunkState = .full
            print("\(brand)\(model) багаж полный")
        }
    }


var carLexus = someCar(brand: "Lexus", model: "Z350", trunkVolume: 500, release: 2019, engineState: .stop, windowsState: .close, trunkState: .empty)
var carHonda = someCar(brand: "Honda", model: "Civic", trunkVolume: 70, release: 2005, engineState: .start, windowsState: .open, trunkState: .empty)

var TruskMecedes = someCar(brand: "Mercedes", model: "Luna", trunkVolume: 1500, release: 2017, engineState: .stop, windowsState: .close, trunkState: .full)


carLexus.engineState = .start
carLexus.windowsState = .open
carLexus.trunkVolume = 200

TruskMecedes.engineState = .stop
TruskMecedes.windowsState = .close


print("info frist car: brand&model: \(carLexus.brand), \(carLexus.model), \(carHonda.brand) \(carHonda.model) trunkVolume: \(carHonda.trunkVolume)")
