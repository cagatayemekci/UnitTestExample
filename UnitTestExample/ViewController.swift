//
//  ViewController.swift
//  UnitTestExample
//
//  Created by cagatay emekci on 21/12/2016.
//  Copyright © 2016 cagatay emekci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstUserNameField: UITextField!
    @IBOutlet weak var firstUserAgeField: UITextField!
    
    @IBOutlet weak var secondUserNameField: UITextField!
    @IBOutlet weak var secondUserAgeField: UITextField!
    
    @IBOutlet weak var resultField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func compareButtonPressed(_ sender: Any) {
        let firstUser = User(name: firstUserNameField.text!, age: Int(firstUserAgeField.text!)!)
         let secondUser = User(name: secondUserNameField.text!, age: Int(secondUserAgeField.text!)!)
        let resultString = compareUserAge(firstUser: firstUser, secondUser: secondUser)
        resultField.text = resultString
    }
    
    func compareUserAge (firstUser: User , secondUser : User) -> String {
        let returnString: String!
        if firstUser.age! > secondUser.age! {
            returnString = secondUser.name
        }else if firstUser.age! < secondUser.age! {
            returnString = firstUser.name
        }else {
            returnString = firstUser.name! + " " + secondUser.name!
        }
        return returnString
    }

}

