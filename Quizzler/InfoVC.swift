//
//  InfoVC.swift
//  Quizzler
//
//  Created by Daniel Travers on 12/08/2017.
//  Copyright © 2017 Daniel Travers. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    
    let reportUrl = URL(string:"https://goo.gl/forms/FOQM7NqDmUZyVRy82")
    let suggestUrl = URL(string: "https://goo.gl/forms/eGwiG1WWpS7ylivJ2")

    @IBOutlet weak var reasonLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    @IBAction func reportBtn(_ sender: Any) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(reportUrl!, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
    }
    @IBAction func suggestBtn(_ sender: Any) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(suggestUrl!, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
    }

}
