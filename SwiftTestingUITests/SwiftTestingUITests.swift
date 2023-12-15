//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Vedat Dokuzkardeş on 12.12.2023.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {
    
    
    
   
    func testToDoItem() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            
                
                let app = XCUIApplication()
                app.launch()
                

                let addBtn = app.navigationBars["SwiftTesting.View"].buttons["Add"]
                let elementQuery = app.alerts["Add Item"].scrollViews.otherElements
                let textField = elementQuery.collectionViews.textFields["Enter Item"]
                let okBtn = elementQuery.buttons["OK"]
                let addCell = app.tables.cells.containing(.staticText, identifier: "iOS").element
                
                addBtn.tap()
                textField.tap()
                textField.typeText("iOS")
                okBtn.tap()
                
                XCTAssertTrue(addCell.exists)
                
            }
        }
    
    func testDeleteItem(){
        
        let app = XCUIApplication()
        app.launch()
        
        let addBtn = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        let elementQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementQuery.collectionViews.textFields["Enter Item"]
        let okBtn = elementQuery.buttons["OK"]
        let addCell = app.tables.cells.containing(.staticText, identifier: "iOS").element
        
        let tablesQuery = app.tables
        let delBtn = tablesQuery.buttons["Delete"]
        
        addBtn.tap()
        textField.tap()
        textField.typeText("iOS")
        okBtn.tap()
        
        addCell.swipeLeft()
        delBtn.tap()
        
        XCTAssertFalse(addCell.exists)
        
        
    }
    
}

