'time��2023.10.04
'author��YJRQZ777
'QQȺ��155374244


dim PCGameSDK_Path

PCGameSDK_Path="./YuanShen_Data/Plugins/PCGameSDK.dll"

Function IsExitAFile(filespec)
        Dim fso
        Set fso=CreateObject("Scripting.FileSystemObject")        
        If fso.fileExists(filespec) Then         
        IsExitAFile=True        
        Else IsExitAFile=False        
        End If
End Function 

IF IsExitAFile(PCGameSDK_Path)=False Then 

y_n=msgbox("PCGameSDK.dll�ļ�ȱʧ"&chr(10)&"��ǰ���������������ļ�"&chr(10)&"https://yjrqz.lanzoui.com/b01oi27oh ����:8za8"&chr(10)&"�ƶ���ԭ���·��/YuanShen_Data/Plugins/",vbCritical + vbYesNo,"����")

' "PCGameSDK.dll�ļ�ȱʧ"&chr(10)&"��ǰ���������������ļ�"&chr(10)&"https://yjrqz.lanzoui.com/b01oi27oh ����:8za8"&chr(10)&"�ƶ���ԭ���·��/YuanShen_Data/Plugins/"
if y_n then

Set Sh = WScript.CreateObject("WScript.Shell")
Sh.Run "http://t.csdnimg.cn/GU1z3", 3

end if


ElseIf IsExitAFile(PCGameSDK_Path)=True Then

Set fso=CreateObject("Scripting.Filesystemobject")
Set dic=CreateObject("Scripting.Dictionary")

infile=".\config.ini"
outfile=".\config.ini7"

dim input_num
input_num=0
do while input_num=0
input_num = inputbox ("b��ѡ��:1!"&chr(10)&"�ٷ�ѡ��:2!"&chr(10)&"�벻Ҫ��������������"&chr(10)&"������qqȺ:155374244"&chr(10)&"��׺Ϊ.ini7���Ǳ����ļ�."&chr(10)&"���������������������ɾ����׺�ϵġ�7�����ļ��ָ�����","����ԭ��������޸�2.0")
Loop
IF input_num=1 Then 
dic.Add "2","channel=14"
dic.Add "3","cps=bilibili"
dic.Add "4","sub_channel=0"
msgbox "�ɹ��޸�ΪB��"
ElseIf input_num=2 Then 
dic.Add "2","channel=1"
dic.Add "3","cps=mihoyo"
dic.Add "4","sub_channel=1"
msgbox "�ɹ��޸�Ϊ�ٷ�"
else msgbox "�Ҳ���⣡"
End If





Set f1=fso.OpenTextFile(infile,1)
Set f2=fso.CreateTextFile(outfile,2)
n=0
Do While f1.AtEndOfStream<>true
    n=n+1
    line=f1.ReadLine
    If dic.Exists(CStr(n)) Then
        f2.WriteLine dic.Item(CStr(n))
    Else
        f2.WriteLine line
    End If
Loop
f1.Close
f2.Close

dim fz
set fz = CreateObject("Scripting.FileSystemObject")
call fz.CopyFile(outfile, infile) '�����������ļ������ֿ��Բ�ͬ
set fz = nothing
msgbox "��лʹ�ã�"&chr(10)&"��Ϊ�����棬����ÿ���汾���£��������뷴��"&chr(10)&"QQȺ��155374244"

'msgbox info

End If
