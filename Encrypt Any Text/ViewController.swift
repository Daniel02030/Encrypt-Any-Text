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
        
        doEncrDecr(encrTrue: true)

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
        doEncrDecr(encrTrue: true)
    }
    
    // Decryption objects //
    
    @IBOutlet weak var decryptInput: UITextField!

    @IBAction func decryptInputChanged(_ sender: Any) {
        
        doEncrDecr(encrTrue: false)

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
        doEncrDecr(encrTrue: false)
    }
    
    //// Custom func //// 
    func doEncrDecr(encrTrue: Bool) {
        var encryptInputOrDecryptInput: String = ""
        
        if encrTrue == true {
            encryptInputOrDecryptInput = encryptInput.text!
        } else {
            encryptInputOrDecryptInput = decryptInput.text!
        }
        
        let temp: String =
            instance.encryptDecrypt(input: encryptInputOrDecryptInput, encryptTrue: encrTrue, createUpperCaseVer: false)
        
        if encrTrue == true {
            decryptInput.text = temp
        } else {
            encryptInput.text = temp
        }
        
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

