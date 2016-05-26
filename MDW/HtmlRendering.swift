//
//  HtmlRendering.swift
//  MDW
//
//  Created by Ahmed Hamdy on 5/26/16.
//  Copyright © 2016 Ahmed Hamdy. All rights reserved.
//
import UIKit
import Foundation

class HtmlRendering{
    
    /* To use this method just create UILabel then label.attributedText = this method */
    static func renderHtml(let txt : String) -> NSAttributedString
    {
        let htmlFormat = "<h1>\(txt)</h1>"
        let attrStr = try! NSAttributedString(
            data: htmlFormat.dataUsingEncoding(NSUnicodeStringEncoding, allowLossyConversion: true)!,
            options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType],
            documentAttributes: nil)
        
        return attrStr
    }
    
    
}