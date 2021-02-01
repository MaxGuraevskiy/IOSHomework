//
//  TripCollectionViewCell.swift
//  CarouselApp
//
//  Created by Guraevskiy Max on 02.02.2021.
//

import UIKit

protocol TripCollectionCellDelegate {
func didLikeButtonPressed(cell: TripCollectionViewCell)
    
}

class TripCollectionViewCell: UICollectionViewCell {
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.didLikeButtonPressed(cell: self)
    }
    var delegate:TripCollectionCellDelegate?
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var totalDaysLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    var isLiked: Bool = false {
        didSet {
            if isLiked {
                likeButton.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
            } else {
                likeButton.setBackgroundImage(UIImage(systemName: "heart"), for: .normal)
            }
        }
    }
}
