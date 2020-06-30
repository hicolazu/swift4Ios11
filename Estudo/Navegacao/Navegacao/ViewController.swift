//
//  ViewController.swift
//  Navegacao
//
//  Created by Henrico Lazuroz on 30/06/20.
//  Copyright © 2020 Henrico Lazuroz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "segue", sender: nil)
    }

    @IBAction func showSecondScreen(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func unwindView1(segue: UIStoryboardSegue) {
        
    }
}
