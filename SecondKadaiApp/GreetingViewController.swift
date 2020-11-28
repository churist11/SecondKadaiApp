//
//  GreetingViewController.swift
//  SecondKadaiApp
//
//  Created by 櫻井将太郎 on 2020/11/28.
//  Copyright © 2020 shoutarou.sakurai. All rights reserved.
//

import UIKit

final class GreetingViewController: UIViewController {

	// MARK: - IBOutlet

	@IBOutlet weak var nameLabel: UILabel!

	// MARK: - Stored Property

	internal var name: String?

	// MARK: - LifeCycle Method
	
    override func viewDidLoad() {
        super.viewDidLoad()

			// Set text to 'name' from former VC
			self.nameLabel.text = "こんにちは、\(self.name ?? "NIL")さん"
    }

	
}//End
