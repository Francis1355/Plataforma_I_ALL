//
//  ViewController.swift
//  2DA_EVA_5_TABLEVIEW
//
//  Created by TEMPORAL2 on 14/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Se crean los arreglos de los restaurantes y el arreglo de las imagenes que contendrá
    let misDatos = ["Xpress Food", "Barra Fina", "La calesa", "Mexican Tacos"]
    let misImagenes = ["comida", "comida-mexicana","comida-mexicana1", "Pizza"]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Esta funcion nos regresara las imagenes del arreglo
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misImagenes.count
    }
    //Esta funcion nos mandara el mensajecon el nombre de los restaurantes
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Restaurant", message: misImagenes[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Okay", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    //Esta funcion hara que se conecte a TableCellMia que se creo previamente y modificara el nombre de las celdas
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblNombre.text = misImagenes[indexPath.row]
        celda.lblUbicacion.text = "Chihuahua"
        celda.lblDescripcion.text = "Far far away..."
        let imFija = UIImage(named: misImagenes[indexPath.row])
        let imClick = UIImage(named: "star-b")
        celda.imgImagen.image = imFija
        celda.imgImagen.highlightedImage = imClick
        return celda
        
    }
    //Esta funcion permitirá que aparezca la accion de compartir
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
    }
    //funcion que permitira que se pueda compartir en una red social una vez que nos hayamos logueado
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath)->Void{
        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: misImagenes[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }
    


}

