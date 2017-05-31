//
//  SaveFeedDetailViewController.swift
//  MyFirstProject
//
//  Created by std109 on 5/31/17.
//  Copyright © 2017 std109. All rights reserved.
//

import UIKit

class SaveFeedDetailViewController: UIViewController {
    
    @IBOutlet weak var headerImgView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    
    var news:News?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.news = News(title: "IOS", description: "Error let stop it now", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Prayut", view: 2, createDate: "29/07/60", techs: "IT")
        
        self.setupUI()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
        
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteData(_ sender: Any) {
        print("Click delete button")
        if let news = self.news{
            persist.delete(news: news)
            _ = self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    
    func setupUI(){
        
        if let news = self.news{
            self.headerImgView.image = news.iconImage
            self.titleLable.text = news.title
            self.textView.text = news.description
            self.accessoryLabel.text = "\(news.author) * \(news.view) views *\(news.createDate)"
            
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
