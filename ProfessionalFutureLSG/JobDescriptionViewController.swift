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
    @IBOutlet weak var descDisplay: UITextView!
    @IBOutlet weak var salaryDisplay: UILabel!
    
    var professionalToDisplay: Professional?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentProfessional = professionalToDisplay {
            self.navigationItem.title = currentProfessional.title
            self.imageView.image = UIImage(named: currentProfessional.imageName)
            self.descDisplay.text = currentProfessional.description
            self.salaryDisplay.text = currentProfessional.salary
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
