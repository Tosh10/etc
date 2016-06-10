// 文字列の中に変数を挿入
var name = "toshio"
print("hello swift, \(name)!")

// 定数宣言
let hello = "hello swift, \(name)!"
print(hello)
// hello = "hello java, \(name)!"

// 文字列を結合してみる
name += ".i"
print("hello swift, \(name)!")

// 変数宣言はまとめて実行できる
var (a, b, c) = (1, 4, 9)
print("a=\(a), b=\(b), c=\(c)")

// キャスト
var int = 123
var double = 12.3
var str = "456"
print(String(int) + str)
// print(int + str.toInt()!)    // 「!」を外すとOptional型として処理される(Ubuntu だとエラーになる...)
print(int + Int(double))

// if文(カッコは外しても良い)
// 文字列も「==」で比較できる
if ("toshio.i" == name) {
    print("if")
} else if (a == 1) {
    print("else if")
} else {
    print("else")
}

//switch文
a = 4
switch a {
case 1:
    print("case1")
case 2..<4:    // range構文
    print("case2-3")
default:
    print("case default")
}

// for文
for i in 0..<10 { print(i) }
for var i = 10; i < 20; i++ { print(i) }

// 関数定義
func hello (nm:String) -> Void { print("hello func, \(nm)!") }
hello(name)
