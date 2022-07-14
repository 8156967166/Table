//
//  ViewController.swift
//  Table
//
//  Created by Bimal@AppStation on 28/04/22.
//



import UIKit
class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var imageview: UIImageView!
        var listOfname = ["Amal", "kannan", "Anil", "sruthi","sharavanan", "Aneesha"]
        // MARK: - Table view data source
    
        override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
                self.tableView.dataSource = self
                self.tableView.delegate = self
        }
}
        extension ViewController: UITableViewDelegate,UITableViewDataSource {

            func numberOfSections(in tableView: UITableView) -> Int {
                return 1
            }
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return listOfname.count
            
            }
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "namecell", for: indexPath) as! NameTableViewCell
               
                
//                cell.labelName.text = listOfname[indexPath.row]
                let personImage: UIImage = UIImage(named: "personimg")!
                imageview.image = personImage
                cell.setName(strName: listOfname[indexPath.row])
                return cell
            }
        }
    







//override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//   let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
//   let row = indexPath.row
//   cell.menuItemDescLabel.text = menuItems.names[row]
//   cell.show(isSpecial: menuItems.specials[row], for: menuItems.prices[row])
//   return cell
//}
