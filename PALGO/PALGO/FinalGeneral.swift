//
//  FinalGeneral.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 6/29/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class FinalGeneral: UIViewController {
    
    var masterArray5 : [[String]] = []
    var moneyArray4 : [Int] = []
    var items : [[String]] = [] //Items that the user can afford
    var routine : String! //How often does the user work out
    var workout : String! //What is the workout comprised of
    var meals : String! //How many meals does the user have a day
    
    var items2 : [[String]] = [] //First round of filtering
    var items3 : [[String]] = [] //Second round of filtering
    

    override func viewDidLoad() {
        super.viewDidLoad()
        for(var i = 0; i < moneyArray4.count; i++) {
            items.append(masterArray5[moneyArray4[i]])
        }

        if(routine == "1-3" && workout == "weights") {
            for(var i = 0; i < items.count; i++) {
                if(Int(items[i][9]) < 50  && Int(items[i][14]) > 20 && Int(items[i][6]) == 0 && (Int(items[i][15]) > 100 || items[i][15] == "x")) {
                    items2.append(items[i])
                }
            }
        } else if(routine == "3-5" && workout == "weights") {
            for(var i = 0; i < items.count; i++) {
                if(Int(items[i][9]) < 75  && (Int(items[i][14]) > 20 || Int(items[i][14]) < 30)  && Int(items[i][6]) == 0 && (Int(items[i][15]) > 200 || items[i][15] == "x") && (Int(items[i][8]) <= 4 && Int(items[i][8]) >= 2)) {
                    items2.append(items[i])
                }
            }
        } else if(routine == "5-7" && workout == "weights") {
            for(var i = 0; i < items.count; i++) {
                if(Int(items[i][9]) < 50  && (Int(items[i][14]) > 30 || Int(items[i][14]) < 40)  && (Double(items[i][6]) >= 0 || Double(items[i][6]) <= 0.5) && (Int(items[i][15]) > 200 || items[i][15] == "x") && (Int(items[i][8]) <= 5)) {
                    items2.append(items[i])
                }
            }
        }
        print(items2)
        
//        print(items)
//        print(routine)
//        print(workout)
//        print(meals)
        


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
