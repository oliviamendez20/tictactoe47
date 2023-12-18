//
//  VC3.swift
//  ticTacToeApp
//
//  Created by OLIVIA MENDEZ on 12/15/23.
//

import UIKit

class VC3: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.winnersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CazyCell
        
        cell.winnerOutlet.text = AppData.winnersArray[indexPath.row].names
        
        return cell
    
        
    }
        
        
    }
    
