// Playground - noun: a place where people can play

import UIKit

/*

func checkStringForNegativePlus(#displayString:String) -> String {
    if first(displayString) == "-"
    {
        dropFirst(displayString)
        return displayString
    }
    
    else {
        return displayString
    }
}

checkStringForNegativePlus(displayString: "23") */

var displayString = "-123"
dropFirst(displayString)

displayString = dropFirst(displayString)

displayString.toInt()!
