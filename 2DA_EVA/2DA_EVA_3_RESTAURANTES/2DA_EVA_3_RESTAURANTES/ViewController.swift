//
//  ViewController.swift
//  2DA_EVA_3_RESTAURANTES
//
//  Created by TEMPORAL2 on 08/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    let misDatos = ["Barra fina","Bourke Street Bakery","Cafe Deadend","Cafe Loisl","Cafe Lore","Confessional","Donostia","Fiveleaves","Forkee Restaurant","Grahamvenuameats","Haighschocolate","Homei","Palominoespresso","Petiteoyster","Postalier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    let misImages = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamvenuameats","haighschocolate","homei","palominoespresso","petiteoyster","postalier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int{
            return misDatos.count//Regresa los datos del arreglo
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus Datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)//Detectatà los clicks
        controlador.addAction(boton)//Se pone el controlador del boton
        presentViewController(controlador, animated: true, completion: nil)//Mostrara el dato al que se le dio click
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")//Reutiliza una celda
        celda?.textLabel?.text = misDatos[indexPath.row]//Usamos el indexPath por que es el indice de la tabla
        let imFila = UIImage(named: misImages[indexPath.row])//Agregar una imagen
        let imClick = UIImage(named: "star-b")//Cambiara a la estrella rosa cuando se le de clic
        celda?.imageView?.image = imFila
        celda?.imageView?.highlightedImage = imClick
        return celda!//Se regresa a la celda



}

}