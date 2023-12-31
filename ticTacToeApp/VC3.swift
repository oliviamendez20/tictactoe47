//
//  VC3.swift
//  ticTacToeApp
//
//  Created by OLIVIA MENDEZ on 12/15/23.
//

import UIKit



class VC3: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    let defaults = UserDefaults.standard
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableViewOutlet.delegate = self
       tableViewOutlet.dataSource = self
        
       AppData.winnersArray = defaults.array(forKey: "theWinners") as! [String]
//        
        
//       if let items = UserDefaults.data(forKey: "theWinners") {
//            print("found")
//
//            let decoder = //JSONDecoder()
//           if let decoded = try? decoder.decode([Winners].self, from: items) {                AppData.winnersArray = decoded
//            }
//       }
        
        
//        if let items = UserDefaults.standard.data(forKey: "theWinners") {
//        let decoder = JSONDecoder()
//            
//    if let decoded = try? decoder.decode([String].self, from: items) {
//        AppData.winnersArray = decoded
//                        }
//                }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.winnersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CazyCell
        
        
//       let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode(AppData.winnersArray) {
//            
//        defaults.set(AppData.winnersArray, forKey: "theWinners")
        
        
        cell.winnerOutlet.text = AppData.winnersArray[indexPath.row]

        return cell
       }
        
    }

