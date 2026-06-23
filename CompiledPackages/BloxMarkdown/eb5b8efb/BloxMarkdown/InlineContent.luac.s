PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["[Markdown] Link clicked:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["buildSegments"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["measureSegments"]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 2
       17 GETUPVAL                         R6 3
       18 CALL                             R3 3 0
       19 GETUPVAL                         R3 4
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["getImageSegments"]
       26 MOVE                             R5 R2
       27 CALL                             R4 1 -1
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["buildRichText"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

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
       13 JUMPIFNOTLT                      R3 R4 ; [+30]
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
       31 LOADN                            R4 1
       32 SETTABLEKS                       R4 R3 K11 ["ZIndex"]
       34 SETTABLEKS                       R2 R3 K12 ["Parent"]
       36 GETUPVAL                         R5 3
       37 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       39 MOVE                             R6 R3
       40 GETIMPORT                        R4 K15 [table.insert]
       42 CALL                             R4 2 0
       43 JUMPBACK                         ; [-34]
       44 MOVE                             R3 R1
       45 LOADNIL                          R4
       46 LOADNIL                          R5
       47 FORGPREP                         R3
       48 GETUPVAL                         R9 3
       49 GETTABLE                         R8 R9 R6
       50 GETIMPORT                        R9 K18 [UDim2.fromOffset]
       52 GETTABLEKS                       R10 R7 K19 ["x"]
       54 GETTABLEKS                       R11 R7 K20 ["y"]
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K21 ["Position"]
       59 GETIMPORT                        R9 K18 [UDim2.fromOffset]
       61 GETTABLEKS                       R10 R7 K22 ["width"]
       63 GETTABLEKS                       R11 R7 K23 ["height"]
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K24 ["Size"]
       68 LOADB                            R9 1
       69 SETTABLEKS                       R9 R8 K25 ["Visible"]
       71 FORGLOOP                         R3 2 ; [-24]
       73 LENGTH                           R6 R1
       74 ADDK                             R5 R6 K26 [1]
       75 GETUPVAL                         R6 3
       76 LENGTH                           R3 R6
       77 LOADN                            R4 1
       78 FORNPREP                         R3
       79 GETUPVAL                         R7 3
       80 GETTABLE                         R6 R7 R5
       81 LOADB                            R7 0
       82 SETTABLEKS                       R7 R6 K25 ["Visible"]
       84 FORNLOOP                         R3
       85 NEWCLOSURE                       R3 P0
       86 CAPTURE                          UPVAL U3
       87 RETURN                           R3 1

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
        4 JUMPIFNOTEQ                      R1 R2 ; [+25]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["getRelPos"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+13]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["hitTest"]
       15 MOVE                             R3 R1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["getRows"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 2
       21 CALL                             R2 3 1
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K7 ["handleMouseDrag"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       12 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseButton1]
       14 JUMPIFNOTEQ                      R1 R2 ; [+10]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K6 ["editorCtx"]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+3]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K7 ["isDragging"]
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["linkCallback"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 MOVE                             R2 R1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["provide"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["token"]
        7 CALL                             R3 1 1
        8 MOVE                             R4 R2
        9 GETTABLEKS                       R5 R0 K3 ["textSize"]
       11 CALL                             R4 1 1
       12 MOVE                             R5 R2
       13 GETTABLEKS                       R6 R0 K4 ["fontEnum"]
       15 CALL                             R5 1 1
       16 JUMPIF                           R5 ; [+1]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R6 R0 K5 ["blockIndex"]
       20 GETIMPORT                        R7 K8 [Font.fromEnum]
       22 MOVE                             R8 R5
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K9 ["measureLineHeight"]
       27 MOVE                             R9 R7
       28 MOVE                             R10 R4
       29 CALL                             R8 2 1
       30 MOVE                             R9 R2
       31 GETTABLEKS                       R10 R0 K10 ["nodes"]
       33 CALL                             R9 1 1
       34 JUMPIFNOT                        R9 ; [+6]
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K11 ["buildSegments"]
       38 MOVE                             R11 R9
       39 CALL                             R10 1 1
       40 JUMP                             ; [+2]
       41 NEWTABLE                         R10 0 0
       43 LENGTH                           R11 R10
       44 LOADN                            R12 0
       45 JUMPIFNOTLT                      R12 R11 ; [+8]
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R11 R11 K12 ["measureSegments"]
       50 MOVE                             R12 R10
       51 MOVE                             R13 R7
       52 MOVE                             R14 R4
       53 CALL                             R11 3 0
       54 GETTABLEKS                       R11 R1 K13 ["createSignal"]
       56 MOVE                             R12 R10
       57 CALL                             R11 1 2
       58 GETTABLEKS                       R13 R1 K13 ["createSignal"]
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R14 R14 K14 ["getImageSegments"]
       63 MOVE                             R15 R10
       64 CALL                             R14 1 -1
       65 CALL                             R13 -1 2
       66 GETTABLEKS                       R15 R1 K15 ["createEffect"]
       68 NEWCLOSURE                       R16 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R14
       75 LOADK                            R17 K16 ["rebuild-segments"]
       76 CALL                             R15 2 0
       77 GETTABLEKS                       R15 R1 K17 ["createRef"]
       79 LOADK                            R16 K18 ["container"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R16 R1 K13 ["createSignal"]
       83 LOADNIL                          R17
       84 CALL                             R16 1 2
       85 GETTABLEKS                       R18 R1 K19 ["createComputed"]
       87 NEWCLOSURE                       R19 P1
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R16
       90 CAPTURE                          UPVAL U2
       91 LOADK                            R20 K20 ["inline-richtext"]
       92 CALL                             R18 2 1
       93 GETUPVAL                         R19 3
       94 GETTABLEKS                       R19 R19 K21 ["setup"]
       96 DUPTABLE                         R20 K29 [{"api", "getSegments", "lineHeight", "font", "textSize", "blockIndex", "path", "editorCtx", "containerRef"}]
       97 SETTABLEKS                       R1 R20 K22 ["api"]
       99 SETTABLEKS                       R11 R20 K23 ["getSegments"]
      101 SETTABLEKS                       R8 R20 K24 ["lineHeight"]
      103 SETTABLEKS                       R7 R20 K25 ["font"]
      105 SETTABLEKS                       R4 R20 K3 ["textSize"]
      107 SETTABLEKS                       R6 R20 K5 ["blockIndex"]
      109 GETTABLEKS                       R21 R0 K26 ["path"]
      111 SETTABLEKS                       R21 R20 K26 ["path"]
      113 GETTABLEKS                       R21 R0 K27 ["editorCtx"]
      115 SETTABLEKS                       R21 R20 K27 ["editorCtx"]
      117 SETTABLEKS                       R15 R20 K28 ["containerRef"]
      119 CALL                             R19 1 1
      120 NEWTABLE                         R20 0 0
      122 GETTABLEKS                       R21 R1 K15 ["createEffect"]
      124 NEWCLOSURE                       R22 P2
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R20
      129 CAPTURE                          UPVAL U4
      130 LOADK                            R23 K30 ["selection-rect-frames"]
      131 CALL                             R21 2 0
      132 GETTABLEKS                       R21 R1 K13 ["createSignal"]
      134 LOADB                            R22 1
      135 CALL                             R21 1 2
      136 GETTABLEKS                       R23 R1 K15 ["createEffect"]
      138 NEWCLOSURE                       R24 P3
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R22
      141 LOADK                            R25 K31 ["cursor-blink"]
      142 CALL                             R23 2 0
      143 GETTABLEKS                       R23 R1 K19 ["createComputed"]
      145 NEWCLOSURE                       R24 P4
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R21
      150 LOADK                            R25 K32 ["cursor-visible"]
      151 CALL                             R23 2 1
      152 GETTABLEKS                       R24 R1 K19 ["createComputed"]
      154 NEWCLOSURE                       R25 P5
      155 CAPTURE                          VAL R19
      156 LOADK                            R26 K33 ["cursor-pos"]
      157 CALL                             R24 2 1
      158 GETTABLEKS                       R25 R1 K19 ["createComputed"]
      160 NEWCLOSURE                       R26 P6
      161 CAPTURE                          VAL R19
      162 LOADK                            R27 K34 ["cursor-size"]
      163 CALL                             R25 2 1
      164 GETTABLEKS                       R26 R1 K19 ["createComputed"]
      166 NEWCLOSURE                       R27 P7
      167 CAPTURE                          VAL R3
      168 LOADK                            R28 K35 ["cursor-color"]
      169 CALL                             R26 2 1
      170 NEWCLOSURE                       R27 P8
      171 CAPTURE                          VAL R19
      172 NEWCLOSURE                       R28 P9
      173 CAPTURE                          VAL R19
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R17
      177 NEWCLOSURE                       R29 P10
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R0
      181 NEWCLOSURE                       R30 P11
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R0
      185 DUPTABLE                         R31 K48 [{"richText", "overlaySize", "cursorVisible", "cursorPos", "cursorSize", "cursorColor", "onInputBegan", "onInputChanged", "onInputEnded", "onClick", "textSize", "imageSegments", "LayoutOrder"}]
      186 SETTABLEKS                       R18 R31 K36 ["richText"]
      188 GETTABLEKS                       R32 R19 K37 ["overlaySize"]
      190 SETTABLEKS                       R32 R31 K37 ["overlaySize"]
      192 SETTABLEKS                       R23 R31 K38 ["cursorVisible"]
      194 SETTABLEKS                       R24 R31 K39 ["cursorPos"]
      196 SETTABLEKS                       R25 R31 K40 ["cursorSize"]
      198 SETTABLEKS                       R26 R31 K41 ["cursorColor"]
      200 SETTABLEKS                       R27 R31 K42 ["onInputBegan"]
      202 SETTABLEKS                       R28 R31 K43 ["onInputChanged"]
      204 SETTABLEKS                       R29 R31 K44 ["onInputEnded"]
      206 SETTABLEKS                       R30 R31 K45 ["onClick"]
      208 GETTABLEKS                       R32 R0 K3 ["textSize"]
      210 SETTABLEKS                       R32 R31 K3 ["textSize"]
      212 SETTABLEKS                       R13 R31 K46 ["imageSegments"]
      214 GETTABLEKS                       R32 R0 K47 ["LayoutOrder"]
      216 SETTABLEKS                       R32 R31 K47 ["LayoutOrder"]
      218 RETURN                           R31 1

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
       28 GETIMPORT                        R7 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K4 ["Parent"]
       34 GETTABLEKS                       R8 R8 K12 ["SelectionBehavior"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R5 K13 ["ThemeProvider"]
       39 GETTABLEKS                       R9 R2 K14 ["template"]
       41 GETTABLEKS                       R10 R2 K15 ["Frame"]
       43 GETTABLEKS                       R11 R2 K16 ["TextLabel"]
       45 GETTABLEKS                       R12 R2 K17 ["TextButton"]
       47 GETTABLEKS                       R13 R2 K18 ["ImageLabel"]
       49 GETTABLEKS                       R14 R2 K19 ["For"]
       51 GETIMPORT                        R15 K23 [Enum.Font.BuilderSans]
       53 GETIMPORT                        R16 K26 [Color3.fromRGB]
       55 LOADN                            R17 56
       56 LOADN                            R18 132
       57 LOADN                            R19 244
       58 CALL                             R16 3 1
       59 MOVE                             R17 R9
       60 LOADK                            R18 K27 ["InlineContent"]
       61 DUPTABLE                         R19 K36 [{"nodes", "textSize", "fontEnum", "linkCallback", "editorCtx", "blockIndex", "path", "LayoutOrder"}]
       62 NEWTABLE                         R20 0 0
       64 SETTABLEKS                       R20 R19 K28 ["nodes"]
       66 LOADN                            R20 15
       67 SETTABLEKS                       R20 R19 K29 ["textSize"]
       69 SETTABLEKS                       R15 R19 K30 ["fontEnum"]
       71 DUPCLOSURE                       R20 K37 [PROTO_0]
       72 SETTABLEKS                       R20 R19 K31 ["linkCallback"]
       74 LOADNIL                          R20
       75 SETTABLEKS                       R20 R19 K32 ["editorCtx"]
       77 LOADN                            R20 0
       78 SETTABLEKS                       R20 R19 K33 ["blockIndex"]
       80 NEWTABLE                         R20 0 0
       82 SETTABLEKS                       R20 R19 K34 ["path"]
       84 LOADN                            R20 0
       85 SETTABLEKS                       R20 R19 K35 ["LayoutOrder"]
       87 NEWTABLE                         R20 0 1
       89 MOVE                             R21 R10
       90 NEWTABLE                         R22 4 4
       92 LOADK                            R27 K38 ["container"]
       93 SETTABLEKS                       R27 R22 K39 ["ref"]
       95 LOADK                            R27 K40 ["InlineContainer"]
       96 SETTABLEKS                       R27 R22 K41 ["Name"]
       98 LOADK                            R27 K42 ["md-inline-container auto-y fill-x"]
       99 SETTABLEKS                       R27 R22 K43 ["Tags"]
      101 MOVE                             R27 R3
      102 LOADK                            R28 K35 ["LayoutOrder"]
      103 CALL                             R27 1 1
      104 SETTABLEKS                       R27 R22 K35 ["LayoutOrder"]
      106 MOVE                             R23 R10
      107 DUPTABLE                         R24 K51 [{"Name", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex"}]
      108 LOADK                            R25 K52 ["Cursor"]
      109 SETTABLEKS                       R25 R24 K41 ["Name"]
      111 MOVE                             R25 R3
      112 LOADK                            R26 K53 ["cursorColor"]
      113 CALL                             R25 1 1
      114 SETTABLEKS                       R25 R24 K44 ["BackgroundColor3"]
      116 LOADN                            R25 0
      117 SETTABLEKS                       R25 R24 K45 ["BackgroundTransparency"]
      119 LOADN                            R25 0
      120 SETTABLEKS                       R25 R24 K46 ["BorderSizePixel"]
      122 MOVE                             R25 R3
      123 LOADK                            R26 K54 ["cursorPos"]
      124 CALL                             R25 1 1
      125 SETTABLEKS                       R25 R24 K47 ["Position"]
      127 MOVE                             R25 R3
      128 LOADK                            R26 K55 ["cursorSize"]
      129 CALL                             R25 1 1
      130 SETTABLEKS                       R25 R24 K48 ["Size"]
      132 MOVE                             R25 R3
      133 LOADK                            R26 K56 ["cursorVisible"]
      134 CALL                             R25 1 1
      135 SETTABLEKS                       R25 R24 K49 ["Visible"]
      137 LOADN                            R25 4
      138 SETTABLEKS                       R25 R24 K50 ["ZIndex"]
      140 CALL                             R23 1 1
      141 MOVE                             R24 R11
      142 DUPTABLE                         R25 K59 [{"Name", "Tags", "Text", "TextSize", "LayoutOrder", "ZIndex"}]
      143 LOADK                            R26 K60 ["RichTextLabel"]
      144 SETTABLEKS                       R26 R25 K41 ["Name"]
      146 LOADK                            R26 K61 ["md-inline-text auto-y fill-x"]
      147 SETTABLEKS                       R26 R25 K43 ["Tags"]
      149 MOVE                             R26 R3
      150 LOADK                            R27 K62 ["richText"]
      151 CALL                             R26 1 1
      152 SETTABLEKS                       R26 R25 K57 ["Text"]
      154 MOVE                             R26 R3
      155 LOADK                            R27 K29 ["textSize"]
      156 CALL                             R26 1 1
      157 SETTABLEKS                       R26 R25 K58 ["TextSize"]
      159 LOADN                            R26 1
      160 SETTABLEKS                       R26 R25 K35 ["LayoutOrder"]
      162 LOADN                            R26 2
      163 SETTABLEKS                       R26 R25 K50 ["ZIndex"]
      165 CALL                             R24 1 1
      166 MOVE                             R25 R12
      167 DUPTABLE                         R26 K68 [{"Name", "Tags", "Size", "Selectable", "OnInputBegan", "OnInputChanged", "OnInputEnded", "OnActivated", "LayoutOrder", "ZIndex"}]
      168 LOADK                            R27 K69 ["HitOverlay"]
      169 SETTABLEKS                       R27 R26 K41 ["Name"]
      171 LOADK                            R27 K70 ["md-hit-overlay fill-x"]
      172 SETTABLEKS                       R27 R26 K43 ["Tags"]
      174 MOVE                             R27 R3
      175 LOADK                            R28 K71 ["overlaySize"]
      176 CALL                             R27 1 1
      177 SETTABLEKS                       R27 R26 K48 ["Size"]
      179 LOADB                            R27 0
      180 SETTABLEKS                       R27 R26 K63 ["Selectable"]
      182 MOVE                             R27 R3
      183 LOADK                            R28 K72 ["onInputBegan"]
      184 CALL                             R27 1 1
      185 SETTABLEKS                       R27 R26 K64 ["OnInputBegan"]
      187 MOVE                             R27 R3
      188 LOADK                            R28 K73 ["onInputChanged"]
      189 CALL                             R27 1 1
      190 SETTABLEKS                       R27 R26 K65 ["OnInputChanged"]
      192 MOVE                             R27 R3
      193 LOADK                            R28 K74 ["onInputEnded"]
      194 CALL                             R27 1 1
      195 SETTABLEKS                       R27 R26 K66 ["OnInputEnded"]
      197 MOVE                             R27 R3
      198 LOADK                            R28 K75 ["onClick"]
      199 CALL                             R27 1 1
      200 SETTABLEKS                       R27 R26 K67 ["OnActivated"]
      202 LOADN                            R27 2
      203 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      205 LOADN                            R27 3
      206 SETTABLEKS                       R27 R26 K50 ["ZIndex"]
      208 CALL                             R25 1 1
      209 MOVE                             R26 R14
      210 DUPTABLE                         R27 K78 [{"items", "Each"}]
      211 MOVE                             R28 R3
      212 LOADK                            R29 K79 ["imageSegments"]
      213 CALL                             R28 1 1
      214 SETTABLEKS                       R28 R27 K76 ["items"]
      216 MOVE                             R28 R9
      217 NEWTABLE                         R29 0 2
      219 LOADK                            R30 K80 ["idx"]
      220 LOADK                            R31 K81 ["img"]
      221 SETLIST                          R29 R30 2 [1]
      223 NEWTABLE                         R30 0 1
      225 MOVE                             R31 R13
      226 DUPTABLE                         R32 K83 [{"Name", "Tags", "Image", "Size", "LayoutOrder"}]
      227 LOADK                            R33 K84 ["InlineImage"]
      228 SETTABLEKS                       R33 R32 K41 ["Name"]
      230 LOADK                            R33 K85 ["md-image"]
      231 SETTABLEKS                       R33 R32 K43 ["Tags"]
      233 MOVE                             R33 R3
      234 LOADK                            R34 K86 ["img.imageUrl"]
      235 CALL                             R33 1 1
      236 SETTABLEKS                       R33 R32 K82 ["Image"]
      238 MOVE                             R33 R3
      239 LOADK                            R34 K87 ["api.UDim2.fromOffset(img.imageWidth or 16, img.imageHeight or 16)"]
      240 CALL                             R33 1 1
      241 SETTABLEKS                       R33 R32 K48 ["Size"]
      243 MOVE                             R33 R3
      244 LOADK                            R34 K88 ["idx + 100"]
      245 CALL                             R33 1 1
      246 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      248 CALL                             R31 1 -1
      249 SETLIST                          R30 R31 -1 [1]
      251 CALL                             R28 2 1
      252 SETTABLEKS                       R28 R27 K77 ["Each"]
      254 CALL                             R26 1 -1
      255 SETLIST                          R22 R23 -1 [1]
      257 CALL                             R21 1 -1
      258 SETLIST                          R20 R21 -1 [1]
      260 DUPCLOSURE                       R21 K89 [PROTO_16]
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R15
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R16
      266 CALL                             R17 4 1
      267 RETURN                           R17 1
