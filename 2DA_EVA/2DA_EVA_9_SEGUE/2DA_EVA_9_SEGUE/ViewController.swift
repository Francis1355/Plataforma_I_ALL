//
//  ViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by TEMPORAL2 on 23/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Con esta funcion nos aparecera una aler dialog que nos preguntara que pantalla queremos selccionar si rojo o verde
    @IBAction func lanzarSegue(sender: AnyObject) {
        let alertController = UIAlertController(title: "PANTALLAS", message: "Mostrar pantallas", preferredStyle: .Alert)
        let actionVerde = UIAlertAction(title: "VERDE", style: .Default, handler:
            {action in self.performSegueWithIdentifier("verde", sender: self)})
        let actionRojo = UIAlertAction(title: "ROJO", style: .Default, handler:
            {action in self.performSegueWithIdentifier("rojo", sender: self)})
        alertController.addAction(actionVerde)
        alertController.addAction(actionRojo)
        presentViewController(alertController, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Con esta funcion mandaremos los datos dependiendo de cual segue se esta usando
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verde"{// detecta cual segue se esta usando
            let miViewController = segue.destinationViewController as! VerdeViewController
            miViewController.sTexto = "Hola Mundo!!!"
        }else if segue.identifier == "rojo"{
        let miViewController = segue.destinationViewController as! RojoViewController
            miViewController.sCade = "Hola Mundo!!!"
        }
    }


}

