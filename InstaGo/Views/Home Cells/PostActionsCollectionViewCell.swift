//
//  PostActionsCollectionViewCell.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 10/07/2021.
//

import UIKit

class PostActionsCollectionViewCell: UICollectionViewCell {
    static let identifier = "PostActionsCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        contentView.backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with viewModel: PostActionsCollectionViewCellViewModel) {
        
    }
}
