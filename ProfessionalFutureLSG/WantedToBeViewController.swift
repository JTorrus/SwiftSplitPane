//
//  ViewController.swift
//  ProfessionalFutureLSG
//
//  Created by Alumne on 22/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class WantedToBeViewController: UIViewController {

    let professionals = [
        "devSegue": Professional(title: "Developer", imageName: "dev", salary: "15000", description: "Being a developer is great and fun"),
        "designerSegue": Professional(title: "UX Designer", imageName: "designer", salary: "7500", description: "A designer makes everything prettier"),
        "managerSegue": Professional(title: "Project Manager", imageName: "pmanager", salary: "30000", description: "A project manager leads the way to success")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jobDescViewCont = segue.destination as? JobDescriptionViewController {
            if let segueId = segue.identifier {
                jobDescViewCont.professionalToDisplay = professionals[segueId]
            }
        }
    }
}

