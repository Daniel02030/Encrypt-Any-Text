//
//  ViewController.swift
//  Encrypt Any Text
//
//  Created by iD Student on 7/11/17.
//  Copyright © 2017 com.idtech.daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Encryption objects //
    

    @IBOutlet weak var encryptInput: UITextField!
    
    @IBAction func encryptInputChanged(_ sender: Any) {
        
        let temp: String =
            instance.encryptDecrypt(input: encryptInput.text!, encryptTrue: true, createUpperCaseVer: false)
        
        decryptInput.text = temp
        
        

    }
    
    // Encryption clip, copy, paste
    @IBAction func clipEncr(_ sender: Any) {
        UIPasteboard.general.string = encryptInput.text
        encryptInput.text = ""
        decryptInput.text = ""
    }
    @IBAction func copyEncr(_ sender: Any) {
        UIPasteboard.general.string = encryptInput.text
    }
    @IBAction func pasteEncr(_ sender: Any) {
        encryptInput.text = UIPasteboard.general.string
    }
    
    // Decryption objects //
    
    @IBOutlet weak var decryptInput: UITextField!

    @IBAction func decryptInputChanged(_ sender: Any) {
        
        let temp: String =
            instance.encryptDecrypt(input: decryptInput.text!, encryptTrue: false, createUpperCaseVer: false)
        
        encryptInput.text = temp
        

    }
    
    // Decryption clip, copy, paste
    @IBAction func clipDecr(_ sender: Any) {
        UIPasteboard.general.string = decryptInput.text
        encryptInput.text = ""
        decryptInput.text = ""
    }
    @IBAction func copyDecr(_ sender: Any) {
        UIPasteboard.general.string = decryptInput.text
    }
    @IBAction func pasteDecr(_ sender: Any) {
        decryptInput.text = UIPasteboard.general.string
    }
    
    
    
    
    
    //// viewDidLoad ////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    //// didReceiveMemoryWarning ////
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

