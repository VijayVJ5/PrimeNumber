//
//  SecondViewController.swift
//  NumberPrimeCheck
//
//  Created by Macbook Pro on 29/02/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let givenNum : Int = 100
    var divNum : Int = 2
    var tempPrimeNumArr : [Int] = []
    var primeNumArr : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        primeCheckParticularNumber()
        
        for i in 1...givenNum {
            tempPrimeNumArr.append(i)
        }
        
        primeNumberBetween()
        print("primeNumArr--->\(primeNumArr)")
        
        //        zohoQuestion()
        bubbleSorting(valueArr: [5,2,4,1,3])
    }
    
    func primeNumberBetween() {
        
        for i in tempPrimeNumArr {
            
            if i % divNum != 0 || i == divNum {
                primeNumArr.append(i)
            }
        }
        
        if divNum == 9 {
            return
        }
        divNum = divNum + 1
        tempPrimeNumArr = primeNumArr
        primeNumArr = []
        primeNumberBetween()
    }
    
    
    func primeCheckParticularNumber() {
        
        var flag : Bool = false;
        let number : Int = 15;
        for i in 2...number/2 {
            if(number % i == 0){
                flag = true
                break;
            }
        }
        if flag == false {
            print("\(number ) is prime!");
        } else {
            print("\(number ) is not prime!");
        }
        
    }
    
    
    // ZOHOCORPORATION
    
    func zohoQuestion() {
        //           134578,13
        //                   0123456789
        //        let xStr : String = "ZOHOCORPORATION"
        //        let yStr : String = "ONR"
        
        let xStr : String = "PHONE"
        let yStr : String = "HEN"
        
        var outerIndexArr : [[Int]] = []
        var innerIndexArr : [Int] = []
        
        var xArr : [String] = xStr.map { (value) in
            String(value)
        }
        
        let yArr : [String] = yStr.map{String($0)}
        
        print("yArr.count--->\(yArr.count)")
        
        for yVal in yArr {
            
            
            for xVal in xArr {
                
                if yVal == xVal
                {
                    if let ind = xArr.index(of: xVal)
                    {
                        innerIndexArr.append(ind)
                        xArr[ind] = "*"
                    }
                }
            }
            outerIndexArr.append(innerIndexArr)
            innerIndexArr = []
        }
        
        print("outerIndexArr--->\(outerIndexArr)")
        
        arrayOfArrayFilter(valueArr: outerIndexArr)
    }
    
    
    func arrayOfArrayFilter(valueArr: [[Int]]) {
        
        for arr in valueArr {
            if arr.count > 1{
                
                
                
            }
        }
        
    }
    
    
    func bubbleSorting(valueArr: [Int]) {
        
        var tempArr1 = valueArr
        var iIndex : Int = 0
        var jIndex : Int = 0
        
        for i in tempArr1 {
            iIndex = iIndex + 1
            for j in tempArr1 {
                
                if jIndex == tempArr1.count - 1
                {
                    break
                }
                if tempArr1[jIndex] < tempArr1[jIndex+1]
                {
                    let temp = tempArr1[jIndex]
                    tempArr1[jIndex] = tempArr1[jIndex+1]
                    tempArr1[jIndex+1] = temp
                }
                
                jIndex = jIndex + 1
            }
            jIndex = 0
        }
        print("tempArr1--->\(tempArr1)")
    }
    
}
