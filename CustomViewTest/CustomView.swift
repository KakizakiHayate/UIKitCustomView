//
//  CustomView.swift
//  CustomViewTest
//
//  Created by 柿崎 on 2024/07/03.
//

import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibInit()
    }

    private func nibInit() {
        let nib = UINib(nibName: "CustomView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        self.addSubview(view)
    }
}
