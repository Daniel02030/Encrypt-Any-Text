//
//  EcryptDecryptClass.swift
//  Encrypt Any Text
//
//  Created by iD Student on 7/11/17.
//  Copyright © 2017 com.idtech.daniel. All rights reserved.
//

import Foundation
import GameplayKit

class EcryptDecryptAlphabet {
    
    var encryptAlphabet: [Character: Character]
    
    
    init(encryptAlphabet: [Character: Character]) {
        self.encryptAlphabet = encryptAlphabet
    }
    
    
    ///////////////////////// (Not in use anymore)
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
    
    
    var decryptAlphabet1: [Character: Character] = [" ":" "]
    ////////////////////////////
    func makeDecryptAlphabet() {
        
        
        for x in encryptAlphabet {
            decryptAlphabet1[x.value] = x.key
        }
        
    }
    
    ///////////////////////////
    func encryptDecrypt(input: String, encryptTrue: Bool, createUpperCaseVer: Bool) -> String {
        //makeDict(seed: 3)
        
        var encription: String = ""
        var ecryptAlphabet2: [Character: Character] = [" ":" "]
        
        
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
        encription = encription.replacingOccurrences(of:"Optional(\"", with: "")
        encription = encription.replacingOccurrences(of:"\")", with: "")
        
        
        return(encription)
    }
    

    //Out of order
    func makeDict(seed: UInt64) {
        var alphabet2: [Character] = [" "]
        var carry: [Character: Character] = [" ": " "]
        
        let lcg = GKLinearCongruentialRandomSource(seed: seed)
        alphabet2 = lcg.arrayByShufflingObjects(in: alphabet) as! [Character]
        
        for (index, element) in alphabet.enumerated(){
            carry[element] = alphabet2[index]
        }
        instance = EcryptDecryptAlphabet(encryptAlphabet: carry)
    }
}
var alphabet: [Character] = [
    //lowercase letters: Latin, norwegian, german, spannish and russian
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
    "æ",
    "ø",
    "å",
    "ä",
    "ö",
    "ü",
    "ß",
    "á",
    "é",
    "í",
    "ñ",
    "ó",
    "ú",
    "ё",
    "ъ",
    "я",
    "ш",
    "т",
    "ы",
    "и",
    "п",
    "ю",
    "щ",
    "э",
    "д",
    "ф",
    "г",
    "ч",
    "й",
    "к",
    "л",
    "ь",
    "ж",
    "з",
    "ц",
    "в",
    "б",
    "н",
    "м",
    
    //uppercase letters: ...
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
    "Æ",
    "Ø",
    "Å",
    "Ä",
    "Ö",
    "Ü",
    "Á",
    "É",
    "Í",
    "Ñ",
    "Ó",
    "Ú",
    "Ё",
    "Ъ",
    "Я",
    "Ш",
    "Т",
    "Ы",
    "У",
    "И",
    "П",
    "Ю",
    "Щ",
    "Э",
    "Д",
    "Ф",
    "Г",
    "Ч",
    "Й",
    "К",
    "Л",
    "Ь",
    "Ж",
    "З",
    "Ц",
    "В",
    "Б",
    "Н",
    "М",
    
    //numbers
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    
    //symbols
    " ",
    ".",
    ",",
    "!",
    "?",
    "¿",
    "¡",
    "@",
    "#",
    "$",
    "€",
    "%",
    "&",
    "(",
    ")",
    "-",
    "_"]



var instance = EcryptDecryptAlphabet(
    encryptAlphabet:
    
    //lowercase letters: Latin, norwegian, german, spannish and russian

    ["a": "4",
     "b": "f",
     "c": "ъ",
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
     "p": "ß",
     "q": ".",
     "r": "v",
     "s": "w",
     "t": "7",
     "u": "ø",
     "v": "A",
     "w": "д",
     "x": "_",
     "y": "c",
     "z": "d",
     "æ": "æ",
     "ø": "y",
     "å": "å",
     "ä": "т",
     "ö": "é",
     "ü": "ü",
     "ß": "Q",
     "á": "ó",
     "é": "ö",
     "í": "í",
     "ñ": "ñ",
     "ó": "ä",
     "ú": "ф",
     "ё": "ё",
     "ъ": "g",
     "я": "ш",
     "ш": "ú",
     "т": "á",
     "ы": "п",
     "и": "ы",
     "п": "л",
     "ю": "й",
     "щ": "э",
     "э": "ж",
     "д": "a",
     "ф": "ю",
     "г": "г",
     "ч": "ч",
     "й": "м",
     "к": "б",
     "л": "и",
     "ь": "з",
     "ж": "щ",
     "з": "ь",
     "ц": "ц",
     "в": "в",
     "б": "к",
     "н": "н",
     "м": "я",
     
     //uppercase letters: ...
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
     "Å": "Ú",
     "Ä": "B",
     "Ö": "s",
     "Ü": "É",
     "Á": "Í",
     "É": "Ш",
     "Í": "Ü",
     "Ñ": "Á",
     "Ó": "H",
     "Ú": "Ó",
     "Ё": "Ñ",
     "Ъ": "Ъ",
     "Я": "Ё",
     "Ш": "Я",
     "Т": "Т",
     "Ы": "И",
     "У": "У",
     "И": "Щ",
     "П": "П",
     "Ю": "Д",
     "Щ": "В",
     "Э": "Э",
     "Д": "Ч",
     "Ф": "М",
     "Г": "Г",
     "Ч": "К",
     "Й": "Й",
     "К": "Ы",
     "Л": "-",
     "Ь": "Б",
     "Ж": "З",
     "З": "Ь",
     "Ц": "Ц",
     "В": "Ю",
     "Б": "Ж",
     "Н": "Ф",
     "М": "Н",
     
     //numbers
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
     
     //symbols
     " ": "i",
     ".": "u",
     ",": ",",
     "!": " ",
     "?": "6",
     "¿": ")",
     "¡": "@",
     "@": "#",
     "#": "$",
     "$": "€",
     "€": "¡",
     "%": "%",
     "&": "(",
     "(": "¿",
     ")": "&",
     "-": "Л",
     "_": "b"])








