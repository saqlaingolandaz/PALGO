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
    var masterArray : [[String]] = [];
    var names : [String] = [];
    var costs : [Float] = [];
    
    var cheap : [Float] = [];
    var medium : [Float] = [];
    var expensive : [Float] = [];
    
    
    override func viewDidLoad() {
        if let filepath = NSBundle.mainBundle().pathForResource("Untitled", ofType: "txt") {
            do {
                contents = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
            } catch {
                // contents could not be loaded
                print("Content can't be loaded")
            }
        } else {
            // example.txt not found!
            print("File not found")
        }
        
        let lines : [String] = contents.componentsSeparatedByString("\n")
        for(var i = 0; i < lines.count; i++) {
            masterArray.append(lines[i].componentsSeparatedByString(",") as Array)
            names.append(masterArray[i][0])
            costs.append(Float(masterArray[i][1])!)
        }
        //print(masterArray)
        //print(names)
        print(costs)
        print(costs.indexOf(21.99))

        
//        var price : Float = Float(lines2[1])!

        
    }

        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "one") {
            for(var i = 0; i < costs.count; i++) {
                if(costs[i] <= 39.99) {
                    var temp = Float(costs.indexOf(costs[i])!)
                    cheap.append(temp)
                }
            }
        } else if (segue.identifier == "two") {
            for(var i = 0; i < costs.count; i++) {
                if(costs[i] > 40.0 && costs[i] < 60.0) {
                    var temp = Float(costs.indexOf(costs[i])!)
                    medium.append(temp)
                }
            }
        } else if (segue.identifier == "three") {
            for(var i = 0; i < costs.count; i++) {
                if(costs[i] > 60.0) {
                    var temp = Float(costs.indexOf(costs[i])!)
                    expensive.append(temp)
                }
            }
        }
    }
    
    
    @IBAction func oneClicked(sender: AnyObject) {
        print(cheap)
        performSegueWithIdentifier("one", sender: self)
    }

    @IBAction func twoClicked(sender: AnyObject) {
        print(medium)
        performSegueWithIdentifier("two", sender: self)
    }
    
    
    @IBAction func threeClicked(sender: AnyObject) {
        print(expensive)
        performSegueWithIdentifier("three", sender: self)
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

