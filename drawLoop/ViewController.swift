//
//  ViewController.swift
//  drawLoop
//
//  Created by doriswlc on 2022/8/12.
//

import UIKit
    var item1 = "🍺"
    var item2 = "🍟"
    var number = 2
    var itemIndex = 2
    var typeIndex = 0
class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        downRight()
    }

    func downRight() {
        var content = ""
        for i in 1...number {
            content += String(repeating: "(\\_/)     ", count: i) + "\n"
            content += String(repeating: "(._.)     ", count: i) + "\n"
            if i % 2 == 0 {
                content += String(repeating: "/>\(item1)> ", count: i) + "\n"
            } else {
                content += String(repeating: "/>\(item2)> ", count: i) + "\n"
            }
            content = content + "\n"
        }
        label.text = content
    }
    
    func square() {
        var content = ""
        for i in 1...number {
            content += String(repeating: "(\\_/)     ", count: number) + "\n"
            content += String(repeating: "(._.)     ", count: number) + "\n"
            if i % 2 == 0 {
                content += String(repeating: "/>\(item1)> ", count: number) + "\n"
            } else {
                content += String(repeating: "/>\(item2)> ", count: number) + "\n"
            }
            content = content + "\n"
        }
        label.text = content
    }
    
    func upRight() {
        var content = ""
        for i in 1...number {
            
            content += String(repeating: "(\\_/)     ", count: (number - i + 1)) + "\n"
            content += String(repeating: "(._.)     ", count: (number - i + 1)) + "\n"
            if i % 2 == 0 {
                content += String(repeating: "/>\(item1)> ", count: (number - i + 1)) + "\n"
            } else {
                content += String(repeating: "/>\(item2)> ", count: (number - i + 1)) + "\n"
            }
            content = content + "\n"
        }
        label.text = content
    }
    
    @IBAction func changeItem(_ sender: UISegmentedControl) {
        itemIndex = sender.selectedSegmentIndex
        switch itemIndex {
        case 0:
            item1 = "🌶"
            item2 = "🥕"
        case 1:
            item1 = "🍏"
            item2 = "🍎"
        case 2:
            item1 = "🍺"
            item2 = "🍟"
        case 3:
            item1 = "🔧"
            item2 = "💣"
        default:
            break
        }
        switch typeIndex {
        case 0:
            downRight()
        case 1:
            square()
        case 2:
            upRight()
        default:
            break
        }
    }
    
    @IBAction func changeType(_ sender: UISegmentedControl) {
        typeIndex = sender.selectedSegmentIndex
        switch typeIndex {
        case 0:
            downRight()
        case 1:
            square()
        case 2:
            upRight()
        default:
            break
        }
    }
    
    @IBAction func changeNumber(_ sender: UISlider) {
        number = Int(sender.value.rounded())
        switch typeIndex {
        case 0:
            downRight()
        case 1:
            square()
        case 2:
            upRight()
        default:
            break
        }
    }
}

