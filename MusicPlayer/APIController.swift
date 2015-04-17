//
//  APIController.swift
//  MusicPlayer
//
//  Created by Suebtas on 4/2/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

import Foundation

import Foundation
protocol APIControllerProtocol {
    func didReceiveAPIResults(results: NSArray)
}
class APIController {
    var delegate: APIControllerProtocol?
    
    init() {
    }
    
    func searchItunesFor(searchTerm: String) {
        
        // The iTunes API wants multiple terms separated by + symbols, so replace spaces with + signs
        let itunesSearchTerm = searchTerm.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.CaseInsensitiveSearch, range: nil)
        
        // Now escape anything else that isn't URL-friendly
        if let escapedSearchTerm = itunesSearchTerm.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding) {
            //let urlPath = "http://itunes.apple.com/search?term=\(escapedSearchTerm)&media=software"
            let urlPath = "http://findjob.weeravit-it.com/itec2419"
            let url = NSURL(string: urlPath)
            let session = NSURLSession.sharedSession()
            let task = session.dataTaskWithURL(url!, completionHandler: {data, response, error -> Void in
                println("Task completed")
                if(error != nil) {
                    // If there is an error in the web request, print it to the console
                    println(error.localizedDescription)
                }
                var err: NSError?
                var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as? NSArray
                    if(err != nil) {
                        // If there is an error parsing JSON, print it to the console
                        println("JSON Error \(err!.localizedDescription)")
                    }
                    //let results: NSArray = jsonResult["results"] as NSArray
                    let results: NSArray = jsonResult!
                    self.delegate?.didReceiveAPIResults(results)
                
            })
            
            task.resume()
        }
    }
    
}