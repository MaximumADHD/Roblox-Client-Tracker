PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scrollBarVisibility"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADN                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["FoundationScrollingFrameBarSmaller"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K3 ["Size"]
       17 GETTABLEKS                       R0 R1 K4 ["Size_150"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R1 R2 K3 ["Size"]
       23 GETTABLEKS                       R0 R1 K5 ["Size_300"]
       25 RETURN                           R0 1

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
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R9 0 1
       35 GETTABLEKS                       R10 R2 K7 ["scrollBarVisibility"]
       37 SETLIST                          R9 R10 1 [1]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 8
       41 CALL                             R8 0 1
       42 GETUPVAL                         R10 5
       43 GETTABLEKS                       R9 R10 K8 ["useRef"]
       45 LOADNIL                          R10
       46 CALL                             R9 1 1
       47 GETUPVAL                         R11 9
       48 GETTABLEKS                       R10 R11 K9 ["useAnimatedBinding"]
       50 LOADN                            R11 1
       51 CALL                             R10 1 2
       52 GETUPVAL                         R13 5
       53 GETTABLEKS                       R12 R13 K10 ["useCallback"]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R11
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U10
       61 NEWTABLE                         R14 0 1
       63 MOVE                             R15 R6
       64 SETLIST                          R14 R15 1 [1]
       66 CALL                             R12 2 1
       67 GETUPVAL                         R14 5
       68 GETTABLEKS                       R13 R14 K11 ["useEffect"]
       70 NEWCLOSURE                       R14 P2
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R12
       73 CAPTURE                          UPVAL U11
       74 NEWTABLE                         R15 0 2
       76 GETTABLEKS                       R16 R2 K7 ["scrollBarVisibility"]
       78 GETTABLEKS                       R17 R2 K12 ["controlState"]
       80 SETLIST                          R15 R16 2 [1]
       82 CALL                             R13 2 0
       83 GETUPVAL                         R14 5
       84 GETTABLEKS                       R13 R14 K13 ["createElement"]
       86 LOADK                            R14 K14 ["ScrollingFrame"]
       87 NEWTABLE                         R15 32 0
       89 GETTABLEKS                       R16 R2 K15 ["AutomaticCanvasSize"]
       91 SETTABLEKS                       R16 R15 K15 ["AutomaticCanvasSize"]
       93 GETTABLEKS                       R16 R2 K16 ["CanvasSize"]
       95 SETTABLEKS                       R16 R15 K16 ["CanvasSize"]
       97 GETTABLEKS                       R16 R2 K17 ["ClipsDescendants"]
       99 SETTABLEKS                       R16 R15 K17 ["ClipsDescendants"]
      101 GETTABLEKS                       R16 R2 K18 ["ScrollingDirection"]
      103 SETTABLEKS                       R16 R15 K18 ["ScrollingDirection"]
      105 GETTABLEKS                       R16 R2 K19 ["ScrollingEnabled"]
      107 SETTABLEKS                       R16 R15 K19 ["ScrollingEnabled"]
      109 GETTABLEKS                       R16 R6 K20 ["Color3"]
      111 SETTABLEKS                       R16 R15 K21 ["ScrollBarImageColor3"]
      113 SETTABLEKS                       R10 R15 K22 ["ScrollBarImageTransparency"]
      115 SETTABLEKS                       R7 R15 K23 ["ScrollBarThickness"]
      117 GETTABLEKS                       R16 R2 K24 ["VerticalScrollBarInset"]
      119 SETTABLEKS                       R16 R15 K24 ["VerticalScrollBarInset"]
      121 GETTABLEKS                       R16 R2 K25 ["HorizontalScrollBarInset"]
      123 SETTABLEKS                       R16 R15 K25 ["HorizontalScrollBarInset"]
      125 LOADN                            R16 1
      126 SETTABLEKS                       R16 R15 K26 ["BackgroundTransparency"]
      128 LOADN                            R16 0
      129 SETTABLEKS                       R16 R15 K27 ["BorderSizePixel"]
      131 GETTABLEKS                       R16 R2 K28 ["AutomaticSize"]
      133 SETTABLEKS                       R16 R15 K28 ["AutomaticSize"]
      135 GETIMPORT                        R16 K31 [UDim2.fromScale]
      137 LOADN                            R17 1
      138 LOADN                            R18 1
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K32 ["Size"]
      142 GETTABLEKS                       R16 R3 K33 ["Selectable"]
      144 SETTABLEKS                       R16 R15 K33 ["Selectable"]
      146 GETTABLEKS                       R16 R3 K34 ["NextSelectionUp"]
      148 SETTABLEKS                       R16 R15 K34 ["NextSelectionUp"]
      150 GETTABLEKS                       R16 R3 K35 ["NextSelectionDown"]
      152 SETTABLEKS                       R16 R15 K35 ["NextSelectionDown"]
      154 GETTABLEKS                       R16 R3 K36 ["NextSelectionLeft"]
      156 SETTABLEKS                       R16 R15 K36 ["NextSelectionLeft"]
      158 GETTABLEKS                       R16 R3 K37 ["NextSelectionRight"]
      160 SETTABLEKS                       R16 R15 K37 ["NextSelectionRight"]
      162 GETTABLEKS                       R17 R3 K38 ["SelectionImageObject"]
      164 OR                               R16 R17 R8
      165 SETTABLEKS                       R16 R15 K38 ["SelectionImageObject"]
      167 GETTABLEKS                       R16 R3 K39 ["SelectionOrder"]
      169 SETTABLEKS                       R16 R15 K39 ["SelectionOrder"]
      171 GETUPVAL                         R18 5
      172 GETTABLEKS                       R17 R18 K40 ["Change"]
      174 GETTABLEKS                       R16 R17 K41 ["CanvasPosition"]
      176 GETTABLEKS                       R18 R2 K7 ["scrollBarVisibility"]
      178 JUMPIFNOTEQKS                    R18 K42 ["Auto"] ; [+5]
      180 NEWCLOSURE                       R17 P3
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R2
      183 JUMP                             ; [+2]
      184 GETTABLEKS                       R17 R2 K43 ["onCanvasPositionChanged"]
      186 SETTABLE                         R17 R15 R16
      187 GETUPVAL                         R18 5
      188 GETTABLEKS                       R17 R18 K40 ["Change"]
      190 GETTABLEKS                       R16 R17 K44 ["AbsoluteCanvasSize"]
      192 GETTABLEKS                       R17 R2 K45 ["onAbsoluteCanvasSizeChanged"]
      194 SETTABLE                         R17 R15 R16
      195 GETUPVAL                         R18 5
      196 GETTABLEKS                       R17 R18 K40 ["Change"]
      198 GETTABLEKS                       R16 R17 K46 ["AbsoluteWindowSize"]
      200 GETTABLEKS                       R17 R2 K47 ["onAbsoluteWindowSizeChanged"]
      202 SETTABLE                         R17 R15 R16
      203 SETTABLEKS                       R1 R15 K48 ["ref"]
      205 GETUPVAL                         R17 5
      206 GETTABLEKS                       R16 R17 K49 ["Tag"]
      208 SETTABLE                         R5 R15 R16
      209 GETTABLEKS                       R16 R2 K50 ["children"]
      211 CALL                             R13 3 -1
      212 RETURN                           R13 -1

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
       42 GETTABLEKS                       R9 R0 K11 ["Utility"]
       44 GETTABLEKS                       R8 R9 K14 ["Flags"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Providers"]
       51 GETTABLEKS                       R10 R11 K16 ["Style"]
       53 GETTABLEKS                       R9 R10 K17 ["useStyleTags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K15 ["Providers"]
       60 GETTABLEKS                       R11 R12 K16 ["Style"]
       62 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R13 R0 K15 ["Providers"]
       69 GETTABLEKS                       R12 R13 K19 ["Cursor"]
       71 GETTABLEKS                       R11 R12 K20 ["useCursor"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R13 R0 K21 ["Enums"]
       78 GETTABLEKS                       R12 R13 K22 ["Visibility"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R14 R0 K21 ["Enums"]
       85 GETTABLEKS                       R13 R14 K23 ["ControlState"]
       87 CALL                             R12 1 1
       88 DUPTABLE                         R13 K25 [{"frequency"}]
       89 LOADN                            R14 2
       90 SETTABLEKS                       R14 R13 K24 ["frequency"]
       92 DUPTABLE                         R14 K27 [{"scrollBarVisibility"}]
       93 LOADK                            R15 K28 ["Auto"]
       94 SETTABLEKS                       R15 R14 K26 ["scrollBarVisibility"]
       96 DUPCLOSURE                       R15 K29 [PROTO_5]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R12
      109 GETTABLEKS                       R16 R2 K30 ["memo"]
      111 GETTABLEKS                       R17 R2 K31 ["forwardRef"]
      113 MOVE                             R18 R15
      114 CALL                             R17 1 -1
      115 CALL                             R16 -1 -1
      116 RETURN                           R16 -1
