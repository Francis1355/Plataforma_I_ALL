//
//  ViewController.swift
//  2DA_EVA_4_RESTAURANTES2
//
//  Created by TEMPORAL2 on 10/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let misDatos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count //agarra los datos del arreglo
    }

    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus Datos", message: misDatos[indexPath.row], preferredStyle: .Alert) //selecciona el dato en el q se dio click
        
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil) //detecta los click
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato al que se le dio click
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //cellforRow reutiliza las celdas
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        
        celda.lblNombre.text = misDatos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        celda.lblUbica.text = "Chihuahua" // Agrega una ubicacion para todos nuestros datos
        celda.lblDesc.text = "Far Far Away..." //Agrega una descripcion para todos nuestros datos
        let img = UIImage(named: misDatos[indexPath.row])//seleccionar una imagen
        celda.imgImagen.image = img // asigna la imFija
        return celda // regresamos la celda
    }


}

