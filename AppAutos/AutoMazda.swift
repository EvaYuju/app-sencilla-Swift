//
//  File.swift
//  AppAutos
//
//  Created by Eva Lopez Marquez on 24/4/23.
//

import Foundation

class AutoMazda: Automovil {
    
    // Variables y constantes
    
    var porcentajeBateria = 100
    let cargaCompleta = "Carga completa"
    
    func cargarBateria() -> String {
        porcentajeBateria = 100
        return cargaCompleta
        
    }
}
