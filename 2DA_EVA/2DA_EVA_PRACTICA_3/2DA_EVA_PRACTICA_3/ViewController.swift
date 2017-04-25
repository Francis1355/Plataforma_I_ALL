//
//  ViewController.swift
//  2DA_EVA_PRACTICA_3
//
//  Created by Francisco Castillo on 4/21/17.
//  Copyright © 2017 Francisco Castillo. All rights reserved.
//

import UIKit
//Aqui es importante agregar el ViewDelegate y el DataSource de la tabla
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var imagenMateria: UIImageView!
    
    @IBOutlet weak var lblMaterias: UILabel!
    
    var materia = ["Fundamentos de Programacion","Programación Orientada a Objetos","Estructura de datos","Tópicos avanzados de programación","Fundamentos de Base de Datos","Taller de Base de Datos","Redes de computadoras","Administración de Base de datos","Conmutación y enrutamiento de redes","Adminisracion de redes","Programación de dispositivos moviles Plataforma I"]
    var semestre = ["1er Semestre","2do Semestre","3er Semestre","4to Semestre","4to Semestre","5to Semestre","6to Semestre","6to Semestre","7mo Semestre","8vo Semestre","9no Semestre"]
    var imagenes = ["progra","progra","progra","progra","bd","bd","redes","bd","redes","redes","progra"]
    var areamateria = ["PROGRAMACION","PROGRAMACION","PROGRAMACION","PROGRAMACION","BASE DE DATOS","BASE DE DATOS","REDES","BASE DE DATOS","REDES","REDES","PROGRAMACION"]
    //Esta función no se modifica nada se deja como está
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Esta función al igual que la anterior no se modifica nada se deja como está
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Se crea está función para que nos regrese los datos del arreglo
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materia.count
    }
    //Esta funcion con el controlador seleccionara el dato al cual se le da clic luego nos detectará el dato que 
    //cuenta con el clic y mostrara el dato que al cual se le dio clic
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: materia[indexPath.row], message: semestre[indexPath.row], preferredStyle: .Alert)
        lblMaterias.text = areamateria[indexPath.row]
        imagenMateria.image = UIImage(named: imagenes[indexPath.row])
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    //Se crea esta función para reutilizar las celdas
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {         
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        let celda2 = UIImage(named: imagenes[indexPath.row])
        celda?.textLabel?.text = materia[indexPath.row]
        celda?.imageView?.image = celda2
        return celda!

    }

}

