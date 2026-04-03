PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R2 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["Enums"]
       12 GETTABLEKS                       R2 R3 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R2 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+11]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K0 ["Enums"]
       22 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R3 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 2
       29 JUMPIF                           R1 ; [+9]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K0 ["Enums"]
       34 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       36 GETTABLEKS                       R2 R3 K4 ["Default"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R1 K1 ["X"]
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K2 ["nodeWidth"]
       11 MUL                              R6 R7 R2
       12 SUB                              R4 R5 R6
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 LOADB                            R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K3 ["Enums"]
       21 GETTABLEKS                       R5 R6 K4 ["ControlState"]
       23 GETTABLEKS                       R4 R5 K5 ["Hover"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R1 K1 ["X"]
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K2 ["nodeWidth"]
       11 MUL                              R6 R7 R2
       12 ADD                              R4 R5 R6
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 LOADB                            R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K3 ["Enums"]
       21 GETTABLEKS                       R5 R6 K4 ["ControlState"]
       23 GETTABLEKS                       R4 R5 K5 ["Hover"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R5 R1 K1 ["X"]
        7 GETUPVAL                         R6 1
        8 SUB                              R4 R5 R6
        9 DIV                              R3 R4 R2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["OnResized"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K3 ["CHILD_WIDTH"]
       16 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R5 K6 [math.max]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R6 R1 K1 ["X"]
        8 SUB                              R4 R5 R6
        9 DIV                              R3 R4 R2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["OnResized"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K3 ["CHILD_WIDTH"]
       16 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R5 K6 [math.max]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["Enums"]
        4 GETTABLEKS                       R4 R5 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R4 K2 ["Default"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["CanvasContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 LOADK                            R4 K3 ["SizeEW"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["useState"]
       20 LOADN                            R5 0
       21 CALL                             R4 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K4 ["useState"]
       25 LOADB                            R7 0
       26 CALL                             R6 1 2
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R6
       34 NEWTABLE                         R10 0 2
       36 MOVE                             R11 R3
       37 MOVE                             R12 R6
       38 SETLIST                          R10 R11 2 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U4
       51 NEWTABLE                         R11 0 4
       53 MOVE                             R12 R5
       54 MOVE                             R13 R7
       55 GETTABLEKS                       R14 R1 K6 ["observeZoomRatio"]
       57 GETTABLEKS                       R15 R0 K7 ["nodeWidth"]
       59 SETLIST                          R11 R12 4 [1]
       61 CALL                             R9 2 1
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       65 NEWCLOSURE                       R11 P2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U4
       72 NEWTABLE                         R12 0 4
       74 MOVE                             R13 R5
       75 MOVE                             R14 R7
       76 GETTABLEKS                       R15 R1 K6 ["observeZoomRatio"]
       78 GETTABLEKS                       R16 R0 K7 ["nodeWidth"]
       80 SETLIST                          R12 R13 4 [1]
       82 CALL                             R10 2 1
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R11 R12 K5 ["useCallback"]
       86 NEWCLOSURE                       R12 P3
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U5
       91 NEWTABLE                         R13 0 3
       93 GETTABLEKS                       R14 R1 K6 ["observeZoomRatio"]
       95 MOVE                             R15 R4
       96 GETTABLEKS                       R16 R0 K8 ["OnResized"]
       98 SETLIST                          R13 R14 3 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R12 R13 K5 ["useCallback"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R14 0 3
      111 GETTABLEKS                       R15 R1 K6 ["observeZoomRatio"]
      113 MOVE                             R16 R4
      114 GETTABLEKS                       R17 R0 K8 ["OnResized"]
      116 SETLIST                          R14 R15 3 [1]
      118 CALL                             R12 2 1
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R13 R14 K5 ["useCallback"]
      122 NEWCLOSURE                       R14 P5
      123 CAPTURE                          VAL R3
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R15 0 1
      128 MOVE                             R16 R7
      129 SETLIST                          R15 R16 1 [1]
      131 CALL                             R13 2 1
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R14 R15 K9 ["createElement"]
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R15 R16 K10 ["Fragment"]
      138 NEWTABLE                         R16 0 0
      140 DUPTABLE                         R17 K13 [{"ResizeBarLeft", "ResizeBarRight"}]
      141 GETUPVAL                         R19 6
      142 JUMPIFNOT                        R19 ; [+82]
      143 GETUPVAL                         R19 0
      144 GETTABLEKS                       R18 R19 K9 ["createElement"]
      146 GETUPVAL                         R20 4
      147 GETTABLEKS                       R19 R20 K14 ["View"]
      149 DUPTABLE                         R20 K20 [{"Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      150 GETIMPORT                        R21 K23 [UDim2.new]
      152 LOADN                            R22 0
      153 LOADN                            R23 5
      154 LOADN                            R24 1
      155 LOADN                            R25 0
      156 CALL                             R21 4 1
      157 SETTABLEKS                       R21 R20 K15 ["Size"]
      159 GETIMPORT                        R21 K23 [UDim2.new]
      161 LOADN                            R22 0
      162 LOADN                            R23 0
      163 LOADN                            R24 0
      164 LOADN                            R25 0
      165 CALL                             R21 4 1
      166 SETTABLEKS                       R21 R20 K16 ["Position"]
      168 GETTABLEKS                       R21 R0 K17 ["ZIndex"]
      170 SETTABLEKS                       R21 R20 K17 ["ZIndex"]
      172 SETTABLEKS                       R8 R20 K18 ["onStateChanged"]
      174 DUPTABLE                         R21 K25 [{"affordance"}]
      175 GETUPVAL                         R25 4
      176 GETTABLEKS                       R24 R25 K26 ["Enums"]
      178 GETTABLEKS                       R23 R24 K27 ["StateLayerAffordance"]
      180 GETTABLEKS                       R22 R23 K28 ["None"]
      182 SETTABLEKS                       R22 R21 K24 ["affordance"]
      184 SETTABLEKS                       R21 R20 K19 ["stateLayer"]
      186 DUPTABLE                         R21 K30 [{"DragDetector"}]
      187 GETUPVAL                         R23 0
      188 GETTABLEKS                       R22 R23 K9 ["createElement"]
      190 LOADK                            R23 K31 ["UIDragDetector"]
      191 NEWTABLE                         R24 8 0
      193 GETIMPORT                        R25 K35 [Enum.UIDragDetectorDragStyle.Scriptable]
      195 SETTABLEKS                       R25 R24 K36 ["DragStyle"]
      197 GETTABLEKS                       R25 R2 K37 ["getViewport"]
      199 CALL                             R25 0 1
      200 SETTABLEKS                       R25 R24 K38 ["ReferenceUIInstance"]
      202 GETUPVAL                         R27 0
      203 GETTABLEKS                       R26 R27 K39 ["Event"]
      205 GETTABLEKS                       R25 R26 K40 ["DragStart"]
      207 SETTABLE                         R10 R24 R25
      208 GETUPVAL                         R27 0
      209 GETTABLEKS                       R26 R27 K39 ["Event"]
      211 GETTABLEKS                       R25 R26 K41 ["DragContinue"]
      213 SETTABLE                         R12 R24 R25
      214 GETUPVAL                         R27 0
      215 GETTABLEKS                       R26 R27 K39 ["Event"]
      217 GETTABLEKS                       R25 R26 K42 ["DragEnd"]
      219 SETTABLE                         R13 R24 R25
      220 CALL                             R22 2 1
      221 SETTABLEKS                       R22 R21 K29 ["DragDetector"]
      223 CALL                             R18 3 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R18
      226 SETTABLEKS                       R18 R17 K11 ["ResizeBarLeft"]
      228 GETUPVAL                         R19 7
      229 JUMPIFNOT                        R19 ; [+82]
      230 GETUPVAL                         R19 0
      231 GETTABLEKS                       R18 R19 K9 ["createElement"]
      233 GETUPVAL                         R20 4
      234 GETTABLEKS                       R19 R20 K14 ["View"]
      236 DUPTABLE                         R20 K20 [{"Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      237 GETIMPORT                        R21 K23 [UDim2.new]
      239 LOADN                            R22 0
      240 LOADN                            R23 5
      241 LOADN                            R24 1
      242 LOADN                            R25 0
      243 CALL                             R21 4 1
      244 SETTABLEKS                       R21 R20 K15 ["Size"]
      246 GETIMPORT                        R21 K23 [UDim2.new]
      248 LOADN                            R22 1
      249 LOADN                            R23 251
      250 LOADN                            R24 0
      251 LOADN                            R25 0
      252 CALL                             R21 4 1
      253 SETTABLEKS                       R21 R20 K16 ["Position"]
      255 GETTABLEKS                       R21 R0 K17 ["ZIndex"]
      257 SETTABLEKS                       R21 R20 K17 ["ZIndex"]
      259 SETTABLEKS                       R8 R20 K18 ["onStateChanged"]
      261 DUPTABLE                         R21 K25 [{"affordance"}]
      262 GETUPVAL                         R25 4
      263 GETTABLEKS                       R24 R25 K26 ["Enums"]
      265 GETTABLEKS                       R23 R24 K27 ["StateLayerAffordance"]
      267 GETTABLEKS                       R22 R23 K28 ["None"]
      269 SETTABLEKS                       R22 R21 K24 ["affordance"]
      271 SETTABLEKS                       R21 R20 K19 ["stateLayer"]
      273 DUPTABLE                         R21 K30 [{"DragDetector"}]
      274 GETUPVAL                         R23 0
      275 GETTABLEKS                       R22 R23 K9 ["createElement"]
      277 LOADK                            R23 K31 ["UIDragDetector"]
      278 NEWTABLE                         R24 8 0
      280 GETIMPORT                        R25 K35 [Enum.UIDragDetectorDragStyle.Scriptable]
      282 SETTABLEKS                       R25 R24 K36 ["DragStyle"]
      284 GETTABLEKS                       R25 R2 K37 ["getViewport"]
      286 CALL                             R25 0 1
      287 SETTABLEKS                       R25 R24 K38 ["ReferenceUIInstance"]
      289 GETUPVAL                         R27 0
      290 GETTABLEKS                       R26 R27 K39 ["Event"]
      292 GETTABLEKS                       R25 R26 K40 ["DragStart"]
      294 SETTABLE                         R9 R24 R25
      295 GETUPVAL                         R27 0
      296 GETTABLEKS                       R26 R27 K39 ["Event"]
      298 GETTABLEKS                       R25 R26 K41 ["DragContinue"]
      300 SETTABLE                         R11 R24 R25
      301 GETUPVAL                         R27 0
      302 GETTABLEKS                       R26 R27 K39 ["Event"]
      304 GETTABLEKS                       R25 R26 K42 ["DragEnd"]
      306 SETTABLE                         R13 R24 R25
      307 CALL                             R22 2 1
      308 SETTABLEKS                       R22 R21 K29 ["DragDetector"]
      310 CALL                             R18 3 1
      311 JUMP                             ; [+1]
      312 LOADNIL                          R18
      313 SETTABLEKS                       R18 R17 K12 ["ResizeBarRight"]
      315 CALL                             R14 3 -1
      316 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K13 ["ViewportRectContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R8 K15 ["useOnStateChangedCursor"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K17 [game]
       51 LOADK                            R9 K18 ["AnimGraphDebugRightResize"]
       52 LOADB                            R10 0
       53 NAMECALL                         R7 R7 K19 ["DefineFastFlag"]
       55 CALL                             R7 3 1
       56 GETIMPORT                        R8 K17 [game]
       58 LOADK                            R10 K20 ["AnimGraphDebugLeftResize"]
       59 LOADB                            R11 0
       60 NAMECALL                         R8 R8 K19 ["DefineFastFlag"]
       62 CALL                             R8 3 1
       63 DUPCLOSURE                       R9 K21 [PROTO_6]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 RETURN                           R9 1
