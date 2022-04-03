//
//  MainVC.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/3.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var mainVCHeaderView: UIView!
    @IBOutlet weak var mainVCFooterView: UIView!
    @IBOutlet weak var chooseChartViewStyleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseChartViewStyleBtn(_ sender: UIButton) {
        chooseChartViewStyleButton.showsMenuAsPrimaryAction = true
        chooseChartViewStyleButton.menu = setupButtonMenu()
    }
    
    func setupButtonMenu() -> UIMenu {
        let title = ["Line Chart", "Bar Chart", "Pie Chart"] // 折線圖、柱狀圖、圓餅圖
        let chartViewMenu = UIMenu(children: [
            UIAction(title: title[0], image: nil, handler: { [self] action in
                print("Line Chart View")
                let nextVC = LineChartViewVC()
                navigationController?.pushViewController(nextVC, animated: true)
            }),
            UIAction(title: title[1], image: nil, handler: { [self] action in
                print("Bar Chart View")
                let nextVC = BarChartViewVC()
                navigationController?.pushViewController(nextVC, animated: true)
            }),
            UIAction(title: title[2], image: nil, handler: { [self] action in
                print("Pie Chart View")
                let nextVC = PieChartViewVC()
                navigationController?.pushViewController(nextVC, animated: true)
            })
        ])
        return chartViewMenu
    }
}
