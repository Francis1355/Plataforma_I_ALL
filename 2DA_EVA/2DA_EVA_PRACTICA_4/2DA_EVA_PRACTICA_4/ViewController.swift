//
//  ViewController.swift
//  2DA_EVA_PRACTICA_4
//
//  Created by Francisco Castillo on 03/30/17.
//  Copyright © 2017 Francisco Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgCar: UIImageView!
    //Se agregan los datos del picker view cada uno en un arreglo
    let pickerDataCar = ["Camaro","Mustang","Corvette","Charger","Audi"]
    let pickerDataColor = ["Rojo","Amarillo","Azul","Plata","Negro"]
    let pickerDataYear = ["2010","2011","2012","2013","2014","2015","2016","2017"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Crear la función para mostrar el texto de las filas
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent components: Int) -> String? {
        let dataR = ""
        if components == 0 {
            return pickerDataCar[row]
        }
        else if components == 1 {
            return pickerDataColor[row]
        }
        else if components == 2 {
            return pickerDataYear[row]
        }
        else {
            return dataR
        }
        
    }
    //Funcion del picker view que se usa para llamar cuando el usuario selecciona una fila en un componente
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let dataComp1 = pickerDataCar[pickerView.selectedRowInComponent(0)]
        let dataComp2 = pickerDataColor[pickerView.selectedRowInComponent(1)]
        let dataComp3 = pickerDataYear[pickerView.selectedRowInComponent(2)]
        
        let img = UIImage(named: dataComp1+dataComp2+dataComp3)
        imgCar.image = img

     }
    //Funcion para decirle el numero de componentes en el arreglo
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
      //Crear la funcion para seleccionar los datos de los componentes actuales
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let compR = 0
        if component == 0 {
            return pickerDataCar.count
        }
        else if component == 1 {
            return pickerDataColor.count
        }
        else if component == 2 {
            return pickerDataYear.count
        }
        else {
            return compR
        }
    }
    
}

