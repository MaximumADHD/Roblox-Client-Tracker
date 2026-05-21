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
        0 GETIMPORT                        R0 K2 [task.delay]
        2 LOADN                            R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Offset"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["map"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 GETUPVAL                         R2 0
        4 LOADK                            R3 K3 [∞]
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"MinSize", "MaxSize"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["joinBindings"]
        4 NEWTABLE                         R2 0 2
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 SETLIST                          R2 R3 2 [1]
       10 CALL                             R1 1 1
       11 DUPCLOSURE                       R3 K4 [PROTO_9]
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["joinBindings"]
        3 DUPTABLE                         R1 K3 [{"canvasSize", "maxHeight"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["canvasSize"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["maxHeight"]
       10 CALL                             R0 1 1
       11 DUPCLOSURE                       R2 K4 [PROTO_12]
       12 NAMECALL                         R0 R0 K5 ["map"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETIMPORT                        R1 K3 [Enum.AutomaticSize.XY]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K5 [Enum.AutomaticSize.Y]
        6 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["FoundationBaseMenuDelayVisible"]
        6 JUMPIFNOT                        R5 ; [+14]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["useBinding"]
       10 LOADB                            R6 0
       11 CALL                             R5 1 2
       12 MOVE                             R2 R5
       13 MOVE                             R3 R6
       14 GETIMPORT                        R5 K4 [table.clone]
       16 GETUPVAL                         R6 2
       17 CALL                             R5 1 1
       18 MOVE                             R4 R5
       19 SETTABLEKS                       R2 R4 K5 ["Visible"]
       21 GETUPVAL                         R5 3
       22 MOVE                             R6 R0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K0 ["FoundationBaseMenuDelayVisible"]
       26 JUMPIFNOT                        R8 ; [+2]
       27 MOVE                             R7 R4
       28 JUMP                             ; [+1]
       29 GETUPVAL                         R7 2
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R7 R5 K6 ["width"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R8 R5 K7 ["maxHeight"]
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 5
       40 LOADN                            R9 4
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 5
       43 LOADN                            R10 64
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K8 ["useState"]
       48 LOADB                            R11 0
       49 CALL                             R10 1 2
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K1 ["useBinding"]
       53 GETIMPORT                        R13 K11 [UDim2.fromScale]
       55 LOADN                            R14 0
       56 LOADN                            R15 1
       57 CALL                             R13 2 -1
       58 CALL                             R12 -1 2
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K0 ["FoundationBaseMenuDelayVisible"]
       62 JUMPIFNOT                        R14 ; [+8]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K12 ["useEffect"]
       66 NEWCLOSURE                       R15 P0
       67 CAPTURE                          REF R3
       68 NEWTABLE                         R16 0 0
       70 CALL                             R14 2 0
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K13 ["useCallback"]
       74 NEWCLOSURE                       R15 P1
       75 CAPTURE                          VAL R11
       76 NEWTABLE                         R16 0 0
       78 CALL                             R14 2 1
       79 GETUPVAL                         R15 1
       80 GETTABLEKS                       R15 R15 K14 ["useMemo"]
       82 NEWCLOSURE                       R16 P2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R17 0 2
       87 MOVE                             R18 R6
       88 MOVE                             R19 R8
       89 SETLIST                          R17 R18 2 [1]
       91 CALL                             R15 2 1
       92 GETUPVAL                         R16 1
       93 GETTABLEKS                       R16 R16 K14 ["useMemo"]
       95 NEWCLOSURE                       R17 P3
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 NEWTABLE                         R18 0 3
      101 MOVE                             R19 R6
      102 MOVE                             R20 R9
      103 GETTABLEKS                       R21 R5 K15 ["couldGrow"]
      105 SETLIST                          R18 R19 3 [1]
      107 CALL                             R16 2 1
      108 GETUPVAL                         R17 1
      109 GETTABLEKS                       R17 R17 K14 ["useMemo"]
      111 NEWCLOSURE                       R18 P4
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R9
      116 NEWTABLE                         R19 0 3
      118 MOVE                             R20 R16
      119 MOVE                             R21 R15
      120 MOVE                             R22 R9
      121 SETLIST                          R19 R20 3 [1]
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R18 R18 K14 ["useMemo"]
      127 NEWCLOSURE                       R19 P5
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R7
      131 NEWTABLE                         R20 0 1
      133 MOVE                             R21 R7
      134 SETLIST                          R20 R21 1 [1]
      136 CALL                             R18 2 1
      137 GETUPVAL                         R19 1
      138 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      140 NEWCLOSURE                       R20 P6
      141 CAPTURE                          VAL R13
      142 NEWTABLE                         R21 0 1
      144 MOVE                             R22 R13
      145 SETLIST                          R21 R22 1 [1]
      147 CALL                             R19 2 1
      148 GETTABLEKS                       R20 R5 K16 ["children"]
      150 JUMPIF                           R20 ; [+18]
      151 GETTABLEKS                       R21 R5 K17 ["items"]
      153 JUMPIFNOT                        R21 ; [+15]
      154 GETUPVAL                         R21 1
      155 GETTABLEKS                       R21 R21 K18 ["createElement"]
      157 GETUPVAL                         R22 6
      158 DUPTABLE                         R23 K20 [{"items", "size"}]
      159 GETTABLEKS                       R24 R5 K17 ["items"]
      161 SETTABLEKS                       R24 R23 K17 ["items"]
      163 GETTABLEKS                       R24 R5 K19 ["size"]
      165 SETTABLEKS                       R24 R23 K19 ["size"]
      167 CALL                             R21 2 1
      168 MOVE                             R20 R21
      169 GETTABLEKS                       R22 R5 K21 ["radius"]
      171 JUMPIFEQKNIL                     R22 ; [+6]
      173 GETUPVAL                         R22 7
      174 GETTABLEKS                       R23 R5 K21 ["radius"]
      176 GETTABLE                         R21 R22 R23
      177 JUMP                             ; [+1]
      178 LOADK                            R21 K22 [""]
      179 GETTABLEKS                       R22 R5 K7 ["maxHeight"]
      181 JUMPIFNOT                        R22 ; [+103]
      182 GETUPVAL                         R22 1
      183 GETTABLEKS                       R22 R22 K23 ["joinBindings"]
      185 DUPTABLE                         R23 K26 [{"autoSize", "isOverMaxHeight"}]
      186 SETTABLEKS                       R16 R23 K24 ["autoSize"]
      188 SETTABLEKS                       R18 R23 K25 ["isOverMaxHeight"]
      190 CALL                             R22 1 1
      191 GETUPVAL                         R24 8
      192 NAMECALL                         R22 R22 K27 ["map"]
      194 CALL                             R22 2 1
      195 GETUPVAL                         R23 1
      196 GETTABLEKS                       R23 R23 K18 ["createElement"]
      198 GETUPVAL                         R24 9
      199 GETUPVAL                         R25 10
      200 MOVE                             R26 R5
      201 DUPTABLE                         R27 K34 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint", "tag"}]
      202 SETTABLEKS                       R1 R27 K28 ["ref"]
      204 DUPTABLE                         R28 K37 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      205 SETTABLEKS                       R22 R28 K30 ["AutomaticSize"]
      207 GETIMPORT                        R29 K40 [Enum.ScrollingDirection.Y]
      209 SETTABLEKS                       R29 R28 K35 ["ScrollingDirection"]
      211 SETTABLEKS                       R12 R28 K36 ["CanvasSize"]
      213 SETTABLEKS                       R28 R27 K29 ["scroll"]
      215 SETTABLEKS                       R22 R27 K30 ["AutomaticSize"]
      217 GETUPVAL                         R28 1
      218 GETTABLEKS                       R28 R28 K23 ["joinBindings"]
      220 DUPTABLE                         R29 K41 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      221 SETTABLEKS                       R16 R29 K24 ["autoSize"]
      223 SETTABLEKS                       R6 R29 K6 ["width"]
      225 SETTABLEKS                       R18 R29 K25 ["isOverMaxHeight"]
      227 SETTABLEKS                       R7 R29 K7 ["maxHeight"]
      229 CALL                             R28 1 1
      230 GETUPVAL                         R30 11
      231 NAMECALL                         R28 R28 K27 ["map"]
      233 CALL                             R28 2 1
      234 SETTABLEKS                       R28 R27 K31 ["Size"]
      236 SETTABLEKS                       R17 R27 K32 ["sizeConstraint"]
      238 LOADK                            R29 K42 ["stroke-standard stroke-default %*"]
      239 MOVE                             R31 R21
      240 NAMECALL                         R29 R29 K43 ["format"]
      242 CALL                             R29 2 1
      243 MOVE                             R28 R29
      244 SETTABLEKS                       R28 R27 K33 ["tag"]
      246 CALL                             R25 2 1
      247 GETUPVAL                         R26 1
      248 GETTABLEKS                       R26 R26 K18 ["createElement"]
      250 GETUPVAL                         R27 12
      251 DUPTABLE                         R28 K45 [{"tag", "onAbsoluteSizeChanged"}]
      252 LOADK                            R29 K46 ["col size-full"]
      253 SETTABLEKS                       R29 R28 K33 ["tag"]
      255 SETTABLEKS                       R19 R28 K44 ["onAbsoluteSizeChanged"]
      257 GETUPVAL                         R29 1
      258 GETTABLEKS                       R29 R29 K18 ["createElement"]
      260 GETUPVAL                         R30 13
      261 GETTABLEKS                       R30 R30 K47 ["Provider"]
      263 DUPTABLE                         R31 K49 [{"value"}]
      264 DUPTABLE                         R32 K53 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      265 GETTABLEKS                       R33 R5 K50 ["onActivated"]
      267 SETTABLEKS                       R33 R32 K50 ["onActivated"]
      269 GETTABLEKS                       R33 R5 K19 ["size"]
      271 SETTABLEKS                       R33 R32 K19 ["size"]
      273 SETTABLEKS                       R10 R32 K51 ["hasLeading"]
      275 SETTABLEKS                       R14 R32 K52 ["setHasLeading"]
      277 SETTABLEKS                       R32 R31 K48 ["value"]
      279 MOVE                             R32 R20
      280 CALL                             R29 3 -1
      281 CALL                             R26 -1 -1
      282 CALL                             R23 -1 -1
      283 CLOSEUPVALS                      R3
      284 RETURN                           R23 -1
      285 GETUPVAL                         R22 1
      286 GETTABLEKS                       R22 R22 K18 ["createElement"]
      288 GETUPVAL                         R23 12
      289 GETUPVAL                         R24 10
      290 MOVE                             R25 R5
      291 DUPTABLE                         R26 K54 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      292 LOADK                            R28 K55 ["col stroke-standard stroke-default %*"]
      293 MOVE                             R30 R21
      294 NAMECALL                         R28 R28 K43 ["format"]
      296 CALL                             R28 2 1
      297 MOVE                             R27 R28
      298 SETTABLEKS                       R27 R26 K33 ["tag"]
      300 DUPCLOSURE                       R29 K56 [PROTO_15]
      301 NAMECALL                         R27 R16 K27 ["map"]
      303 CALL                             R27 2 1
      304 SETTABLEKS                       R27 R26 K30 ["AutomaticSize"]
      306 GETUPVAL                         R27 1
      307 GETTABLEKS                       R27 R27 K23 ["joinBindings"]
      309 NEWTABLE                         R28 0 2
      311 MOVE                             R29 R16
      312 MOVE                             R30 R6
      313 SETLIST                          R28 R29 2 [1]
      315 CALL                             R27 1 1
      316 DUPCLOSURE                       R29 K57 [PROTO_16]
      317 NAMECALL                         R27 R27 K27 ["map"]
      319 CALL                             R27 2 1
      320 SETTABLEKS                       R27 R26 K31 ["Size"]
      322 SETTABLEKS                       R1 R26 K28 ["ref"]
      324 SETTABLEKS                       R17 R26 K32 ["sizeConstraint"]
      326 CALL                             R24 2 1
      327 GETUPVAL                         R25 1
      328 GETTABLEKS                       R25 R25 K18 ["createElement"]
      330 GETUPVAL                         R26 13
      331 GETTABLEKS                       R26 R26 K47 ["Provider"]
      333 DUPTABLE                         R27 K49 [{"value"}]
      334 DUPTABLE                         R28 K53 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      335 GETTABLEKS                       R29 R5 K50 ["onActivated"]
      337 SETTABLEKS                       R29 R28 K50 ["onActivated"]
      339 GETTABLEKS                       R29 R5 K19 ["size"]
      341 SETTABLEKS                       R29 R28 K19 ["size"]
      343 SETTABLEKS                       R10 R28 K51 ["hasLeading"]
      345 SETTABLEKS                       R14 R28 K52 ["setHasLeading"]
      347 SETTABLEKS                       R28 R27 K48 ["value"]
      349 MOVE                             R28 R20
      350 CALL                             R25 3 -1
      351 CALL                             R22 -1 -1
      352 CLOSEUPVALS                      R3
      353 RETURN                           R22 -1

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
      126 DUPCLOSURE                       R20 K32 [PROTO_17]
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R15
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
