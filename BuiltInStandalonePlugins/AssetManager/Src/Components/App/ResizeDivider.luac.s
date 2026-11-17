PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Enums"]
        5 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        7 GETTABLEKS                       R3 R3 K2 ["Hover"]
        9 JUMPIFEQ                         R0 R3 ; [+12]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["Enums"]
       14 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       16 GETTABLEKS                       R3 R3 K3 ["Pressed"]
       18 JUMPIFEQ                         R0 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R2 R0 K0 ["DragUDim2"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R2 R0 K0 ["DragUDim2"]
        9 GETTABLEKS                       R2 R2 K2 ["Y"]
       11 GETTABLEKS                       R4 R2 K3 ["Offset"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["current"]
       16 GETTABLEKS                       R5 R5 K3 ["Offset"]
       18 SUB                              R3 R4 R5
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R2 R4 K4 ["current"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["OnResize"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [UDim.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K3 ["current"]
        6 GETUPVAL                         R2 1
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["orientation"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["Enums"]
       11 GETTABLEKS                       R4 R4 K4 ["Orientation"]
       13 GETTABLEKS                       R4 R4 K5 ["Vertical"]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["useRef"]
       22 GETIMPORT                        R4 K9 [UDim.new]
       24 CALL                             R4 0 -1
       25 CALL                             R3 -1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K10 ["useState"]
       29 LOADB                            R5 0
       30 CALL                             R4 1 2
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K10 ["useState"]
       34 LOADB                            R7 0
       35 CALL                             R6 1 2
       36 OR                               R8 R4 R6
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K11 ["useCallback"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U0
       43 NEWTABLE                         R11 0 0
       45 CALL                             R9 2 1
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K11 ["useCallback"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R12 0 2
       55 MOVE                             R13 R2
       56 GETTABLEKS                       R14 R0 K12 ["OnResize"]
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       64 NEWCLOSURE                       R12 P2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 NEWTABLE                         R13 0 1
       69 MOVE                             R14 R10
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       76 NEWCLOSURE                       R13 P3
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 NEWTABLE                         R14 0 0
       81 CALL                             R12 2 1
       82 GETTABLEKS                       R13 R1 K13 ["Size"]
       84 GETTABLEKS                       R13 R13 K14 ["Size_400"]
       86 GETUPVAL                         R14 1
       87 GETTABLEKS                       R14 R14 K15 ["createElement"]
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K16 ["View"]
       92 DUPTABLE                         R16 K24 [{["LayoutOrder"], ["ZIndex"] = 10, ["Size"], ["Position"], ["tag"], ["onStateChanged"], ["stateLayer"]}]
       93 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
       95 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       97 JUMPIFNOT                        R2 ; [+8]
       98 GETIMPORT                        R17 K26 [UDim2.new]
      100 LOADN                            R18 0
      101 MOVE                             R19 R13
      102 LOADN                            R20 1
      103 LOADN                            R21 0
      104 CALL                             R17 4 1
      105 JUMP                             ; [+7]
      106 GETIMPORT                        R17 K26 [UDim2.new]
      108 LOADN                            R18 1
      109 LOADN                            R19 0
      110 LOADN                            R20 0
      111 MOVE                             R21 R13
      112 CALL                             R17 4 1
      113 SETTABLEKS                       R17 R16 K13 ["Size"]
      115 JUMPIFNOT                        R2 ; [+9]
      116 GETIMPORT                        R17 K26 [UDim2.new]
      118 LOADN                            R18 0
      119 MINUS                            R20 R13
      120 DIVK                             R19 R20 K27 [2]
      121 LOADN                            R20 0
      122 LOADN                            R21 0
      123 CALL                             R17 4 1
      124 JUMP                             ; [+8]
      125 GETIMPORT                        R17 K26 [UDim2.new]
      127 LOADN                            R18 0
      128 LOADN                            R19 0
      129 LOADN                            R20 0
      130 MINUS                            R22 R13
      131 DIVK                             R21 R22 K27 [2]
      132 CALL                             R17 4 1
      133 SETTABLEKS                       R17 R16 K20 ["Position"]
      135 JUMPIFNOT                        R2 ; [+2]
      136 LOADK                            R17 K28 ["align-x-center"]
      137 JUMP                             ; [+1]
      138 LOADK                            R17 K29 ["align-y-center"]
      139 SETTABLEKS                       R17 R16 K21 ["tag"]
      141 SETTABLEKS                       R9 R16 K22 ["onStateChanged"]
      143 DUPTABLE                         R17 K31 [{"affordance"}]
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K3 ["Enums"]
      147 GETTABLEKS                       R18 R18 K32 ["StateLayerAffordance"]
      149 GETTABLEKS                       R18 R18 K33 ["None"]
      151 SETTABLEKS                       R18 R17 K30 ["affordance"]
      153 SETTABLEKS                       R17 R16 K23 ["stateLayer"]
      155 DUPTABLE                         R17 K36 [{"Divider", "Drag"}]
      156 JUMPIFNOT                        R8 ; [+11]
      157 GETUPVAL                         R18 1
      158 GETTABLEKS                       R18 R18 K15 ["createElement"]
      160 GETUPVAL                         R19 2
      161 DUPTABLE                         R20 K37 [{"orientation"}]
      162 GETTABLEKS                       R21 R0 K2 ["orientation"]
      164 SETTABLEKS                       R21 R20 K2 ["orientation"]
      166 CALL                             R18 2 1
      167 JUMP                             ; [+12]
      168 GETUPVAL                         R18 1
      169 GETTABLEKS                       R18 R18 K15 ["createElement"]
      171 GETUPVAL                         R19 0
      172 GETTABLEKS                       R19 R19 K34 ["Divider"]
      174 DUPTABLE                         R20 K37 [{"orientation"}]
      175 GETTABLEKS                       R21 R0 K2 ["orientation"]
      177 SETTABLEKS                       R21 R20 K2 ["orientation"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K34 ["Divider"]
      182 GETUPVAL                         R18 1
      183 GETTABLEKS                       R18 R18 K15 ["createElement"]
      185 LOADK                            R19 K38 ["UIDragDetector"]
      186 NEWTABLE                         R20 8 0
      188 JUMPIFNOT                        R2 ; [+6]
      189 GETIMPORT                        R21 K40 [Vector2.new]
      191 LOADN                            R22 1
      192 LOADN                            R23 0
      193 CALL                             R21 2 1
      194 JUMP                             ; [+5]
      195 GETIMPORT                        R21 K40 [Vector2.new]
      197 LOADN                            R22 0
      198 LOADN                            R23 1
      199 CALL                             R21 2 1
      200 SETTABLEKS                       R21 R20 K41 ["DragAxis"]
      202 GETIMPORT                        R21 K45 [Enum.UIDragDetectorDragStyle.TranslateLine]
      204 SETTABLEKS                       R21 R20 K46 ["DragStyle"]
      206 GETIMPORT                        R21 K49 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      208 SETTABLEKS                       R21 R20 K50 ["ResponseStyle"]
      210 GETUPVAL                         R21 1
      211 GETTABLEKS                       R21 R21 K51 ["Event"]
      213 GETTABLEKS                       R21 R21 K52 ["DragStart"]
      215 SETTABLE                         R11 R20 R21
      216 GETUPVAL                         R21 1
      217 GETTABLEKS                       R21 R21 K51 ["Event"]
      219 GETTABLEKS                       R21 R21 K53 ["DragContinue"]
      221 SETTABLE                         R10 R20 R21
      222 GETUPVAL                         R21 1
      223 GETTABLEKS                       R21 R21 K51 ["Event"]
      225 GETTABLEKS                       R21 R21 K54 ["DragEnd"]
      227 SETTABLE                         R12 R20 R21
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K35 ["Drag"]
      231 CALL                             R14 3 -1
      232 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Shared"]
       29 GETTABLEKS                       R4 R4 K12 ["CustomDividerHighlight"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_4]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
