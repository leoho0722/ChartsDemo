//
//  CustomFooterView.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/4.
//

import UIKit

class CustomFooterView: UIView {
    
    @IBOutlet weak var footerView: UIView!
    
    override func awakeFromNib() {
        addXibView()
    }
    
    // view 在設計時想要看到畫面要用這個
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        addXibView()
    }
    
    func setBackgroundColor(bgColor: UIColor) {
        footerView.backgroundColor = bgColor
    }
    
}

fileprivate extension CustomFooterView {
    // 加入畫面
    func addXibView() {
        if let loadView = Bundle(for: CustomFooterView.self).loadNibNamed("CustomFooterView", owner: self, options: nil)?.first as? UIView{
            addSubview(loadView)
            loadView.frame = bounds
        }
    }
}
