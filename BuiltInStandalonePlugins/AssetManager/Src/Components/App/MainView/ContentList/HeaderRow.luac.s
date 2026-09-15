PROTO_0:
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
       15 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["View"]
       15 DUPTABLE                         R6 K7 [{["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["testId"]}]
       16 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       20 GETIMPORT                        R7 K10 [UDim2.new]
       22 LOADN                            R8 0
       23 LOADN                            R9 6
       24 LOADN                            R10 1
       25 LOADN                            R11 0
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K3 ["Size"]
       29 LOADK                            R7 K11 ["column-resize-handle-%*"]
       30 GETTABLEKS                       R9 R0 K12 ["Index"]
       32 NAMECALL                         R7 R7 K13 ["format"]
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K6 ["testId"]
       37 DUPTABLE                         R7 K16 [{"Divider", "Drag"}]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K0 ["createElement"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K14 ["Divider"]
       44 DUPTABLE                         R10 K18 [{"orientation"}]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K19 ["Enums"]
       48 GETTABLEKS                       R11 R11 K20 ["DividerOrientation"]
       50 GETTABLEKS                       R11 R11 K21 ["Vertical"]
       52 SETTABLEKS                       R11 R10 K17 ["orientation"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K14 ["Divider"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K0 ["createElement"]
       60 LOADK                            R9 K22 ["UIDragDetector"]
       61 NEWTABLE                         R10 8 0
       63 GETIMPORT                        R11 K24 [Vector2.new]
       65 LOADN                            R12 1
       66 LOADN                            R13 0
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K25 ["DragAxis"]
       70 GETIMPORT                        R11 K29 [Enum.UIDragDetectorDragStyle.TranslateLine]
       72 SETTABLEKS                       R11 R10 K30 ["DragStyle"]
       74 GETIMPORT                        R11 K33 [Enum.UIDragDetectorResponseStyle.CustomOffset]
       76 SETTABLEKS                       R11 R10 K34 ["ResponseStyle"]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K35 ["Event"]
       81 GETTABLEKS                       R11 R11 K36 ["DragStart"]
       83 SETTABLE                         R2 R10 R11
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K35 ["Event"]
       87 GETTABLEKS                       R11 R11 K37 ["DragContinue"]
       89 SETTABLE                         R3 R10 R11
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K15 ["Drag"]
       93 CALL                             R4 3 -1
       94 RETURN                           R4 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["addSort"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setListHeaderRow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setColumnWidths"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 CALL                             R4 0 2
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+73]
       21 GETUPVAL                         R6 6
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 DUPTABLE                         R9 K4 [{"ColumnWidths", "LayoutController", "MinColumnSize"}]
       25 SETTABLEKS                       R5 R9 K1 ["ColumnWidths"]
       27 SETTABLEKS                       R1 R9 K2 ["LayoutController"]
       29 GETUPVAL                         R10 7
       30 LOADK                            R12 K5 ["ColumnMinSize"]
       31 NAMECALL                         R10 R10 K6 ["GetAttribute"]
       33 CALL                             R10 2 1
       34 GETTABLEKS                       R10 R10 K7 ["Offset"]
       36 SETTABLEKS                       R10 R9 K3 ["MinColumnSize"]
       38 CALL                             R6 3 1
       39 GETUPVAL                         R7 8
       40 GETTABLEKS                       R7 R7 K8 ["createElement"]
       42 LOADK                            R8 K9 ["ScrollingFrame"]
       43 NEWTABLE                         R9 8 0
       45 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       47 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       49 GETIMPORT                        R10 K14 [Enum.AutomaticSize.X]
       51 SETTABLEKS                       R10 R9 K15 ["AutomaticCanvasSize"]
       53 GETIMPORT                        R10 K17 [Enum.ScrollingDirection.X]
       55 SETTABLEKS                       R10 R9 K16 ["ScrollingDirection"]
       57 LOADN                            R10 0
       58 SETTABLEKS                       R10 R9 K18 ["ScrollBarThickness"]
       60 LOADB                            R10 0
       61 SETTABLEKS                       R10 R9 K19 ["ScrollingEnabled"]
       63 SETTABLEKS                       R2 R9 K20 ["ref"]
       65 GETUPVAL                         R10 8
       66 GETTABLEKS                       R10 R10 K21 ["Tag"]
       68 LOADK                            R11 K22 ["am-size-full-headerrow row gui-object-defaults"]
       69 SETTABLE                         R11 R9 R10
       70 DUPTABLE                         R10 K25 [{"Contents", "Filler"}]
       71 GETUPVAL                         R11 8
       72 GETTABLEKS                       R11 R11 K8 ["createElement"]
       74 GETUPVAL                         R12 9
       75 GETTABLEKS                       R12 R12 K26 ["View"]
       77 DUPTABLE                         R13 K30 [{["LayoutOrder"] = 1, ["tag"] = "X-Row am-size-fit-headerrow"}]
       78 MOVE                             R14 R6
       79 CALL                             R11 3 1
       80 SETTABLEKS                       R11 R10 K23 ["Contents"]
       82 GETUPVAL                         R11 8
       83 GETTABLEKS                       R11 R11 K8 ["createElement"]
       85 GETUPVAL                         R12 9
       86 GETTABLEKS                       R12 R12 K26 ["View"]
       88 DUPTABLE                         R13 K33 [{["LayoutOrder"] = 2, ["tag"] = "am-size-scrollbar-full"}]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K24 ["Filler"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1
       94 GETUPVAL                         R6 6
       95 MOVE                             R7 R3
       96 MOVE                             R8 R4
       97 CALL                             R6 2 1
       98 NEWTABLE                         R7 0 0
      100 MOVE                             R8 R6
      101 LOADNIL                          R9
      102 LOADNIL                          R10
      103 FORGPREP                         R8
      104 GETUPVAL                         R13 7
      105 LOADK                            R15 K5 ["ColumnMinSize"]
      106 NAMECALL                         R13 R13 K6 ["GetAttribute"]
      108 CALL                             R13 2 1
      109 SETTABLE                         R13 R7 R11
      110 FORGLOOP                         R8 2 ; [-7]
      112 GETUPVAL                         R8 8
      113 GETTABLEKS                       R8 R8 K8 ["createElement"]
      115 LOADK                            R9 K9 ["ScrollingFrame"]
      116 NEWTABLE                         R10 8 0
      118 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
      120 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      122 GETIMPORT                        R11 K14 [Enum.AutomaticSize.X]
      124 SETTABLEKS                       R11 R10 K15 ["AutomaticCanvasSize"]
      126 GETIMPORT                        R11 K17 [Enum.ScrollingDirection.X]
      128 SETTABLEKS                       R11 R10 K16 ["ScrollingDirection"]
      130 LOADN                            R11 0
      131 SETTABLEKS                       R11 R10 K18 ["ScrollBarThickness"]
      133 LOADB                            R11 0
      134 SETTABLEKS                       R11 R10 K19 ["ScrollingEnabled"]
      136 SETTABLEKS                       R2 R10 K20 ["ref"]
      138 GETUPVAL                         R11 8
      139 GETTABLEKS                       R11 R11 K21 ["Tag"]
      141 LOADK                            R12 K22 ["am-size-full-headerrow row gui-object-defaults"]
      142 SETTABLE                         R12 R10 R11
      143 DUPTABLE                         R11 K25 [{"Contents", "Filler"}]
      144 GETUPVAL                         R12 8
      145 GETTABLEKS                       R12 R12 K8 ["createElement"]
      147 GETUPVAL                         R13 10
      148 NEWTABLE                         R14 8 0
      150 LOADN                            R15 1
      151 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      153 LOADB                            R15 0
      154 SETTABLEKS                       R15 R14 K34 ["UseScale"]
      156 LOADB                            R15 0
      157 SETTABLEKS                       R15 R14 K35 ["ClampSize"]
      159 LOADB                            R15 1
      160 SETTABLEKS                       R15 R14 K36 ["HideBars"]
      162 SETTABLEKS                       R7 R14 K37 ["MinSizes"]
      164 SETTABLEKS                       R5 R14 K38 ["Sizes"]
      166 NEWCLOSURE                       R15 P1
      167 CAPTURE                          VAL R1
      168 SETTABLEKS                       R15 R14 K39 ["OnSizesChange"]
      170 GETUPVAL                         R15 8
      171 GETTABLEKS                       R15 R15 K21 ["Tag"]
      173 LOADK                            R16 K40 ["am-size-fit-headerrow auto-x"]
      174 SETTABLE                         R16 R14 R15
      175 MOVE                             R15 R6
      176 CALL                             R12 3 1
      177 SETTABLEKS                       R12 R11 K23 ["Contents"]
      179 GETUPVAL                         R12 8
      180 GETTABLEKS                       R12 R12 K8 ["createElement"]
      182 GETUPVAL                         R13 11
      183 NEWTABLE                         R14 2 0
      185 LOADN                            R15 2
      186 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      188 GETUPVAL                         R15 8
      189 GETTABLEKS                       R15 R15 K21 ["Tag"]
      191 LOADK                            R16 K32 ["am-size-scrollbar-full"]
      192 SETTABLE                         R16 R14 R15
      193 CALL                             R12 2 1
      194 SETTABLEKS                       R12 R11 K24 ["Filler"]
      196 CALL                             R8 3 -1
      197 RETURN                           R8 -1

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
       46 GETTABLEKS                       R12 R12 K18 ["Controllers"]
       48 GETTABLEKS                       R12 R12 K19 ["ItemsController"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R13 R0 K17 ["Src"]
       55 GETTABLEKS                       R13 R13 K18 ["Controllers"]
       57 GETTABLEKS                       R13 R13 K20 ["LayoutController"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R14 R0 K17 ["Src"]
       64 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       66 GETTABLEKS                       R14 R14 K22 ["useColumns"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R15 R0 K17 ["Src"]
       73 GETTABLEKS                       R15 R15 K21 ["Hooks"]
       75 GETTABLEKS                       R15 R15 K23 ["useContextMenu"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R16 R0 K17 ["Src"]
       82 GETTABLEKS                       R16 R16 K21 ["Hooks"]
       84 GETTABLEKS                       R16 R16 K24 ["useSortFilter"]
       86 CALL                             R15 1 1
       87 GETTABLEKS                       R16 R1 K25 ["useEffect"]
       89 GETTABLEKS                       R17 R1 K26 ["useRef"]
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R0 K17 ["Src"]
       95 GETTABLEKS                       R19 R19 K27 ["Flags"]
       97 GETTABLEKS                       R19 R19 K28 ["getFFlagAmrHeaderColumnDragDetector"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R0 K17 ["Src"]
      104 GETTABLEKS                       R20 R20 K29 ["Types"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R21 R0 K17 ["Src"]
      111 GETTABLEKS                       R21 R21 K30 ["Resources"]
      113 GETTABLEKS                       R21 R21 K31 ["PluginStyles"]
      115 CALL                             R20 1 1
      116 DUPCLOSURE                       R21 K32 [PROTO_2]
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R3
      120 DUPCLOSURE                       R22 K33 [PROTO_3]
      121 DUPCLOSURE                       R23 K34 [PROTO_6]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R21
      132 DUPCLOSURE                       R24 K35 [PROTO_10]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R8
      145 RETURN                           R24 1
