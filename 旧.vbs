'time��2022.6.7


dim fz
set fz = CreateObject("Scripting.FileSystemObject")
call fz.CopyFile("config.ini", "config.ini7") '�����������ļ������ֿ��Բ�ͬ
set fz = nothing


dim fso, f
set fso = CreateObject("Scripting.FileSystemObject")
set f = fso.OpenTextFile("config.ini", 2, false) '�ڶ������� 2 ��ʾ��д������� 8 ��ʾ׷��
'f.Write("д������")
'f.WriteLine("д�����ݲ�����")
'f.WriteBlankLines(3) 'д�������հ��У��൱�����ı��༭���а����λس���


msgbox "qqȺ:155374244"&chr(10)&"B��ѡ��:1!"&chr(10)&"�ٷ�ѡ��:2!"
dim a
a=0
do while a=0
a = inputbox ("b��ѡ��:1!"&chr(10)&"�ٷ�ѡ��:2!"&chr(10)&"�벻Ҫ��������������"&chr(10)&"������qqȺ:155374244"&chr(10)&"��׺Ϊ.ini7���Ǳ����ļ�."&chr(10)&"���������������������ɾ����׺�ϵġ�7�����ļ��ָ�����","����ԭ��������޸�1.0")
Loop
IF a=1 Then 
f.WriteLine("[General]")
f.WriteLine("channel=14")
f.WriteLine("cps=bilibili")
f.WriteLine("sub_channel=0")
f.WriteLine("game_version=4.1.0")
f.WriteLine("plugin_5_version=2.6.0")
f.WriteLine("plugin_sdk_version=3.5.0")
msgbox "�ɹ��޸�ΪB��"
ElseIf a=2 Then 
f.WriteLine("[General]")
f.WriteLine("channel=1")
f.WriteLine("cps=mihoyo")
f.WriteLine("sub_channel=1")
f.WriteLine("game_version=4.1.0")
f.WriteLine("plugin_5_version=2.6.0")
f.WriteLine("plugin_sdk_version=3.5.0")
msgbox "�ɹ��޸�Ϊ�ٷ�"
else msgbox "�Ҳ���⣡"
End If
msgbox "��лʹ�ã�"&chr(10)&"��ע��ÿ���汾�ظ���"&chr(10)&"https://yjrqz.lanzoui.com/b01oi27oh ����:8za8"
f.Close()
set f = nothing
set fso = nothing