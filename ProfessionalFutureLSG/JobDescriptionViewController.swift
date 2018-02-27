//
//  JobDescriptionViewController.swift
//  ProfessionalFutureLSG

import UIKit

class JobDescriptionViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descDisplay: UITextView!
    @IBOutlet weak var salaryDisplay: UILabel!
    
    var professionalToDisplay: Professional?
    var professionalWhenNoSelection: Professional = Professional(title: "Developer", imageName: "dev.jpg", salary: "15000€", description: "Being a developer is great and fun")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentProfessional = professionalToDisplay {
            self.navigationItem.title = currentProfessional.title
            self.imageView.image = UIImage(named: currentProfessional.imageName)
            self.descDisplay.text = currentProfessional.description
            self.salaryDisplay.text = currentProfessional.salary
        } else {
            self.navigationItem.title = professionalWhenNoSelection.title
            self.imageView.image = UIImage(named: professionalWhenNoSelection.imageName)
            self.descDisplay.text = professionalWhenNoSelection.description
            self.salaryDisplay.text = professionalWhenNoSelection.salary
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
