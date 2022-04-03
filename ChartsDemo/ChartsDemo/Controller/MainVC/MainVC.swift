//
//  MainVC.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/3.
//

import UIKit

class MainVC: BaseViewController {
    
    @IBOutlet weak var chooseChartViewStyleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarStyle(backgroundColor: .systemPink, tintColor: .white, foregroundColor: .white)
        self.title = "MainVC"
    }
    
    @IBAction func chooseChartViewStyleBtn(_ sender: UIButton) {
        chooseChartViewStyleButton.showsMenuAsPrimaryAction = true
        chooseChartViewStyleButton.menu = setupButtonMenu()
    }
    
    func setupButtonMenu() -> UIMenu {
        let title = ["Line Chart", "Bar Chart", "Pie Chart"] // 折線圖、柱狀圖、圓餅圖
        let chartViewMenu = UIMenu(children: [
            UIAction(title: title[0], image: UIImage(systemName: "chart.xyaxis.line"), handler: { [self] action in
                print("Line Chart View")
                let nextVC = LineChartViewVC()
                pushViewController(nextVC)
            }),
            UIAction(title: title[1], image: UIImage(systemName: "chart.bar"), handler: { [self] action in
                print("Bar Chart View")
                let nextVC = BarChartViewVC()
                pushViewController(nextVC)
            }),
            UIAction(title: title[2], image: UIImage(systemName: "chart.pie"), handler: { [self] action in
                print("Pie Chart View")
                let nextVC = PieChartViewVC()
                pushViewController(nextVC)
            })
        ])
        return chartViewMenu
    }
}
