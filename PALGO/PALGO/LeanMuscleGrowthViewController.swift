//
//  LeanMuscleGrowthViewController.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 3/23/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class LeanMuscleGrowthViewController: UIViewController {
    
    var secondLayer : Array<NSDictionary> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let requestURL: NSURL = NSURL(string: "http://api.v3.factual.com/t/products-cpg-nutrition?q=whey%20protein%20isolate&select=avg_price,brand,calories,sodium,potassium&limit=20&KEY=ayw9U0g5JYKAFasWFjeHSEEeBMfTtDoncebQ7gOM")!
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(urlRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if (statusCode == 200) {
                print("Everyone is fine, file downloaded successfully.")
                do{
                    
                    let json : NSDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments) as! NSDictionary
                    
                    let products = json["response"]!["data"]!
                    print(products)
                    
                    
                }catch {
                    print("Error with Json: \(error)")
                }
            }
        }
        task.resume()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
