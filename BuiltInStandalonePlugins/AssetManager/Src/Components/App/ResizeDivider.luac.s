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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

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
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R13 0 1
       70 MOVE                             R14 R10
       71 SETLIST                          R13 R14 1 [1]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       77 NEWCLOSURE                       R13 P3
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R14 0 0
       82 CALL                             R12 2 1
       83 GETTABLEKS                       R13 R1 K13 ["Size"]
       85 GETTABLEKS                       R13 R13 K14 ["Size_400"]
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K15 ["createElement"]
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K16 ["View"]
       93 DUPTABLE                         R16 K24 [{["LayoutOrder"], ["ZIndex"] = 10, ["Size"], ["Position"], ["tag"], ["onStateChanged"], ["stateLayer"]}]
       94 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
       96 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       98 JUMPIFNOT                        R2 ; [+8]
       99 GETIMPORT                        R17 K26 [UDim2.new]
      101 LOADN                            R18 0
      102 MOVE                             R19 R13
      103 LOADN                            R20 1
      104 LOADN                            R21 0
      105 CALL                             R17 4 1
      106 JUMP                             ; [+7]
      107 GETIMPORT                        R17 K26 [UDim2.new]
      109 LOADN                            R18 1
      110 LOADN                            R19 0
      111 LOADN                            R20 0
      112 MOVE                             R21 R13
      113 CALL                             R17 4 1
      114 SETTABLEKS                       R17 R16 K13 ["Size"]
      116 JUMPIFNOT                        R2 ; [+9]
      117 GETIMPORT                        R17 K26 [UDim2.new]
      119 LOADN                            R18 0
      120 MINUS                            R20 R13
      121 DIVK                             R19 R20 K27 [2]
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 CALL                             R17 4 1
      125 JUMP                             ; [+8]
      126 GETIMPORT                        R17 K26 [UDim2.new]
      128 LOADN                            R18 0
      129 LOADN                            R19 0
      130 LOADN                            R20 0
      131 MINUS                            R22 R13
      132 DIVK                             R21 R22 K27 [2]
      133 CALL                             R17 4 1
      134 SETTABLEKS                       R17 R16 K20 ["Position"]
      136 JUMPIFNOT                        R2 ; [+2]
      137 LOADK                            R17 K28 ["align-x-center"]
      138 JUMP                             ; [+1]
      139 LOADK                            R17 K29 ["align-y-center"]
      140 SETTABLEKS                       R17 R16 K21 ["tag"]
      142 GETUPVAL                         R18 2
      143 CALL                             R18 0 1
      144 JUMPIFNOT                        R18 ; [+2]
      145 MOVE                             R17 R9
      146 JUMP                             ; [+1]
      147 LOADNIL                          R17
      148 SETTABLEKS                       R17 R16 K22 ["onStateChanged"]
      150 DUPTABLE                         R17 K31 [{"affordance"}]
      151 GETUPVAL                         R18 0
      152 GETTABLEKS                       R18 R18 K3 ["Enums"]
      154 GETTABLEKS                       R18 R18 K32 ["StateLayerAffordance"]
      156 GETTABLEKS                       R18 R18 K33 ["None"]
      158 SETTABLEKS                       R18 R17 K30 ["affordance"]
      160 SETTABLEKS                       R17 R16 K23 ["stateLayer"]
      162 DUPTABLE                         R17 K36 [{"Divider", "Drag"}]
      163 GETUPVAL                         R19 2
      164 CALL                             R19 0 1
      165 JUMPIFNOT                        R19 ; [+12]
      166 JUMPIFNOT                        R8 ; [+11]
      167 GETUPVAL                         R18 1
      168 GETTABLEKS                       R18 R18 K15 ["createElement"]
      170 GETUPVAL                         R19 3
      171 DUPTABLE                         R20 K37 [{"orientation"}]
      172 GETTABLEKS                       R21 R0 K2 ["orientation"]
      174 SETTABLEKS                       R21 R20 K2 ["orientation"]
      176 CALL                             R18 2 1
      177 JUMP                             ; [+12]
      178 GETUPVAL                         R18 1
      179 GETTABLEKS                       R18 R18 K15 ["createElement"]
      181 GETUPVAL                         R19 0
      182 GETTABLEKS                       R19 R19 K34 ["Divider"]
      184 DUPTABLE                         R20 K37 [{"orientation"}]
      185 GETTABLEKS                       R21 R0 K2 ["orientation"]
      187 SETTABLEKS                       R21 R20 K2 ["orientation"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K34 ["Divider"]
      192 GETUPVAL                         R18 1
      193 GETTABLEKS                       R18 R18 K15 ["createElement"]
      195 LOADK                            R19 K38 ["UIDragDetector"]
      196 NEWTABLE                         R20 8 0
      198 JUMPIFNOT                        R2 ; [+6]
      199 GETIMPORT                        R21 K40 [Vector2.new]
      201 LOADN                            R22 1
      202 LOADN                            R23 0
      203 CALL                             R21 2 1
      204 JUMP                             ; [+5]
      205 GETIMPORT                        R21 K40 [Vector2.new]
      207 LOADN                            R22 0
      208 LOADN                            R23 1
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K41 ["DragAxis"]
      212 GETIMPORT                        R21 K45 [Enum.UIDragDetectorDragStyle.TranslateLine]
      214 SETTABLEKS                       R21 R20 K46 ["DragStyle"]
      216 GETIMPORT                        R21 K49 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      218 SETTABLEKS                       R21 R20 K50 ["ResponseStyle"]
      220 GETUPVAL                         R21 1
      221 GETTABLEKS                       R21 R21 K51 ["Event"]
      223 GETTABLEKS                       R21 R21 K52 ["DragStart"]
      225 SETTABLE                         R11 R20 R21
      226 GETUPVAL                         R21 1
      227 GETTABLEKS                       R21 R21 K51 ["Event"]
      229 GETTABLEKS                       R21 R21 K53 ["DragContinue"]
      231 SETTABLE                         R10 R20 R21
      232 GETUPVAL                         R21 1
      233 GETTABLEKS                       R21 R21 K51 ["Event"]
      235 GETTABLEKS                       R21 R21 K54 ["DragEnd"]
      237 SETTABLE                         R12 R20 R21
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K35 ["Drag"]
      241 CALL                             R14 3 -1
      242 RETURN                           R14 -1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagAmrHeaderDividerHoverThicken"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_4]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 RETURN                           R5 1
