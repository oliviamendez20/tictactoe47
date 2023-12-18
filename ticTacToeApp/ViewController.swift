//
//  ViewController.swift
//  ticTacToeApp
//
//  Created by OLIVIA MENDEZ on 12/6/23.
//

public class Winners: Codable{
    
    var names : String
    var score : Int
    
    init(names: String, score: Int) {
        self.names = names
        self.score = score
    }
    
    
}

public class AppData{
   
static var  player1 = ""
static var player2 = ""
static var x = 0
static var o = 0
static var p1c = ""
static var p2c = ""
static var score = 0
static var winnersArray = [Winners]()

    
    
}


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1nTextOutlet: UITextField!
    
    @IBOutlet weak var p2nTextOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    

   
    @IBAction func choiceXAction(_ sender: UIButton) {
        
        if(AppData.o == 0)
        {
            
            AppData.x = 1
            AppData.p1c = "X"
            AppData.p2c = "O"
            
        }
        
        else{
            AppData.o = 0
            AppData.p1c = "X"
            AppData.p2c = "O"
            AppData.x = 1
        }
    }
    
    @IBAction func choiceOAction(_ sender: UIButton) {
        
        if(AppData.x == 0)
        {
            
            AppData.o = 1
            AppData.p1c = "O"
            AppData.p2c = "X"
        }
        
        else{
            AppData.x = 0
            AppData.p1c = "O"
            AppData.p2c = "X"
            AppData.o = 1
        }
    }
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        if (p1nTextOutlet.text! == "") || (p2nTextOutlet.text! == "") || ((AppData.x == 0) && (AppData.o == 0)){
            
            
            let alert = UIAlertController(title: "Error! Fill out all information to continue...", message: "", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Okay", style:.default, handler: nil)
            
            alert.addAction(alertAction)
            present(alert, animated: true)
        }
        else{
            
            AppData.player1 = p1nTextOutlet.text!
            AppData.player2 = p2nTextOutlet.text!
            
            performSegue(withIdentifier: "toScreen2", sender: self)
            
        
        }
        


    }
        
    
}

