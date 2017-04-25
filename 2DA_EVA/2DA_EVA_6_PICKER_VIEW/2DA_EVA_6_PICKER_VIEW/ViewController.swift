//
//  ViewController.swift
//  2DA_EVA_6_PICKER_VIEW
//
//  Created by TEMPORAL2 on 16/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let asDatos = ["Lunes","Martes", "Miercoles", "Jueves", "Viernes","Sabado","Domingo"]
    let asDatos2 = ["Lunes","Martes", "Miercoles", "Jueves", "Viernes","Sabado","Domingo"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent
        component: Int) ->String?{
            if component == 0{
                return asDatos[row]
            }else{
            return asDatos2[row]//Fila que se debe refrescar(mostrar el texto)
        }
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2//Numero de arreglos u orignenes de datos
    }
    //Esta funcion nos mostrará el mensaje cuando se elige un valor de cualquier picker view
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
        {
            var sMensa: String
            
            if component == 0{
                sMensa = asDatos[row]
            }else{
                sMensa = asDatos2[row]
            }
            let acMostrar = UIAlertController(title: "Picker View", message: sMensa, preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }
    //Esta funcion nos regresara los datos del arreglo segun lo que se haya elegido en el picker view
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->Int{
        if component == 0{
            return asDatos.count
        }else{
        return asDatos2.count
    }
    }
    


}

