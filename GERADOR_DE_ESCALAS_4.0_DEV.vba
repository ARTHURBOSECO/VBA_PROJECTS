Attribute VB_Name = "M�dulo1"
Sub MONTAR_TABELAS()

    Dim ESCALAS As Worksheet
    Dim CAB_CAL As Worksheet
    Dim EQUIPE As Worksheet
    Dim CABE�ALHO_1 As Range
    Dim CABE�ALHO_2 As Range
    Dim CABE�ALHO_FOL As Range
    Dim CABE�ALHO_FER As Range
    Dim EQUIPE_COP As Range
    Dim rng1 As Range
    Dim rng2 As Range
    Dim rng3 As Range
    Dim ultimaLinha1 As Long
    Dim ultimaLinha2 As Long
    
    Set ESCALAS = ThisWorkbook.Sheets("ESCALAS")
    Set CAB_CAL = ThisWorkbook.Sheets("CAB_CAL")
    Set EQUIPE = ThisWorkbook.Sheets("EQUIPE")
    Set CABE�ALHO_1 = CAB_CAL.Range("B3:R4")
    Set CABE�ALHO_2 = CAB_CAL.Range("B7:R8")
    Set CABE�ALHO_FOL = CAB_CAL.Range("B11:J12")
    Set CABE�ALHO_FER = CAB_CAL.Range("B15:D16")
      
    ESCALAS.Range("E:U").ClearContents
    ESCALAS.Range("E:U").ClearFormats
    
    'TABELA 1
    
    CABE�ALHO_1.Copy
    ESCALAS.Range("E2:U3").PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
       
    ultimaLinha1 = EQUIPE.Cells(EQUIPE.Rows.Count, "A").End(xlUp).Row
    
    Set EQUIPE_COP = EQUIPE.Range("A1:A" & ultimaLinha1)
    
    ultimaLinha2 = ESCALAS.Cells(ESCALAS.Rows.Count, "E").End(xlUp).Row + 2
       
    EQUIPE_COP.Copy
    ESCALAS.Range("E" & ultimaLinha2 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    CABE�ALHO_1.Copy
    ESCALAS.Range("E2:U3").PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    ESCALAS.Range("B2").Copy
    ESCALAS.Range("E" & ultimaLinha2 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    ESCALAS.Range("B3").Copy
    ESCALAS.Range("F4" & ":" & "U" & ultimaLinha1 + 1 + ultimaLinha2 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    Set rng1 = ESCALAS.Range("E" & ultimaLinha2 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2)
    
    rng1.HorizontalAlignment = xlLeft
    
    'TABELA 2
    
    Dim VAC As Integer
    Dim CHE As Integer
    
    CABE�ALHO_2.Copy
    ESCALAS.Range("E" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":" & "U" & ultimaLinha1 + 1 + ultimaLinha2 + 2).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
               
    EQUIPE_COP.Copy
    ESCALAS.Range("E" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2 + 3).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    CABE�ALHO_2.Copy
    ESCALAS.Range("E" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":" & "U" & ultimaLinha1 + 1 + ultimaLinha2 + 2).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
       
    ESCALAS.Range("B2").Copy
    ESCALAS.Range("E" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2 + ultimaLinha1 + 1 + 3 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    ESCALAS.Range("B3").Copy
    ESCALAS.Range("F" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "U" & ultimaLinha1 + 1 + ultimaLinha2 + ultimaLinha1 + 1 + 3 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    VAC = Application.WorksheetFunction.CountBlank(Range("F" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":U" & ultimaLinha1 + 1 + ultimaLinha2 + 1))
    CHE = Application.WorksheetFunction.CountA(Range("F" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":U" & ultimaLinha1 + 1 + ultimaLinha2 + 1))
         
    ESCALAS.Range(Cells(ultimaLinha1 + 1 + ultimaLinha2 + 1, CHE + 6), Cells(ultimaLinha1 + 1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1, CHE + 6 - VAC)).ClearFormats
        
    Set rng2 = ESCALAS.Range("E" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "E" & ultimaLinha1 + 1 + ultimaLinha2 + ultimaLinha1 + 1 + 3 - 1)

    rng2.HorizontalAlignment = xlLeft
                 
    'TABELA FOLGA
            
    ESCALAS.Range("W2:AE3").ClearContents
    ESCALAS.Range("W2:AE3").ClearFormats
            
    CABE�ALHO_FOL.Copy
    ESCALAS.Range("W2:AE3").PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    CABE�ALHO_FOL.Copy
    ESCALAS.Range("W2:AE3").PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
          
    ESCALAS.Range("W" & ultimaLinha2 & ":" & "AE" & ultimaLinha1 + ultimaLinha2).ClearContents
    ESCALAS.Range("W" & ultimaLinha2 & ":" & "AE" & ultimaLinha1 + ultimaLinha2).ClearFormats
          
    EQUIPE_COP.Copy
    ESCALAS.Range("W" & ultimaLinha2 & ":" & "W" & ultimaLinha1 + ultimaLinha2).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    ESCALAS.Range("B18").Copy
    ESCALAS.Range("W" & ultimaLinha2 & ":" & "AE" & ultimaLinha1 + ultimaLinha2 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False

    ESCALAS.Range("B2").Copy
    ESCALAS.Range("W" & ultimaLinha2 & ":" & "W" & ultimaLinha1 + ultimaLinha2 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
        
    Set rng3 = ESCALAS.Range("W" & ultimaLinha2 & ":" & "W" & ultimaLinha1 + ultimaLinha2 - 1)
    
    rng3.HorizontalAlignment = xlLeft
    
    ThisWorkbook.Sheets("FOLGAS").Range("B" & ultimaLinha2 - 1 & ":" & "I" & ultimaLinha1 + ultimaLinha2 - 1).Copy
    ESCALAS.Range("X" & ultimaLinha2 & ":" & "AE" & ultimaLinha1 + ultimaLinha2 - 1).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    'TABELA FERIAS
    
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 & ":" & "AE" & ultimaLinha1 + 1 + ultimaLinha2 + 2).ClearContents
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 & ":" & "AE" & ultimaLinha1 + 1 + ultimaLinha2 + 2).ClearFormats
    
    CABE�ALHO_FER.Copy
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":" & "Y" & ultimaLinha1 + 1 + ultimaLinha2 + 2).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    CABE�ALHO_FER.Copy
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 1 & ":" & "Y" & ultimaLinha1 + 1 + ultimaLinha2 + 2).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "AE1048576").ClearContents
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "AE1048576").ClearFormats
    
    EQUIPE_COP.Copy
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "W" & ultimaLinha1 + 1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    ESCALAS.Range("B2").Copy
    ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "Y" & ultimaLinha1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
        
    ESCALAS.Range("B18").Copy
    ESCALAS.Range("X" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "Y" & ultimaLinha1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1).PasteSpecial Paste:=xlPasteFormats
    Application.CutCopyMode = False
    
    Set rng3 = ESCALAS.Range("W" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "W" & ultimaLinha1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1)
    
    rng3.HorizontalAlignment = xlLeft
    
    ThisWorkbook.Sheets("FERIAS").Range("B" & ultimaLinha2 - 1 & ":" & "C" & ultimaLinha1 + 1 + ultimaLinha2 - 1).Copy
    ESCALAS.Range("X" & ultimaLinha1 + 1 + ultimaLinha2 + 3 & ":" & "Y" & ultimaLinha1 + 1 + ultimaLinha1 + 1 + ultimaLinha2 + 3 - 1).PasteSpecial Paste:=xlPasteValues
    Application.CutCopyMode = False
    
    'IR PARA A1
    
    ESCALAS.Range("A1").Select

End Sub
Sub APAGAR()
    
    Dim ESCALAS As Worksheet
    
    Set ESCALAS = ThisWorkbook.Sheets("ESCALAS")
    
    ESCALAS.Range("E:AE").ClearContents
    ESCALAS.Range("E:AE").ClearFormats

End Sub
Sub SALVAR_ESCALA()

    On Error GoTo Erro
    
    Dim LocalNome As String, Area As String
    Dim Plan As Worksheet
    Dim TL As Double
    
    LocalNome = Planilha12.Range("B12").Value & "/" & Planilha12.Range("B6").Value & Planilha12.Range("B9").Value 'Alterar
    Set Plan = Planilha12 'Alterar
    Area = "E2:U" & Planilha12.Cells(Planilha12.Rows.Count, "E").End(xlUp).Row 'Alterar
    TL = WorksheetFunction.CountA(Plan.Range("E:E")) + 1 'Alterar
    
    Area = Area
    
    With Plan.PageSetup
        .Orientation = xlLandscape ' Para salvar como retrato altere xlLandscape para xlPortrait
        .PrintArea = Area
        .Zoom = False
        .FitToPagesTall = False
        .FitToPagesWide = 1
    End With
    
    Plan.Range(Area).ExportAsFixedFormat Type:=xlTypePDF, _
    Filename:=LocalNome, Quality:=xlQualityStandard, _
    IncludeDocProperties:=True, IgnorePrintAreas _
    :=True, OpenAfterPublish:=True
    
    Set Plan = Nothing
    
    Exit Sub
Erro:
    MsgBox "Erro!", vbCritical, "PDF"

End Sub
Function VAC_and_FOL_D1(rng As Range) As Long
Dim celula As Range
Dim contador As Long

For Each celula In rng
    If IsEmpty(celula.Offset(0, -1)) And celula.Value = "FOLGA" Then
        contador = contador + 1
    End If
Next celula

VAC_and_FOL_D1 = contador
End Function
Function VAC_and_FOL_Dm1(rng As Range) As Long
Dim celula As Range
Dim contador As Long

For Each celula In rng
    If celula.Offset(0, -1) = "FOLGA" And _
    IsEmpty(celula.Value) Then
        contador = contador + 1
    End If
Next celula

VAC_and_FOL_Dm1 = contador
End Function
Function VAC_and_FER_D1(rng As Range) As Long
Dim celula As Range
Dim contador As Long

For Each celula In rng
    If IsEmpty(celula.Offset(0, -1)) And celula.Value = "F�RIAS" Then
        contador = contador + 1
    End If
Next celula

VAC_and_FER_D1 = contador
End Function
Function VAC_and_FER_Dm1(rng As Range) As Long
Dim celula As Range
Dim contador As Long

For Each celula In rng
    If celula.Offset(0, -1) = "F�RIAS" And _
    IsEmpty(celula.Value) Then
        contador = contador + 1
    End If
Next celula

VAC_and_FER_Dm1 = contador
End Function
Sub MONTAR_ESCALA()

    'LOOP FOLGAS
    
    Dim ESCALAS As Worksheet
    Dim linha_I_1 As Integer
    Dim linha_F_1 As Integer
    Dim linha_I_2 As Integer
    Dim linha_F_2 As Integer
    Dim Cab_Lin As Integer
    Dim Const1 As Integer
    Dim VAC As Integer
    Dim EQUIPE As Worksheet
    Dim EQUIPE_COP As Range
    Dim ultimaLinha As Long
    Dim primeiraLinha As Long
    Dim FORMATS As Worksheet
    
    Set FORMATS = ThisWorkbook.Sheets("FORMATS")

    Set ESCALAS = ThisWorkbook.Sheets("ESCALAS")
    Set EQUIPE = ThisWorkbook.Sheets("EQUIPE")
    
    ultimaLinha = EQUIPE.Cells(EQUIPE.Rows.Count, "A").End(xlUp).Row
    
    Set EQUIPE_COP = EQUIPE.Range("A1:A" & ultimaLinha)
                
    linha_I_1 = 4
    linha_F_1 = linha_I_1 + ultimaLinha
    
    For linha_1 = linha_I_1 To linha_F_1
        For coluna = 6 To 21
            If Cells(3, coluna).Value = ESCALAS.Range("X" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("Y" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("Z" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("AA" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("AB" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("AC" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("AD" & linha_1).Value Or _
            Cells(3, coluna).Value = ESCALAS.Range("AE" & linha_1).Value Then
                Cells(linha_1, coluna).Value = "FOLGA"
            End If
        Next coluna
    Next linha_1

    linha_I_2 = linha_I_1 + ultimaLinha + 1 + 3
    linha_F_2 = linha_I_2 + ultimaLinha
    Cab_Lin = linha_I_2 - 1
    Const1 = 3
    VAC = Application.WorksheetFunction.CountBlank(Range("F" & Cab_Lin & ":U" & Cab_Lin))
    
    For linha_2 = linha_I_2 To linha_F_2
        For coluna = 6 To 21 - VAC
            If Cells(Cab_Lin, coluna).Value = ESCALAS.Range("X" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("Y" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("Z" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("AA" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("AB" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("AC" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("AD" & linha_2 - ultimaLinha - 1 - Const1).Value Or _
            Cells(Cab_Lin, coluna).Value = ESCALAS.Range("AE" & linha_2 - ultimaLinha - 1 - Const1).Value Then
                Cells(linha_2, coluna).Value = "FOLGA"
            End If
        Next coluna
    Next linha_2
                
    'LOOP FERIAS
    
    For linha_1 = linha_I_1 To linha_F_1
        For coluna = 6 To 21
            If Cells(3, coluna).Value >= ESCALAS.Range("X" & linha_1 + ultimaLinha + 1 + Const1).Value And _
            Cells(3, coluna).Value <= ESCALAS.Range("Y" & linha_1 + ultimaLinha + 1 + Const1).Value Then
                Cells(linha_1, coluna).Value = "F�RIAS"
            End If
        Next coluna
    Next linha_1

    For linha_2 = linha_I_2 To linha_F_2
        For coluna = 6 To 21 - VAC
            If Cells(Cab_Lin, coluna).Value >= ESCALAS.Range("X" & linha_2).Value And _
            Cells(Cab_Lin, coluna).Value <= ESCALAS.Range("Y" & linha_2).Value Then
                Cells(linha_2, coluna).Value = "F�RIAS"
            End If
        Next coluna
    Next linha_2
        
    'IR PARA A1
    
    ESCALAS.Range("A1").Select
        
    'LOOP ESCALA
       
    Dim BOXES As Worksheet
    Dim ultimalinha_BOXES As Long
    Dim BOX As Range
    
    Set EQUIPE = ThisWorkbook.Sheets("EQUIPE")
       
    Set BOXES = ThisWorkbook.Sheets("BOXES")
    
    ultimalinha_BOXES = BOXES.Cells(EQUIPE.Rows.Count, "A").End(xlUp).Row
    
    Set BOX = BOXES.Range("A2:" & "B" & ultimalinha_BOXES)
    
    '# CRIA��O DO ARRAY DOS BOXES #'
    
    Dim arr() As String ' Array din�mico para armazenar os valores concatenados

    ' Redimensiona o array dinamicamente com base na �ltima linha
    ReDim arr(1 To ultimalinha_BOXES)

    ' Itera pelas linhas e concatena os valores de A e B
    For i = 1 To ultimalinha_BOXES
        arr(i) = BOX.Cells(i, "A").Value & "/" & BOX.Cells(i, "B").Value
    Next i

    ' Exibe os valores concatenados na Janela Imediata
    For i = LBound(arr) To UBound(arr)
        Debug.Print arr(i)
    Next i
    
    ReDim arr(1 To ultimalinha_BOXES - 1)
    
    For i = 1 To UBound(arr)
        arr(i) = BOX.Cells(i, 1).Value & "/" & BOX.Cells(i, 2).Value
    Next i
    
    arrayIndex = LBound(arr) ' Come�a do primeiro elemento do array
    
    '# C�PIA DO ARRAY DOS BOXES #'
    
    Dim arrC() As String ' Array din�mico para armazenar os valores concatenados

    ' Redimensiona o array dinamicamente com base na �ltima linha
    ReDim arrC(1 To ultimalinha_BOXES)

    ' Itera pelas linhas e concatena os valores de A e B
    For i = 1 To ultimalinha_BOXES
        arrC(i) = BOX.Cells(i, "A").Value & "/" & BOX.Cells(i, "B").Value
    Next i

    ' Exibe os valores concatenados na Janela Imediata
    For i = LBound(arrC) To UBound(arrC)
        Debug.Print arrC(i)
    Next i
    
    ReDim arrC(1 To ultimalinha_BOXES - 1)
    
    For i = 1 To UBound(arr)
        arrC(i) = BOX.Cells(i, 1).Value & "/" & BOX.Cells(i, 2).Value
    Next i
    
    arrayIndexC = LBound(arrC) ' Come�a do primeiro elemento do array
        
    Dim temp As String
    Dim tempC As String
    Dim Col_I_1 As Integer
    Dim Col_F_1 As Integer
    Dim FOL_D1 As Long
    Dim FER_D1 As Long
    Dim FOL_D0 As Long
    Dim FER_D0 As Long
    Dim APO_D0 As Long
    Dim SUM_INE As Long
    Dim CONT_FOL As Long
    Dim CONT_FER As Long
    Dim KH As Long
    Dim KI As Long
    Dim KG As Long
    Dim KE As Long
    Dim primeira_vazia As Boolean
    
    primeira_vazia = True
    
    Col_I = 6
    Col_F_1 = 21 - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1 - 1, Col_I), Cells(linha_I_1 - 1, 21)), "")
    Col_F_2 = 21 - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2 - 1, Col_I), Cells(linha_I_2 - 1, 21)), "")
    
    '# TABELA 1 #'
    
    Dim rngT As Range
    Dim rng1 As Range
    Dim rng2 As Range
    Dim Cel As Range
    Dim linhasVaziasT() As Long
    Dim linhasVazias1() As Long
    Dim linhasVazias2() As Long
    Dim contadorT As Long
    Dim contador1 As Long
    Dim contador2 As Long
        
    For Col = Col_I To Col_F_1
        If Col Mod 2 = 0 Then
            Set rng1 = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            Set rng2 = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            Set rngT = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            contador1 = 0
            contador2 = 0
            contadorT = 0
                For Each Cel In rngT
                    If IsEmpty(Cel.Value) Then
                        contadorT = contadorT + 1
                        ReDim Preserve linhasVaziasT(1 To contadorT)
                        linhasVaziasT(contadorT) = Cel.Row
                    End If
                Next Cel
                For Each Cel In rng1
                    If IsEmpty(Cel.Value) Then
                        If ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "FOLGA" Or _
                        ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "F�RIAS" Then
                            contador1 = contador1 + 1
                            ReDim Preserve linhasVazias1(1 To contador1)
                            linhasVazias1(contador1) = Cel.Row
                        End If
                    End If
                Next Cel
            KI = UBound(linhasVazias1)
                If KI > 0 Then
                            Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "APOIO") = KI Then
                                        Exit Do
                                    End If
                                    KG = Int(Rnd * UBound(linhasVazias1)) + 1
                                    KE = linhasVazias1(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "APOIO"
                                        End If
                            Loop
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES Then
                                Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES
                                        KG = Int(Rnd * UBound(linhasVaziasT)) + 1
                                        KE = linhasVaziasT(KG)
                                            If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                                ESCALAS.Cells(KE, Col).Value = "APOIO"
                                            End If
                                Loop
                            End If
                            For Each Cel In rng2
                                If IsEmpty(Cel.Value) Then
                                    If ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "FOLGA" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "F�RIAS" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "APOIO" Then
                                        contador2 = contador2 + 1
                                        ReDim Preserve linhasVazias2(1 To contador2)
                                        linhasVazias2(contador2) = Cel.Row
                                    End If
                                End If
                            Next Cel
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) = ultimalinha_BOXES Then
                                KG = Int(Rnd * UBound(linhasVazias2)) + 1
                                KE = linhasVazias2(KG)
                                    If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                        ESCALAS.Cells(KE, Col).Value = "POSTO"
                                    End If
                             End If
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > 0 Then
                                For Lin = linha_I_1 To linha_F_1 - 1
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "POSTO") = 1 Or _
                                    WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) = ultimalinha_BOXES - 1 Then
                                        Exit For
                                    End If
                                    If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                        ESCALAS.Cells(Lin, Col).Value = "POSTO"
                                    End If
                                Next Lin
                            End If
                End If
                    For Lin = linha_I_1 To linha_F_1 - 1
                        If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                            If arrayIndex <= UBound(arr) And _
                            IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                ESCALAS.Cells(Lin, Col).Value = arr(arrayIndex)
                                   arrayIndex = arrayIndex + 1
                            End If
                        End If
                    Next Lin
            temp = arr(1)
            For i = 1 To UBound(arr) - 1
                arr(i) = arr(i + 1)
            Next i
            arr(UBound(arr)) = temp
            For i = LBound(arr) To UBound(arr)
                Debug.Print arr(i)
            Next i
            arrayIndex = LBound(arr)
        Else
            Set rng1 = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            Set rng2 = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            Set rngT = ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))
            contador1 = 0
            contador2 = 0
            contadorT = 0
                For Each Cel In rngT
                    If IsEmpty(Cel.Value) Then
                        contadorT = contadorT + 1
                        ReDim Preserve linhasVaziasT(1 To contadorT)
                        linhasVaziasT(contadorT) = Cel.Row
                    End If
                Next Cel
                For Each Cel In rng1
                    If IsEmpty(Cel.Value) Then
                        If ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "FOLGA" Or _
                        ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "F�RIAS" Then
                            contador1 = contador1 + 1
                            ReDim Preserve linhasVazias1(1 To contador1)
                            linhasVazias1(contador1) = Cel.Row
                        End If
                    End If
                Next Cel
            KI = UBound(linhasVazias1)
                If KI > 0 Then
                            Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "APOIO") = KI Then
                                        Exit Do
                                    End If
                                    KG = Int(Rnd * UBound(linhasVazias1)) + 1
                                    KE = linhasVazias1(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "APOIO"
                                        End If
                            Loop
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES Then
                                Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > ultimalinha_BOXES
                                        KG = Int(Rnd * UBound(linhasVaziasT)) + 1
                                        KE = linhasVaziasT(KG)
                                            If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                                ESCALAS.Cells(KE, Col).Value = "APOIO"
                                            End If
                                Loop
                            End If
                            For Each Cel In rng2
                                If IsEmpty(Cel.Value) Then
                                    If ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "FOLGA" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "F�RIAS" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "APOIO" Then
                                        contador2 = contador2 + 1
                                        ReDim Preserve linhasVazias2(1 To contador2)
                                        linhasVazias2(contador2) = Cel.Row
                                    End If
                                End If
                            Next Cel
                                If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) = ultimalinha_BOXES Then
                                    KG = Int(Rnd * UBound(linhasVazias2)) + 1
                                    KE = linhasVazias2(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "POSTO"
                                        End If
                                End If
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) > 0 Then
                                For Lin = linha_I_1 To linha_F_1 - 1
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "POSTO") = 1 Or _
                                    WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) = ultimalinha_BOXES - 1 Then
                                        Exit For
                                    End If
                                    If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                        ESCALAS.Cells(Lin, Col).Value = "POSTO"
                                    End If
                                Next Lin
                            End If
                End If
                    For Lin = linha_I_1 To linha_F_1 - 1
                        If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                            If arrayIndexC <= UBound(arrC) And _
                            IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                ESCALAS.Cells(Lin, Col).Value = arrC(arrayIndexC)
                                   arrayIndexC = arrayIndexC + 1
                            End If
                        End If
                    Next Lin
            tempC = arrC(1)
            For i = 1 To UBound(arrC) - 1
                arrC(i) = arrC(i + 1)
            Next i
            arrC(UBound(arrC)) = temp
            For i = LBound(arrC) To UBound(arrC)
                Debug.Print arrC(i)
            Next i
            arrayIndexC = LBound(arrC)
        End If
    Next Col
         
    '# TABELA 2 #'
    
    For Col = Col_I To Col_F_2
        If Col Mod 2 = 0 Then
            Set rng1 = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            Set rng2 = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            Set rngT = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            contador1 = 0
            contador2 = 0
            contadorT = 0
                For Each Cel In rngT
                    If IsEmpty(Cel.Value) Then
                        contadorT = contadorT + 1
                        ReDim Preserve linhasVaziasT(1 To contadorT)
                        linhasVaziasT(contadorT) = Cel.Row
                    End If
                Next Cel
                For Each Cel In rng1
                    If IsEmpty(Cel.Value) Then
                        If ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "FOLGA" Or _
                        ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "F�RIAS" Then
                            contador1 = contador1 + 1
                            ReDim Preserve linhasVazias1(1 To contador1)
                            linhasVazias1(contador1) = Cel.Row
                        End If
                    End If
                Next Cel
            KI = UBound(linhasVazias1)
                If KI > 0 Then
                            Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "APOIO") = KI Then
                                        Exit Do
                                    End If
                                    KG = Int(Rnd * UBound(linhasVazias1)) + 1
                                    KE = linhasVazias1(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "APOIO"
                                        End If

                            Loop
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES Then
                                Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES
                                        KG = Int(Rnd * UBound(linhasVaziasT)) + 1
                                        KE = linhasVaziasT(KG)
                                            If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                                ESCALAS.Cells(KE, Col).Value = "APOIO"
                                            End If
                                Loop
                            End If
                            For Each Cel In rng2
                                If IsEmpty(Cel.Value) Then
                                    If ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "FOLGA" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "F�RIAS" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column + 1).Value = "APOIO" Then
                                        contador2 = contador2 + 1
                                        ReDim Preserve linhasVazias2(1 To contador2)
                                        linhasVazias2(contador2) = Cel.Row
                                    End If
                                End If
                            Next Cel
                                If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) = ultimalinha_BOXES Then
                                    KG = Int(Rnd * UBound(linhasVazias2)) + 1
                                    KE = linhasVazias2(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "POSTO"
                                        End If
                                End If
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > 0 Then
                                For Lin = linha_I_2 To linha_F_2 - 1
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "POSTO") = 1 Or _
                                    WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) = ultimalinha_BOXES - 1 Then
                                        Exit For
                                    End If
                                    If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                        ESCALAS.Cells(Lin, Col).Value = "POSTO"
                                    End If
                                Next Lin
                            End If
                End If
                    For Lin = linha_I_2 To linha_F_2 - 1
                        If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                            If arrayIndex <= UBound(arr) And _
                            IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                ESCALAS.Cells(Lin, Col).Value = arr(arrayIndex)
                                   arrayIndex = arrayIndex + 1
                            End If
                        End If
                    Next Lin
            temp = arr(1)
            For i = 1 To UBound(arr) - 1
                arr(i) = arr(i + 1)
            Next i
            arr(UBound(arr)) = temp
            For i = LBound(arr) To UBound(arr)
                Debug.Print arr(i)
            Next i
            arrayIndex = LBound(arr)
        Else
            Set rng1 = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            Set rng2 = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            Set rngT = ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))
            contador1 = 0
            contador2 = 0
            contadorT = 0
                For Each Cel In rngT
                    If IsEmpty(Cel.Value) Then
                        contadorT = contadorT + 1
                        ReDim Preserve linhasVaziasT(1 To contadorT)
                        linhasVaziasT(contadorT) = Cel.Row
                    End If
                Next Cel
                For Each Cel In rng1
                    If IsEmpty(Cel.Value) Then
                        If ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "FOLGA" Or _
                        ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "F�RIAS" Then
                            contador1 = contador1 + 1
                            ReDim Preserve linhasVazias1(1 To contador1)
                            linhasVazias1(contador1) = Cel.Row
                        End If
                    End If
                Next Cel
            KI = UBound(linhasVazias1)
                If KI > 0 Then
                            Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "APOIO") = KI Then
                                        Exit Do
                                    End If
                                    KG = Int(Rnd * UBound(linhasVazias1)) + 1
                                    KE = linhasVazias1(KG)
                                        If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                            ESCALAS.Cells(KE, Col).Value = "APOIO"
                                        End If

                            Loop
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES Then
                                Do While WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > ultimalinha_BOXES
                                        KG = Int(Rnd * UBound(linhasVaziasT)) + 1
                                        KE = linhasVaziasT(KG)
                                            If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                                ESCALAS.Cells(KE, Col).Value = "APOIO"
                                            End If
                                Loop
                            End If
                            For Each Cel In rng2
                                If IsEmpty(Cel.Value) Then
                                    If ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "FOLGA" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "F�RIAS" Or _
                                    ESCALAS.Cells(Cel.Row, Cel.Column - 1).Value = "APOIO" Then
                                        contador2 = contador2 + 1
                                        ReDim Preserve linhasVazias2(1 To contador2)
                                        linhasVazias2(contador2) = Cel.Row
                                    End If
                                End If
                            Next Cel
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) = ultimalinha_BOXES Then
                                KG = Int(Rnd * UBound(linhasVazias2)) + 1
                                KE = linhasVazias2(KG)
                                    If IsEmpty(ESCALAS.Cells(KE, Col).Value) Then
                                        ESCALAS.Cells(KE, Col).Value = "POSTO"
                                    End If
                            End If
                            If WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) > 0 Then
                                For Lin = linha_I_2 To linha_F_2 - 1
                                    If WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "POSTO") = 1 Or _
                                    WorksheetFunction.CountBlank(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) = ultimalinha_BOXES - 1 Then
                                        Exit For
                                    End If
                                    If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                        ESCALAS.Cells(Lin, Col).Value = "POSTO"
                                    End If
                                Next Lin
                            End If
                End If
                    For Lin = linha_I_2 To linha_F_2 - 1
                        If IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                            If arrayIndexC <= UBound(arrC) And _
                            IsEmpty(ESCALAS.Cells(Lin, Col).Value) Then
                                ESCALAS.Cells(Lin, Col).Value = arrC(arrayIndexC)
                                   arrayIndexC = arrayIndexC + 1
                            End If
                        End If
                    Next Lin
            tempC = arrC(1)
            For i = 1 To UBound(arrC) - 1
                arrC(i) = arrC(i + 1)
            Next i
            arrC(UBound(arrC)) = temp
            For i = LBound(arrC) To UBound(arrC)
                Debug.Print arrC(i)
            Next i
            arrayIndexC = LBound(arrC)
        End If
    Next Col
    
    '# FORMATANDO FOLGA, F�RIAS, POSTO E APOIO #'
    
    For i = 6 To 21
        For j = 1 To 200
            If ESCALAS.Cells(j, i).Value = "FOLGA" Then
                FORMATS.Range("A1").Copy
                ESCALAS.Cells(j, i).PasteSpecial Paste:=xlPasteFormats
                Application.CutCopyMode = False
            End If
            If ESCALAS.Cells(j, i).Value = "F�RIAS" Then
                FORMATS.Range("A4").Copy
                ESCALAS.Cells(j, i).PasteSpecial Paste:=xlPasteFormats
                Application.CutCopyMode = False
            End If
            If ESCALAS.Cells(j, i).Value = "POSTO" Then
                FORMATS.Range("A2").Copy
                ESCALAS.Cells(j, i).PasteSpecial Paste:=xlPasteFormats
                Application.CutCopyMode = False
            End If
            If ESCALAS.Cells(j, i).Value = "APOIO" Then
                FORMATS.Range("A3").Copy
                ESCALAS.Cells(j, i).PasteSpecial Paste:=xlPasteFormats
                Application.CutCopyMode = False
            End If
        Next j
    Next i
    
    '# CONTAGEM DOS T�CNICOS #'
    
    ESCALAS.Cells(linha_F_1, 5).Value = "T�C. ATIVOS"
    
    For Col = Col_I To Col_F_1
        If IsEmpty(ESCALAS.Cells(linha_F_1, Col).Value) Then
            ESCALAS.Cells(linha_F_1, Col).Value = WorksheetFunction.CountA(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col))) _
            - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "FOLGA") _
            - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_1, Col), Cells(linha_F_1 - 1, Col)), "F�RIAS")
        End If
        ESCALAS.Range("B2").Copy
        ESCALAS.Cells(linha_F_1, Col).PasteSpecial Paste:=xlPasteFormats
        Application.CutCopyMode = False
    Next Col
    
    ESCALAS.Cells(linha_F_2, 5).Value = "T�C. ATIVOS"
    
    For Col = Col_I To Col_F_2
        If IsEmpty(ESCALAS.Cells(linha_F_2, Col).Value) Then
            ESCALAS.Cells(linha_F_2, Col).Value = WorksheetFunction.CountA(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col))) _
            - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "FOLGA") _
            - WorksheetFunction.CountIf(ESCALAS.Range(Cells(linha_I_2, Col), Cells(linha_F_2 - 1, Col)), "F�RIAS")
        End If
        ESCALAS.Range("B2").Copy
        ESCALAS.Cells(linha_F_2, Col).PasteSpecial Paste:=xlPasteFormats
        Application.CutCopyMode = False
    Next Col
    
    'IR PARA A1
    
    ESCALAS.Range("A1").Select
    
    End Sub
