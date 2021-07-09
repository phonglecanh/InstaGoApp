//
//  HomeFeedCellType.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 09/07/2021.
//

import Foundation

enum HomeFeedCellType {
    case poster(viewModel: PosterCollectionViewCellViewModel)
    case post(viewmodel: PostCollectionViewCellViewModel)
    case actions(viewmodel: PostActionsCollectionViewCellViewModel)
    case likeCount(viewmodel: PostLikesCollectionViewCellViewModel)
    case caption(viewmodel: PostCaptionCollectionViewCellViewModel)
    case timestamp(viewmodel: PostDatetimeCollectionViewCellViewModel)
}
