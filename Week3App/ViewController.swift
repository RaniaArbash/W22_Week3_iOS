//
//  ViewController.swift
//  Week3App
//
//  Created by Rania Arbash on 2022-01-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var titleLabel: UILabel! // IBOutlets
    @IBOutlet weak var ios_image: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var numberOfClickes: UILabel!
    
    var managerOBJ : AppManager?

    var number : Int = 0 // custom variables
    
    override func viewDidLoad() { // view lifecycle functions
        super.viewDidLoad()
        titleLabel.text = "iOS Students Info"
        ios_image.image = UIImage(named: "ios")
        mySlider.minimumValue = 0
        mySlider.maximumValue = 100
        mySlider.value = 0
        
        managerOBJ = (UIApplication.shared.delegate as! AppDelegate).managerObj
        
    }

   
    @IBAction func showMarksClicked(_ sender: Any) { // IBActions functions
        if sender is UIButton{
    
            if let title = (sender as! UIButton).titleLabel?.text {
                    print (title)
            
                if title == "Log In"{
            
            ///
            numberOfClickes.text = "Log In Clicked"
              
                }else {
        
        number += 1
        numberOfClickes.text = "clicked  \(number) times"
        myButton.setTitle("\(number)", for: .normal)
        }
        }
            }
        else if sender is UISlider {
            
            let intValue : Int = (Int)((sender as! UISlider).value)
            numberOfClickes.text = "The slider value is \(intValue)"
            
            
        }
    }
  
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func printMsg(){ // custom functions
        
        
    }


}

