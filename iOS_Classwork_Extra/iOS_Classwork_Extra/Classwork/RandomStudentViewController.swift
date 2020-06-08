//
//  RandomStudentViewController.swift
//  RandomStudent
//
//  Created by Safeyah on 6/1/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit


class RandomStudentViewController: UIViewController {
    
    var studentName :[String] = [ "محمد علي" , "صالح شهاب" , "ريم خالد " ]
    var studentTrack :[String]  = ["iOS" , "Web" , "Andriod"]
    
    //⑴📌: إلق نظرة سريعة على الكود ثم جرب التطبيق بالضغط على زر (▶️)
   

    //⑵📌:  توجه الى Student.swift الموجود في ملف Classwork

/*
     ⑹📌: كل ما تحتاج فعله هو …. ان تستبدل المصفوفات بمصفوفة واحدة و عناصرها هي من هيكل Student ، قم بتعبئة المصفوفة بثلاث كوائن
    
    //مثال على كائن :                                                 .
          Student(name: “صالح شهاب”, track: “iOS”, gender: “boy”)

*/
    
//Do Not touch These⛔️😅⛔️لا تلمس الأسطر البرمجية التالية
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //ـــــــــــــــــــــــــــ⛔️😅⛔️ـــــــــــــــــــــــــ//
    
    
    
    //Function that activate when the button is tapped هذه الدالة 👇🏻 التي تعمل عندما يتم الضغط على زر (اختر)
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let randStudent = arc4random_uniform(UInt32(studentName.count))
        
         //⑺📌: غير السطرين التالين بحيث ان تستخدم  المصفوفة الجديدة المكونة من  كوائن الـ Student
        
        self.nameLabel.text = studentName[Int(randStudent)]
        self.trackLabel.text =  "مسار الـ " + studentTrack[Int(randStudent)]
        
/*
         ⑻📌:  ازل( // ) عن السطر (58)
         
ثم استبدل “🌅” باسم الصورة المفترض ان تظهر …. استخدم الدالة الكينونية 😉
*/
        
        //self.profileImageView = UIImage(named: "🌅")
        
    }
    
}
