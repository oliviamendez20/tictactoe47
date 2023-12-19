//
//  VC2.swift
//  ticTacToeApp
//
//  Created by OLIVIA MENDEZ on 12/6/23.
//



import UIKit

class VC2: UIViewController {
    var turn1 = 1
    var turn2 = 0
    var turn =  " " //AppData.player1
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var aaOutlet: UIButton!
    
    @IBOutlet weak var abOutlet: UIButton!
    
    @IBOutlet weak var acOutlet: UIButton!
    
    @IBOutlet weak var baOutlet: UIButton!
    
    @IBOutlet weak var bbOutlet: UIButton!
    
    @IBOutlet weak var bcOutlet: UIButton!
    
    @IBOutlet weak var caOutlet: UIButton!
    
    @IBOutlet weak var cbOutlet: UIButton!
    
    @IBOutlet weak var ccOutlet: UIButton!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        turn = AppData.player1
        
        labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
        
        
    }

    
    
    
    @IBAction func aaAction(_ sender: UIButton) {
        
        
        if(turn1 == 1) && (turn2 == 0) && (aaOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            aaOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn = AppData.player2
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            //  turn2 = 1
            
            turn1 = 0
            turn2 = 1
            
        }
        
        
        
        else if(turn1 == 0) && (turn2 == 1) && (aaOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            aaOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            //   turn2 = 0
            
            turn = AppData.player1
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            
            turn2 = 0
            turn1 = 1
        }
        
        
        
        
        
    }
    
        
        
    
    @IBAction func abAction(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (abOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            abOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (abOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            abOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            
            checkWin1()
        }
        
    }
    
    @IBAction func acAction(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (acOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            acOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (acOutlet.titleLabel!.text! == " "){
            
            checkWin1()

            
            acOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            checkWin1()
        }
        
        
    }
    
    @IBAction func baAction(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (baOutlet.titleLabel!.text! == " "){
            
            baOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (baOutlet.titleLabel!.text! == " "){
            
            baOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            
            checkWin1()
        }
        
    }
    
    @IBAction func bbAction(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (bbOutlet.titleLabel!.text! == " "){
            
            bbOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (bbOutlet.titleLabel!.text! == " "){
            
            bbOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            
            checkWin1()
        }
    }
    
    @IBAction func bcAction(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (bcOutlet.titleLabel!.text! == " "){
            
            bcOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (bcOutlet.titleLabel!.text! == " "){
            
            bcOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            checkWin1()
        }
        
    }
    
    @IBAction func ca(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (caOutlet.titleLabel!.text! == " "){
            
            caOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (caOutlet.titleLabel!.text! == " "){
            
            caOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            checkWin1()
        }
        
    }
    
    @IBAction func cb(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (cbOutlet.titleLabel!.text! == " "){
            
            cbOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (cbOutlet.titleLabel!.text! == " "){
            
            cbOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            checkWin1()
        }
        
    }
    
    @IBAction func cc(_ sender: UIButton) {
        
        if(turn1 == 1) && (turn2 == 0) && (ccOutlet.titleLabel!.text! == " "){
            
            ccOutlet.setTitle("\(AppData.p1c)", for: .normal)
            
            turn1 = 0
            
            turn = AppData.player2
            
            //  AppData.p1c = "O"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p2c)"
            
            
            turn2 = 1
            checkWin1()
            
        }
        else if(turn1 == 0) && (turn2 == 1) && (ccOutlet.titleLabel!.text! == " "){
            
            ccOutlet.setTitle("\(AppData.p2c)", for: .normal)
            
            turn2 = 0
            
            turn = AppData.player1
            
            //     AppData.p1c = "X"
            
            labelOutlet.text = "Turn: \(turn) is \(AppData.p1c)"
            
            
            turn1 = 1
            checkWin1()
        }
        
        
    }
    
    func checkWin1(){
        
        
        if (aaOutlet.titleLabel!.text! == "\(AppData.p1c)") && (abOutlet.titleLabel!.text! == "\(AppData.p1c)") && (acOutlet.titleLabel!.text! == "\(AppData.p1c)"){
            
            labelOutlet.text = "\(AppData.player1) won!"
            
            print("lol")
        
           AppData.winnersArray.append("\(AppData.player1)")
            
            defaults.set(AppData.winnersArray, forKey: "theWinners")
        
            turn1 = -1
            turn2 = -1
        }
        
        else if(baOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bcOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            
            
            AppData.winnersArray.append( "\(AppData.player1)")

           
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if (caOutlet.titleLabel!.text! == "\(AppData.p1c)") && (cbOutlet.titleLabel!.text! == "\(AppData.p1c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            AppData.score += 1

            
            AppData.winnersArray.append( "\(AppData.player1)")

          
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if (aaOutlet.titleLabel!.text! == "\(AppData.p1c)") && (baOutlet.titleLabel!.text! == "\(AppData.p1c)") && (caOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"

            AppData.winnersArray.append("\(AppData.player1)")
            
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
        }
        
        else if (abOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p1c)") && (cbOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player1)")

           
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
        }
        
        else if (acOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bcOutlet.titleLabel!.text! == "\(AppData.p1c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            AppData.score += 1

            AppData.winnersArray.append( "\(AppData.player1)")

            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if (aaOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p1c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player1)")

           
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
            
        }
        else if (acOutlet.titleLabel!.text! == "\(AppData.p1c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p1c)") && (caOutlet.titleLabel!.text! == "\(AppData.p1c)") {
            
            labelOutlet.text = "\(AppData.player1) won!"
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player1)")

           
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
            
        }
        
        // player 2
        
        if (aaOutlet.titleLabel!.text! == "\(AppData.p2c)") && (abOutlet.titleLabel!.text! == "\(AppData.p2c)") && (acOutlet.titleLabel!.text! == "\(AppData.p2c)"){
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player2)")


            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if(baOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bcOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player2)")


            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if (caOutlet.titleLabel!.text! == "\(AppData.p2c)") && (cbOutlet.titleLabel!.text! == "\(AppData.p2c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1
            
            AppData.winnersArray.append("\(AppData.player2)")


            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
        }
        
        else if (aaOutlet.titleLabel!.text! == "\(AppData.p2c)") && (baOutlet.titleLabel!.text! == "\(AppData.p2c)") && (caOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1
            
            AppData.winnersArray.append( "\(AppData.player2)")

            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
        }
        
        else if (abOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p2c)") && (cbOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1
            
            AppData.winnersArray.append( "\(AppData.player2)")


            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
        }
        
        else if (acOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bcOutlet.titleLabel!.text! == "\(AppData.p2c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1

            AppData.winnersArray.append ("\(AppData.player2)")

            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
        }
        
        else if (aaOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p2c)") && (ccOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            AppData.score += 1

            
            
            AppData.winnersArray.append("\(AppData.player2)")
            
            defaults.set(AppData.winnersArray, forKey: "theWinners")
            turn1 = -1
            turn2 = -1
            
        }
        else if (acOutlet.titleLabel!.text! == "\(AppData.p2c)") && (bbOutlet.titleLabel!.text! == "\(AppData.p2c)") && (caOutlet.titleLabel!.text! == "\(AppData.p2c)") {
            
            labelOutlet.text = "\(AppData.player2) won!"
            
            AppData.score += 1

            AppData.winnersArray.append("\(AppData.player2)")


            defaults.set(AppData.winnersArray, forKey: "theWinners")
            
            turn1 = -1
            turn2 = -1
            
        }
        
      
        
    }
    
  
    
     
    }
        



