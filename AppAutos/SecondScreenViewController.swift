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
    let printError = "Error"
    
    //var autoSencillo:Automovil? - ASÍ NO
    var autoSencillo = Automovil()
    //var autoMazda:AutoMazda? - ASÍ NO
    var autoMazda = AutoMazda()
    
    // Outlets
    
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var autoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAuto {
        case 0:
            InfoLabel.text = printCreacionAutoSencillo
            print(printCreacionAutoSencillo)
            
        case 1:
            InfoLabel.text = printCreacionAutoMazda
            print(printCreacionAutoMazda)
            
        default:
            InfoLabel.text = printError
            print(printError)
        }
    }
    
    // Actions
    
    @IBAction func btn_MostrarInfo(_ sender: Any) {
    }
    
    @IBAction func btn_Encender(_ sender: Any) {
    }
    
    @IBAction func btn_Apagar(_ sender: Any) {
    }
    
    @IBAction func btn_Acelerar(_ sender: Any) {
    }
}
