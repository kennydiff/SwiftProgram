//: Playground - noun: a place where people can play

import Cocoa

//var groceryBag = Set<String>()
var groceryBag:Set = ["Apples", "Oranges","Oranges", "Pineapple"]

groceryBag.insert("红椒炒猪大肠")
groceryBag.insert("红椒炒猪大肠")



let hasBananas = groceryBag.contains("红椒炒猪大肠")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges","红椒炒猪大肠"])
groceryBag.formIntersection(friendsGroceryBag)

//for food in groceryBag {
//    print(food)
//}

//let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//groceryBag.

print(groceryBag)

let roomatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
//let itemsToReturn = commonGroceryBag.intersection(roomatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)
let jointed = yourSecondBag.intersection(roommatesSecondBag).isEmpty

print(jointed)
