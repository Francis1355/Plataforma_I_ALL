//
//  ViewController.swift
//  2DA_EVA_PRACTICA_2
//
//  Created by Francisco Castillo on 16/03/17.
//  Copyright © 2017 Francisco Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let Datos = ["Facebook","google","instagram","twitter","snapchat"]
    var imagenes:[UIImage]!
    var contraseña = [1,1,1]//3 Iconos de google
    var s = [0,0,0]


    override func viewDidLoad() {
        super.viewDidLoad()
        imagenes = [UIImage(named: "facebook")!,UIImage(named: "google")!,UIImage(named: "instagram")!,UIImage(named: "twitter")!,UIImage(named: "snapchat")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Datos[row]
        
        
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa:String
        sMensa = Datos[row]
        s[component] = row
        if(s==contraseña){
            let acMostrar = UIAlertController(title: "Picker View "+String(row), message: sMensa, preferredStyle: .Alert)
            
            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)
            
            presentViewController(acMostrar, animated: true, completion: nil)
        }
        
        
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Datos.count
    }
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = imagenes[row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }
    



}

