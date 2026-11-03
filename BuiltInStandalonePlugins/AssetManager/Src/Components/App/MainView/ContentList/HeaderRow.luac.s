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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["LayoutController"]
        4 NAMECALL                         R2 R2 K1 ["getColumnWidths"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Index"]
       10 GETTABLE                         R1 R2 R3
       11 GETTABLEKS                       R1 R1 K3 ["Offset"]
       13 SETTABLEKS                       R1 R0 K4 ["current"]
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+3]
       18 GETUPVAL                         R0 3
       19 LOADB                            R1 1
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["LayoutController"]
        5 NAMECALL                         R2 R2 K4 ["getColumnWidths"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["MinColumnSize"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K6 ["current"]
       15 GETTABLEKS                       R6 R0 K7 ["DragUDim2"]
       17 GETTABLEKS                       R6 R6 K8 ["X"]
       19 GETTABLEKS                       R6 R6 K9 ["Offset"]
       21 ADD                              R4 R5 R6
       22 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       24 GETIMPORT                        R2 K12 [math.max]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K13 ["Index"]
       30 GETIMPORT                        R4 K16 [UDim.new]
       32 LOADN                            R5 0
       33 MOVE                             R6 R2
       34 CALL                             R4 2 1
       35 SETTABLE                         R4 R1 R3
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K3 ["LayoutController"]
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K17 ["setColumnWidths"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 OR                               R6 R2 R4
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U1
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 NEWCLOSURE                       R9 P2
       25 CAPTURE                          VAL R5
       26 NEWCLOSURE                       R10 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K2 ["createElement"]
       32 LOADK                            R12 K3 ["UIDragDetector"]
       33 NEWTABLE                         R13 8 0
       35 GETIMPORT                        R14 K6 [Vector2.new]
       37 LOADN                            R15 1
       38 LOADN                            R16 0
       39 CALL                             R14 2 1
       40 SETTABLEKS                       R14 R13 K7 ["DragAxis"]
       42 GETIMPORT                        R14 K11 [Enum.UIDragDetectorDragStyle.TranslateLine]
       44 SETTABLEKS                       R14 R13 K12 ["DragStyle"]
       46 GETIMPORT                        R14 K15 [Enum.UIDragDetectorResponseStyle.CustomOffset]
       48 SETTABLEKS                       R14 R13 K16 ["ResponseStyle"]
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K17 ["Event"]
       53 GETTABLEKS                       R14 R14 K18 ["DragStart"]
       55 SETTABLE                         R8 R13 R14
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K17 ["Event"]
       59 GETTABLEKS                       R14 R14 K19 ["DragContinue"]
       61 SETTABLE                         R10 R13 R14
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K17 ["Event"]
       65 GETTABLEKS                       R14 R14 K20 ["DragEnd"]
       67 SETTABLE                         R9 R13 R14
       68 CALL                             R11 2 1
       69 GETUPVAL                         R12 2
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+121]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K2 ["createElement"]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K21 ["View"]
       78 DUPTABLE                         R14 K27 [{"LayoutOrder", "Size", "onStateChanged", "stateLayer", "testId"}]
       79 GETTABLEKS                       R15 R0 K22 ["LayoutOrder"]
       81 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
       83 GETIMPORT                        R15 K29 [UDim2.new]
       85 LOADN                            R16 0
       86 LOADN                            R17 6
       87 LOADN                            R18 1
       88 LOADN                            R19 0
       89 CALL                             R15 4 1
       90 SETTABLEKS                       R15 R14 K23 ["Size"]
       92 SETTABLEKS                       R7 R14 K24 ["onStateChanged"]
       94 DUPTABLE                         R15 K31 [{"affordance"}]
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R16 R16 K32 ["Enums"]
       98 GETTABLEKS                       R16 R16 K33 ["StateLayerAffordance"]
      100 GETTABLEKS                       R16 R16 K34 ["None"]
      102 SETTABLEKS                       R16 R15 K30 ["affordance"]
      104 SETTABLEKS                       R15 R14 K25 ["stateLayer"]
      106 LOADK                            R15 K35 ["column-resize-handle-%*"]
      107 GETTABLEKS                       R17 R0 K36 ["Index"]
      109 NAMECALL                         R15 R15 K37 ["format"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K26 ["testId"]
      114 DUPTABLE                         R15 K40 [{"DividerContainer", "Drag"}]
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K2 ["createElement"]
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R17 R17 K21 ["View"]
      121 DUPTABLE                         R18 K43 [{["Size"], ["tag"] = "align-x-center align-y-center"}]
      122 GETIMPORT                        R19 K45 [UDim2.fromScale]
      124 LOADN                            R20 1
      125 LOADN                            R21 1
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K23 ["Size"]
      129 DUPTABLE                         R19 K47 [{"DividerHighlight"}]
      130 GETUPVAL                         R21 2
      131 CALL                             R21 0 1
      132 JUMPIFNOT                        R21 ; [+25]
      133 JUMPIFNOT                        R6 ; [+24]
      134 GETUPVAL                         R20 0
      135 GETTABLEKS                       R20 R20 K2 ["createElement"]
      137 GETUPVAL                         R21 3
      138 DUPTABLE                         R22 K49 [{"orientation", "testId"}]
      139 GETUPVAL                         R23 1
      140 GETTABLEKS                       R23 R23 K32 ["Enums"]
      142 GETTABLEKS                       R23 R23 K50 ["DividerOrientation"]
      144 GETTABLEKS                       R23 R23 K51 ["Vertical"]
      146 SETTABLEKS                       R23 R22 K48 ["orientation"]
      148 LOADK                            R23 K52 ["column-resize-handle-highlight-%*"]
      149 GETTABLEKS                       R25 R0 K36 ["Index"]
      151 NAMECALL                         R23 R23 K37 ["format"]
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K26 ["testId"]
      156 CALL                             R20 2 1
      157 JUMP                             ; [+26]
      158 GETUPVAL                         R20 0
      159 GETTABLEKS                       R20 R20 K2 ["createElement"]
      161 GETUPVAL                         R21 1
      162 GETTABLEKS                       R21 R21 K53 ["Divider"]
      164 DUPTABLE                         R22 K55 [{"orientation", "variant"}]
      165 GETUPVAL                         R23 1
      166 GETTABLEKS                       R23 R23 K32 ["Enums"]
      168 GETTABLEKS                       R23 R23 K50 ["DividerOrientation"]
      170 GETTABLEKS                       R23 R23 K51 ["Vertical"]
      172 SETTABLEKS                       R23 R22 K48 ["orientation"]
      174 GETUPVAL                         R23 1
      175 GETTABLEKS                       R23 R23 K32 ["Enums"]
      177 GETTABLEKS                       R23 R23 K56 ["DividerVariant"]
      179 GETTABLEKS                       R23 R23 K57 ["Default"]
      181 SETTABLEKS                       R23 R22 K54 ["variant"]
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K46 ["DividerHighlight"]
      186 CALL                             R16 3 1
      187 SETTABLEKS                       R16 R15 K38 ["DividerContainer"]
      189 SETTABLEKS                       R11 R15 K39 ["Drag"]
      191 CALL                             R12 3 -1
      192 RETURN                           R12 -1
      193 GETUPVAL                         R12 0
      194 GETTABLEKS                       R12 R12 K2 ["createElement"]
      196 GETUPVAL                         R13 1
      197 GETTABLEKS                       R13 R13 K21 ["View"]
      199 DUPTABLE                         R14 K58 [{["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["testId"]}]
      200 GETTABLEKS                       R15 R0 K22 ["LayoutOrder"]
      202 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
      204 GETIMPORT                        R15 K29 [UDim2.new]
      206 LOADN                            R16 0
      207 LOADN                            R17 6
      208 LOADN                            R18 1
      209 LOADN                            R19 0
      210 CALL                             R15 4 1
      211 SETTABLEKS                       R15 R14 K23 ["Size"]
      213 LOADK                            R15 K35 ["column-resize-handle-%*"]
      214 GETTABLEKS                       R17 R0 K36 ["Index"]
      216 NAMECALL                         R15 R15 K37 ["format"]
      218 CALL                             R15 2 1
      219 SETTABLEKS                       R15 R14 K26 ["testId"]
      221 DUPTABLE                         R15 K59 [{"Divider", "Drag"}]
      222 GETUPVAL                         R16 0
      223 GETTABLEKS                       R16 R16 K2 ["createElement"]
      225 GETUPVAL                         R17 1
      226 GETTABLEKS                       R17 R17 K53 ["Divider"]
      228 DUPTABLE                         R18 K60 [{"orientation"}]
      229 GETUPVAL                         R19 1
      230 GETTABLEKS                       R19 R19 K32 ["Enums"]
      232 GETTABLEKS                       R19 R19 K50 ["DividerOrientation"]
      234 GETTABLEKS                       R19 R19 K51 ["Vertical"]
      236 SETTABLEKS                       R19 R18 K48 ["orientation"]
      238 CALL                             R16 2 1
      239 SETTABLEKS                       R16 R15 K53 ["Divider"]
      241 SETTABLEKS                       R11 R15 K39 ["Drag"]
      243 CALL                             R12 3 -1
      244 RETURN                           R12 -1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETTABLEKS                       R2 R0 K0 ["Key"]
        3 JUMPIFNOTEQ                      R2 R1 ; [+10]
        5 GETTABLEKS                       R2 R0 K1 ["IsAscending"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 LOADK                            R2 K2 ["Bold"]
        9 LOADK                            R3 K3 ["icon-arrow-up"]
       10 RETURN                           R2 2
       11 LOADK                            R2 K2 ["Bold"]
       12 LOADK                            R3 K4 ["icon-arrow-down"]
       13 RETURN                           R2 2
       14 LOADK                            R2 K5 [""]
       15 LOADK                            R3 K5 [""]
       16 RETURN                           R2 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["addSort"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["use"]
        5 CALL                             R4 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["use"]
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K1 ["MenuContext"]
       14 GETTABLEKS                       R7 R7 K2 ["Column"]
       16 CALL                             R6 1 1
       17 LENGTH                           R7 R1
       18 MOVE                             R8 R1
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETTABLEN                        R15 R0 1
       23 JUMPIFNOT                        R15 ; [+13]
       24 GETTABLEKS                       R16 R15 K3 ["Key"]
       26 JUMPIFNOTEQ                      R16 R12 ; [+10]
       28 GETTABLEKS                       R16 R15 K4 ["IsAscending"]
       30 JUMPIFNOT                        R16 ; [+3]
       31 LOADK                            R13 K5 ["Bold"]
       32 LOADK                            R14 K6 ["icon-arrow-up"]
       33 JUMP                             ; [+5]
       34 LOADK                            R13 K5 ["Bold"]
       35 LOADK                            R14 K7 ["icon-arrow-down"]
       36 JUMP                             ; [+2]
       37 LOADK                            R13 K8 [""]
       38 LOADK                            R14 K8 [""]
       39 GETUPVAL                         R16 3
       40 GETTABLEKS                       R16 R16 K9 ["AssetInfoField"]
       42 GETTABLEKS                       R16 R16 K10 ["AssetId"]
       44 JUMPIFNOTEQ                      R12 R16 ; [+7]
       46 LOADK                            R17 K11 ["ItemProperty"]
       47 LOADK                            R18 K12 ["ItemId"]
       48 NAMECALL                         R15 R5 K13 ["getText"]
       50 CALL                             R15 3 1
       51 JUMP                             ; [+18]
       52 GETUPVAL                         R16 3
       53 GETTABLEKS                       R16 R16 K9 ["AssetInfoField"]
       55 GETTABLEKS                       R16 R16 K14 ["AssetType"]
       57 JUMPIFNOTEQ                      R12 R16 ; [+7]
       59 LOADK                            R17 K11 ["ItemProperty"]
       60 LOADK                            R18 K15 ["ItemType"]
       61 NAMECALL                         R15 R5 K13 ["getText"]
       63 CALL                             R15 3 1
       64 JUMP                             ; [+5]
       65 LOADK                            R17 K16 ["AssetProperty"]
       66 MOVE                             R18 R12
       67 NAMECALL                         R15 R5 K13 ["getText"]
       69 CALL                             R15 3 1
       70 JUMPIFEQ                         R11 R7 ; [+2]
       72 LOADB                            R16 0 +1
       73 LOADB                            R16 1
       74 DUPTABLE                         R17 K19 [{"LayoutOrder", "tag"}]
       75 SETTABLEKS                       R11 R17 K17 ["LayoutOrder"]
       77 GETUPVAL                         R19 4
       78 CALL                             R19 0 1
       79 JUMPIFNOT                        R19 ; [+2]
       80 LOADK                            R18 K20 ["X-PadS"]
       81 JUMP                             ; [+12]
       82 LOADK                            R18 K21 ["X-PadS %*"]
       83 MODK                             R21 R11 K22 [2]
       84 LENGTH                           R23 R1
       85 MODK                             R22 R23 K22 [2]
       86 JUMPIFEQ                         R21 R22 ; [+3]
       88 LOADK                            R20 K23 ["X-Stroke"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R20
       91 NAMECALL                         R18 R18 K24 ["format"]
       93 CALL                             R18 2 1
       94 SETTABLEKS                       R18 R17 K18 ["tag"]
       96 GETUPVAL                         R18 4
       97 CALL                             R18 0 1
       98 JUMPIFNOT                        R18 ; [+25]
       99 JUMPIFNOT                        R2 ; [+24]
      100 GETTABLEKS                       R19 R2 K25 ["ColumnWidths"]
      102 GETTABLE                         R18 R19 R11
      103 JUMPIFNOT                        R18 ; [+168]
      104 GETTABLEKS                       R19 R18 K26 ["Offset"]
      106 JUMPIFNOT                        R16 ; [+2]
      107 MOVE                             R20 R19
      108 JUMP                             ; [+1]
      109 SUBK                             R20 R19 K27 [6]
      110 GETIMPORT                        R21 K30 [UDim2.new]
      112 LOADN                            R22 0
      113 MOVE                             R23 R20
      114 LOADN                            R24 1
      115 LOADN                            R25 0
      116 CALL                             R21 4 1
      117 SETTABLEKS                       R21 R17 K31 ["Size"]
      119 MULK                             R22 R11 K22 [2]
      120 SUBK                             R21 R22 K32 [1]
      121 SETTABLEKS                       R21 R17 K17 ["LayoutOrder"]
      123 JUMP                             ; [+7]
      124 GETIMPORT                        R18 K34 [UDim2.fromScale]
      126 LOADN                            R19 1
      127 LOADN                            R20 1
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K31 ["Size"]
      131 GETUPVAL                         R18 5
      132 GETTABLEKS                       R18 R18 K35 ["createElement"]
      134 GETUPVAL                         R19 6
      135 GETTABLEKS                       R19 R19 K36 ["View"]
      137 MOVE                             R20 R17
      138 DUPTABLE                         R21 K38 [{"ColumnHeader"}]
      139 GETUPVAL                         R22 5
      140 GETTABLEKS                       R22 R22 K35 ["createElement"]
      142 GETUPVAL                         R23 6
      143 GETTABLEKS                       R23 R23 K36 ["View"]
      145 DUPTABLE                         R24 K42 [{"Size", "onActivated", "onSecondaryActivated", "stateLayer", "tag"}]
      146 GETIMPORT                        R25 K34 [UDim2.fromScale]
      148 LOADN                            R26 1
      149 LOADN                            R27 1
      150 CALL                             R25 2 1
      151 SETTABLEKS                       R25 R24 K31 ["Size"]
      153 NEWCLOSURE                       R25 P0
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R12
      156 SETTABLEKS                       R25 R24 K39 ["onActivated"]
      158 NEWCLOSURE                       R25 P1
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R25 R24 K40 ["onSecondaryActivated"]
      162 DUPTABLE                         R25 K44 [{"affordance"}]
      163 GETUPVAL                         R26 6
      164 GETTABLEKS                       R26 R26 K45 ["Enums"]
      166 GETTABLEKS                       R26 R26 K46 ["StateLayerAffordance"]
      168 GETTABLEKS                       R26 R26 K47 ["None"]
      170 SETTABLEKS                       R26 R25 K43 ["affordance"]
      172 SETTABLEKS                       R25 R24 K41 ["stateLayer"]
      174 LOADK                            R25 K48 ["X-Row X-Left X-Middle data-testid=column-header-%*"]
      175 MOVE                             R27 R12
      176 NAMECALL                         R25 R25 K24 ["format"]
      178 CALL                             R25 2 1
      179 SETTABLEKS                       R25 R24 K18 ["tag"]
      181 DUPTABLE                         R25 K51 [{"Text", "ArrowIcon"}]
      182 GETUPVAL                         R26 5
      183 GETTABLEKS                       R26 R26 K35 ["createElement"]
      185 GETUPVAL                         R27 7
      186 NEWTABLE                         R28 4 0
      188 LOADN                            R29 1
      189 SETTABLEKS                       R29 R28 K17 ["LayoutOrder"]
      191 SETTABLEKS                       R15 R28 K49 ["Text"]
      193 GETIMPORT                        R29 K55 [Enum.TextTruncate.AtEnd]
      195 SETTABLEKS                       R29 R28 K53 ["TextTruncate"]
      197 GETUPVAL                         R29 5
      198 GETTABLEKS                       R29 R29 K56 ["Tag"]
      200 LOADK                            R30 K57 ["X-Fit %*"]
      201 MOVE                             R32 R13
      202 NAMECALL                         R30 R30 K24 ["format"]
      204 CALL                             R30 2 1
      205 SETTABLE                         R30 R28 R29
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K49 ["Text"]
      209 JUMPIFEQKS                       R13 K8 [""] ; [+21]
      211 GETUPVAL                         R26 5
      212 GETTABLEKS                       R26 R26 K35 ["createElement"]
      214 GETUPVAL                         R27 8
      215 NEWTABLE                         R28 2 0
      217 LOADN                            R29 2
      218 SETTABLEKS                       R29 R28 K17 ["LayoutOrder"]
      220 GETUPVAL                         R29 5
      221 GETTABLEKS                       R29 R29 K56 ["Tag"]
      223 LOADK                            R30 K58 ["%* Icon16"]
      224 MOVE                             R32 R14
      225 NAMECALL                         R30 R30 K24 ["format"]
      227 CALL                             R30 2 1
      228 SETTABLE                         R30 R28 R29
      229 CALL                             R26 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R26
      232 SETTABLEKS                       R26 R25 K50 ["ArrowIcon"]
      234 CALL                             R22 3 1
      235 SETTABLEKS                       R22 R21 K37 ["ColumnHeader"]
      237 CALL                             R18 3 1
      238 GETUPVAL                         R19 4
      239 CALL                             R19 0 1
      240 JUMPIFNOT                        R19 ; [+30]
      241 JUMPIFNOT                        R2 ; [+29]
      242 LOADK                            R20 K2 ["Column"]
      243 MOVE                             R21 R11
      244 CONCAT                           R19 R20 R21
      245 SETTABLE                         R18 R3 R19
      246 JUMPIF                           R16 ; [+25]
      247 LOADK                            R20 K59 ["Handle"]
      248 MOVE                             R21 R11
      249 CONCAT                           R19 R20 R21
      250 GETUPVAL                         R20 5
      251 GETTABLEKS                       R20 R20 K35 ["createElement"]
      253 GETUPVAL                         R21 9
      254 DUPTABLE                         R22 K63 [{"Index", "LayoutOrder", "LayoutController", "MinColumnSize"}]
      255 SETTABLEKS                       R11 R22 K60 ["Index"]
      257 MULK                             R23 R11 K22 [2]
      258 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      260 GETTABLEKS                       R23 R2 K61 ["LayoutController"]
      262 SETTABLEKS                       R23 R22 K61 ["LayoutController"]
      264 GETTABLEKS                       R23 R2 K62 ["MinColumnSize"]
      266 SETTABLEKS                       R23 R22 K62 ["MinColumnSize"]
      268 CALL                             R20 2 1
      269 SETTABLE                         R20 R3 R19
      270 JUMP                             ; [+1]
      271 SETTABLE                         R18 R3 R11
      272 FORGLOOP                         R8 2 ; [-251]
      274 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setListHeaderRow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setListHeaderRow"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setColumnWidths"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 3
       21 CALL                             R4 0 2
       22 GETUPVAL                         R6 4
       23 CALL                             R6 0 1
       24 JUMPIFNOT                        R6 ; [+73]
       25 GETUPVAL                         R6 5
       26 MOVE                             R7 R3
       27 MOVE                             R8 R4
       28 DUPTABLE                         R9 K6 [{"ColumnWidths", "LayoutController", "MinColumnSize"}]
       29 SETTABLEKS                       R5 R9 K3 ["ColumnWidths"]
       31 SETTABLEKS                       R1 R9 K4 ["LayoutController"]
       33 GETUPVAL                         R10 6
       34 LOADK                            R12 K7 ["ColumnMinSize"]
       35 NAMECALL                         R10 R10 K8 ["GetAttribute"]
       37 CALL                             R10 2 1
       38 GETTABLEKS                       R10 R10 K9 ["Offset"]
       40 SETTABLEKS                       R10 R9 K5 ["MinColumnSize"]
       42 CALL                             R6 3 1
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K10 ["createElement"]
       46 LOADK                            R8 K11 ["ScrollingFrame"]
       47 NEWTABLE                         R9 8 0
       49 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       51 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       53 GETIMPORT                        R10 K16 [Enum.AutomaticSize.X]
       55 SETTABLEKS                       R10 R9 K17 ["AutomaticCanvasSize"]
       57 GETIMPORT                        R10 K19 [Enum.ScrollingDirection.X]
       59 SETTABLEKS                       R10 R9 K18 ["ScrollingDirection"]
       61 LOADN                            R10 0
       62 SETTABLEKS                       R10 R9 K20 ["ScrollBarThickness"]
       64 LOADB                            R10 0
       65 SETTABLEKS                       R10 R9 K21 ["ScrollingEnabled"]
       67 SETTABLEKS                       R2 R9 K22 ["ref"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K23 ["Tag"]
       72 LOADK                            R11 K24 ["am-size-full-headerrow row gui-object-defaults"]
       73 SETTABLE                         R11 R9 R10
       74 DUPTABLE                         R10 K27 [{"Contents", "Filler"}]
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K10 ["createElement"]
       78 GETUPVAL                         R12 7
       79 GETTABLEKS                       R12 R12 K28 ["View"]
       81 DUPTABLE                         R13 K32 [{["LayoutOrder"] = 1, ["tag"] = "X-Row am-size-fit-headerrow"}]
       82 MOVE                             R14 R6
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K25 ["Contents"]
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R11 R11 K10 ["createElement"]
       89 GETUPVAL                         R12 7
       90 GETTABLEKS                       R12 R12 K28 ["View"]
       92 DUPTABLE                         R13 K35 [{["LayoutOrder"] = 2, ["tag"] = "am-size-scrollbar-full"}]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K26 ["Filler"]
       96 CALL                             R7 3 -1
       97 RETURN                           R7 -1
       98 GETUPVAL                         R6 5
       99 MOVE                             R7 R3
      100 MOVE                             R8 R4
      101 CALL                             R6 2 1
      102 NEWTABLE                         R7 0 0
      104 MOVE                             R8 R6
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 GETUPVAL                         R13 6
      109 LOADK                            R15 K7 ["ColumnMinSize"]
      110 NAMECALL                         R13 R13 K8 ["GetAttribute"]
      112 CALL                             R13 2 1
      113 SETTABLE                         R13 R7 R11
      114 FORGLOOP                         R8 2 ; [-7]
      116 GETUPVAL                         R8 1
      117 GETTABLEKS                       R8 R8 K10 ["createElement"]
      119 LOADK                            R9 K11 ["ScrollingFrame"]
      120 NEWTABLE                         R10 8 0
      122 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
      124 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      126 GETIMPORT                        R11 K16 [Enum.AutomaticSize.X]
      128 SETTABLEKS                       R11 R10 K17 ["AutomaticCanvasSize"]
      130 GETIMPORT                        R11 K19 [Enum.ScrollingDirection.X]
      132 SETTABLEKS                       R11 R10 K18 ["ScrollingDirection"]
      134 LOADN                            R11 0
      135 SETTABLEKS                       R11 R10 K20 ["ScrollBarThickness"]
      137 LOADB                            R11 0
      138 SETTABLEKS                       R11 R10 K21 ["ScrollingEnabled"]
      140 SETTABLEKS                       R2 R10 K22 ["ref"]
      142 GETUPVAL                         R11 1
      143 GETTABLEKS                       R11 R11 K23 ["Tag"]
      145 LOADK                            R12 K24 ["am-size-full-headerrow row gui-object-defaults"]
      146 SETTABLE                         R12 R10 R11
      147 DUPTABLE                         R11 K27 [{"Contents", "Filler"}]
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R12 R12 K10 ["createElement"]
      151 GETUPVAL                         R13 8
      152 NEWTABLE                         R14 8 0
      154 LOADN                            R15 1
      155 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      157 LOADB                            R15 0
      158 SETTABLEKS                       R15 R14 K36 ["UseScale"]
      160 LOADB                            R15 0
      161 SETTABLEKS                       R15 R14 K37 ["ClampSize"]
      163 LOADB                            R15 1
      164 SETTABLEKS                       R15 R14 K38 ["HideBars"]
      166 SETTABLEKS                       R7 R14 K39 ["MinSizes"]
      168 SETTABLEKS                       R5 R14 K40 ["Sizes"]
      170 NEWCLOSURE                       R15 P1
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R15 R14 K41 ["OnSizesChange"]
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K23 ["Tag"]
      177 LOADK                            R16 K42 ["am-size-fit-headerrow auto-x"]
      178 SETTABLE                         R16 R14 R15
      179 MOVE                             R15 R6
      180 CALL                             R12 3 1
      181 SETTABLEKS                       R12 R11 K25 ["Contents"]
      183 GETUPVAL                         R12 1
      184 GETTABLEKS                       R12 R12 K10 ["createElement"]
      186 GETUPVAL                         R13 9
      187 NEWTABLE                         R14 2 0
      189 LOADN                            R15 2
      190 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      192 GETUPVAL                         R15 1
      193 GETTABLEKS                       R15 R15 K23 ["Tag"]
      195 LOADK                            R16 K34 ["am-size-scrollbar-full"]
      196 SETTABLE                         R16 R14 R15
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K26 ["Filler"]
      200 CALL                             R8 3 -1
      201 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R2 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Image"]
       36 GETTABLEKS                       R8 R6 K14 ["Pane"]
       38 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       40 GETTABLEKS                       R10 R6 K16 ["SplitPane"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R12 R12 K18 ["Components"]
       48 GETTABLEKS                       R12 R12 K19 ["Shared"]
       50 GETTABLEKS                       R12 R12 K20 ["CustomDividerHighlight"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R13 R0 K17 ["Src"]
       57 GETTABLEKS                       R13 R13 K21 ["Controllers"]
       59 GETTABLEKS                       R13 R13 K22 ["ItemsController"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K17 ["Src"]
       66 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       68 GETTABLEKS                       R14 R14 K23 ["LayoutController"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K17 ["Src"]
       75 GETTABLEKS                       R15 R15 K24 ["Hooks"]
       77 GETTABLEKS                       R15 R15 K25 ["useColumns"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K17 ["Src"]
       84 GETTABLEKS                       R16 R16 K24 ["Hooks"]
       86 GETTABLEKS                       R16 R16 K26 ["useContextMenu"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R0 K17 ["Src"]
       93 GETTABLEKS                       R17 R17 K24 ["Hooks"]
       95 GETTABLEKS                       R17 R17 K27 ["useSortFilter"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R0 K17 ["Src"]
      102 GETTABLEKS                       R18 R18 K28 ["Flags"]
      104 GETTABLEKS                       R18 R18 K29 ["getFFlagAmrHeaderColumnDragDetector"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R0 K17 ["Src"]
      111 GETTABLEKS                       R19 R19 K28 ["Flags"]
      113 GETTABLEKS                       R19 R19 K30 ["getFFlagAmrHeaderDividerHoverThicken"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R20 R0 K17 ["Src"]
      120 GETTABLEKS                       R20 R20 K31 ["Types"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R21 R0 K17 ["Src"]
      127 GETTABLEKS                       R21 R21 K32 ["Resources"]
      129 GETTABLEKS                       R21 R21 K33 ["PluginStyles"]
      131 CALL                             R20 1 1
      132 DUPCLOSURE                       R21 K34 [PROTO_4]
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R11
      137 DUPCLOSURE                       R22 K35 [PROTO_5]
      138 DUPCLOSURE                       R23 K36 [PROTO_8]
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R21
      149 DUPCLOSURE                       R24 K37 [PROTO_12]
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R8
      160 RETURN                           R24 1
