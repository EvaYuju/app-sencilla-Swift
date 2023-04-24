//
//  ViewController.swift
//  AppAutos
//
//  Created by Eva Lopez Marquez on 24/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables y constantes
    var tipoAuto = 0
    let idSegueSecondScreen = "segueSecondScreen"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* // Creamos un objeto
         let automovil = Automovil()
         print("El booleano que representa el automovil encendido es: \(automovil.encender())")
         */
    }
    
    // Actions
    
    @IBAction func btnAutoSencillo(_ sender: Any) {
        tipoAuto = 0
        performSegue(withIdentifier: idSegueSecondScreen, sender: self)
    }
    
    @IBAction func btnAutoMazda(_ sender: Any) {
        tipoAuto = 1
        performSegue(withIdentifier: idSegueSecondScreen, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Creando un objeto de la segunda pantalla
        if let destino = segue.destination as? SecondScreenViewController {
            destino.tipoAuto = self.tipoAuto
        }
    }
    
}

