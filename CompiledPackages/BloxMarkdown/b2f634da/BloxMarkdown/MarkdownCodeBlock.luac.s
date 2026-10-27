PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["attributes"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R1 K1 ["attributes"]
       10 GETTABLEKS                       R2 R2 K2 ["language"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["isSupported"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K2 ["text"]
        7 ORK                              R2 R3 K1 [""]
        8 GETTABLEKS                       R4 R1 K3 ["attributes"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETTABLEKS                       R3 R1 K3 ["attributes"]
       13 GETTABLEKS                       R3 R3 K4 ["language"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["isSupported"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+10]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["highlightLanguage"]
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 GETUPVAL                         R7 2
       29 MOVE                             R8 R0
       30 CALL                             R7 1 -1
       31 CALL                             R4 -1 -1
       32 RETURN                           R4 -1
       33 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K2 ["text"]
        7 ORK                              R2 R3 K1 [""]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["buildTextSegments"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["measureSegments"]
       16 MOVE                             R5 R3
       17 GETUPVAL                         R6 2
       18 LOADN                            R7 15
       19 CALL                             R4 3 0
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R3
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionRects"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 3
       11 LENGTH                           R3 R4
       12 LENGTH                           R4 R1
       13 JUMPIFNOTLT                      R3 R4 ; [+27]
       15 GETIMPORT                        R3 K3 [Instance.new]
       17 LOADK                            R4 K4 ["Frame"]
       18 CALL                             R3 1 1
       19 LOADK                            R4 K5 ["SelectionRect"]
       20 SETTABLEKS                       R4 R3 K6 ["Name"]
       22 GETUPVAL                         R4 4
       23 SETTABLEKS                       R4 R3 K7 ["BackgroundColor3"]
       25 LOADK                            R4 K8 [0.6]
       26 SETTABLEKS                       R4 R3 K9 ["BackgroundTransparency"]
       28 LOADN                            R4 0
       29 SETTABLEKS                       R4 R3 K10 ["BorderSizePixel"]
       31 SETTABLEKS                       R2 R3 K11 ["Parent"]
       33 GETUPVAL                         R5 3
       34 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       36 MOVE                             R6 R3
       37 GETIMPORT                        R4 K14 [table.insert]
       39 CALL                             R4 2 0
       40 JUMPBACK                         ; [-31]
       41 MOVE                             R3 R1
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETUPVAL                         R9 3
       46 GETTABLE                         R8 R9 R6
       47 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       49 GETTABLEKS                       R10 R7 K18 ["x"]
       51 GETTABLEKS                       R11 R7 K19 ["y"]
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K20 ["Position"]
       56 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       58 GETTABLEKS                       R10 R7 K21 ["width"]
       60 GETTABLEKS                       R11 R7 K22 ["height"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K23 ["Size"]
       65 LOADB                            R9 1
       66 SETTABLEKS                       R9 R8 K24 ["Visible"]
       68 FORGLOOP                         R3 2 ; [-24]
       70 LENGTH                           R6 R1
       71 ADDK                             R5 R6 K25 [1]
       72 GETUPVAL                         R6 3
       73 LENGTH                           R3 R6
       74 LOADN                            R4 1
       75 FORNPREP                         R3
       76 GETUPVAL                         R7 3
       77 GETTABLE                         R6 R7 R5
       78 LOADB                            R7 0
       79 SETTABLEKS                       R7 R6 K24 ["Visible"]
       81 FORNLOOP                         R3
       82 NEWCLOSURE                       R3 P0
       83 CAPTURE                          UPVAL U3
       84 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETIMPORT                        R0 K2 [task.wait]
        4 LOADK                            R1 K3 [0.53]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 1
        9 NOT                              R0 R1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 JUMPBACK                         ; [-15]
       15 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cursorRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 LOADB                            R2 1
       11 LOADB                            R3 1
       12 GETIMPORT                        R4 K3 [task.spawn]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R3
       16 CAPTURE                          REF R2
       17 CAPTURE                          UPVAL U1
       18 CALL                             R4 1 0
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          REF R3
       21 CLOSEUPVALS                      R2
       22 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editorCtx"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETTABLEKS                       R2 R1 K1 ["isCaretAllowed"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETTABLEKS                       R2 R1 K1 ["isCaretAllowed"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["cursorRect"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 3
       25 MOVE                             R4 R0
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cursorRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        8 GETTABLEKS                       R3 R1 K4 ["x"]
       10 GETTABLEKS                       R4 R1 K5 ["y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cursorRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        8 LOADN                            R3 2
        9 GETTABLEKS                       R4 R1 K4 ["height"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       15 LOADN                            R3 2
       16 LOADN                            R4 0
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKS                    R1 K0 ["Light"] ; [+8]
        5 GETIMPORT                        R2 K3 [Color3.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 CALL                             R2 3 1
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K3 [Color3.new]
       14 LOADN                            R3 1
       15 LOADN                            R4 1
       16 LOADN                            R5 1
       17 CALL                             R2 3 1
       18 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["handleMouseDown"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["handleMouseDrag"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K4 ["editorCtx"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K5 ["isDragging"]
       15 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R0 K1 ["blockIndex"]
        4 GETTABLEKS                       R4 R1 K2 ["provide"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["token"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R1 K4 ["createComputed"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 LOADK                            R7 K5 ["rich-text-enabled"]
       16 CALL                             R5 2 1
       17 GETTABLEKS                       R6 R1 K4 ["createComputed"]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R4
       23 LOADK                            R8 K6 ["code-text"]
       24 CALL                             R6 2 1
       25 GETTABLEKS                       R7 R1 K7 ["createRef"]
       27 LOADK                            R8 K8 ["container"]
       28 CALL                             R7 1 1
       29 MOVE                             R8 R2
       30 GETTABLEKS                       R9 R0 K9 ["node"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R10 R8 K11 ["text"]
       35 ORK                              R9 R10 K10 [""]
       36 GETUPVAL                         R10 2
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R11 R11 K12 ["buildTextSegments"]
       40 MOVE                             R12 R9
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 3
       43 GETTABLEKS                       R12 R12 K13 ["measureSegments"]
       45 MOVE                             R13 R11
       46 MOVE                             R14 R10
       47 LOADN                            R15 15
       48 CALL                             R12 3 0
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R12 R12 K14 ["measureLineHeight"]
       52 MOVE                             R13 R10
       53 LOADN                            R14 15
       54 CALL                             R12 2 1
       55 GETTABLEKS                       R13 R1 K15 ["createSignal"]
       57 MOVE                             R14 R11
       58 CALL                             R13 1 2
       59 GETTABLEKS                       R15 R1 K16 ["createEffect"]
       61 NEWCLOSURE                       R16 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R14
       66 LOADK                            R17 K17 ["rebuild-segments"]
       67 CALL                             R15 2 0
       68 GETUPVAL                         R15 4
       69 GETTABLEKS                       R15 R15 K18 ["setup"]
       71 DUPTABLE                         R16 K29 [{["api"], ["getSegments"], ["lineHeight"], ["font"], ["textSize"] = 15, ["blockIndex"], ["editorCtx"], ["containerRef"], ["noWrap"] = True}]
       72 SETTABLEKS                       R1 R16 K19 ["api"]
       74 SETTABLEKS                       R13 R16 K20 ["getSegments"]
       76 SETTABLEKS                       R12 R16 K21 ["lineHeight"]
       78 SETTABLEKS                       R10 R16 K22 ["font"]
       80 SETTABLEKS                       R3 R16 K1 ["blockIndex"]
       82 GETTABLEKS                       R17 R0 K25 ["editorCtx"]
       84 SETTABLEKS                       R17 R16 K25 ["editorCtx"]
       86 SETTABLEKS                       R7 R16 K26 ["containerRef"]
       88 CALL                             R15 1 1
       89 NEWTABLE                         R16 0 0
       91 GETTABLEKS                       R17 R1 K16 ["createEffect"]
       93 NEWCLOSURE                       R18 P3
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R16
       98 CAPTURE                          UPVAL U5
       99 LOADK                            R19 K30 ["selection-rect-frames"]
      100 CALL                             R17 2 0
      101 GETTABLEKS                       R17 R1 K15 ["createSignal"]
      103 LOADB                            R18 1
      104 CALL                             R17 1 2
      105 GETTABLEKS                       R19 R1 K16 ["createEffect"]
      107 NEWCLOSURE                       R20 P4
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R18
      110 LOADK                            R21 K31 ["cursor-blink"]
      111 CALL                             R19 2 0
      112 GETTABLEKS                       R19 R1 K4 ["createComputed"]
      114 NEWCLOSURE                       R20 P5
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R17
      119 LOADK                            R21 K32 ["cursor-visible"]
      120 CALL                             R19 2 1
      121 GETTABLEKS                       R20 R1 K4 ["createComputed"]
      123 NEWCLOSURE                       R21 P6
      124 CAPTURE                          VAL R15
      125 LOADK                            R22 K33 ["cursor-pos"]
      126 CALL                             R20 2 1
      127 GETTABLEKS                       R21 R1 K4 ["createComputed"]
      129 NEWCLOSURE                       R22 P7
      130 CAPTURE                          VAL R15
      131 LOADK                            R23 K34 ["cursor-size"]
      132 CALL                             R21 2 1
      133 GETTABLEKS                       R22 R1 K4 ["createComputed"]
      135 NEWCLOSURE                       R23 P8
      136 CAPTURE                          VAL R4
      137 LOADK                            R24 K35 ["cursor-color"]
      138 CALL                             R22 2 1
      139 NEWCLOSURE                       R23 P9
      140 CAPTURE                          VAL R15
      141 NEWCLOSURE                       R24 P10
      142 CAPTURE                          VAL R15
      143 NEWCLOSURE                       R25 P11
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R0
      146 DUPTABLE                         R26 K47 [{"codeText", "richTextEnabled", "overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "onInputBegan", "onInputChanged", "onInputEnded", "LayoutOrder"}]
      147 SETTABLEKS                       R6 R26 K36 ["codeText"]
      149 SETTABLEKS                       R5 R26 K37 ["richTextEnabled"]
      151 GETTABLEKS                       R27 R15 K38 ["overlaySize"]
      153 SETTABLEKS                       R27 R26 K38 ["overlaySize"]
      155 SETTABLEKS                       R19 R26 K39 ["cursorVisible"]
      157 SETTABLEKS                       R20 R26 K40 ["cursorPos"]
      159 SETTABLEKS                       R21 R26 K41 ["cursorSize"]
      161 SETTABLEKS                       R22 R26 K42 ["cursorColor"]
      163 SETTABLEKS                       R23 R26 K43 ["onInputBegan"]
      165 SETTABLEKS                       R24 R26 K44 ["onInputChanged"]
      167 SETTABLEKS                       R25 R26 K45 ["onInputEnded"]
      169 GETTABLEKS                       R27 R0 K46 ["LayoutOrder"]
      171 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      173 RETURN                           R26 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["BloxCodeEditor"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R1 K10 ["BloxUI"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R4 K11 ["RichTextHitTest"]
       28 GETTABLEKS                       R7 R4 K12 ["SyntaxHighlighter"]
       30 GETIMPORT                        R8 K6 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R9 R9 K4 ["Parent"]
       36 GETTABLEKS                       R9 R9 K13 ["SelectionBehavior"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R9 R5 K14 ["ThemeProvider"]
       41 GETTABLEKS                       R10 R2 K15 ["template"]
       43 GETTABLEKS                       R11 R2 K16 ["Frame"]
       45 GETTABLEKS                       R12 R2 K17 ["TextLabel"]
       47 GETTABLEKS                       R13 R2 K18 ["TextButton"]
       49 GETTABLEKS                       R14 R2 K19 ["ScrollingFrame"]
       51 GETIMPORT                        R15 K22 [Color3.fromRGB]
       53 LOADN                            R16 56
       54 LOADN                            R17 132
       55 LOADN                            R18 244
       56 CALL                             R15 3 1
       57 GETIMPORT                        R16 K25 [Font.new]
       59 LOADK                            R17 K26 ["rbxasset://fonts/families/BuilderMono.json"]
       60 GETIMPORT                        R18 K30 [Enum.FontWeight.Regular]
       62 GETIMPORT                        R19 K33 [Enum.FontStyle.Normal]
       64 CALL                             R16 3 1
       65 MOVE                             R17 R10
       66 LOADK                            R18 K34 ["MarkdownCodeBlock"]
       67 DUPTABLE                         R19 K41 [{["node"], ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       68 NEWTABLE                         R20 0 0
       70 SETTABLEKS                       R20 R19 K35 ["node"]
       72 NEWTABLE                         R20 0 1
       74 MOVE                             R21 R11
       75 NEWTABLE                         R22 4 1
       77 GETIMPORT                        R24 K43 [UDim2.new]
       79 LOADN                            R25 1
       80 LOADN                            R26 0
       81 LOADN                            R27 0
       82 LOADN                            R28 0
       83 CALL                             R24 4 1
       84 SETTABLEKS                       R24 R22 K44 ["Size"]
       86 GETIMPORT                        R24 K47 [Enum.AutomaticSize.Y]
       88 SETTABLEKS                       R24 R22 K45 ["AutomaticSize"]
       90 LOADN                            R24 1
       91 SETTABLEKS                       R24 R22 K48 ["BackgroundTransparency"]
       93 MOVE                             R24 R3
       94 LOADK                            R25 K40 ["LayoutOrder"]
       95 CALL                             R24 1 1
       96 SETTABLEKS                       R24 R22 K40 ["LayoutOrder"]
       98 MOVE                             R23 R11
       99 NEWTABLE                         R24 2 1
      101 LOADK                            R26 K49 ["md-code-block auto-y fill-x"]
      102 SETTABLEKS                       R26 R24 K50 ["Tags"]
      104 LOADN                            R26 1
      105 SETTABLEKS                       R26 R24 K40 ["LayoutOrder"]
      107 MOVE                             R25 R14
      108 NEWTABLE                         R26 8 4
      110 GETIMPORT                        R31 K53 [Enum.ScrollingDirection.X]
      112 SETTABLEKS                       R31 R26 K51 ["ScrollingDirection"]
      114 GETIMPORT                        R31 K54 [Enum.AutomaticSize.X]
      116 SETTABLEKS                       R31 R26 K55 ["AutomaticCanvasSize"]
      118 GETIMPORT                        R31 K47 [Enum.AutomaticSize.Y]
      120 SETTABLEKS                       R31 R26 K45 ["AutomaticSize"]
      122 GETIMPORT                        R31 K43 [UDim2.new]
      124 LOADN                            R32 1
      125 LOADN                            R33 0
      126 LOADN                            R34 0
      127 LOADN                            R35 0
      128 CALL                             R31 4 1
      129 SETTABLEKS                       R31 R26 K44 ["Size"]
      131 LOADN                            R31 1
      132 SETTABLEKS                       R31 R26 K48 ["BackgroundTransparency"]
      134 LOADN                            R31 0
      135 SETTABLEKS                       R31 R26 K56 ["BorderSizePixel"]
      137 GETIMPORT                        R31 K43 [UDim2.new]
      139 LOADN                            R32 0
      140 LOADN                            R33 0
      141 LOADN                            R34 0
      142 LOADN                            R35 0
      143 CALL                             R31 4 1
      144 SETTABLEKS                       R31 R26 K57 ["CanvasSize"]
      146 LOADN                            R31 1
      147 SETTABLEKS                       R31 R26 K40 ["LayoutOrder"]
      149 MOVE                             R27 R11
      150 DUPTABLE                         R28 K61 [{["ref"] = "container", ["Size"], ["BackgroundTransparency"] = 1}]
      151 MOVE                             R29 R3
      152 LOADK                            R30 K62 ["overlaySize"]
      153 CALL                             R29 1 1
      154 SETTABLEKS                       R29 R28 K44 ["Size"]
      156 CALL                             R27 1 1
      157 MOVE                             R28 R11
      158 DUPTABLE                         R29 K70 [{["Name"] = "Cursor", ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["Visible"], ["ZIndex"] = 4}]
      159 MOVE                             R30 R3
      160 LOADK                            R31 K71 ["cursorColor"]
      161 CALL                             R30 1 1
      162 SETTABLEKS                       R30 R29 K65 ["BackgroundColor3"]
      164 MOVE                             R30 R3
      165 LOADK                            R31 K72 ["cursorPos"]
      166 CALL                             R30 1 1
      167 SETTABLEKS                       R30 R29 K66 ["Position"]
      169 MOVE                             R30 R3
      170 LOADK                            R31 K73 ["cursorSize"]
      171 CALL                             R30 1 1
      172 SETTABLEKS                       R30 R29 K44 ["Size"]
      174 MOVE                             R30 R3
      175 LOADK                            R31 K74 ["cursorVisible"]
      176 CALL                             R30 1 1
      177 SETTABLEKS                       R30 R29 K67 ["Visible"]
      179 CALL                             R28 1 1
      180 MOVE                             R29 R12
      181 DUPTABLE                         R30 K79 [{["Tags"] = "md-code-text auto-xy", ["Text"], ["RichText"], ["LayoutOrder"] = 1, ["ZIndex"] = 2}]
      182 MOVE                             R31 R3
      183 LOADK                            R32 K80 ["codeText"]
      184 CALL                             R31 1 1
      185 SETTABLEKS                       R31 R30 K76 ["Text"]
      187 MOVE                             R31 R3
      188 LOADK                            R32 K81 ["richTextEnabled"]
      189 CALL                             R31 1 1
      190 SETTABLEKS                       R31 R30 K77 ["RichText"]
      192 CALL                             R29 1 1
      193 MOVE                             R30 R13
      194 DUPTABLE                         R31 K87 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = "", ["ZIndex"] = 3, ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      195 MOVE                             R32 R3
      196 LOADK                            R33 K62 ["overlaySize"]
      197 CALL                             R32 1 1
      198 SETTABLEKS                       R32 R31 K44 ["Size"]
      200 MOVE                             R32 R3
      201 LOADK                            R33 K88 ["onInputBegan"]
      202 CALL                             R32 1 1
      203 SETTABLEKS                       R32 R31 K84 ["OnInputBegan"]
      205 MOVE                             R32 R3
      206 LOADK                            R33 K89 ["onInputChanged"]
      207 CALL                             R32 1 1
      208 SETTABLEKS                       R32 R31 K85 ["OnInputChanged"]
      210 MOVE                             R32 R3
      211 LOADK                            R33 K90 ["onInputEnded"]
      212 CALL                             R32 1 1
      213 SETTABLEKS                       R32 R31 K86 ["OnInputEnded"]
      215 CALL                             R30 1 -1
      216 SETLIST                          R26 R27 -1 [1]
      218 CALL                             R25 1 -1
      219 SETLIST                          R24 R25 -1 [1]
      221 CALL                             R23 1 -1
      222 SETLIST                          R22 R23 -1 [1]
      224 CALL                             R21 1 -1
      225 SETLIST                          R20 R21 -1 [1]
      227 DUPCLOSURE                       R21 K91 [PROTO_15]
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R15
      234 CALL                             R17 4 1
      235 RETURN                           R17 1
