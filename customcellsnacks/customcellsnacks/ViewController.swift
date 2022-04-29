//
//  ViewController.swift
//  customcellsnacks
//
//  Created by Mac on 09/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
     
    var hotelMenu = ["upma","panner","dosa","pav Bhaji","idli","shahi panner","utthapa","kajukari","poha","vegKolhapuri"]
    
    var price = ["Rs-20","Rs-120","Rs-50","Rs-90","Rs-60","Rs-150","Rs-80","Rs-200","Rs-30","Rs-250"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //SnackTableViewCell.register(UINib(nibName: "SnackTableViewCell" ,bundle: //nil), forCellReuseIdentifier: "SnackTableViewCell")
        let nibFileSnackTableViewCell = UINib(nibName: "SnackTableViewCell", bundle: nil)
   tableView.register(nibFileSnackTableViewCell, forCellReuseIdentifier: "SnackTableViewCell")

       /* let nibfilenm = UINib(nibName: "SnackTableViewCell", bundle: nil)
        tableView.register(nibfilenm, forCellReuseIdentifier: "SnackTableVieCell")*/
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row%2 == 0{
            
           if let snackCell = self.tableView.dequeueReusableCell(withIdentifier:
            "SnackTableViewCell") as? SnackTableViewCell {
            snackCell.snackName.text = "\(hotelMenu[indexPath.row])"
            snackCell.snackPrice.text = "\(hotelMenu[indexPath.row])"
            snackCell.backgroundColor = .red
            return snackCell
           }
          
        }
        else{
            guard let customCell = self.tableView.dequeueReusableCell(withIdentifier: "MainCourseTableViewCell") as? MainCourseTableViewCell else{
                return UITableViewCell()
            }
            customCell.mainCourseName.text = "\(hotelMenu[indexPath.row])"
            customCell.mainCoursePrice.text = "\(price[indexPath.row])"
            customCell.mainCourseDescription.text = "Sunday Discount 10%"
            customCell.backgroundColor = UIColor.purple
            
            return customCell
            
        }
        
        return  UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "hotel menu"
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        120
    }
}


