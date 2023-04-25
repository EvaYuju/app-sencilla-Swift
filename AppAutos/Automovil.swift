//
//  Automovil.swift
//  AppAutos
//
//  Created by Eva Lopez Marquez on 24/4/23.
//

import Foundation

class Automovil {
    
    // Variables y constantes
    var color = "neutro"
    var numLlantas = 4
    var precio = 5000
    let acelerando = "Aceleración OK"
    
    // Funciones
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return false
    }
    
    func acelerar() -> String {
        return acelerando
    }
    
}
