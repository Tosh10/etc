Dim userName
userName = "���[�U��"
Dim userNameKana
userNameKana = "���[�U���C"
Dim interestArr(4)
interestArr(0) = "�J���I�P"
interestArr(1) = "�}���\��"
interestArr(2) = "�~��"
interestArr(3) = "�V���b�s���O"

' CSV�쐬
Dim filename
filename = "import_test_10.csv"
Set objFileSys = CreateObject("Scripting.FileSystemObject")
Set textStream = objFileSys.CreateTextFile("./" & filename)

Set dic = CreateObject("Scripting.Dictionary")
' for i = 0 to 10000000 - 1	' ��肠����1000���s
for i = 0 to 10 - 1	' ��肠����1000���s
	dic.Add CStr(i), createRow(i)
	If (i + 1) Mod 10 = 0 Then
		' �G�N�X�|�[�g
		textStream.Write(Join(dic.Items(), vbCrLf) & vbCrLf)
		dic.RemoveAll
	End If
next

MsgBox "�G�N�X�|�[�g����"

' CSV�s�𐶐�
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
	dicRow.Add CStr(col), "�����������s"
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