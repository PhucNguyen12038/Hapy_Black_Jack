//
//  ViewController.swift
//  Hapy_Back_Jack
//
//  Created by nhp on 2/6/19.
//  Copyright © 2019 nhp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var card = Card()
    var cardStack: [String] = []
    var cardIndex:Int = 4
    
    @IBOutlet weak var controlGame: UIButton!
    
    @IBOutlet weak var Card0: UIButton!
    
    @IBOutlet weak var Card1: UIButton!
    
    @IBOutlet weak var Card2: UIButton!
    
    @IBOutlet weak var Card3: UIButton!
    // Card 0,2 belong to host, 1,3 belong to guest
    
    
    @IBOutlet weak var Card11: UIButton!
    
    @IBOutlet weak var Card12: UIButton!
    
    @IBOutlet weak var Card13: UIButton!
    // card 11,12,13 mean player 1, 1st,2nd,3rd order
    
    @IBOutlet weak var takeCardP1: UIButton!
    // finish element for player 1
    
    @IBOutlet weak var Card21: UIButton!
    
    @IBOutlet weak var Card22: UIButton!
    
    @IBOutlet weak var Card23: UIButton!
    // card 21,22,23 mean player 2, 1st,2nd,3rd order
    
    @IBOutlet weak var takeCardP2: UIButton!
    // finsih element for player 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.takeCardP2.transform = self.takeCardP2.transform.rotated(by: CGFloat(Double.pi))
        
        self.Card1.transform = self.Card1.transform.rotated(by: CGFloat(Double.pi))
        
        self.Card3.transform = self.Card3.transform.rotated(by: CGFloat(Double.pi))
        
        self.Card21.transform = self.Card21.transform.rotated(by: CGFloat(Double.pi))
        
        self.Card22.transform = self.Card22.transform.rotated(by: CGFloat(Double.pi))
        
        self.Card23.transform = self.Card23.transform.rotated(by: CGFloat(Double.pi))
        // rotate all the element of player 2
        
        self.controlGame.setTitle("Play", for: .normal)
        // change title of control game to know current mode of button
    }

    @IBAction func pressControlGame(_ sender: UIButton) {
        card = Card()
        cardStack = self.card.shuffle()
        self.controlGame.setTitle("Hapy", for: .normal)
        // shuffle the deck and change title of control game
        
        let firstCardFace = cardStack[0]
        Card0.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        Card0.setBackgroundImage(UIImage(named: firstCardFace), for: .disabled)
        // disabled to not show the background image of button
        Card0.setImage(UIImage(named: "back"), for: .normal)
        
        let secondCardFace = cardStack[1]
        Card1.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        Card1.setBackgroundImage(UIImage(named: secondCardFace), for: .disabled)
        Card1.setImage(UIImage(named: "back"), for: .normal)
        
        let thirdCardFace = cardStack[2]
        Card2.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        Card2.setBackgroundImage(UIImage(named: thirdCardFace), for: .disabled)
        Card2.setImage(UIImage(named: "back"), for: .normal)
        
        let fourthCardFace = cardStack[3]
        Card3.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        Card3.setBackgroundImage(UIImage(named: fourthCardFace), for: .disabled)
        Card3.setImage(UIImage(named: "back"), for: .normal)
        // give 1 card to host then 1 card to guess
        
        Card11.setImage(nil, for: .normal)
        Card11.setBackgroundImage(nil, for: .normal)
        
        Card12.setImage(nil, for: .normal)
        Card12.setBackgroundImage(nil, for: .normal)
        
        Card13.setImage(nil, for: .normal)
        Card13.setBackgroundImage(nil, for: .normal)
        
        Card21.setImage(nil, for: .normal)
        Card21.setBackgroundImage(nil, for: .normal)
        
        Card22.setImage(nil, for: .normal)
        Card22.setBackgroundImage(nil, for: .normal)
        
        Card23.setImage(nil, for: .normal)
        Card23.setBackgroundImage(nil, for: .normal)
        
        // when press play again, set these card to empty
    }
    
    // from first card to fourth card, base on mode of control game to decide show face
    @IBAction func pressFirstCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // store face to background of button
            // store back image to foreground of button
            let firstCardImageFace = Card0.backgroundImage(for: .disabled)
            if(Card0.currentImage == UIImage(named: "back")){
                Card0.setImage(firstCardImageFace, for: .normal)
                Card0.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                Card0.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
    
    @IBAction func pressSecondCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // store face to background of button
            // store back image to foreground of button
            let firstCardImageFace = Card1.backgroundImage(for: .disabled)
            if(Card1.currentImage == UIImage(named: "back")){
                Card1.setImage(firstCardImageFace, for: .normal)
                Card1.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                Card1.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
    
    @IBAction func pressThirdCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // store face to background of button
            // store back image to foreground of button
            let firstCardImageFace = Card2.backgroundImage(for: .disabled)
            if(Card2.currentImage == UIImage(named: "back")){
                Card2.setImage(firstCardImageFace, for: .normal)
                Card2.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                Card2.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
    
    @IBAction func pressFourthCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // store face to background of button
            // store back image to foreground of button
            let firstCardImageFace = Card3.backgroundImage(for: .disabled)
            if(Card3.currentImage == UIImage(named: "back")){
                Card3.setImage(firstCardImageFace, for: .normal)
                Card3.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                Card3.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
    
    // the card of player 1, 3 last card is based on first card of player
    @IBAction func pressCard11(_ sender: UIButton) {
        if(Card0.currentImage != nil){
            let Card11ImageFace = Card11.backgroundImage(for: .disabled)
            if(Card11.currentImage == UIImage(named: "back")){
                Card11.setImage(Card11ImageFace, for: .normal)
                Card11.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card11.currentImage != nil){
                    Card11.setImage(UIImage(named: "back"), for: .normal)
                }
            }
        }
    }
    
    @IBAction func pressCard12(_ sender: UIButton) {
        if(Card0.currentImage != nil){
            let Card12ImageFace = Card12.backgroundImage(for: .disabled)
            if(Card12.currentImage == UIImage(named: "back")){
                Card12.setImage(Card12ImageFace, for: .normal)
                Card12.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card12.currentImage != nil){
                    Card12.setImage(UIImage(named: "back"), for: .normal)
                }
            }
        }
    }
    
    @IBAction func pressCard13(_ sender: UIButton) {
        if(Card0.currentImage != nil){
            let Card13ImageFace = Card13.backgroundImage(for: .disabled)
            if(Card13.currentImage == UIImage(named: "back")){
                Card13.setImage(Card13ImageFace, for: .normal)
                Card13.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card13.currentImage != nil){
                    Card13.setImage(UIImage(named: "back"), for: .normal)
                }
            }
        }
    }
    
    // the card of player 2, 3 last card is based on first card of player
    @IBAction func pressCard21(_ sender: UIButton) {
        if(Card1.currentImage != nil){
            let Card21ImageFace = Card21.backgroundImage(for: .disabled)
            if(Card21.currentImage == UIImage(named: "back")){
                Card21.setImage(Card21ImageFace, for: .normal)
                Card21.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card21.currentImage != nil){
                    Card21.setImage(UIImage(named: "back"), for: .normal)
                }
                
            }
        }
    }
    
    @IBAction func pressCard22(_ sender: UIButton) {
        if(Card1.currentImage != nil){
            let Card22ImageFace = Card22.backgroundImage(for: .disabled)
            if(Card22.currentImage == UIImage(named: "back")){
                Card22.setImage(Card22ImageFace, for: .normal)
                Card22.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card22.currentImage != nil){
                    Card22.setImage(UIImage(named: "back"), for: .normal)
                }
                
            }
        }
    }
    
    @IBAction func pressCard23(_ sender: UIButton) {
        if(Card1.currentImage != nil){
            let Card23ImageFace = Card23.backgroundImage(for: .disabled)
            if(Card23.currentImage == UIImage(named: "back")){
                Card23.setImage(Card23ImageFace, for: .normal)
                Card23.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                if(Card23.currentImage != nil){
                    Card23.setImage(UIImage(named: "back"), for: .normal)
                }
            }
        }
    }
    
    @IBAction func takeCardP1(_ sender: UIButton) {
        // button take card for host
        // take 1 card and check to diliver it to which position
        // check if control game is mode Hapy (after press Play)
        // if control game is mode Play, touch button have no action
        if(controlGame.titleLabel?.text == "Hapy"){
            
            let CardImageFace = cardStack[cardIndex]
            let CardUIImage = UIImage(named: CardImageFace)
            
            if(Card0.currentImage != nil){
                if(Card11.currentImage == nil){
                    Card11.setImage(UIImage(named: "back"), for: .normal)
                    Card11.setBackgroundImage(CardUIImage, for: .disabled)
                    cardIndex = cardIndex + 1
                }
                else{
                    if(Card12.currentImage == nil){
                        Card12.setImage(UIImage(named: "back"), for: .normal)
                        Card12.setBackgroundImage(CardUIImage, for: .disabled)
                        cardIndex = cardIndex + 1
                    }
                    else{
                        if(Card13.currentImage == nil){
                            Card13.setImage(UIImage(named: "back"), for: .normal)
                            Card13.setBackgroundImage(CardUIImage, for: .disabled)
                            cardIndex = cardIndex + 1
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func takeCardP2(_ sender: UIButton) {
        // check if control game is mode Hapy (after press Play)
        // if control game is mode Play, touch button have no action
        if(controlGame.titleLabel?.text == "Hapy"){
            
            let CardImageFace = cardStack[cardIndex]
            let CardUIImage = UIImage(named: CardImageFace)
            
            if(Card1.currentImage != nil){
                if(Card21.currentImage == nil){
                    Card21.setImage(UIImage(named: "back"), for: .normal)
                    Card21.setBackgroundImage(CardUIImage, for: .disabled)
                    cardIndex = cardIndex + 1
                }
                else{
                    if(Card22.currentImage == nil){
                        Card22.setImage(UIImage(named: "back"), for: .normal)
                        Card22.setBackgroundImage(CardUIImage, for: .disabled)
                        cardIndex = cardIndex + 1
                    }
                    else{
                        if(Card23.currentImage == nil){
                            Card23.setImage(UIImage(named: "back"), for: .normal)
                            Card23.setBackgroundImage(CardUIImage, for: .disabled)
                            cardIndex = cardIndex + 1
                        }
                    }
                }
            }
        }
    }
}

