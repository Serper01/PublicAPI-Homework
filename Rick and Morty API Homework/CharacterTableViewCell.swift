//
//  CharacterTableViewCell.swift
//  Rick and Morty API Homework
//
//  Created by Serper Kurmanbek on 10.01.2024.
//

import UIKit
import SDWebImage

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var pictureOfCharacter: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(character: Character) {
        
        nameLabel.text = character.name
        genderLabel.text = character.gender
        speciesLabel.text = character.species
        pictureOfCharacter.sd_setImage(with: URL(string: character.image),completed: nil)
        
    }

}
