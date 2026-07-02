PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["autoSize"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K1 ["isOverMaxHeight"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETIMPORT                        R1 K5 [Enum.AutomaticSize.X]
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K7 [Enum.AutomaticSize.XY]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R2 R0 K1 ["isOverMaxHeight"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETIMPORT                        R1 K9 [Enum.AutomaticSize.None]
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K11 [Enum.AutomaticSize.Y]
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isOverMaxHeight"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R2 R0 K1 ["maxHeight"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETIMPORT                        R1 K4 [UDim.new]
        8 LOADN                            R2 0
        9 GETTABLEKS                       R3 R0 K1 ["maxHeight"]
       11 CALL                             R1 2 1
       12 JUMP                             ; [+3]
       13 GETIMPORT                        R1 K4 [UDim.new]
       15 CALL                             R1 0 1
       16 GETTABLEKS                       R3 R0 K5 ["autoSize"]
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETIMPORT                        R2 K7 [UDim2.new]
       21 GETIMPORT                        R3 K4 [UDim.new]
       23 CALL                             R3 0 1
       24 MOVE                             R4 R1
       25 CALL                             R2 2 1
       26 RETURN                           R2 1
       27 GETIMPORT                        R2 K7 [UDim2.new]
       29 GETTABLEKS                       R3 R0 K8 ["width"]
       31 JUMPIF                           R3 ; [+3]
       32 GETIMPORT                        R3 K4 [UDim.new]
       34 CALL                             R3 0 1
       35 MOVE                             R4 R1
       36 CALL                             R2 2 1
       37 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Offset"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 NOT                              R1 R0
        1 JUMPIF                           R1 ; [+11]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["couldGrow"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETTABLEKS                       R2 R0 K1 ["Offset"]
        8 GETUPVAL                         R3 1
        9 JUMPIFLT                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["map"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R3 K2 [Vector2.new]
        5 MOVE                             R4 R2
        6 LOADN                            R5 0
        7 CALL                             R3 2 1
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 GETUPVAL                         R2 0
        4 LOADK                            R3 K3 [∞]
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"MinSize", "MaxSize"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["joinBindings"]
        4 NEWTABLE                         R2 0 2
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 SETLIST                          R2 R3 2 [1]
       10 CALL                             R1 1 1
       11 DUPCLOSURE                       R3 K4 [PROTO_7]
       12 NAMECALL                         R1 R1 K5 ["map"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["MinSize"]
       17 GETUPVAL                         R1 1
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R1 R1 K5 ["map"]
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K1 ["MaxSize"]
       25 RETURN                           R0 1

PROTO_10:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["maxHeight"]
        3 JUMPIFEQKNIL                     R2 ; [+13]
        5 GETTABLEKS                       R2 R0 K1 ["canvasSize"]
        7 GETTABLEKS                       R2 R2 K2 ["Y"]
        9 GETTABLEKS                       R2 R2 K3 ["Offset"]
       11 GETTABLEKS                       R3 R0 K0 ["maxHeight"]
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["joinBindings"]
        3 DUPTABLE                         R1 K3 [{"canvasSize", "maxHeight"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["canvasSize"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["maxHeight"]
       10 CALL                             R0 1 1
       11 DUPCLOSURE                       R2 K4 [PROTO_10]
       12 NAMECALL                         R0 R0 K5 ["map"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETIMPORT                        R1 K3 [Enum.AutomaticSize.XY]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K5 [Enum.AutomaticSize.Y]
        6 RETURN                           R1 1

PROTO_14:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETIMPORT                        R3 K2 [UDim2.new]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R5 K4 [UDim.new]
       10 CALL                             R5 0 -1
       11 CALL                             R3 -1 1
       12 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R2 K0 ["width"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R5 R2 K1 ["maxHeight"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 3
       13 LOADN                            R6 260
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 3
       16 LOADN                            R7 320
       17 CALL                             R6 1 1
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K2 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 4
       24 GETTABLEKS                       R9 R9 K3 ["useBinding"]
       26 GETIMPORT                        R10 K6 [UDim2.fromScale]
       28 LOADN                            R11 0
       29 LOADN                            R12 1
       30 CALL                             R10 2 -1
       31 CALL                             R9 -1 2
       32 GETUPVAL                         R11 4
       33 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       35 NEWCLOSURE                       R12 P0
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R13 0 0
       39 CALL                             R11 2 1
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R3
       49 MOVE                             R16 R5
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 4
       54 GETTABLEKS                       R13 R13 K8 ["useMemo"]
       56 NEWCLOSURE                       R14 P2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R15 0 3
       62 MOVE                             R16 R3
       63 MOVE                             R17 R6
       64 GETTABLEKS                       R18 R2 K9 ["couldGrow"]
       66 SETLIST                          R15 R16 3 [1]
       68 CALL                             R13 2 1
       69 GETUPVAL                         R14 4
       70 GETTABLEKS                       R14 R14 K8 ["useMemo"]
       72 NEWCLOSURE                       R15 P3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R6
       77 NEWTABLE                         R16 0 3
       79 MOVE                             R17 R13
       80 MOVE                             R18 R12
       81 MOVE                             R19 R6
       82 SETLIST                          R16 R17 3 [1]
       84 CALL                             R14 2 1
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       88 NEWCLOSURE                       R16 P4
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 NEWTABLE                         R17 0 1
       94 MOVE                             R18 R4
       95 SETLIST                          R17 R18 1 [1]
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 4
       99 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          VAL R10
      103 NEWTABLE                         R18 0 1
      105 MOVE                             R19 R10
      106 SETLIST                          R18 R19 1 [1]
      108 CALL                             R16 2 1
      109 GETTABLEKS                       R17 R2 K10 ["children"]
      111 JUMPIF                           R17 ; [+18]
      112 GETTABLEKS                       R18 R2 K11 ["items"]
      114 JUMPIFNOT                        R18 ; [+15]
      115 GETUPVAL                         R18 4
      116 GETTABLEKS                       R18 R18 K12 ["createElement"]
      118 GETUPVAL                         R19 5
      119 DUPTABLE                         R20 K14 [{"items", "size"}]
      120 GETTABLEKS                       R21 R2 K11 ["items"]
      122 SETTABLEKS                       R21 R20 K11 ["items"]
      124 GETTABLEKS                       R21 R2 K13 ["size"]
      126 SETTABLEKS                       R21 R20 K13 ["size"]
      128 CALL                             R18 2 1
      129 MOVE                             R17 R18
      130 GETUPVAL                         R19 6
      131 GETTABLEKS                       R19 R19 K15 ["FoundationBaseMenuBorderFix"]
      133 JUMPIFNOT                        R19 ; [+9]
      134 GETTABLEKS                       R19 R2 K16 ["radius"]
      136 JUMPIFEQKNIL                     R19 ; [+6]
      138 GETUPVAL                         R19 7
      139 GETTABLEKS                       R20 R2 K16 ["radius"]
      141 GETTABLE                         R18 R19 R20
      142 JUMP                             ; [+1]
      143 LOADK                            R18 K17 [""]
      144 GETTABLEKS                       R19 R2 K1 ["maxHeight"]
      146 JUMPIFNOT                        R19 ; [+105]
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R19 R19 K18 ["joinBindings"]
      150 DUPTABLE                         R20 K21 [{"autoSize", "isOverMaxHeight"}]
      151 SETTABLEKS                       R13 R20 K19 ["autoSize"]
      153 SETTABLEKS                       R15 R20 K20 ["isOverMaxHeight"]
      155 CALL                             R19 1 1
      156 GETUPVAL                         R21 8
      157 NAMECALL                         R19 R19 K22 ["map"]
      159 CALL                             R19 2 1
      160 GETUPVAL                         R20 4
      161 GETTABLEKS                       R20 R20 K12 ["createElement"]
      163 GETUPVAL                         R21 9
      164 GETUPVAL                         R22 10
      165 MOVE                             R23 R2
      166 DUPTABLE                         R24 K29 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint", "tag"}]
      167 SETTABLEKS                       R1 R24 K23 ["ref"]
      169 DUPTABLE                         R25 K32 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      170 SETTABLEKS                       R19 R25 K25 ["AutomaticSize"]
      172 GETIMPORT                        R26 K35 [Enum.ScrollingDirection.Y]
      174 SETTABLEKS                       R26 R25 K30 ["ScrollingDirection"]
      176 SETTABLEKS                       R9 R25 K31 ["CanvasSize"]
      178 SETTABLEKS                       R25 R24 K24 ["scroll"]
      180 SETTABLEKS                       R19 R24 K25 ["AutomaticSize"]
      182 GETUPVAL                         R25 4
      183 GETTABLEKS                       R25 R25 K18 ["joinBindings"]
      185 DUPTABLE                         R26 K36 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      186 SETTABLEKS                       R13 R26 K19 ["autoSize"]
      188 SETTABLEKS                       R3 R26 K0 ["width"]
      190 SETTABLEKS                       R15 R26 K20 ["isOverMaxHeight"]
      192 SETTABLEKS                       R4 R26 K1 ["maxHeight"]
      194 CALL                             R25 1 1
      195 GETUPVAL                         R27 11
      196 NAMECALL                         R25 R25 K22 ["map"]
      198 CALL                             R25 2 1
      199 SETTABLEKS                       R25 R24 K26 ["Size"]
      201 SETTABLEKS                       R14 R24 K27 ["sizeConstraint"]
      203 NEWTABLE                         R25 1 0
      205 LOADK                            R27 K37 ["stroke-standard stroke-default %*"]
      206 MOVE                             R29 R18
      207 NAMECALL                         R27 R27 K38 ["format"]
      209 CALL                             R27 2 1
      210 MOVE                             R26 R27
      211 GETUPVAL                         R27 6
      212 GETTABLEKS                       R27 R27 K15 ["FoundationBaseMenuBorderFix"]
      214 SETTABLE                         R27 R25 R26
      215 SETTABLEKS                       R25 R24 K28 ["tag"]
      217 CALL                             R22 2 1
      218 GETUPVAL                         R23 4
      219 GETTABLEKS                       R23 R23 K12 ["createElement"]
      221 GETUPVAL                         R24 12
      222 DUPTABLE                         R25 K41 [{["tag"] = "col size-full", ["onAbsoluteSizeChanged"]}]
      223 SETTABLEKS                       R16 R25 K40 ["onAbsoluteSizeChanged"]
      225 GETUPVAL                         R26 4
      226 GETTABLEKS                       R26 R26 K12 ["createElement"]
      228 GETUPVAL                         R27 13
      229 GETTABLEKS                       R27 R27 K42 ["Provider"]
      231 DUPTABLE                         R28 K44 [{"value"}]
      232 DUPTABLE                         R29 K48 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      233 GETTABLEKS                       R30 R2 K45 ["onActivated"]
      235 SETTABLEKS                       R30 R29 K45 ["onActivated"]
      237 GETTABLEKS                       R30 R2 K13 ["size"]
      239 SETTABLEKS                       R30 R29 K13 ["size"]
      241 SETTABLEKS                       R7 R29 K46 ["hasLeading"]
      243 SETTABLEKS                       R11 R29 K47 ["setHasLeading"]
      245 SETTABLEKS                       R29 R28 K43 ["value"]
      247 MOVE                             R29 R17
      248 CALL                             R26 3 -1
      249 CALL                             R23 -1 -1
      250 CALL                             R20 -1 -1
      251 RETURN                           R20 -1
      252 GETUPVAL                         R19 4
      253 GETTABLEKS                       R19 R19 K12 ["createElement"]
      255 GETUPVAL                         R20 12
      256 GETUPVAL                         R21 10
      257 MOVE                             R22 R2
      258 DUPTABLE                         R23 K49 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      259 NEWTABLE                         R24 2 0
      261 LOADB                            R25 1
      262 SETTABLEKS                       R25 R24 K50 ["col"]
      264 LOADK                            R26 K37 ["stroke-standard stroke-default %*"]
      265 MOVE                             R28 R18
      266 NAMECALL                         R26 R26 K38 ["format"]
      268 CALL                             R26 2 1
      269 MOVE                             R25 R26
      270 GETUPVAL                         R26 6
      271 GETTABLEKS                       R26 R26 K15 ["FoundationBaseMenuBorderFix"]
      273 SETTABLE                         R26 R24 R25
      274 SETTABLEKS                       R24 R23 K28 ["tag"]
      276 DUPCLOSURE                       R26 K51 [PROTO_13]
      277 NAMECALL                         R24 R13 K22 ["map"]
      279 CALL                             R24 2 1
      280 SETTABLEKS                       R24 R23 K25 ["AutomaticSize"]
      282 GETUPVAL                         R24 4
      283 GETTABLEKS                       R24 R24 K18 ["joinBindings"]
      285 NEWTABLE                         R25 0 2
      287 MOVE                             R26 R13
      288 MOVE                             R27 R3
      289 SETLIST                          R25 R26 2 [1]
      291 CALL                             R24 1 1
      292 DUPCLOSURE                       R26 K52 [PROTO_14]
      293 NAMECALL                         R24 R24 K22 ["map"]
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K26 ["Size"]
      298 SETTABLEKS                       R1 R23 K23 ["ref"]
      300 SETTABLEKS                       R14 R23 K27 ["sizeConstraint"]
      302 CALL                             R21 2 1
      303 GETUPVAL                         R22 4
      304 GETTABLEKS                       R22 R22 K12 ["createElement"]
      306 GETUPVAL                         R23 13
      307 GETTABLEKS                       R23 R23 K42 ["Provider"]
      309 DUPTABLE                         R24 K44 [{"value"}]
      310 DUPTABLE                         R25 K48 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      311 GETTABLEKS                       R26 R2 K45 ["onActivated"]
      313 SETTABLEKS                       R26 R25 K45 ["onActivated"]
      315 GETTABLEKS                       R26 R2 K13 ["size"]
      317 SETTABLEKS                       R26 R25 K13 ["size"]
      319 SETTABLEKS                       R7 R25 K46 ["hasLeading"]
      321 SETTABLEKS                       R11 R25 K47 ["setHasLeading"]
      323 SETTABLEKS                       R25 R24 K43 ["value"]
      325 MOVE                             R25 R17
      326 CALL                             R22 3 -1
      327 CALL                             R19 -1 -1
      328 RETURN                           R19 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["ScrollView"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["useScaledValue"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R7 K13 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Utility"]
       46 GETTABLEKS                       R8 R8 K14 ["useBindable"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withCommonProps"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R11 K18 ["ControlState"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R12 K19 ["Radius"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K8 ["Components"]
       81 GETTABLEKS                       R13 R13 K20 ["Types"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K17 ["Enums"]
       88 GETTABLEKS                       R14 R14 K21 ["InputSize"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETIMPORT                        R15 K1 [script]
       95 GETTABLEKS                       R15 R15 K4 ["Parent"]
       97 GETTABLEKS                       R15 R15 K22 ["BaseMenuContext"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETIMPORT                        R16 K1 [script]
      104 GETTABLEKS                       R16 R16 K4 ["Parent"]
      106 GETTABLEKS                       R16 R16 K23 ["DeclarativeBaseMenuContent"]
      108 CALL                             R15 1 1
      109 DUPTABLE                         R16 K25 [{"size"}]
      110 GETTABLEKS                       R17 R13 K26 ["Medium"]
      112 SETTABLEKS                       R17 R16 K24 ["size"]
      114 NEWTABLE                         R17 2 0
      116 GETTABLEKS                       R18 R11 K27 ["Small"]
      118 LOADK                            R19 K28 ["radius-small"]
      119 SETTABLE                         R19 R17 R18
      120 GETTABLEKS                       R18 R11 K26 ["Medium"]
      122 LOADK                            R19 K29 ["radius-medium"]
      123 SETTABLE                         R19 R17 R18
      124 DUPCLOSURE                       R18 K30 [PROTO_0]
      125 DUPCLOSURE                       R19 K31 [PROTO_1]
      126 DUPCLOSURE                       R20 K32 [PROTO_15]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 GETTABLEKS                       R21 R2 K33 ["memo"]
      143 GETTABLEKS                       R22 R2 K34 ["forwardRef"]
      145 MOVE                             R23 R20
      146 CALL                             R22 1 -1
      147 CALL                             R21 -1 -1
      148 RETURN                           R21 -1
