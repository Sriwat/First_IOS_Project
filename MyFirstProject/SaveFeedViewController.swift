//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std109 on 5/29/17.
//  Copyright © 2017 std109. All rights reserved.
//

import UIKit

class SaveFeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var newsArray:[News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
        self.setupData()
        // Do any additional setup after loading the view.
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupData()
    }
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setupData()

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupData(){
        self.newsArray = persist.load()
        self.tableView.reloadData()
        
        
    }
    
    
    func toFeedViewDetailViewController(news:News){
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SaveFeedDetailViewController") as? SaveFeedDetailViewController{viewController.news = news
            
            
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

extension SaveFeedViewController: UITableViewDataSource,UITableViewDelegate{
    
    
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














