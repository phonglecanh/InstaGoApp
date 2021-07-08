//
//  ProfileViewController.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 05/07/2021.
//

import UIKit

class ProfileViewController: UIViewController {

    private let user: User
    private var isCurrentUser: Bool {
        return user.username.lowercased() == UserDefaults.standard.string(forKey: "username")?.lowercased() ?? ""
    }
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.username.lowercased()
        view.backgroundColor = .systemBackground
        configure()
    }
    
   
     private func configure() {
        if isCurrentUser {
            navigationItem.rightBarButtonItem = UIBarButtonItem(
                image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(didTapSettings)
            )
        }
    }
    @objc func didTapSettings() {
        let vc = SettingsViewController()
        
        present(UINavigationController(rootViewController: vc), animated: true)
    }

}
