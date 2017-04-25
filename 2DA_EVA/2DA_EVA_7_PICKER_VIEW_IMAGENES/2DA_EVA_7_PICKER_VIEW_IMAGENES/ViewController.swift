//
//  ViewController.swift
//  2DA_EVA_7_PICKER_VIEW_IMAGENES
//
//  Created by TEMPORAL2 on 16/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    var aImagenes: [UIImage]!


    override func viewDidLoad() {
        super.viewDidLoad()
        //Se crea el arreglo de las imagenes que contendra nuestro picker view
        aImagenes = [UIImage(named: "facebook")!,
            UIImage (named:"google")!,
            UIImage (named:"instagram")!,
            UIImage (named:"pinterest")!,
            UIImage (named:"twitter-xl")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?)->UIView{
        let imagen = aImagenes[row]
        let imgView = UIImageView(image: imagen)
        return imgView
        
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) ->Int{
        return 1
    }
    //Funcion que nos regresa las imagenes del picker view
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->Int{
    return aImagenes.count
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
    //
    }
    
    func pickerView(pickerView:UIPickerView, rowHeightForComponent component: Int) ->CGFloat{
    return 64
    }
    




}