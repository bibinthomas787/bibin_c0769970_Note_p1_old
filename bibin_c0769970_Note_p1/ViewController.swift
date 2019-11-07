//
//  ViewController.swift
//  bibin_c0769970_Note_p1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func newfolder(_ sender: Any) {
        
         let alertController = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .alert)
                          
                          //the confirm action taking the inputs
                          let confirmAction = UIAlertAction(title: "Add Item", style: .default) { (_) in
                              
                            let firstTextField = alertController.textFields![0];                                  print("You entered \(firstTextField)")
                            
                            print("firstName \(String(describing: firstTextField.text))")
                              //getting the input values from user
                           
                         //  let mainPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask,true)[0]
                           
                          // print(mainPath)
                            
                            
                            //let documentdirectortPath = mainPath + "/Create Folder1"
                           // var ojeCtBool: ObjCBool = true
                            
                           // let isExit = FileManager.default.fileExists(atPath: documentdirectortPath, isDirectory: &ojeCtBool)
                         
                         // if isExit == false
                            
                         // {
                         //   do {
                            
                            //    try FileManager.default.createDirectory(atPath: documentdirectortPath, withIntermediateDirectories: true, attributes: nil)
                         //   }
                          //  catch {
                                
                           //     print("error")
                         //   }
                            
                            
                              
                        //  }
                            
        }
                          
                          //the cancel action doing nothing
                          let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
                          
                          //adding textfields to our dialog box
                          alertController.addTextField { (textField) in
                              textField.placeholder = "Enter Name"
                          }
                           
                          
                          //adding the action to dialogbox
                          alertController.addAction(confirmAction)
                          alertController.addAction(cancelAction)
                          
                          //finally presenting the dialog box
                          self.present(alertController, animated: true, completion: nil)
        
    }
    

}
