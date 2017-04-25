//
//  ViewController.swift
//  2DA_EVA_PRACTICA_6_SMASH
//
//  Created by Francisco Castillo on 03/06/17.
//  Copyright © 2017 Francisco Castillo. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblBotNombre: UILabel!
    @IBOutlet weak var lblBotDesc: UILabel!
    @IBOutlet weak var lblBotDir: UILabel!
    
    var Fila = 0//Variable global para indicar la fila de los arrays
    //Este array contiene los nombres de los restaurantes (Usado previamente en otras practicas)
    let misDatos = ["Barra fina","Bourke Street Bakery","Cafe Deadend","Cafe Loisl","Cafe Lore","Confessional","Donostia","Fiveleaves","Forkee Restaurant","Grahamvenuameats","Haighschocolate","Homei","Palominoespresso","Petiteoyster","Postalier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    //Array para las imagenes de los restaurantes
    let imgMisDatos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamvenuameats","haighschocolate","homei","palominoespresso","petiteoyster","postalier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    //Array para las imagenes de los ingredientes
    let ingredientesImages = ["Pepperoni","jamon","Salami","champiñones","Queso","Chile","Cebolla","Piña","Aderezo","Carne"]
    //Array para guardar la ubicación en las etiquetas
    let ubicacion = ["Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua","Chihuahua"]
    //Array para guardar la descripcion en las etiquetas
    let descripcion = ["La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida","La mejor comida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblBotNombre.text = misDatos[0]
        lblBotDir.text = ubicacion[0]
        lblBotDesc.text = descripcion[0]
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Metodo para crear las celdas correspondientes al arreglo
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
   
    //Declarar la funcion que se encargara de rellenar las filas con los datos correspondientes, segun como vayan apareciendo en pantalla
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellRest
        celda.lblNomRest.text = misDatos[indexPath.row]
        let imgFija = UIImage(named: imgMisDatos[indexPath.row])
        celda.imgRest.image = imgFija
        celda.lblLemaRest.text = descripcion[indexPath.row]
        
        return celda
    }
    //Crear la funcion para que seleccione un elemeno del menu
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        lblBotNombre.text = misDatos[indexPath.row]
        lblBotDesc.text = descripcion[indexPath.row]
        lblBotDir.text = ubicacion[indexPath.row]
        Fila = indexPath.row
        performSegueWithIdentifier("plates", sender: self)
    }
    //Funcion para notificar al controlador de vista que está a punto de realizarse un seguimiento.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "plates"{
            let miViewController = segue.destinationViewController as! platillos
            miViewController.nomR = misDatos[Fila]
            miViewController.imgName = imgMisDatos[Fila]
        }
    }

   

}

