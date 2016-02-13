//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet weak var spaceBarButton: UIButton!
    var keyboardView: UIView!
    @IBOutlet weak var returnButton: UIButton!

    @IBOutlet weak var potionButton: UIButton!
    @IBOutlet weak var bulbasaurButton: UIButton!
    @IBOutlet weak var pikaPiButton: UIButton!
    @IBOutlet weak var pikaButton: UIButton!
    @IBOutlet weak var snorelaxButton: UIButton!
    @IBOutlet weak var shiftButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var jigglypuffButton: UIButton!
    @IBOutlet weak var squirtleButton: UIButton!

    @IBOutlet weak var charmanderButton: UIButton!
    
    var shift = false
    
    override func updateViewConstraints() {
        super.updateViewConstraints()

        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadTargets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func backspaceDelete() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.deleteBackward()
            self.shift = false
        } else {
            proxy.deleteBackward()
        }
    }
    
    func insertReturn() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("\n")
            self.shift = false
        } else {
            proxy.insertText("\n")
        }
    }
    
    func insertSpace() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText(" ")
            self.shift = false
        } else {
            proxy.insertText(" ")
        }

    }
    
    func pika() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("⚡️PIKA-CHU~!⚡️")
            self.shift = false
        } else {
            proxy.insertText("⚡️pika-chu~!⚡️")
        }

    }
    
    func bulbasaur() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("🍃BULBA BULBA🍃")
            self.shift = false
        } else {
            proxy.insertText("🍃bulba bulba🍃")
        }

    }
    
    func squirtle() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("💧SQUIRTLE SQUIRTLE💧")
            self.shift = false
        } else {
            proxy.insertText("💧squirtle squirtle💧")
        }

    }
    
    func charmander() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("🔥CHAR CHAR!🔥")
            self.shift = false
        } else {
            proxy.insertText("🔥char char!🔥")
        }

    }
    
    func potion() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("💊YOU USED HYPER POTION.💊")
            self.shift = false
        } else {
            proxy.insertText("💊you used hyper potion.💊")
        }

    }
    
    func pikapi() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("⚡️PIKA PI!⚡️")
            self.shift = false
        } else {
            proxy.insertText("⚡️pika pi!⚡️")
        }

    }
    
    func snorelax() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("💤ZZZZZZ...💤")
            self.shift = false
        } else {
            proxy.insertText("💤zZzZZZ...💤")
        }

    }
    
    func jigglypuff() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if (self.shift) {
            proxy.insertText("🎤JIGGLYYYPUFF JIGGGGGLYYPUFFFF🎤")
            self.shift = false
        } else {
            proxy.insertText("🎤Jigglyyypuff jiggggglyypuffff🎤")
        }
    }
    
    func shiftOn() {
        self.shift = true
    }
    
    func loadTargets() {
        spaceBarButton.addTarget(self, action: "insertSpace", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "insertReturn", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "backspaceDelete", forControlEvents: .TouchUpInside)
        pikaButton.addTarget(self, action: "pika", forControlEvents: .TouchUpInside)
        potionButton.addTarget(self, action: "potion", forControlEvents: .TouchUpInside)
        bulbasaurButton.addTarget(self, action: "bulbasaur", forControlEvents: .TouchUpInside)
        squirtleButton.addTarget(self, action: "squirtle", forControlEvents: .TouchUpInside)
        charmanderButton.addTarget(self, action: "charmander", forControlEvents: .TouchUpInside)
        pikaPiButton.addTarget(self, action: "pikapi", forControlEvents: .TouchUpInside)
        jigglypuffButton.addTarget(self, action: "jigglypuff", forControlEvents: .TouchUpInside)
        snorelaxButton.addTarget(self, action: "snorelax", forControlEvents: .TouchUpInside)
        shiftButton.addTarget(self, action: "shiftOn", forControlEvents: .TouchUpInside)
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
