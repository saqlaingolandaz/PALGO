//
//  GeneralWorkoutViewController.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 6/6/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class GeneralWorkoutViewController: UIViewController {
    
    var contents : NSString = "";
    
    override func viewDidLoad() {
        if let filepath = NSBundle.mainBundle().pathForResource("Untitled", ofType: "txt") {
            do {
                contents = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
                print("awesome")
            } catch {
                // contents could not be loaded
                print("Content can't be loaded")
            }
        } else {
            // example.txt not found!
            print("File not found")
        }
        
        let lines : [String] = contents.componentsSeparatedByString("\n")
        let lines2 = lines[8].componentsSeparatedByString(",") as Array
        var price : Float = Float(lines2[1])!
        print(lines.count)
        print(price)
        
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

