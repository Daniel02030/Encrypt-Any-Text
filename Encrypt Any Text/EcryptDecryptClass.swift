//
//  EcryptDecryptClass.swift
//  Encrypt Any Text
//
//  Created by iD Student on 7/11/17.
//  Copyright © 2017 com.idtech.daniel. All rights reserved.
//

import Foundation

class EcryptDecryptAlphabet {
    
    var encryptAlphabet: [Character: Character]
    var decryptAlphabet1: [Character: Character] = [" ":" "]
    
    init(encryptAlphabet: [Character: Character]) {
        self.encryptAlphabet = encryptAlphabet
    }
    
    
    /////////////////////////
    func makeUpperCaseVer() {
        
        var keyY: String = ""
        var valueE: String = ""
        var keyC: Character = " "
        
        
        for x in encryptAlphabet {
            keyY = "\(x.key)".uppercased()
            valueE = "\(x.value)".uppercased()
            for x in keyY.characters{
                keyC = x
            }
            
            for x in valueE.characters{
                
                
                for _ in encryptAlphabet {
                    if encryptAlphabet[keyC] == nil {
                        encryptAlphabet[keyC] = x
                    }
                }
            }
        }
    }
    
    ////////////////////////////
    func makeDecryptAlphabet() {
        
        
        for x in encryptAlphabet {
            decryptAlphabet1[x.value] = x.key
        }
        
    }
    
    ///////////////////////////
    func encryptDecrypt(input: String, encryptTrue: Bool, createUpperCaseVer: Bool) -> String {
        
        var encription: String = ""
        var ecryptAlphabet2: [Character: Character] = [" ":" "]
        //public var decryptAlphabet1: [Character: Character] = [" ":" "]
        
        //createUpperCaseVer
        if createUpperCaseVer == true {
            makeUpperCaseVer()
        }
        
        //encryptTrue
        if encryptTrue == true {
            ecryptAlphabet2 = encryptAlphabet
        } else {
            makeDecryptAlphabet()
            ecryptAlphabet2 = decryptAlphabet1
        }
        
        for x in input.characters{
            
            if ecryptAlphabet2[x] != nil {
                encription += String(describing: ecryptAlphabet2[x])
            } else {
                encription += "\(x)"
            }
        }
        encription = encription.replacingOccurrences(of:"Optional(", with: "")
        encription = encription.replacingOccurrences(of:")", with: "")
        encription = encription.replacingOccurrences(of:"\"", with: "")
        
        return(encription)
    }
    
}

var instance = EcryptDecryptAlphabet(
    encryptAlphabet:
    ["a": "4",
     "b": "f",
     "c": "g",
     "d": "h",
     "e": "!",
     "f": "k",
     "g": "F",
     "h": "2",
     "i": "E",
     "j": "8",
     "k": "3",
     "l": "T",
     "m": "q",
     "n": "r",
     "o": "Ö",
     "p": "Q",
     "q": ".",
     "r": "v",
     "s": "w",
     "t": "7",
     "u": "ø",
     "v": "A",
     "w": "a",
     "x": "b",
     "y": "c",
     "z": "d",
     "æ": "æ",
     "ø": "y",
     "å": "å",
     "ä": "ä",
     "ö": "ö",
     "A": "z",
     "B": "Ä",
     "C": "V",
     "D": "U",
     "E": "m",
     "F": "j",
     "G": "Æ",
     "H": "Ø",
     "I": "I",
     "J": "M",
     "K": "Å",
     "L": "S",
     "M": "O",
     "N": "Z",
     "O": "N",
     "P": "Y",
     "Q": "t",
     "R": "X",
     "S": "L",
     "T": "p",
     "U": "W",
     "V": "C",
     "W": "D",
     "X": "R",
     "Y": "P",
     "Z": "J",
     "Æ": "G",
     "Ø": "K",
     "Å": "H",
     "Ä": "B",
     "Ö": "s",
     " ": "i",
     ".": "u",
     "1": "9",
     "2": "l",
     "3": "1",
     "4": "e",
     "5": "0",
     "6": "?",
     "7": "x",
     "8": "n",
     "9": "o",
     "0": "5",
     "!": " ",
     "?": "6"])








