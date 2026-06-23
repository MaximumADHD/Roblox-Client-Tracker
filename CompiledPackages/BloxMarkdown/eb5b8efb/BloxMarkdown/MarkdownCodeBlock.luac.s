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
       71 DUPTABLE                         R16 K27 [{"api", "getSegments", "lineHeight", "font", "textSize", "blockIndex", "editorCtx", "containerRef", "noWrap"}]
       72 SETTABLEKS                       R1 R16 K19 ["api"]
       74 SETTABLEKS                       R13 R16 K20 ["getSegments"]
       76 SETTABLEKS                       R12 R16 K21 ["lineHeight"]
       78 SETTABLEKS                       R10 R16 K22 ["font"]
       80 LOADN                            R17 15
       81 SETTABLEKS                       R17 R16 K23 ["textSize"]
       83 SETTABLEKS                       R3 R16 K1 ["blockIndex"]
       85 GETTABLEKS                       R17 R0 K24 ["editorCtx"]
       87 SETTABLEKS                       R17 R16 K24 ["editorCtx"]
       89 SETTABLEKS                       R7 R16 K25 ["containerRef"]
       91 LOADB                            R17 1
       92 SETTABLEKS                       R17 R16 K26 ["noWrap"]
       94 CALL                             R15 1 1
       95 NEWTABLE                         R16 0 0
       97 GETTABLEKS                       R17 R1 K16 ["createEffect"]
       99 NEWCLOSURE                       R18 P3
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R16
      104 CAPTURE                          UPVAL U5
      105 LOADK                            R19 K28 ["selection-rect-frames"]
      106 CALL                             R17 2 0
      107 GETTABLEKS                       R17 R1 K15 ["createSignal"]
      109 LOADB                            R18 1
      110 CALL                             R17 1 2
      111 GETTABLEKS                       R19 R1 K16 ["createEffect"]
      113 NEWCLOSURE                       R20 P4
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R18
      116 LOADK                            R21 K29 ["cursor-blink"]
      117 CALL                             R19 2 0
      118 GETTABLEKS                       R19 R1 K4 ["createComputed"]
      120 NEWCLOSURE                       R20 P5
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R17
      125 LOADK                            R21 K30 ["cursor-visible"]
      126 CALL                             R19 2 1
      127 GETTABLEKS                       R20 R1 K4 ["createComputed"]
      129 NEWCLOSURE                       R21 P6
      130 CAPTURE                          VAL R15
      131 LOADK                            R22 K31 ["cursor-pos"]
      132 CALL                             R20 2 1
      133 GETTABLEKS                       R21 R1 K4 ["createComputed"]
      135 NEWCLOSURE                       R22 P7
      136 CAPTURE                          VAL R15
      137 LOADK                            R23 K32 ["cursor-size"]
      138 CALL                             R21 2 1
      139 GETTABLEKS                       R22 R1 K4 ["createComputed"]
      141 NEWCLOSURE                       R23 P8
      142 CAPTURE                          VAL R4
      143 LOADK                            R24 K33 ["cursor-color"]
      144 CALL                             R22 2 1
      145 NEWCLOSURE                       R23 P9
      146 CAPTURE                          VAL R15
      147 NEWCLOSURE                       R24 P10
      148 CAPTURE                          VAL R15
      149 NEWCLOSURE                       R25 P11
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R0
      152 DUPTABLE                         R26 K45 [{"codeText", "richTextEnabled", "overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "onInputBegan", "onInputChanged", "onInputEnded", "LayoutOrder"}]
      153 SETTABLEKS                       R6 R26 K34 ["codeText"]
      155 SETTABLEKS                       R5 R26 K35 ["richTextEnabled"]
      157 GETTABLEKS                       R27 R15 K36 ["overlaySize"]
      159 SETTABLEKS                       R27 R26 K36 ["overlaySize"]
      161 SETTABLEKS                       R19 R26 K37 ["cursorVisible"]
      163 SETTABLEKS                       R20 R26 K38 ["cursorPos"]
      165 SETTABLEKS                       R21 R26 K39 ["cursorSize"]
      167 SETTABLEKS                       R22 R26 K40 ["cursorColor"]
      169 SETTABLEKS                       R23 R26 K41 ["onInputBegan"]
      171 SETTABLEKS                       R24 R26 K42 ["onInputChanged"]
      173 SETTABLEKS                       R25 R26 K43 ["onInputEnded"]
      175 GETTABLEKS                       R27 R0 K44 ["LayoutOrder"]
      177 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      179 RETURN                           R26 1

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
       67 DUPTABLE                         R19 K39 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       68 NEWTABLE                         R20 0 0
       70 SETTABLEKS                       R20 R19 K35 ["node"]
       72 LOADNIL                          R20
       73 SETTABLEKS                       R20 R19 K36 ["editorCtx"]
       75 LOADN                            R20 0
       76 SETTABLEKS                       R20 R19 K37 ["blockIndex"]
       78 LOADN                            R20 0
       79 SETTABLEKS                       R20 R19 K38 ["LayoutOrder"]
       81 NEWTABLE                         R20 0 1
       83 MOVE                             R21 R11
       84 NEWTABLE                         R22 4 1
       86 GETIMPORT                        R24 K41 [UDim2.new]
       88 LOADN                            R25 1
       89 LOADN                            R26 0
       90 LOADN                            R27 0
       91 LOADN                            R28 0
       92 CALL                             R24 4 1
       93 SETTABLEKS                       R24 R22 K42 ["Size"]
       95 GETIMPORT                        R24 K45 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R24 R22 K43 ["AutomaticSize"]
       99 LOADN                            R24 1
      100 SETTABLEKS                       R24 R22 K46 ["BackgroundTransparency"]
      102 MOVE                             R24 R3
      103 LOADK                            R25 K38 ["LayoutOrder"]
      104 CALL                             R24 1 1
      105 SETTABLEKS                       R24 R22 K38 ["LayoutOrder"]
      107 MOVE                             R23 R11
      108 NEWTABLE                         R24 2 1
      110 LOADK                            R26 K47 ["md-code-block auto-y fill-x"]
      111 SETTABLEKS                       R26 R24 K48 ["Tags"]
      113 LOADN                            R26 1
      114 SETTABLEKS                       R26 R24 K38 ["LayoutOrder"]
      116 MOVE                             R25 R14
      117 NEWTABLE                         R26 8 4
      119 GETIMPORT                        R31 K51 [Enum.ScrollingDirection.X]
      121 SETTABLEKS                       R31 R26 K49 ["ScrollingDirection"]
      123 GETIMPORT                        R31 K52 [Enum.AutomaticSize.X]
      125 SETTABLEKS                       R31 R26 K53 ["AutomaticCanvasSize"]
      127 GETIMPORT                        R31 K45 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R31 R26 K43 ["AutomaticSize"]
      131 GETIMPORT                        R31 K41 [UDim2.new]
      133 LOADN                            R32 1
      134 LOADN                            R33 0
      135 LOADN                            R34 0
      136 LOADN                            R35 0
      137 CALL                             R31 4 1
      138 SETTABLEKS                       R31 R26 K42 ["Size"]
      140 LOADN                            R31 1
      141 SETTABLEKS                       R31 R26 K46 ["BackgroundTransparency"]
      143 LOADN                            R31 0
      144 SETTABLEKS                       R31 R26 K54 ["BorderSizePixel"]
      146 GETIMPORT                        R31 K41 [UDim2.new]
      148 LOADN                            R32 0
      149 LOADN                            R33 0
      150 LOADN                            R34 0
      151 LOADN                            R35 0
      152 CALL                             R31 4 1
      153 SETTABLEKS                       R31 R26 K55 ["CanvasSize"]
      155 LOADN                            R31 1
      156 SETTABLEKS                       R31 R26 K38 ["LayoutOrder"]
      158 MOVE                             R27 R11
      159 DUPTABLE                         R28 K57 [{"ref", "Size", "BackgroundTransparency"}]
      160 LOADK                            R29 K58 ["container"]
      161 SETTABLEKS                       R29 R28 K56 ["ref"]
      163 MOVE                             R29 R3
      164 LOADK                            R30 K59 ["overlaySize"]
      165 CALL                             R29 1 1
      166 SETTABLEKS                       R29 R28 K42 ["Size"]
      168 LOADN                            R29 1
      169 SETTABLEKS                       R29 R28 K46 ["BackgroundTransparency"]
      171 CALL                             R27 1 1
      172 MOVE                             R28 R11
      173 DUPTABLE                         R29 K65 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      174 LOADK                            R30 K66 ["Cursor"]
      175 SETTABLEKS                       R30 R29 K60 ["Name"]
      177 MOVE                             R30 R3
      178 LOADK                            R31 K67 ["cursorColor"]
      179 CALL                             R30 1 1
      180 SETTABLEKS                       R30 R29 K61 ["BackgroundColor3"]
      182 LOADN                            R30 0
      183 SETTABLEKS                       R30 R29 K46 ["BackgroundTransparency"]
      185 LOADN                            R30 0
      186 SETTABLEKS                       R30 R29 K54 ["BorderSizePixel"]
      188 MOVE                             R30 R3
      189 LOADK                            R31 K68 ["cursorPos"]
      190 CALL                             R30 1 1
      191 SETTABLEKS                       R30 R29 K62 ["Position"]
      193 MOVE                             R30 R3
      194 LOADK                            R31 K69 ["cursorSize"]
      195 CALL                             R30 1 1
      196 SETTABLEKS                       R30 R29 K42 ["Size"]
      198 MOVE                             R30 R3
      199 LOADK                            R31 K70 ["cursorVisible"]
      200 CALL                             R30 1 1
      201 SETTABLEKS                       R30 R29 K63 ["Visible"]
      203 LOADN                            R30 4
      204 SETTABLEKS                       R30 R29 K64 ["ZIndex"]
      206 CALL                             R28 1 1
      207 MOVE                             R29 R12
      208 DUPTABLE                         R30 K73 [{"Tags", "Text", "RichText", "LayoutOrder", "ZIndex"}]
      209 LOADK                            R31 K74 ["md-code-text auto-xy"]
      210 SETTABLEKS                       R31 R30 K48 ["Tags"]
      212 MOVE                             R31 R3
      213 LOADK                            R32 K75 ["codeText"]
      214 CALL                             R31 1 1
      215 SETTABLEKS                       R31 R30 K71 ["Text"]
      217 MOVE                             R31 R3
      218 LOADK                            R32 K76 ["richTextEnabled"]
      219 CALL                             R31 1 1
      220 SETTABLEKS                       R31 R30 K72 ["RichText"]
      222 LOADN                            R31 1
      223 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      225 LOADN                            R31 2
      226 SETTABLEKS                       R31 R30 K64 ["ZIndex"]
      228 CALL                             R29 1 1
      229 MOVE                             R30 R13
      230 DUPTABLE                         R31 K80 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      231 MOVE                             R32 R3
      232 LOADK                            R33 K59 ["overlaySize"]
      233 CALL                             R32 1 1
      234 SETTABLEKS                       R32 R31 K42 ["Size"]
      236 LOADN                            R32 1
      237 SETTABLEKS                       R32 R31 K46 ["BackgroundTransparency"]
      239 LOADK                            R32 K81 [""]
      240 SETTABLEKS                       R32 R31 K71 ["Text"]
      242 LOADN                            R32 3
      243 SETTABLEKS                       R32 R31 K64 ["ZIndex"]
      245 MOVE                             R32 R3
      246 LOADK                            R33 K82 ["onInputBegan"]
      247 CALL                             R32 1 1
      248 SETTABLEKS                       R32 R31 K77 ["OnInputBegan"]
      250 MOVE                             R32 R3
      251 LOADK                            R33 K83 ["onInputChanged"]
      252 CALL                             R32 1 1
      253 SETTABLEKS                       R32 R31 K78 ["OnInputChanged"]
      255 MOVE                             R32 R3
      256 LOADK                            R33 K84 ["onInputEnded"]
      257 CALL                             R32 1 1
      258 SETTABLEKS                       R32 R31 K79 ["OnInputEnded"]
      260 CALL                             R30 1 -1
      261 SETLIST                          R26 R27 -1 [1]
      263 CALL                             R25 1 -1
      264 SETLIST                          R24 R25 -1 [1]
      266 CALL                             R23 1 -1
      267 SETLIST                          R22 R23 -1 [1]
      269 CALL                             R21 1 -1
      270 SETLIST                          R20 R21 -1 [1]
      272 DUPCLOSURE                       R21 K85 [PROTO_15]
      273 CAPTURE                          VAL R9
      274 CAPTURE                          VAL R7
      275 CAPTURE                          VAL R16
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R15
      279 CALL                             R17 4 1
      280 RETURN                           R17 1
