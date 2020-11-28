//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 櫻井将太郎 on 2020/11/28.
//  Copyright © 2020 shoutarou.sakurai. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

	// MARK: - IBOutlet

	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var enterBUtton: UIButton!

	// MARK: - LifeCycle

	override func viewDidLoad() {
		super.viewDidLoad()

		// Set self to delegate
		self.nameField.delegate = self

		self.enterBUtton.isEnabled = false
	}

	// MARK: - Navigation
	@IBAction func unwind(_ segue: UIStoryboardSegue) {
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		// Confirm segue ID
		guard segue.identifier == "segue" else {
			return
		}

		// Retrieve GreetingVC instance for destination
		let destination = segue.destination as! GreetingViewController

		// Assign value to destination's property
		destination.name = self.nameField.text
//		destination.name = nil
	}



} // End

extension ViewController: UITextFieldDelegate {

	func textFieldDidEndEditing(_ textField: UITextField) {

		// Check text field has text,
		// Determine Button state
		self.enterBUtton.isEnabled = textField.hasText ? true : false
	}

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {

		// End editing
		textField.endEditing(true)

		// Activate this action
		return true
	}

}

