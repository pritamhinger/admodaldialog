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
    var timer: Timer?
    
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
    
    // MARK: - Overridden Methods
    public override func didMoveToSuperview() {
        self.timer = Timer.scheduledTimer(timeInterval: TimeInterval(3.0), target: self, selector: #selector(removeSelf), userInfo: nil, repeats: false)
    }
    
    public override func layoutSubviews() {
        self.layoutIfNeeded()
        self.contentView.layer.masksToBounds = true
        self.contentView.clipsToBounds = true
        self.contentView.layer.cornerRadius = 10.0
    }
    
    // MARK: - Public Methods
    public func set(image: UIImage){
        self.statusImageView.image = image
    }
    
    public func set(title text: String) {
        self.titleLabel.text = text
    }
    
    public func set(subHeading text: String) {
        self.subHeadingLabel.text = text
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
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(removeSelf))
        addGestureRecognizer(tapGesture)
    }
    
    @objc private func removeSelf() {
        self.removeFromSuperview()
    }
}
