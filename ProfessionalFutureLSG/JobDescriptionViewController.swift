//
//  JobDescriptionViewController.swift
//  ProfessionalFutureLSG
//
//  Created by Alumne on 22/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class JobDescriptionViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var professionalToDisplay: Professional?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentProfessional = professionalToDisplay {
            self.imageView.image = UIImage(named: currentProfessional.imageName)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
