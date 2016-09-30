//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
    }

    @IBOutlet weak var Finn: UIButton!
    @IBOutlet weak var Jake: UIButton!
    @IBOutlet weak var Bubblegum: UIButton!
    @IBOutlet weak var BMO: UIButton!
    @IBOutlet weak var Lemongrab: UIButton!
    @IBOutlet weak var LSP: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var characterImageView: UIImageView!
   
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        if sender.titleLabel!.text! == Finn.titleLabel!.text! {
            return updateViews(character: finn )
        }
        if sender.titleLabel!.text! == Jake.titleLabel!.text! {
            return updateViews(character: jake )
        }
        if sender.titleLabel!.text! == Bubblegum.titleLabel!.text! {
        return updateViews(character: bubblegum )
        }
                if sender.titleLabel!.text! == BMO.titleLabel!.text! {
        return updateViews(character: bmo )
        }
        if sender.titleLabel!.text! == Lemongrab.titleLabel!.text! {
        return updateViews(character: lemongrab )
        }
            
        if sender.titleLabel!.text! == LSP.titleLabel!.text! {
         return updateViews(character: lsp )
        }
    }
    
        
//        if sender.isTouchInside {
//            return updateViews(character: finn )
//        }
//        if Jake.isTouchInside {
//            return updateViews(character: jake )
//        }
//        if Bubblegum.isTouchInside {
//            return updateViews(character: bubblegum )
//        }
//        if BMO.isTouchInside {
//            return updateViews(character: bmo )
//        }
//        if Lemongrab.isTouchInside {
//            return updateViews(character: lemongrab )
//        }
//        if LSP.isTouchInside {
//            return updateViews(character: lsp )
//        }
    
    func createAllCharacters(){
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Pet", powerLevel: 30.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Human", occupation: "Princess", powerLevel: 100.0)
        bmo = Character(name: "BMO", species: "Computer", occupation: "Calculator", powerLevel: 10.0)
        lemongrab = Character(name: "Lemongrab", species: "Animal", occupation: "Fruit Picker", powerLevel: 20.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Cloud", occupation: "Unemployed", powerLevel: 40.0)
    }
    
    func updateViews(character:Character){
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        characterImageView.image = character.displayImage()
    }
}

