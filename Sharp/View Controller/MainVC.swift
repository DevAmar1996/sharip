//
//  MainVCViewController.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class MainVC : UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var listContent: UIView!
    @IBOutlet weak var listView: CustomTopRoundedView!
    @IBOutlet weak var companyTableView: UITableView!
    @IBOutlet weak var drawerView: UIView!
    let names = ["My Profile" , "Notification" , "My Bookings" , "My Favorites" , "Settings" ,"Logout"]
    
    let icons = ["profile" , "notification" , "booking" , "favorite" , "setting" , "logout"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    
    private func setUpView(){
        self.navigationController?.navigationBar.transpatentNavigation()
        gradientView()
        listView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showList)))

    }
    
    @objc private func showList(){
        listContent.isHidden = false
    }
    
    @IBAction func openFilterVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FilterVC")
        self.present(vc!, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == companyTableView {
            return 20;
        }
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if tableView != companyTableView {
        cell?.backgroundColor =  UIColor.clear
        
        
        
        let imageView = cell?.viewWithTag(1) as! UIImageView
        let label = cell?.viewWithTag(2) as! UILabel
        
        let notificationCountLabel = cell?.viewWithTag(3) as! UILabel

        if indexPath.row == 1 {
             notificationCountLabel.isHidden = false
        }

        imageView.image = UIImage(named: icons[indexPath.row])
        label.text = names[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == companyTableView {
            let vc = storyboard?.instantiateViewController(withIdentifier: "profileVC")
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
    @IBAction func BackToMap(_ sender: Any) {
        listContent.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == companyTableView  {
        return 120
        }
        return 60
    }
    @IBAction func showDrawer(_ sender: Any) {
        drawerView.isHidden = !drawerView.isHidden
    }
    
}
