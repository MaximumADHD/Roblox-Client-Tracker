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
       36 GETIMPORT                        R10 K14 [Font.fromEnum]
       38 GETUPVAL                         R11 2
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K15 ["buildTextSegments"]
       43 MOVE                             R12 R9
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 3
       46 GETTABLEKS                       R12 R12 K16 ["measureSegments"]
       48 MOVE                             R13 R11
       49 MOVE                             R14 R10
       50 LOADN                            R15 15
       51 CALL                             R12 3 0
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R12 R12 K17 ["measureLineHeight"]
       55 MOVE                             R13 R10
       56 LOADN                            R14 15
       57 CALL                             R12 2 1
       58 GETTABLEKS                       R13 R1 K18 ["createSignal"]
       60 MOVE                             R14 R11
       61 CALL                             R13 1 2
       62 GETTABLEKS                       R15 R1 K19 ["createEffect"]
       64 NEWCLOSURE                       R16 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R14
       69 LOADK                            R17 K20 ["rebuild-segments"]
       70 CALL                             R15 2 0
       71 GETUPVAL                         R15 4
       72 GETTABLEKS                       R15 R15 K21 ["setup"]
       74 DUPTABLE                         R16 K30 [{"api", "getSegments", "lineHeight", "font", "textSize", "blockIndex", "editorCtx", "containerRef", "noWrap"}]
       75 SETTABLEKS                       R1 R16 K22 ["api"]
       77 SETTABLEKS                       R13 R16 K23 ["getSegments"]
       79 SETTABLEKS                       R12 R16 K24 ["lineHeight"]
       81 SETTABLEKS                       R10 R16 K25 ["font"]
       83 LOADN                            R17 15
       84 SETTABLEKS                       R17 R16 K26 ["textSize"]
       86 SETTABLEKS                       R3 R16 K1 ["blockIndex"]
       88 GETTABLEKS                       R17 R0 K27 ["editorCtx"]
       90 SETTABLEKS                       R17 R16 K27 ["editorCtx"]
       92 SETTABLEKS                       R7 R16 K28 ["containerRef"]
       94 LOADB                            R17 1
       95 SETTABLEKS                       R17 R16 K29 ["noWrap"]
       97 CALL                             R15 1 1
       98 NEWTABLE                         R16 0 0
      100 GETTABLEKS                       R17 R1 K19 ["createEffect"]
      102 NEWCLOSURE                       R18 P3
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R16
      107 CAPTURE                          UPVAL U5
      108 LOADK                            R19 K31 ["selection-rect-frames"]
      109 CALL                             R17 2 0
      110 GETTABLEKS                       R17 R1 K18 ["createSignal"]
      112 LOADB                            R18 1
      113 CALL                             R17 1 2
      114 GETTABLEKS                       R19 R1 K19 ["createEffect"]
      116 NEWCLOSURE                       R20 P4
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R18
      119 LOADK                            R21 K32 ["cursor-blink"]
      120 CALL                             R19 2 0
      121 GETTABLEKS                       R19 R1 K4 ["createComputed"]
      123 NEWCLOSURE                       R20 P5
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R17
      128 LOADK                            R21 K33 ["cursor-visible"]
      129 CALL                             R19 2 1
      130 GETTABLEKS                       R20 R1 K4 ["createComputed"]
      132 NEWCLOSURE                       R21 P6
      133 CAPTURE                          VAL R15
      134 LOADK                            R22 K34 ["cursor-pos"]
      135 CALL                             R20 2 1
      136 GETTABLEKS                       R21 R1 K4 ["createComputed"]
      138 NEWCLOSURE                       R22 P7
      139 CAPTURE                          VAL R15
      140 LOADK                            R23 K35 ["cursor-size"]
      141 CALL                             R21 2 1
      142 GETTABLEKS                       R22 R1 K4 ["createComputed"]
      144 NEWCLOSURE                       R23 P8
      145 CAPTURE                          VAL R4
      146 LOADK                            R24 K36 ["cursor-color"]
      147 CALL                             R22 2 1
      148 NEWCLOSURE                       R23 P9
      149 CAPTURE                          VAL R15
      150 NEWCLOSURE                       R24 P10
      151 CAPTURE                          VAL R15
      152 NEWCLOSURE                       R25 P11
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R0
      155 DUPTABLE                         R26 K48 [{"codeText", "richTextEnabled", "overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "onInputBegan", "onInputChanged", "onInputEnded", "LayoutOrder"}]
      156 SETTABLEKS                       R6 R26 K37 ["codeText"]
      158 SETTABLEKS                       R5 R26 K38 ["richTextEnabled"]
      160 GETTABLEKS                       R27 R15 K39 ["overlaySize"]
      162 SETTABLEKS                       R27 R26 K39 ["overlaySize"]
      164 SETTABLEKS                       R19 R26 K40 ["cursorVisible"]
      166 SETTABLEKS                       R20 R26 K41 ["cursorPos"]
      168 SETTABLEKS                       R21 R26 K42 ["cursorSize"]
      170 SETTABLEKS                       R22 R26 K43 ["cursorColor"]
      172 SETTABLEKS                       R23 R26 K44 ["onInputBegan"]
      174 SETTABLEKS                       R24 R26 K45 ["onInputChanged"]
      176 SETTABLEKS                       R25 R26 K46 ["onInputEnded"]
      178 GETTABLEKS                       R27 R0 K47 ["LayoutOrder"]
      180 SETTABLEKS                       R27 R26 K47 ["LayoutOrder"]
      182 RETURN                           R26 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["BloxCodeEditor"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["BloxUI"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R3 K10 ["RichTextHitTest"]
       26 GETTABLEKS                       R6 R3 K11 ["SyntaxHighlighter"]
       28 GETIMPORT                        R7 K5 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K12 ["Parent"]
       34 GETTABLEKS                       R8 R8 K13 ["SelectionBehavior"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R4 K14 ["ThemeProvider"]
       39 GETTABLEKS                       R9 R1 K15 ["template"]
       41 GETTABLEKS                       R10 R1 K16 ["Frame"]
       43 GETTABLEKS                       R11 R1 K17 ["TextLabel"]
       45 GETTABLEKS                       R12 R1 K18 ["TextButton"]
       47 GETTABLEKS                       R13 R1 K19 ["ScrollingFrame"]
       49 GETIMPORT                        R14 K22 [Color3.fromRGB]
       51 LOADN                            R15 56
       52 LOADN                            R16 132
       53 LOADN                            R17 244
       54 CALL                             R14 3 1
       55 GETIMPORT                        R15 K26 [Enum.Font.Code]
       57 MOVE                             R16 R9
       58 LOADK                            R17 K27 ["MarkdownCodeBlock"]
       59 DUPTABLE                         R18 K32 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       60 NEWTABLE                         R19 0 0
       62 SETTABLEKS                       R19 R18 K28 ["node"]
       64 LOADNIL                          R19
       65 SETTABLEKS                       R19 R18 K29 ["editorCtx"]
       67 LOADN                            R19 0
       68 SETTABLEKS                       R19 R18 K30 ["blockIndex"]
       70 LOADN                            R19 0
       71 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
       73 NEWTABLE                         R19 0 1
       75 MOVE                             R20 R10
       76 NEWTABLE                         R21 4 1
       78 GETIMPORT                        R23 K35 [UDim2.new]
       80 LOADN                            R24 1
       81 LOADN                            R25 0
       82 LOADN                            R26 0
       83 LOADN                            R27 0
       84 CALL                             R23 4 1
       85 SETTABLEKS                       R23 R21 K36 ["Size"]
       87 GETIMPORT                        R23 K39 [Enum.AutomaticSize.Y]
       89 SETTABLEKS                       R23 R21 K37 ["AutomaticSize"]
       91 LOADN                            R23 1
       92 SETTABLEKS                       R23 R21 K40 ["BackgroundTransparency"]
       94 MOVE                             R23 R2
       95 LOADK                            R24 K31 ["LayoutOrder"]
       96 CALL                             R23 1 1
       97 SETTABLEKS                       R23 R21 K31 ["LayoutOrder"]
       99 MOVE                             R22 R10
      100 NEWTABLE                         R23 2 1
      102 LOADK                            R25 K41 ["md-code-block auto-y fill-x"]
      103 SETTABLEKS                       R25 R23 K42 ["Tags"]
      105 LOADN                            R25 1
      106 SETTABLEKS                       R25 R23 K31 ["LayoutOrder"]
      108 MOVE                             R24 R13
      109 NEWTABLE                         R25 8 4
      111 GETIMPORT                        R30 K45 [Enum.ScrollingDirection.X]
      113 SETTABLEKS                       R30 R25 K43 ["ScrollingDirection"]
      115 GETIMPORT                        R30 K46 [Enum.AutomaticSize.X]
      117 SETTABLEKS                       R30 R25 K47 ["AutomaticCanvasSize"]
      119 GETIMPORT                        R30 K39 [Enum.AutomaticSize.Y]
      121 SETTABLEKS                       R30 R25 K37 ["AutomaticSize"]
      123 GETIMPORT                        R30 K35 [UDim2.new]
      125 LOADN                            R31 1
      126 LOADN                            R32 0
      127 LOADN                            R33 0
      128 LOADN                            R34 0
      129 CALL                             R30 4 1
      130 SETTABLEKS                       R30 R25 K36 ["Size"]
      132 LOADN                            R30 1
      133 SETTABLEKS                       R30 R25 K40 ["BackgroundTransparency"]
      135 LOADN                            R30 0
      136 SETTABLEKS                       R30 R25 K48 ["BorderSizePixel"]
      138 GETIMPORT                        R30 K35 [UDim2.new]
      140 LOADN                            R31 0
      141 LOADN                            R32 0
      142 LOADN                            R33 0
      143 LOADN                            R34 0
      144 CALL                             R30 4 1
      145 SETTABLEKS                       R30 R25 K49 ["CanvasSize"]
      147 LOADN                            R30 1
      148 SETTABLEKS                       R30 R25 K31 ["LayoutOrder"]
      150 MOVE                             R26 R10
      151 DUPTABLE                         R27 K51 [{"ref", "Size", "BackgroundTransparency"}]
      152 LOADK                            R28 K52 ["container"]
      153 SETTABLEKS                       R28 R27 K50 ["ref"]
      155 MOVE                             R28 R2
      156 LOADK                            R29 K53 ["overlaySize"]
      157 CALL                             R28 1 1
      158 SETTABLEKS                       R28 R27 K36 ["Size"]
      160 LOADN                            R28 1
      161 SETTABLEKS                       R28 R27 K40 ["BackgroundTransparency"]
      163 CALL                             R26 1 1
      164 MOVE                             R27 R10
      165 DUPTABLE                         R28 K59 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      166 LOADK                            R29 K60 ["Cursor"]
      167 SETTABLEKS                       R29 R28 K54 ["Name"]
      169 MOVE                             R29 R2
      170 LOADK                            R30 K61 ["cursorColor"]
      171 CALL                             R29 1 1
      172 SETTABLEKS                       R29 R28 K55 ["BackgroundColor3"]
      174 LOADN                            R29 0
      175 SETTABLEKS                       R29 R28 K40 ["BackgroundTransparency"]
      177 LOADN                            R29 0
      178 SETTABLEKS                       R29 R28 K48 ["BorderSizePixel"]
      180 MOVE                             R29 R2
      181 LOADK                            R30 K62 ["cursorPos"]
      182 CALL                             R29 1 1
      183 SETTABLEKS                       R29 R28 K56 ["Position"]
      185 MOVE                             R29 R2
      186 LOADK                            R30 K63 ["cursorSize"]
      187 CALL                             R29 1 1
      188 SETTABLEKS                       R29 R28 K36 ["Size"]
      190 MOVE                             R29 R2
      191 LOADK                            R30 K64 ["cursorVisible"]
      192 CALL                             R29 1 1
      193 SETTABLEKS                       R29 R28 K57 ["Visible"]
      195 LOADN                            R29 4
      196 SETTABLEKS                       R29 R28 K58 ["ZIndex"]
      198 CALL                             R27 1 1
      199 MOVE                             R28 R11
      200 DUPTABLE                         R29 K67 [{"Tags", "Text", "RichText", "LayoutOrder", "ZIndex"}]
      201 LOADK                            R30 K68 ["md-code-text auto-xy"]
      202 SETTABLEKS                       R30 R29 K42 ["Tags"]
      204 MOVE                             R30 R2
      205 LOADK                            R31 K69 ["codeText"]
      206 CALL                             R30 1 1
      207 SETTABLEKS                       R30 R29 K65 ["Text"]
      209 MOVE                             R30 R2
      210 LOADK                            R31 K70 ["richTextEnabled"]
      211 CALL                             R30 1 1
      212 SETTABLEKS                       R30 R29 K66 ["RichText"]
      214 LOADN                            R30 1
      215 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      217 LOADN                            R30 2
      218 SETTABLEKS                       R30 R29 K58 ["ZIndex"]
      220 CALL                             R28 1 1
      221 MOVE                             R29 R12
      222 DUPTABLE                         R30 K74 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      223 MOVE                             R31 R2
      224 LOADK                            R32 K53 ["overlaySize"]
      225 CALL                             R31 1 1
      226 SETTABLEKS                       R31 R30 K36 ["Size"]
      228 LOADN                            R31 1
      229 SETTABLEKS                       R31 R30 K40 ["BackgroundTransparency"]
      231 LOADK                            R31 K75 [""]
      232 SETTABLEKS                       R31 R30 K65 ["Text"]
      234 LOADN                            R31 3
      235 SETTABLEKS                       R31 R30 K58 ["ZIndex"]
      237 MOVE                             R31 R2
      238 LOADK                            R32 K76 ["onInputBegan"]
      239 CALL                             R31 1 1
      240 SETTABLEKS                       R31 R30 K71 ["OnInputBegan"]
      242 MOVE                             R31 R2
      243 LOADK                            R32 K77 ["onInputChanged"]
      244 CALL                             R31 1 1
      245 SETTABLEKS                       R31 R30 K72 ["OnInputChanged"]
      247 MOVE                             R31 R2
      248 LOADK                            R32 K78 ["onInputEnded"]
      249 CALL                             R31 1 1
      250 SETTABLEKS                       R31 R30 K73 ["OnInputEnded"]
      252 CALL                             R29 1 -1
      253 SETLIST                          R25 R26 -1 [1]
      255 CALL                             R24 1 -1
      256 SETLIST                          R23 R24 -1 [1]
      258 CALL                             R22 1 -1
      259 SETLIST                          R21 R22 -1 [1]
      261 CALL                             R20 1 -1
      262 SETLIST                          R19 R20 -1 [1]
      264 DUPCLOSURE                       R20 K79 [PROTO_15]
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R7
      270 CAPTURE                          VAL R14
      271 CALL                             R16 4 1
      272 RETURN                           R16 1
