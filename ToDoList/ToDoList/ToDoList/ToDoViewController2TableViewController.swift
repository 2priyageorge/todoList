//
//  ToDoViewController2TableViewController.swift
//  ToDoList
//
//  Created by Scholar on 8/2/21.
//

import UIKit

class ToDoViewController2TableViewController:
    UITableViewController {
    var listOfToDo : [ToDoClass] = []

    override func viewDidLoad() {
        super.viewDidLoad()
      
        listOfToDo = createToDo()
        func createToDo () -> [ToDoClass]{
        let swiftToDo = ToDoClass ()
            swiftToDo.description = "Learn Swift"
            swiftToDo.important = true
            
            let dogToDo = ToDoClass ()
            dogToDo.description = "Walk the dog"

            return[swiftToDo,dogToDo]
        }
        
        
         //Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]
        cell.textLabel?.text = eachToDo.description
        
        if eachToDo.important {
            cell.textLabel?.text = "! " + eachToDo.description}
        else{
            cell.textLabel?.text = eachToDo.description
        }
    
        return cell
    }
    

    
    
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    

   

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let nextAddToDoVC = segue.destination as?
            AddToDoViewController{
            nextAddToDoVC.previousToDoTVC = self
        }

    }
    

}
