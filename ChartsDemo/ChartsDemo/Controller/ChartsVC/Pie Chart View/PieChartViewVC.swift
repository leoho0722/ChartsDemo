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
    
    var pieChartViewDataEntries1: [PieChartDataEntry] = [] // 圓餅圖資料陣列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarStyle(backgroundColor: .systemPink, tintColor: .white, foregroundColor: .white)
        self.title = "Pie Chart View"
        
        setupPieChartView()
    }
    
    // MARK: - Setting Pie Chart View
    
    func setupPieChartView() {
        pieChartViewDataInput()
        pieChartViewConfiguration()
    }
    
    // MARK: Pie Chart View Data Input
    
    func pieChartViewDataInput() {
        pieChartViewDataEntries1 = [
            PieChartDataEntry.init(value: 15, label: "Apple Watch", icon: nil),
            PieChartDataEntry.init(value: 20, label: "Apple TV", icon: nil),
            PieChartDataEntry.init(value: 20, label: "iPhone", icon: nil),
            PieChartDataEntry.init(value: 10, label: "iPad", icon: nil),
            PieChartDataEntry.init(value: 35, label: "Mac Pro", icon: nil)
        ]
    }
    
    // MARK: Pie Chart View Configuration
    
    func pieChartViewConfiguration() {
        // 第一組長條圖資料
        let chartDataSet1 = PieChartDataSet(entries: pieChartViewDataEntries1, label: "")
        chartDataSet1.colors = [.red, .green, .blue, .orange, .systemPink] // 設定圓餅圖的顏色
        chartDataSet1.valueFont = UIFont.systemFont(ofSize: 17.0) // 設定資料數值的字體大小
    
        let chartData = PieChartData(dataSets: [chartDataSet1])
        pieChartView.data = chartData // 將 chartData 指派給 pieChartView
        pieChartView.legend.form = .circle // 設定圖例樣式
        pieChartView.highlightPerTapEnabled = false // 關閉單點選中
    }
}
