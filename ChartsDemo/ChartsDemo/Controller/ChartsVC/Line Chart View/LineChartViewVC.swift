//
//  LineChartViewVC.swift
//  ChartsDemo
//
//  Created by Leo Ho on 2022/4/3.
//

import UIKit
import Charts

class LineChartViewVC: BaseViewController {

    @IBOutlet weak var lineChartView: LineChartView!
    
    var lineChartViewDataEntries1: [ChartDataEntry] = [] // 折線圖資料陣列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarStyle(backgroundColor: .systemPink, tintColor: .white, foregroundColor: .white)
        self.title = "Line Chart View"
        
        setupLineChartView()
    }
    
    // MARK: - Setting Line Chart View
    
    func setupLineChartView() {
        lineChartViewDataInput()
        lineChartViewConfiguration()
    }
    
    // MARK: Line Chart View Data Input
    
    func lineChartViewDataInput() {
        lineChartViewDataEntries1 = [
            ChartDataEntry.init(x: 0.0, y: 0.0),
            ChartDataEntry.init(x: 1.0, y: 2.0),
            ChartDataEntry.init(x: 2.0, y: 4.0),
            ChartDataEntry.init(x: 3.0, y: 6.0),
            ChartDataEntry.init(x: 4.0, y: 8.0),
            ChartDataEntry.init(x: 5.0, y: 10.0),
            ChartDataEntry.init(x: 6.0, y: 3.0),
            ChartDataEntry.init(x: 7.0, y: 3.5),
            ChartDataEntry.init(x: 8.0, y: 4.0),
            ChartDataEntry.init(x: 9.0, y: 4.5)
        ]
    }
    
    // MARK: Line Chart View Configuration
    
    func lineChartViewConfiguration() {
        let chartDataSet1 = LineChartDataSet.init(entries: lineChartViewDataEntries1, label: "")
        chartDataSet1.colors = [.red, .green, .blue, .orange, .systemPink]
        chartDataSet1.lineWidth = 3 // 設定第一組資料的折線寬度
        chartDataSet1.drawCirclesEnabled = false // 第一組資料點的內、外圓都不顯示
        chartDataSet1.drawValuesEnabled = false // 第一組資料點的值在折線上都不顯示
        chartDataSet1.mode = .horizontalBezier // 將第一組資料點的折線模式設為水平貝茲曲線
        chartDataSet1.highlightEnabled = false // 關閉點擊後的十字線
        
        let chartData = LineChartData.init(dataSet: chartDataSet1)
        lineChartView.data = chartData
        lineChartView.drawBordersEnabled = false // 繪製 lineChartView 邊框
        lineChartView.legend.form = .none // 不顯示圖例
        lineChartView.scaleXEnabled = false // 關閉 x 軸縮放
        lineChartView.scaleYEnabled = false // 關閉 y 軸縮放
        lineChartView.doubleTapToZoomEnabled = false // 關閉雙擊縮放
        lineChartView.xAxis.drawGridLinesEnabled = false // 取消垂直網格線
        lineChartView.xAxis.labelPosition = .bottom // 將 x 軸座標數值設在底部
        lineChartView.xAxis.labelCount = lineChartViewDataEntries1.count // 設定全部的 x 軸值的數量
        lineChartView.xAxis.granularity = 1 // 設定 x 軸值的間隔
        lineChartView.leftAxis.drawAxisLineEnabled = false // 不顯示左側 y 軸的線
        lineChartView.rightAxis.enabled = false // 取消右側座標
        lineChartView.rightAxis.drawAxisLineEnabled = false // 不顯示右側 y 軸的線
    }
}
