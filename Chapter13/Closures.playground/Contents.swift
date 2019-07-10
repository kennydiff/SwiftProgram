// Playground - noun: a place where people can play

import UIKit

let volunteerCounts = [1,3,40,99,123,32,2,53,77,13]

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j  写成闭包
//}
/*
let sortAscending = {(_ i: Int, _ j: Int) -> Bool in   //直接写成闭包模式
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: sortAscending)
print(volunteerCounts.sorted(by: sortAscending)) */

//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j })
//let volunteersSorted = volunteerCounts.sorted {$0 < $1}
//print(volunteersSorted)




/*
let count = [5, 10, -6, 75, 20]
var descending = count.sorted{ return $0 > $1 }
var ascending =  count.sorted{ n1, n2 in n1 < n2 }
print(descending)
print(ascending)

 



func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}
var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Town has \(stoplights) stop lights.")
*/
 

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool)
    -> ((Int, Int) -> Int)? {  //这里是返回值(返回函数) , 多么蛋疼的写法...
        if condition(budget) {  //这里执行了传入的参数,一个函数: func evaluate(budget: Int) -> Bool
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget_D: Int) -> Bool {
    return budget_D > 10_000
}

var stoplights = 4

/* if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000, condition: evaluate) {  //这里condition是个传递的参数 , 传递的实际函数是 func evaluate(budget: Int) -> Bool
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}  //好他妈恶心的写法，这种玩意的可读性真的可用吗？。。。 在github上这样写代码不恶心坏其他的贡献者吗？。。。 不戳理这种写法了...
print("Knowhere has \(stoplights) stoplights.")


if let newTownPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Town has \(stoplights) stop lights.")
*/

//var totalPopulation: Int = 0  //totalPopulation定义在函数内和函数外，，，麻痹一样，，，还可以被该函数内的闭包函数捕获 ，干脆叫全局变量好了...

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    //这个totalPopulation 在函数之间穿梭，，， 搞毛线，，， 好颠覆啊，，， 像个作用域非常广的全局变量一样...
    var totalPopulation = population
    //这里得这么理解，swift的函数内的可见域可以自动获取函数同级别的变量定义，如，var totalPopulation 放到函数外，同文件内，可视为同级，和在内的定义一样???
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

//这个下划线只是类似英文数字里的分割千位的逗号,但是不一定放在千位，放不放，放哪儿不影响数值...
var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
currentPopulation  //这个值没变的
growBy(500)
currentPopulation = growBy(500)

let anotherGrowBy = growBy  //引用指向同一个函数，变量也共用...
anotherGrowBy(500)

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)

currentPopulation
bigCityPopulation = bigCityGrowBy(10_000)


// ----------------------------------------------

let precinctPopulations = [1_244, 2_021, 2_157]
let projectedPopulations = precinctPopulations.map {  //map(_:)可以用来改变函数的内容
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

let bigProjections = projectedPopulations.filter {  //filter 过滤 ，根据闭包函数的实现，大雨4000的保留
    (projection: Int) -> Bool in  //projection 投射的意思...
    return projection > 4_000
}
bigProjections

let  aaa = (accumulatedProjection2: Int, precinctProjection2: Int) -> Int in
    return accumulatedProjection2 + precinctProjection2

// reduce 理解为： 简约，减少（从数组的多个值，简约为1个值)
let totalProjection = projectedPopulations.reduce(0) {  //这里0这个参数，以0为基础，再在额外的算法下进行简约计算。
     aaa
}
totalProjection

