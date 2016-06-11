// クラス定義
class Class {
	// TODO: 外部から隠蔽する
	private var name : String /*{
		get {
			return self.name
		}
	}*/

	/** コンストラクタ */
	init(name : String) {
		self.name = name
	}

	/** サンプル */
	func say() -> Void {
		print("Hello, \(self.name)!")
	}
}

// インスタンス生成、実行
var obj : Class = Class(name : "toshio")
obj.say()
// private にしても同じソース内であればアクセス可能
obj.name = "imai"
print(obj.name)
