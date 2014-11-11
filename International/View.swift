//
//  View.swift
//  International
//
//  Created by Elena Da Re on 11/9/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class View: UIView {

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		//no need to specify the white color, it is the default
		backgroundColor = UIColor.whiteColor();
	}
	
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	
	override func drawRect(rect: CGRect) {
		// Drawing code
		let s: String = NSLocalizedString("Greeting", comment: "displayed when app is launched");
		let font: UIFont = UIFont.systemFontOfSize(32);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font]; //a dictionary
		let point: CGPoint = UIScreen.mainScreen().applicationFrame.origin;
		s.drawAtPoint(point, withAttributes: attributes);
	}

}
