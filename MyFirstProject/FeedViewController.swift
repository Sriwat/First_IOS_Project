//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std109 on 5/29/17.
//  Copyright © 2017 std109. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var newsArray:[News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
self.setupData()
        // Do any additional setup after loading the view.
        
        
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupData(){
        var news:News = News(id: 1,title: "IOS", description: "Error let stop it now", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Prayut", view: 2, createDate: "29/07/60", category: "IT")
        
        var news2:News = News(id: 2,title: "Android", description: "It is harder than IOS", iconImage: #imageLiteral(resourceName: "cat"), author: "Annop", view: 2999, createDate: "30/07/60", category: "IT")
        
        var news3:News = News(id: 3,title: "Thailand", description: "Smileland and beauty", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "Somchai", view: 585, createDate: "20/07/60", category: "PUBLIC")
        
        var news4:News = News(id: 4, title: "Football", description: "World cup today", iconImage: #imageLiteral(resourceName: "dog"), author: "ทรงพล", view: 88, createDate: "15/07/60", category: "SPORT")
        
        var news5:News = News(id: 5, title: "Medication", description: "Healthy and happy", iconImage: #imageLiteral(resourceName: "github_512"), author: "อรรณพ", view: 9999, createDate: "08/07/60", category: "FUTURE")
        
        

        
        
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news3)
        newsArray.append(news4)
        newsArray.append(news5)

    }
    
    
    func toFeedViewDetailViewController(news:News){
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "FeedViewDetailViewController") as? FeedViewDetailViewController{viewController.news = news
        
            
            self.navigationController?.pushViewController(viewController, animated: true)
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

extension FeedViewController: UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        let news = newsArray [indexPath.row]
        
        cell.setupUI(news: news)
       
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
            let rowNo = indexPath.row
        var news = newsArray [indexPath.row]
        print(indexPath.row)
        self.toFeedViewDetailViewController(news: news)

    }
    
}














