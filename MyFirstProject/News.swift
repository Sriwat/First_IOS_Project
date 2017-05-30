//
//  News.swift
//  MyFirstProject
//
//  Created by std109 on 5/29/17.
//  Copyright © 2017 std109. All rights reserved.
//

import UIKit

class News {
    var title:String
    var description:String
    var iconImage:UIImage
    var author:String
    var view:Int
    var createDate:String
    var techs:String
    
    init(title:String, description:String,iconImage:UIImage, author:String, view:Int, createDate:String , techs:String) {
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.techs = techs
        
    }

}
