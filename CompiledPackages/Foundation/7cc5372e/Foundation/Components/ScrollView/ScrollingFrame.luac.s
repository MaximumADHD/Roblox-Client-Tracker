PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scrollBarVisibility"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADN                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["Size"]
       13 GETTABLEKS                       R0 R1 K3 ["Size_150"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["spring"]
        4 LOADN                            R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R2 K3 [task.cancel]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["current"]
        9 CALL                             R2 1 0
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["spring"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K5 ["Transparency"]
       18 GETUPVAL                         R5 4
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 JUMPIFEQKNIL                     R1 ; [+12]
       23 GETUPVAL                         R2 0
       24 GETIMPORT                        R3 K7 [task.delay]
       26 MOVE                             R4 R1
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U4
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R2 K0 ["current"]
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scrollBarVisibility"]
        3 JUMPIFNOTEQKS                    R0 K1 ["None"] ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 LOADN                            R2 0
        8 CALL                             R0 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["scrollBarVisibility"]
       13 JUMPIFNOTEQKS                    R0 K2 ["Always"] ; [+5]
       15 GETUPVAL                         R0 1
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 1
       20 LOADB                            R1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["controlState"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K4 ["Hover"]
       27 JUMPIFEQ                         R2 R3 ; [+20]
       29 LOADB                            R1 1
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K3 ["controlState"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K5 ["Selected"]
       36 JUMPIFEQ                         R2 R3 ; [+11]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K3 ["controlState"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R3 R4 K6 ["Pressed"]
       44 JUMPIFEQ                         R2 R3 ; [+2]
       46 LOADB                            R1 0 +1
       47 LOADB                            R1 1
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K3 ["controlState"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K7 ["Default"]
       54 JUMPIFNOTEQ                      R3 R4 ; [+3]
       56 LOADN                            R2 0
       57 JUMP                             ; [+1]
       58 LOADNIL                          R2
       59 CALL                             R0 2 0
       60 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 LOADN                            R3 3
        3 CALL                             R1 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["onCanvasPositionChanged"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["onCanvasPositionChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K1 [{"selection"}]
        6 GETTABLEKS                       R5 R2 K0 ["selection"]
        8 SETTABLEKS                       R5 R4 K0 ["selection"]
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R6 R0 K2 ["tag"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R8 R4 K3 ["Color"]
       21 GETTABLEKS                       R7 R8 K4 ["Shift"]
       23 GETTABLEKS                       R6 R7 K5 ["Shift_400"]
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R9 0 1
       34 GETTABLEKS                       R10 R2 K7 ["scrollBarVisibility"]
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 7
       40 CALL                             R8 0 1
       41 GETUPVAL                         R10 5
       42 GETTABLEKS                       R9 R10 K8 ["useRef"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 1
       46 GETUPVAL                         R11 8
       47 GETTABLEKS                       R10 R11 K9 ["useAnimatedBinding"]
       49 LOADN                            R11 1
       50 CALL                             R10 1 2
       51 GETUPVAL                         R13 5
       52 GETTABLEKS                       R12 R13 K10 ["useCallback"]
       54 NEWCLOSURE                       R13 P1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R11
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          UPVAL U9
       60 NEWTABLE                         R14 0 1
       62 MOVE                             R15 R6
       63 SETLIST                          R14 R15 1 [1]
       65 CALL                             R12 2 1
       66 GETUPVAL                         R14 5
       67 GETTABLEKS                       R13 R14 K11 ["useEffect"]
       69 NEWCLOSURE                       R14 P2
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R12
       72 CAPTURE                          UPVAL U10
       73 NEWTABLE                         R15 0 2
       75 GETTABLEKS                       R16 R2 K7 ["scrollBarVisibility"]
       77 GETTABLEKS                       R17 R2 K12 ["controlState"]
       79 SETLIST                          R15 R16 2 [1]
       81 CALL                             R13 2 0
       82 GETUPVAL                         R14 5
       83 GETTABLEKS                       R13 R14 K13 ["createElement"]
       85 LOADK                            R14 K14 ["ScrollingFrame"]
       86 NEWTABLE                         R15 32 0
       88 GETTABLEKS                       R16 R2 K15 ["AutomaticCanvasSize"]
       90 SETTABLEKS                       R16 R15 K15 ["AutomaticCanvasSize"]
       92 GETTABLEKS                       R16 R2 K16 ["CanvasSize"]
       94 SETTABLEKS                       R16 R15 K16 ["CanvasSize"]
       96 GETTABLEKS                       R16 R2 K17 ["ClipsDescendants"]
       98 SETTABLEKS                       R16 R15 K17 ["ClipsDescendants"]
      100 GETTABLEKS                       R16 R2 K18 ["ScrollingDirection"]
      102 SETTABLEKS                       R16 R15 K18 ["ScrollingDirection"]
      104 GETTABLEKS                       R16 R2 K19 ["ScrollingEnabled"]
      106 SETTABLEKS                       R16 R15 K19 ["ScrollingEnabled"]
      108 GETTABLEKS                       R16 R6 K20 ["Color3"]
      110 SETTABLEKS                       R16 R15 K21 ["ScrollBarImageColor3"]
      112 SETTABLEKS                       R10 R15 K22 ["ScrollBarImageTransparency"]
      114 SETTABLEKS                       R7 R15 K23 ["ScrollBarThickness"]
      116 GETTABLEKS                       R16 R2 K24 ["VerticalScrollBarInset"]
      118 SETTABLEKS                       R16 R15 K24 ["VerticalScrollBarInset"]
      120 GETTABLEKS                       R16 R2 K25 ["HorizontalScrollBarInset"]
      122 SETTABLEKS                       R16 R15 K25 ["HorizontalScrollBarInset"]
      124 LOADN                            R16 1
      125 SETTABLEKS                       R16 R15 K26 ["BackgroundTransparency"]
      127 LOADN                            R16 0
      128 SETTABLEKS                       R16 R15 K27 ["BorderSizePixel"]
      130 GETTABLEKS                       R16 R2 K28 ["AutomaticSize"]
      132 SETTABLEKS                       R16 R15 K28 ["AutomaticSize"]
      134 GETIMPORT                        R16 K31 [UDim2.fromScale]
      136 LOADN                            R17 1
      137 LOADN                            R18 1
      138 CALL                             R16 2 1
      139 SETTABLEKS                       R16 R15 K32 ["Size"]
      141 GETTABLEKS                       R16 R3 K33 ["Selectable"]
      143 SETTABLEKS                       R16 R15 K33 ["Selectable"]
      145 GETTABLEKS                       R16 R3 K34 ["NextSelectionUp"]
      147 SETTABLEKS                       R16 R15 K34 ["NextSelectionUp"]
      149 GETTABLEKS                       R16 R3 K35 ["NextSelectionDown"]
      151 SETTABLEKS                       R16 R15 K35 ["NextSelectionDown"]
      153 GETTABLEKS                       R16 R3 K36 ["NextSelectionLeft"]
      155 SETTABLEKS                       R16 R15 K36 ["NextSelectionLeft"]
      157 GETTABLEKS                       R16 R3 K37 ["NextSelectionRight"]
      159 SETTABLEKS                       R16 R15 K37 ["NextSelectionRight"]
      161 GETTABLEKS                       R17 R3 K38 ["SelectionImageObject"]
      163 OR                               R16 R17 R8
      164 SETTABLEKS                       R16 R15 K38 ["SelectionImageObject"]
      166 GETTABLEKS                       R16 R3 K39 ["SelectionOrder"]
      168 SETTABLEKS                       R16 R15 K39 ["SelectionOrder"]
      170 GETUPVAL                         R18 5
      171 GETTABLEKS                       R17 R18 K40 ["Change"]
      173 GETTABLEKS                       R16 R17 K41 ["CanvasPosition"]
      175 GETTABLEKS                       R18 R2 K7 ["scrollBarVisibility"]
      177 JUMPIFNOTEQKS                    R18 K42 ["Auto"] ; [+5]
      179 NEWCLOSURE                       R17 P3
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R2
      182 JUMP                             ; [+2]
      183 GETTABLEKS                       R17 R2 K43 ["onCanvasPositionChanged"]
      185 SETTABLE                         R17 R15 R16
      186 GETUPVAL                         R18 5
      187 GETTABLEKS                       R17 R18 K40 ["Change"]
      189 GETTABLEKS                       R16 R17 K44 ["AbsoluteCanvasSize"]
      191 GETTABLEKS                       R17 R2 K45 ["onAbsoluteCanvasSizeChanged"]
      193 SETTABLE                         R17 R15 R16
      194 GETUPVAL                         R18 5
      195 GETTABLEKS                       R17 R18 K40 ["Change"]
      197 GETTABLEKS                       R16 R17 K46 ["AbsoluteWindowSize"]
      199 GETTABLEKS                       R17 R2 K47 ["onAbsoluteWindowSizeChanged"]
      201 SETTABLE                         R17 R15 R16
      202 SETTABLEKS                       R1 R15 K48 ["ref"]
      204 GETUPVAL                         R17 5
      205 GETTABLEKS                       R16 R17 K49 ["Tag"]
      207 SETTABLE                         R5 R15 R16
      208 GETTABLEKS                       R16 R2 K50 ["children"]
      210 CALL                             R13 3 -1
      211 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactOtter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R7 K12 ["withDefaults"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["withGuiObjectProps"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Providers"]
       44 GETTABLEKS                       R9 R10 K15 ["Style"]
       46 GETTABLEKS                       R8 R9 K16 ["useStyleTags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R11 R0 K14 ["Providers"]
       53 GETTABLEKS                       R10 R11 K15 ["Style"]
       55 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R12 R0 K14 ["Providers"]
       62 GETTABLEKS                       R11 R12 K18 ["Cursor"]
       64 GETTABLEKS                       R10 R11 K19 ["useCursor"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R12 R0 K20 ["Enums"]
       71 GETTABLEKS                       R11 R12 K21 ["Visibility"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R13 R0 K20 ["Enums"]
       78 GETTABLEKS                       R12 R13 K22 ["ControlState"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K24 [{"frequency"}]
       82 LOADN                            R13 2
       83 SETTABLEKS                       R13 R12 K23 ["frequency"]
       85 DUPTABLE                         R13 K26 [{"scrollBarVisibility"}]
       86 LOADK                            R14 K27 ["Auto"]
       87 SETTABLEKS                       R14 R13 K25 ["scrollBarVisibility"]
       89 DUPCLOSURE                       R14 K28 [PROTO_5]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R11
      101 GETTABLEKS                       R15 R2 K29 ["memo"]
      103 GETTABLEKS                       R16 R2 K30 ["forwardRef"]
      105 MOVE                             R17 R14
      106 CALL                             R16 1 -1
      107 CALL                             R15 -1 -1
      108 RETURN                           R15 -1
