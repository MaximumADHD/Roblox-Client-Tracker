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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["couldGrow"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["joinBindings"]
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
        5 GETTABLEKS                       R4 R0 K1 ["canvasSize"]
        7 GETTABLEKS                       R3 R4 K2 ["Y"]
        9 GETTABLEKS                       R2 R3 K3 ["Offset"]
       11 GETTABLEKS                       R3 R0 K0 ["maxHeight"]
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["joinBindings"]
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
        3 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R4 K4 ["X"]
        7 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R5 K5 ["Y"]
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
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETIMPORT                        R1 K3 [Enum.AutomaticSize.Y]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K5 [Enum.AutomaticSize.XY]
        6 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim2.new]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K4 [UDim.new]
        6 CALL                             R3 0 -1
        7 CALL                             R1 -1 1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K6 [UDim2.fromOffset]
       11 GETUPVAL                         R2 0
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_17:
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
       13 LOADN                            R6 4
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 3
       16 LOADN                            R7 64
       17 CALL                             R6 1 1
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R7 R8 K2 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R10 4
       24 GETTABLEKS                       R9 R10 K3 ["useBinding"]
       26 GETIMPORT                        R10 K6 [UDim2.fromScale]
       28 LOADN                            R11 0
       29 LOADN                            R12 1
       30 CALL                             R10 2 -1
       31 CALL                             R9 -1 2
       32 GETUPVAL                         R12 4
       33 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       35 NEWCLOSURE                       R12 P0
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R13 0 0
       39 CALL                             R11 2 1
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R12 R13 K8 ["useMemo"]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R3
       49 MOVE                             R16 R5
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R13 R14 K8 ["useMemo"]
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
       69 GETUPVAL                         R15 4
       70 GETTABLEKS                       R14 R15 K8 ["useMemo"]
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
       85 GETUPVAL                         R16 4
       86 GETTABLEKS                       R15 R16 K8 ["useMemo"]
       88 NEWCLOSURE                       R16 P4
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 NEWTABLE                         R17 0 1
       94 MOVE                             R18 R4
       95 SETLIST                          R17 R18 1 [1]
       97 CALL                             R15 2 1
       98 GETUPVAL                         R17 4
       99 GETTABLEKS                       R16 R17 K7 ["useCallback"]
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
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R18 R19 K12 ["createElement"]
      118 GETUPVAL                         R19 5
      119 DUPTABLE                         R20 K14 [{"items", "size"}]
      120 GETTABLEKS                       R21 R2 K11 ["items"]
      122 SETTABLEKS                       R21 R20 K11 ["items"]
      124 GETTABLEKS                       R21 R2 K13 ["size"]
      126 SETTABLEKS                       R21 R20 K13 ["size"]
      128 CALL                             R18 2 1
      129 MOVE                             R17 R18
      130 GETUPVAL                         R19 6
      131 GETTABLEKS                       R18 R19 K15 ["FoundationBaseMenuScroll"]
      133 JUMPIFNOT                        R18 ; [+97]
      134 GETTABLEKS                       R18 R2 K1 ["maxHeight"]
      136 JUMPIFNOT                        R18 ; [+94]
      137 GETUPVAL                         R19 4
      138 GETTABLEKS                       R18 R19 K16 ["joinBindings"]
      140 DUPTABLE                         R19 K19 [{"autoSize", "isOverMaxHeight"}]
      141 SETTABLEKS                       R13 R19 K17 ["autoSize"]
      143 SETTABLEKS                       R15 R19 K18 ["isOverMaxHeight"]
      145 CALL                             R18 1 1
      146 GETUPVAL                         R20 7
      147 NAMECALL                         R18 R18 K20 ["map"]
      149 CALL                             R18 2 1
      150 GETUPVAL                         R20 4
      151 GETTABLEKS                       R19 R20 K12 ["createElement"]
      153 GETUPVAL                         R20 8
      154 GETUPVAL                         R21 9
      155 MOVE                             R22 R2
      156 DUPTABLE                         R23 K26 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint"}]
      157 SETTABLEKS                       R1 R23 K21 ["ref"]
      159 DUPTABLE                         R24 K29 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      160 SETTABLEKS                       R18 R24 K23 ["AutomaticSize"]
      162 GETIMPORT                        R25 K32 [Enum.ScrollingDirection.Y]
      164 SETTABLEKS                       R25 R24 K27 ["ScrollingDirection"]
      166 SETTABLEKS                       R9 R24 K28 ["CanvasSize"]
      168 SETTABLEKS                       R24 R23 K22 ["scroll"]
      170 SETTABLEKS                       R18 R23 K23 ["AutomaticSize"]
      172 GETUPVAL                         R25 4
      173 GETTABLEKS                       R24 R25 K16 ["joinBindings"]
      175 DUPTABLE                         R25 K33 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      176 SETTABLEKS                       R13 R25 K17 ["autoSize"]
      178 SETTABLEKS                       R3 R25 K0 ["width"]
      180 SETTABLEKS                       R15 R25 K18 ["isOverMaxHeight"]
      182 SETTABLEKS                       R4 R25 K1 ["maxHeight"]
      184 CALL                             R24 1 1
      185 GETUPVAL                         R26 10
      186 NAMECALL                         R24 R24 K20 ["map"]
      188 CALL                             R24 2 1
      189 SETTABLEKS                       R24 R23 K24 ["Size"]
      191 SETTABLEKS                       R14 R23 K25 ["sizeConstraint"]
      193 CALL                             R21 2 1
      194 GETUPVAL                         R23 4
      195 GETTABLEKS                       R22 R23 K12 ["createElement"]
      197 GETUPVAL                         R23 11
      198 DUPTABLE                         R24 K36 [{"tag", "onAbsoluteSizeChanged"}]
      199 LOADK                            R25 K37 ["col size-full"]
      200 SETTABLEKS                       R25 R24 K34 ["tag"]
      202 SETTABLEKS                       R16 R24 K35 ["onAbsoluteSizeChanged"]
      204 GETUPVAL                         R26 4
      205 GETTABLEKS                       R25 R26 K12 ["createElement"]
      207 GETUPVAL                         R27 12
      208 GETTABLEKS                       R26 R27 K38 ["Provider"]
      210 DUPTABLE                         R27 K40 [{"value"}]
      211 DUPTABLE                         R28 K44 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      212 GETTABLEKS                       R29 R2 K41 ["onActivated"]
      214 SETTABLEKS                       R29 R28 K41 ["onActivated"]
      216 GETTABLEKS                       R29 R2 K13 ["size"]
      218 SETTABLEKS                       R29 R28 K13 ["size"]
      220 SETTABLEKS                       R7 R28 K42 ["hasLeading"]
      222 SETTABLEKS                       R11 R28 K43 ["setHasLeading"]
      224 SETTABLEKS                       R28 R27 K39 ["value"]
      226 MOVE                             R28 R17
      227 CALL                             R25 3 -1
      228 CALL                             R22 -1 -1
      229 CALL                             R19 -1 -1
      230 RETURN                           R19 -1
      231 GETUPVAL                         R19 4
      232 GETTABLEKS                       R18 R19 K12 ["createElement"]
      234 GETUPVAL                         R19 11
      235 GETUPVAL                         R20 9
      236 MOVE                             R21 R2
      237 DUPTABLE                         R22 K45 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      238 LOADK                            R23 K46 ["col"]
      239 SETTABLEKS                       R23 R22 K34 ["tag"]
      241 GETUPVAL                         R25 6
      242 GETTABLEKS                       R24 R25 K47 ["FoundationMenuWidthGrowth"]
      244 JUMPIFNOT                        R24 ; [+5]
      245 DUPCLOSURE                       R25 K48 [PROTO_13]
      246 NAMECALL                         R23 R13 K20 ["map"]
      248 CALL                             R23 2 1
      249 JUMP                             ; [+4]
      250 DUPCLOSURE                       R25 K49 [PROTO_14]
      251 NAMECALL                         R23 R3 K20 ["map"]
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K23 ["AutomaticSize"]
      256 GETUPVAL                         R25 6
      257 GETTABLEKS                       R24 R25 K47 ["FoundationMenuWidthGrowth"]
      259 JUMPIFNOT                        R24 ; [+15]
      260 GETUPVAL                         R24 4
      261 GETTABLEKS                       R23 R24 K16 ["joinBindings"]
      263 NEWTABLE                         R24 0 2
      265 MOVE                             R25 R13
      266 MOVE                             R26 R3
      267 SETLIST                          R24 R25 2 [1]
      269 CALL                             R23 1 1
      270 DUPCLOSURE                       R25 K50 [PROTO_15]
      271 NAMECALL                         R23 R23 K20 ["map"]
      273 CALL                             R23 2 1
      274 JUMP                             ; [+5]
      275 NEWCLOSURE                       R25 P9
      276 CAPTURE                          VAL R5
      277 NAMECALL                         R23 R3 K20 ["map"]
      279 CALL                             R23 2 1
      280 SETTABLEKS                       R23 R22 K24 ["Size"]
      282 SETTABLEKS                       R1 R22 K21 ["ref"]
      284 GETUPVAL                         R25 6
      285 GETTABLEKS                       R24 R25 K47 ["FoundationMenuWidthGrowth"]
      287 JUMPIFNOT                        R24 ; [+2]
      288 MOVE                             R23 R14
      289 JUMP                             ; [+1]
      290 LOADNIL                          R23
      291 SETTABLEKS                       R23 R22 K25 ["sizeConstraint"]
      293 CALL                             R20 2 1
      294 GETUPVAL                         R22 4
      295 GETTABLEKS                       R21 R22 K12 ["createElement"]
      297 GETUPVAL                         R23 12
      298 GETTABLEKS                       R22 R23 K38 ["Provider"]
      300 DUPTABLE                         R23 K40 [{"value"}]
      301 DUPTABLE                         R24 K44 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      302 GETTABLEKS                       R25 R2 K41 ["onActivated"]
      304 SETTABLEKS                       R25 R24 K41 ["onActivated"]
      306 GETTABLEKS                       R25 R2 K13 ["size"]
      308 SETTABLEKS                       R25 R24 K13 ["size"]
      310 SETTABLEKS                       R7 R24 K42 ["hasLeading"]
      312 SETTABLEKS                       R11 R24 K43 ["setHasLeading"]
      314 SETTABLEKS                       R24 R23 K39 ["value"]
      316 MOVE                             R24 R17
      317 CALL                             R21 3 -1
      318 CALL                             R18 -1 -1
      319 RETURN                           R18 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["ScrollView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R7 K12 ["useScaledValue"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R8 K13 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Utility"]
       46 GETTABLEKS                       R8 R9 K14 ["withDefaults"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["withCommonProps"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K11 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["useBindable"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R12 K18 ["ControlState"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K8 ["Components"]
       74 GETTABLEKS                       R12 R13 K19 ["Types"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K17 ["Enums"]
       81 GETTABLEKS                       R13 R14 K20 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETIMPORT                        R16 K1 [script]
       88 GETTABLEKS                       R15 R16 K4 ["Parent"]
       90 GETTABLEKS                       R14 R15 K21 ["BaseMenuContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R17 K1 [script]
       97 GETTABLEKS                       R16 R17 K4 ["Parent"]
       99 GETTABLEKS                       R15 R16 K22 ["DeclarativeBaseMenuContent"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K24 [{"size"}]
      103 GETTABLEKS                       R16 R12 K25 ["Medium"]
      105 SETTABLEKS                       R16 R15 K23 ["size"]
      107 DUPCLOSURE                       R16 K26 [PROTO_0]
      108 DUPCLOSURE                       R17 K27 [PROTO_1]
      109 DUPCLOSURE                       R18 K28 [PROTO_17]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R13
      123 GETTABLEKS                       R19 R2 K29 ["memo"]
      125 GETTABLEKS                       R20 R2 K30 ["forwardRef"]
      127 MOVE                             R21 R18
      128 CALL                             R20 1 -1
      129 CALL                             R19 -1 -1
      130 RETURN                           R19 -1
