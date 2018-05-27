//
//  ADModalStatusView.swift
//  ADModalDialog
//
//  Created by Pritam Hinger on 27/05/18.
//  Copyright © 2018 AppDevelapp. All rights reserved.
//

import UIKit

public class ADModalStatusView: UIView {
    
    // MARK: - Private Variables
    let nibName = "ADModalStatusView"
    var contentView: UIView!
    
    // MARK: - IBOutlets
    @IBOutlet private weak var statusImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subHeadingLabel: UILabel!
    
    // MARK: - Initializer
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    // MARK: - Private Methods
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(self.contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        titleLabel.text = ""
        subHeadingLabel.text = ""
    }
}
