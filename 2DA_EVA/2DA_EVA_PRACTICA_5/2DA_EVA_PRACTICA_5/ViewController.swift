//
//  ViewController.swift
//  2DA_EVA_PRACTICA_5
//
//  Created by Francisco Castillo on 4/03/17.
//  Copyright © 2017 Francisco Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  {
    let user = "Francisco"
    let pass = "MustangNegro2013"
    
    let pickerDataCar = ["Camaro","Mustang","Corvette","Charger","Audi"]
    let pickerDataColor = ["Rojo","Amarillo","Azul","Plata","Negro"]
    let pickerDataYear = ["2010","2011","2012","2013","2014","2015","2016","2017"]
    
    @IBOutlet weak var txtUser: UITextField!
  
    @IBOutlet weak var pickerPass: UIPickerView!
    
    @IBAction func btnInicio(sender: AnyObject) {
        let dataComp1 = pickerDataCar[pickerPass.selectedRowInComponent(0)]
        let dataComp2 = pickerDataColor[pickerPass.selectedRowInComponent(1)]
        let dataComp3 = pickerDataYear[pickerPass.selectedRowInComponent(2)]
        
        let comp = dataComp1+dataComp2+dataComp3
        
        if txtUser.text == user && comp == pass {
            let acMostrar = UIAlertController(title: "BIENVENIDO:", message: "CONTRASEÑA CORRECTA", preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "ENTRAR", style: .Default, handler: {action in self.performSegueWithIdentifier("bienvenida", sender: self)})
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        } else {
            let acMostrar = UIAlertController(title: "USUARIO Y/O CONTRASEÑA INCORRECTA", message: "INTENTE NUEVAMENTE", preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }
    }
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

