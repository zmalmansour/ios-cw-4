//
//  RandomStudentViewController.swift
//  RandomStudent
//
//  Created by Safeyah on 6/1/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit
//Do Not touch These⛔️😅⛔️لا تلمس الأسطر البرمجية لهذا الملف

class RandomStudentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    //Function that activate when the button is tapped هذه الدالة 👇🏻 التي تعمل عندما يتم الضغط على زر (اختر)
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let randomStudent = students.randomElement()!
        
        let randomStudentName = randomStudent.name
        let randomStudentTrack = randomStudent.track
                
        self.nameLabel.text = randomStudentName
        self.trackLabel.text =  randomStudentTrack
        
        // MARK:   (8) أزل الملاحظة عن الكودالتالي كي تعمل الصور
         self.profileImageView.image = UIImage(named: randomStudent.imageName())
    }
}

//ـــــــــــــــــــــــــــ⛔️😅⛔️ـــــــــــــــــــــــــ//
