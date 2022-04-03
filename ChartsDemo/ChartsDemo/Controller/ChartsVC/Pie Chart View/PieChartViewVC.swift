//
//  PieChartViewVC.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/3.
//

import UIKit
import Charts

class PieChartViewVC: BaseViewController {

    @IBOutlet weak var pieChartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Here is Pie Chart View")
        setupNavigationBarStyle(backgroundColor: .systemPink, tintColor: .white, foregroundColor: .white)
        self.title = "Pie Chart View"
    }
    

}
