//
//  PlayerCell.swift
//  romstatus
//
//  Created by Martin Saue Winther on 14/09/2019.
//  Copyright © 2019 akademiet. All rights reserved.
//

import UIKit

class RoomCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var airLabel: UILabel!
    
    var room: Room? {
        didSet {
            guard let room = room else {
                return
            }
            
            numberLabel.text = room.number
            nameLabel.text = String(Int(getScreenParamters()[0]))//room.name
            statusLabel.text = String(Int(getScreenParamters()[1]))//room.status
            airLabel.text = room.air
            
            setLabelParameters(label: numberLabel)
            setLabelParameters(label: nameLabel)
            setLabelParameters(label: statusLabel)
            setLabelParameters(label: airLabel)
            
        }
    }
    
    func getScreenParamters() -> [CGFloat] {
        let bounds = UIScreen.main.bounds
        let width: CGFloat = bounds.size.width
        let height: CGFloat = bounds.size.height
        return [width, height]
    }
    
    func setLabelParameters(label: UILabel) {
        let width = getScreenParamters()[0] / 4
        //let height = getScreenParamters()[1] / 3
        
        label.frame.size.width = width
        //label.frame.size.height = height
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
