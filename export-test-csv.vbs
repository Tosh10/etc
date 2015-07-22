Dim userName
userName = "ユーザ名"
Dim userNameKana
userNameKana = "ユーザメイ"
Dim interestArr(4)
interestArr(0) = "カラオケ"
interestArr(1) = "マラソン"
interestArr(2) = "盆栽"
interestArr(3) = "ショッピング"

' CSV作成
Dim filename
filename = "import_test_10.csv"
Set objFileSys = CreateObject("Scripting.FileSystemObject")
Set textStream = objFileSys.CreateTextFile("./" & filename)

Set dic = CreateObject("Scripting.Dictionary")
' for i = 0 to 10000000 - 1	' 取りあえず1000万行
for i = 0 to 10 - 1	' 取りあえず1000万行
	dic.Add CStr(i), createRow(i)
	If (i + 1) Mod 10 = 0 Then
		' エクスポート
		textStream.Write(Join(dic.Items(), vbCrLf) & vbCrLf)
		dic.RemoveAll
	End If
next

MsgBox "エクスポート完了"

' CSV行を生成
Function createRow(i)
	Set dicRow = CreateObject("Scripting.Dictionary")
	Dim col
	col = 0

	dicRow.Add CStr(col), i
	col = col + 1
	dicRow.Add CStr(col), userName & i
	col = col + 1
	dicRow.Add CStr(col), userNameKana & i
	col = col + 1
	dicRow.Add CStr(col), "1989/6/7"
	col = col + 1
	dicRow.Add CStr(col), "福岡県福岡市"
	col = col + 1
	dicRow.Add CStr(col), i Mod 4
	col = col + 1
	dicRow.Add CStr(col), i Mod 2
	col = col + 1
	dicRow.Add CStr(col), i Mod 2
	col = col + 1
	dicRow.Add CStr(col), i Mod 2
	col = col + 1
	dicRow.Add CStr(col), i Mod 2
	col = col + 1
	dicRow.Add CStr(col), i Mod 2
	col = col + 1
	dicRow.Add CStr(col), interestArr(i Mod 4)
	col = col + 1

	createRow = Join(dicRow.Items(), ",")
End Function