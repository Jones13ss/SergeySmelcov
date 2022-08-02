//
//  main.swift
//  l1_Sergey_Smelcov
//
//  Created by Jones on 07.06.2022.
//

import Foundation

print("Hello, World!")

let a = 4.0
let b = 16.0
let c = 10.0
var x1 = 0.0
var x2 = 0.0
let one_root = ("Имеет один корень")
let two_root = ("Имеет два корня")

//Discriminant
var D = pow(b, 2) - 4 * a * c

//Если D меньше нуля то корней нет
 if (D<0)
 {
    print("корней нет")
 }
//Ечли D равна 0, есть один корень
 if (D==0)
 {
 x1 = ( -b+sqrt(D)) / (2*a)
     print(one_root)
     print(x1)
 }

//Если D больше нуля,то есть два различных корня
 if (D>0)
 {
 x1 = (-b+sqrt(D)) / (2*a)
 x2 = (-b-sqrt(D)) / (2*a)
     print(two_root)
     print(x1)
     print(x2)
 }

print("__________")
//2. Данные катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

var v:Double = 3
var n:Double = 7
var m:Double = 5
var p:Double

p = v + n + m
m = sqrt(pow(v, 2) + pow(n, 2))

print("периметр треугольника равен \(p)")
print("гипотенуща треугольника равна \(m)")



print(("__________"))

//3. Пользователь вводит сумма вклада в банк

let money:Double = 1000
let years:Double = 5
let persent_years:Double = 10
let division:Double = 100
let result_persrnt = money * pow((1 + persent_years/division), years)
let summa_years = result_persrnt * years
print(result_persrnt)


