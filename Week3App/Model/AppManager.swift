//
//  AppManager.swift
//  Week3App
//
//  Created by Rania Arbash on 2022-01-27.
//

import Foundation


class AppManager {
    
    var studentsList : [Student]? = [Student]()
    
    func addNewStudent(newStudent : Student){
        studentsList?.append(newStudent)
    }
    
}
