//
//  ContentModel.swift
//  LearningApp
//
//  Created by Magued Fouad on 7/17/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        
        getLocaData()
    }
    
    func getLocaData() {
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            self.modules = modules
            
        }
        
        catch {
            
            print("Error reading json file")
            
        }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {

            
            self.styleData = try Data(contentsOf: styleUrl!)
        }
        
        catch {
            print("Couldn't parse style data")
        }
        
        
    }
    
}
