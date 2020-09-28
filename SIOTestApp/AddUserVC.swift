//
//  AddUserVC.swift
//  SIOTestApp
//
//  Created by Raghav Sethi on 28/09/20.
//

import UIKit
import RealmSwift

class AddUserVC: UIViewController {

    @IBOutlet weak var experienceTextField: UITextField!
    @IBOutlet weak var occupationTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func submitButton(_ sender: Any) {
        let realm = try! Realm()
                
        let user = User()
        user.name = nameTextField.text ?? ""
        user.experience = Int(experienceTextField.text ?? "0") ?? 0
        user.occupation = occupationTextField.text ?? ""
        
        try!  realm.write {
            realm.add(user)
        }
        
        DispatchQueue.main.async {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let nextvc = storyboard.instantiateViewController(withIdentifier: "init") as! UINavigationController
            nextvc.modalPresentationStyle = .fullScreen
            self.present(nextvc, animated: false)
        }
        
    }
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func setup()    {
        self.bgView.layer.cornerRadius = 10
        self.bgView.layer.borderColor = #colorLiteral(red: 0.6196078431, green: 0.8666666667, blue: 0.7254901961, alpha: 1)
        self.bgView.layer.borderWidth = 5
        self.submitButton.layer.cornerRadius = 5
        self.submitButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.submitButton.layer.borderWidth = 1
    }
    
}
