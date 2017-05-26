// 型を宣言する時は名前の後に型を書く
// 基本的な型
//  Int
//  Float
//  Double
//  Bool
//  String
//  Array
//  Dictionary

// ==================================

// var は変数、let は定数
// var variable = 1
// let constant = "Swift"
var variable : Int = 1
let constant : String = "Swift"

// これは OK
variable = 0

// これは エラー
constant = "Objective-C"

// ==================================

// Array と Dictionary
// 型の表記は必須ではない
var array : [Int] = [1, 2, 3, 4, 5]
var dict : [String:String] = [
    "apple"  : "りんご",
    "orange" : "みかん"
]

var emptyArray : [Int] = []
var emptyDict : [String:String] = [:]

// 複数の既存の方を組み合わせる特殊な型ダブル
// 値を取り出す時は先頭から 0, 1, 2... とアクセスする 
let lang : (String, Int) = ("Swift", 0)

// Swift
lang.0

// 0
lang.1

// 名前をつけることも可能
let lang2 : (name:String, age:Int) = (name:"Swift", age:0)

// Swift
lang2.name

// 0
lang2.age

// ==================================

// 制御構文
// if 文は条件式の括弧はあってもなくても問題ない
let length = 6

if (length < 2) {
    println("短い")
} else if (length < 5){
    println("普通")
} else {
    println("長い")
}

// while 文も同様括弧があってもなくても良い
var n = 10
while (n > 0){
    println(n)
    n--
}

// for 文も括弧は(ry)
for(var i = 0; i < 10; i++){
    println(i)
}

// in による指定も可能
let fruits = ["りんご", "みかん", "ぶどう"]
for fruit in fruits {
    println(fruit)
}

// 要素だけでなくインデックスも同時に取り出したい場合はenumerate関数を使う
for(index, fruit) in enumerate(fruits){
    println("\(index):\(fruit)")
}

let dict = [
    "apple"  : "りんご",
    "orange" : "みかん"
]

// Dictionary 型も for 文に使うことが可能
for(key, value) in dict {
    println("英語:\(key), 日本語: \(value)")
}

// ==================================

// Optional
// 型の後ろの ? を付加することで Optional 型にできる
// Optional型には nil を指定することが可能
var n0 : Int? = 0
var n1 : Int = 0

// これは OK
n0 = nil

// これはエラー
n1 = nil

// ただしOptional 型と普通の型(例だと Int)は同じように扱えない

// コンパイルエラー
n0 + n1

// Optional型から元に戻すには ! を付加する
n0! + n1

// ! で戻す際に中身が nil の場合ランタイムエラーになるので、 if 文を使うと良い
if (let n = n0){
    n + 1
}

// ==================================
// 関数
func doubleValue(x : Int) -> Int {
    return 2 * x
}

doubleValue(4)

// 返り値がない場合
func say(message : String) {
    println(message)
}

say("Hello World")

// ダブルとパターンマッチを組み合わせる事で複数の値を返すことも出来る
func camphorInfo() -> (Int, String){
    return (4, "Camphor-")
}

let (age, name) = camphorInfo()

println(name)

// ...を使えば可変長引数も扱える
func sample(names: String...) -> String{
    let length = names.count
    return names[Int(arc4random())%length]
}

sample("a", "b", "c")

// 関数は値のように扱うことも出来る(クロージャ)
let doubleValue2 = { (x: Int) -> Int in
    return 2 * x
}

// 型を明記する場合
let doubleValue3 : Int -> Int = { (x : Int) -> Int in
    return 2 * x
}

// クロージャの中の式が一つだけの場合は return の省略が可能
let doubleValue4 : Int -> Int = { (x : Int) -> Int in
    2 * x
}

// クロージャの引数には第一引数から初めて $0, $1 ... と名前がついている
let doubleValue5 : Int -> Int = { 2 * $0 }

// 関数の引数として関数を渡したり、関数の返り値として関数を返すこともできる

func calc(arg : Int, f : Int -> Int) -> Int {
    return f(arg)
}

calc(4, doubleValue)

// 最後の引数にクロージャを渡す場合は括弧を省略する事が出来る
calc(3) {3 * $0}

