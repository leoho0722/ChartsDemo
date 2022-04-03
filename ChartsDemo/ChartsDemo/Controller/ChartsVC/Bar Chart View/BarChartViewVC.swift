//
//  BarChartViewVC.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/3.
//

import UIKit
import Charts

class BarChartViewVC: BaseViewController {
    
    @IBOutlet weak var barChartView: BarChartView!
    
    var barChartViewDataEntries1: [BarChartDataEntry] = [] // 長條圖資料陣列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarStyle(backgroundColor: .systemPink, tintColor: .white, foregroundColor: .white)
        self.title = "Bar Chart View"
        
        setupBarChartView()
    }
    
    // MARK: - Setting Bar Chart View
    
    func setupBarChartView() {
        barChartViewDataInput()
        barChartViewConfiguration()
    }
    
    // MARK: Bar Chart View Data Input
    
    func barChartViewDataInput() {
        barChartViewDataEntries1 = [
            BarChartDataEntry.init(x: 0.0, y: 0.15 * 100),
            BarChartDataEntry.init(x: 1.0, y: 0.2 * 100),
            BarChartDataEntry.init(x: 2.0, y: 0.15 * 100),
            BarChartDataEntry.init(x: 3.0, y: 0.18 * 100),
            BarChartDataEntry.init(x: 4.0, y: 0.12 * 100),
            BarChartDataEntry.init(x: 5.0, y: 0.04 * 100),
            BarChartDataEntry.init(x: 6.0, y: 0.06 * 100)
        ]
    }
    
    // MARK: Bar Chart View Configuration
    
    func barChartViewConfiguration() {
        let formatter = NumberFormatter()
        formatter.positiveSuffix = "%"
        
        // 第一組長條圖資料
        let chartDataSet1 = BarChartDataSet(entries: barChartViewDataEntries1, label: "")
        chartDataSet1.colors = [.red, .green, .blue, .orange] // 設定長條圖的顏色
        chartDataSet1.valueFormatter = DefaultValueFormatter(formatter: formatter) // 客製化設定資料數值的格式
        chartDataSet1.valueFont = UIFont.systemFont(ofSize: 17.0) // 設定資料數值的字體大小
        
        let chartData = BarChartData(dataSets: [chartDataSet1])
        barChartView.data = chartData // 將 chartData 指派給 barChartView
        barChartView.drawBordersEnabled = false // 繪製 barChartView 邊框
        barChartView.legend.form = .none // 取消圖例
        barChartView.scaleXEnabled = false // 關閉 x 軸縮放
        barChartView.scaleYEnabled = false // 關閉 y 軸縮放
        barChartView.doubleTapToZoomEnabled = false // 關閉雙擊縮放
        barChartView.highlightPerTapEnabled = false // 關閉單點選中
        barChartView.highlightPerDragEnabled = false // 關閉拖曳選中
        barChartView.xAxis.drawGridLinesEnabled = false // 取消垂直網格線
        barChartView.xAxis.labelPosition = .bottom // 將 x 軸座標數值設在底部
        barChartView.xAxis.labelCount = barChartViewDataEntries1.count // 設定全部的 x 軸值的數量
        barChartView.xAxis.drawAxisLineEnabled = false // 不顯示 x 軸的線
        barChartView.xAxis.centerAxisLabelsEnabled = false // 讓 x 軸的值置中顯示
        barChartView.xAxis.enabled = false // 取消 x 軸座標
        barChartView.leftAxis.enabled = true // 顯示左側 y 軸座標
        barChartView.leftAxis.drawAxisLineEnabled = false // 不顯示左側 y 軸的線
        barChartView.leftAxis.drawGridLinesEnabled = true // 顯示水平網格線
        barChartView.rightAxis.enabled = false // 取消右側 y 軸座標
        barChartView.rightAxis.drawAxisLineEnabled = false // 不顯示右側 y 軸的線
    }
}
