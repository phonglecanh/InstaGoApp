//
//  PostCaptionCollectionViewCell.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 10/07/2021.
//

import UIKit

protocol PostCaptionCollectionViewCellDelegate: AnyObject {
    func postCaptionCollectionViewCellDidTapCaptiont(_ cell: PostCaptionCollectionViewCell)
}

class PostCaptionCollectionViewCell: UICollectionViewCell {
    static let identifier = "PostCaptionCollectionViewCell"
    
    weak var delegate: PostCaptionCollectionViewCellDelegate?
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.isUserInteractionEnabled = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(label)
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapCaption))
        label.addGestureRecognizer(tap)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    @objc func didTapCaption() {
        delegate?.postCaptionCollectionViewCellDidTapCaptiont(self)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = label.sizeThatFits(CGSize(width: contentView.bounds.size.width-12, height: contentView.bounds.height))
        label.frame = CGRect(x: 12, y: 3, width: width, height: size.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    func configure(with viewModel: PostCaptionCollectionViewCellViewModel) {
        label.text = "\(viewModel.username) : \(viewModel.caption ?? "")"
    }
}
