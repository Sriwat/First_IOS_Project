//
//  News.swift
//  MyFirstProject
//
//  Created by std109 on 5/29/17.
//  Copyright © 2017 std109. All rights reserved.
//
import UIKit
import ObjectMapper

class News:Mappable {
    var id:Int = -1
    var title:String = ""
    var description:String = ""
    var iconImage:UIImage = UIImage()
    var imageUrl:String = ""
    var author:String = ""
    var view:Int = -1
    var createDate:String = ""
    var updateDate:String = ""
    var category:String = ""
    var newsDetail:NewsDetail?    
    
    init(id:Int,title:String, description:String, iconImage:UIImage, author:String, view:Int, createDate:String, category:String = "Undefined") {
        self.id = id
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.category = category
    }
    
    required init(map: Map){
    }
    func mapping(map: Map){
        self.id <- map["id"]
        self.title <- map["title"]
        self.description <- map["description"]
        self.imageUrl <- map["image_url"]
        self.author <- map["author"]
        self.view <- map["total_view"]
        self.createDate <- map["created_at"]
        self.updateDate <- map["updated_at"]
        self.category <- map["category"]
        
    }

}

