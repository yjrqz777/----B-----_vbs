'==========================================================================
'
' VBScript Source File -- Created with SAPIEN Technologies PrimalScript 4.0
'
' NAME: File1.vbs
'
'
' COMMENT:�ж��Ƿ����һ���ļ���������ڣ���ɾ������������ڣ����� 
'
'==========================================================================

' If IsExitAFile("test.tst") Then
' DeleteAFile("test.tst")
' Else CreateAFile("test.tst")
' End If

dim a

dim PCGameSDK_Path

a="./YuanShen_Data/Plugins/test.tst"

PCGameSDK_Path="./YuanShen_Data/Plugins/PCGameSDK.dll"
Function IsExitAFile(filespec)
        Dim fso
        Set fso=CreateObject("Scripting.FileSystemObject")        
        If fso.fileExists(filespec) Then         
        IsExitAFile=True        
        Else IsExitAFile=False        
        End If
End Function 


IF IsExitAFile(a)=False Then 

msgbox "PCGameSDK.dll�ļ�ȱʧ"

End If

' If fso.folderExists("C:\\Program Files (x86)") Then         
'         msgbox "ok"
' Else 
'         msgbox "not ok"
' End If

' Sub CreateAFile(filespec)
'         Dim fso
'         Set fso=CreateObject("Scripting.FileSystemObject")
'         fso.CreateTextFile(filespec)
' End Sub

' Sub DeleteAFile(filespec)
'         Dim fso
'         Set fso= CreateObject("Scripting.FileSystemObject")
'         fso.DeleteFile(filespec)
' End Sub
