//
//  ViewController.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 3/23/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func leanMuscleGrowth(sender: AnyObject) {
        let requestURL: NSURL = NSURL(string: "http://api.v3.factual.com/t/products-cpg-nutrition?q=whey%20protein%20isolate&select=brand,calories,sodium,potassium&limit=20&KEY=ayw9U0g5JYKAFasWFjeHSEEeBMfTtDoncebQ7gOM")!
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(urlRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if (statusCode == 200) {
                print("Everyone is fine, file downloaded successfully.")
                do{
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments)
                    
                    print(json)
                    
                }catch {
                    print("Error with Json: \(error)")
                }
            }
        }
    task.resume()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

