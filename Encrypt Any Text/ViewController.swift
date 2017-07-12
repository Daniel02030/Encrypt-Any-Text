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
    
    @IBOutlet weak var encryptionInput: UITextField!
    @IBOutlet weak var encryptOutput: UITextView!
    
    
    @IBAction func doEncrypt(_ sender: Any) {
        
        let temp: String =
        instance.encryptDecrypt(input: encryptionInput.text!, encryptTrue: true, createUpperCaseVer: false)
        
        encryptOutput.text = temp
        
        
    }
    
    // Encryption clip, copy, paste
    @IBAction func clipEncr(_ sender: Any) {
        UIPasteboard.general.string = encryptOutput.text
        encryptionInput.text = ""
        encryptOutput.text = ""
    }
    @IBAction func copyEncr(_ sender: Any) {
        UIPasteboard.general.string = encryptOutput.text
    }
    @IBAction func pasteEncr(_ sender: Any) {
        encryptionInput.text = UIPasteboard.general.string
    }
    
    // Decryption objects //
    
    @IBOutlet weak var decryptionInput: UITextField!
    @IBOutlet weak var decryptOutput: UITextView!

    @IBAction func doDecrypt(_ sender: Any) {
        
        let temp: String =
        instance.encryptDecrypt(input: decryptionInput.text!, encryptTrue: false, createUpperCaseVer: false)
        
        decryptOutput.text = temp
        
    }
    // Decryption clip, copy, paste
    @IBAction func clipDecr(_ sender: Any) {
        UIPasteboard.general.string = decryptOutput.text
        decryptionInput.text = ""
        decryptOutput.text = ""
    }
    @IBAction func copyDecr(_ sender: Any) {
        UIPasteboard.general.string = decryptOutput.text
    }
    @IBAction func pasteDecr(_ sender: Any) {
        decryptionInput.text = UIPasteboard.general.string
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

