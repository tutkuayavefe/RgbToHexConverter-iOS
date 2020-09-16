//
//  ViewController.swift
//  RGBtoHEXConvertor
//
//  Created by tutku ayavefe on 25/05/2020.
//  Copyright © 2020 tutku ayavefe. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var tctGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var lblSelectedColor: UILabel!
    var selectedIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        selectedIndex = sender.selectedSegmentIndex
        lblResult.text?.removeAll()
        txtRed.text?.removeAll()
        tctGreen.text?.removeAll()
        txtBlue.text?.removeAll()
        lblSelectedColor.backgroundColor = UIColor.white
        
        
        
        
    }
    
    func RGBtoHEXConvert(){
       
            
            
            /*
            guard let redValue = UInt8(tctGreen.text!) else {return }
            guard let greenValue = UInt8(tctGreen.text!) else {return }
            guard let blueValue = UInt8(tctGreen.text!) else {return }
*/
        
        if let redValue = UInt8(txtRed.text!){
                 
                 if let greenValue = UInt8(tctGreen.text!){
                     
                     if let blueValue = UInt8(txtBlue.text!){
     
                    
                    //buraya kadar gelinirse inskullanıcı değerleri düzgün girdi demek oluyor
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    lblResult.text = "HEX Color : #\(redHex)\(greenHex)\(blueHex)"
                 
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                    
                    }
                    
            }
            
        }
    }
    
   func HEXtoRGBConvert(){
        
    if let redValue = UInt8(txtRed.text!,radix: 16){
        
        if let greenValue = UInt8(tctGreen.text!,radix: 16){
            
            if let blueValue = UInt8(txtBlue.text!,radix: 16){
                
                lblResult.text = "RED: \(redValue) \n GREEN: \(greenValue) \n BLUE: \(blueValue)"
                lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)

            }
        }
            
    }
          
      }
    
    
    
    
    
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
        
        
        if selectedIndex == 0 {
            btnConvert.setTitle("RGB - HEX Convert", for: UIControl.State.normal)
            RGBtoHEXConvert()
        }
            
        else{
            btnConvert.setTitle("HEX - RGB Convert", for: UIControl.State.normal)
            HEXtoRGBConvert()
        }
        
    }
    
    
}

