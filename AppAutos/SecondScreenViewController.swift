//
//  SecondScreenViewController.swift
//  AppAutos
//
//  Created by Eva Lopez Marquez on 24/4/23.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    // Variables
    
    var tipoAuto = 0
    let printCreacionAutoSencillo = "Creado correctamente un objeto automóvil sencillo"
    let printCreacionAutoMazda = "Creado correctamente objeto automóvil Mazda"
    let printAutoEncendido = "El automóvil está encendido"
    let printAutoApagado = "El automóvil está apagado"
    let printAutoYaEncendido = "El automóvil ya está encendido"
    let printAutoYaApagado = "El automóvil ya está apagado"
    let printNoAcelera = "Debe encender primero el automóvil para acelerar"
    let printError = "Error"
    let color1 = "amarillo"
    let precio1 = 7000
    // ON/OFF
    var estadoAuto = false
    
    //var autoSencillo:Automovil? - ASÍ NO
    var autoSencillo = Automovil()
    //var autoMazda:AutoMazda? - ASÍ NO
    var autoMazda = AutoMazda()
    
    // Outlets
    
    @IBOutlet weak var autoImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAuto {
        case 0:
            autoSencillo = Automovil()
            autoImageView.image = UIImage(named: "automovil")
            infoLabel.text = printCreacionAutoSencillo
            print(printCreacionAutoSencillo)
            
        case 1:
            autoMazda = AutoMazda()
            autoImageView.image = UIImage(named: "autoelectrico")
            autoMazda.color = color1
            autoMazda.precio = precio1
            
            infoLabel.text = printCreacionAutoMazda
            print(printCreacionAutoMazda)
            
        default:
            infoLabel.text = printError
            print(printError)
        }
    }
    
    // Actions
    
    @IBAction func btn_MostrarInfo(_ sender: Any) {
        switch tipoAuto {
        case 0:
            infoLabel.text = """
            El automóvil tiene \(autoSencillo.numLlantas) llantas,
            es de color \(autoSencillo.color) y su precio es de \(autoSencillo.precio)
            """
            
        case 1:
            infoLabel.text = """
            El automóvil tiene \(autoMazda.numLlantas), es de color \(autoMazda.color), su precio es de \(autoMazda.precio)€. Nivel de batería = \(autoMazda.porcentajeBateria)%
            """
            
        default:
            infoLabel.text = printError
        }
    }
    
    @IBAction func btn_Encender(_ sender: Any) {
        switch tipoAuto {
        case 0:
            if(!estadoAuto){  // !estadoAuto = false
                estadoAuto = autoSencillo.encender()
                infoLabel.text = printAutoEncendido
            } else {
                infoLabel.text = printAutoYaEncendido
            }
        case 1:
            if(!estadoAuto){
                estadoAuto = autoMazda.encender()
                infoLabel.text = printAutoEncendido
                autoMazda.porcentajeBateria = 90
            } else {
                infoLabel.text = printAutoYaEncendido
            }
        default:
            infoLabel.text = printError
        }
    }
    
    @IBAction func btn_Apagar(_ sender: Any) {
        switch tipoAuto {
        case 0:
            if(estadoAuto){ // estadoAuto = true
                estadoAuto = autoSencillo.apagar()
                infoLabel.text = printAutoApagado
            } else {
                infoLabel.text = printAutoYaApagado
            }
        case 1:
            if(estadoAuto){
                estadoAuto = autoMazda.apagar()
                infoLabel.text = printAutoApagado
            } else {
                infoLabel.text = printAutoYaApagado
            }
        default:
            infoLabel.text = printError
        }
    }
    
    @IBAction func btn_Acelerar(_ sender: Any) {
        switch tipoAuto {
        case 0:
            if(estadoAuto){
                infoLabel.text = autoSencillo.acelerar()
            } else {
                infoLabel.text = printNoAcelera
            }
        case 1:
            if(estadoAuto){
                infoLabel.text = autoMazda.acelerar()
                autoMazda.porcentajeBateria = autoMazda.porcentajeBateria - 10
            } else {
                infoLabel.text = printNoAcelera
            }
        default:
            infoLabel.text = printError
        }
    }
}
