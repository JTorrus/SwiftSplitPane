//
//  ViewController.swift
//  ProfessionalFutureLSG
//
//  Created by Alumne on 22/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class WantedToBeViewController: UIViewController, UISplitViewControllerDelegate {

    let professionals = [
        "devSegue": Professional(title: "Developer", imageName: "dev.jpg", salary: "15000€", description: "Being a developer is great and fun"),
        "designerSegue": Professional(title: "UX Designer", imageName: "designer.jpg", salary: "7500€", description: "A designer makes everything prettier"),
        "managerSegue": Professional(title: "Project Manager", imageName: "pmanager.png", salary: "30000€", description: "A project manager leads the way to success")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.splitViewController?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if let navigationCont = primaryViewController as? UINavigationController {
            if navigationCont.visibleViewController != nil {
                return true
            }
        }
        
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigationCont = segue.destination as? UINavigationController {
            if let jobDescViewCont = navigationCont.visibleViewController as? JobDescriptionViewController {
                if let segueId = segue.identifier {
                    jobDescViewCont.professionalToDisplay = professionals[segueId]
                }
            }
        }
        
    }
}

