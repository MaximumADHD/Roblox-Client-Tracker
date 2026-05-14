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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 2
        5 GETIMPORT                        R4 K3 [table.clone]
        7 GETUPVAL                         R5 1
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R2 R4 K4 ["Visible"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 MOVE                             R7 R4
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R7 R5 K5 ["width"]
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R8 R5 K6 ["maxHeight"]
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 4
       24 LOADN                            R9 4
       25 CALL                             R8 1 1
       26 GETUPVAL                         R9 4
       27 LOADN                            R10 64
       28 CALL                             R9 1 1
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K7 ["useState"]
       32 LOADB                            R11 0
       33 CALL                             R10 1 2
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K0 ["useBinding"]
       37 GETIMPORT                        R13 K10 [UDim2.fromScale]
       39 LOADN                            R14 0
       40 LOADN                            R15 1
       41 CALL                             R13 2 -1
       42 CALL                             R12 -1 2
       43 GETUPVAL                         R14 5
       44 CALL                             R14 0 1
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R15 R15 K11 ["useEffect"]
       48 NEWCLOSURE                       R16 P0
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R17 0 0
       52 CALL                             R15 2 0
       53 GETUPVAL                         R15 0
       54 GETTABLEKS                       R15 R15 K12 ["useCallback"]
       56 NEWCLOSURE                       R16 P1
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R17 0 0
       60 CALL                             R15 2 1
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R16 R16 K13 ["useMemo"]
       64 NEWCLOSURE                       R17 P2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R8
       67 NEWTABLE                         R18 0 2
       69 MOVE                             R19 R6
       70 MOVE                             R20 R8
       71 SETLIST                          R18 R19 2 [1]
       73 CALL                             R16 2 1
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R17 R17 K13 ["useMemo"]
       77 NEWCLOSURE                       R18 P3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R9
       81 NEWTABLE                         R19 0 3
       83 MOVE                             R20 R6
       84 MOVE                             R21 R9
       85 GETTABLEKS                       R22 R5 K14 ["couldGrow"]
       87 SETLIST                          R19 R20 3 [1]
       89 CALL                             R17 2 1
       90 GETUPVAL                         R18 0
       91 GETTABLEKS                       R18 R18 K13 ["useMemo"]
       93 NEWCLOSURE                       R19 P4
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R9
       98 NEWTABLE                         R20 0 3
      100 MOVE                             R21 R17
      101 MOVE                             R22 R16
      102 MOVE                             R23 R9
      103 SETLIST                          R20 R21 3 [1]
      105 CALL                             R18 2 1
      106 GETUPVAL                         R19 0
      107 GETTABLEKS                       R19 R19 K13 ["useMemo"]
      109 NEWCLOSURE                       R20 P5
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R7
      113 NEWTABLE                         R21 0 1
      115 MOVE                             R22 R7
      116 SETLIST                          R21 R22 1 [1]
      118 CALL                             R19 2 1
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K12 ["useCallback"]
      122 NEWCLOSURE                       R21 P6
      123 CAPTURE                          VAL R13
      124 NEWTABLE                         R22 0 1
      126 MOVE                             R23 R13
      127 SETLIST                          R22 R23 1 [1]
      129 CALL                             R20 2 1
      130 GETTABLEKS                       R21 R5 K15 ["children"]
      132 JUMPIF                           R21 ; [+18]
      133 GETTABLEKS                       R22 R5 K16 ["items"]
      135 JUMPIFNOT                        R22 ; [+15]
      136 GETUPVAL                         R22 0
      137 GETTABLEKS                       R22 R22 K17 ["createElement"]
      139 GETUPVAL                         R23 6
      140 DUPTABLE                         R24 K19 [{"items", "size"}]
      141 GETTABLEKS                       R25 R5 K16 ["items"]
      143 SETTABLEKS                       R25 R24 K16 ["items"]
      145 GETTABLEKS                       R25 R5 K18 ["size"]
      147 SETTABLEKS                       R25 R24 K18 ["size"]
      149 CALL                             R22 2 1
      150 MOVE                             R21 R22
      151 GETTABLEKS                       R23 R5 K20 ["radius"]
      153 JUMPIFEQKNIL                     R23 ; [+6]
      155 GETUPVAL                         R23 7
      156 GETTABLEKS                       R24 R5 K20 ["radius"]
      158 GETTABLE                         R22 R23 R24
      159 JUMP                             ; [+1]
      160 LOADK                            R22 K21 [""]
      161 GETTABLEKS                       R23 R5 K6 ["maxHeight"]
      163 JUMPIFNOT                        R23 ; [+125]
      164 GETUPVAL                         R23 0
      165 GETTABLEKS                       R23 R23 K22 ["joinBindings"]
      167 DUPTABLE                         R24 K25 [{"autoSize", "isOverMaxHeight"}]
      168 SETTABLEKS                       R17 R24 K23 ["autoSize"]
      170 SETTABLEKS                       R19 R24 K24 ["isOverMaxHeight"]
      172 CALL                             R23 1 1
      173 GETUPVAL                         R25 8
      174 NAMECALL                         R23 R23 K26 ["map"]
      176 CALL                             R23 2 1
      177 GETUPVAL                         R24 0
      178 GETTABLEKS                       R24 R24 K17 ["createElement"]
      180 GETUPVAL                         R25 9
      181 GETUPVAL                         R26 10
      182 MOVE                             R27 R5
      183 DUPTABLE                         R28 K33 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint", "tag"}]
      184 SETTABLEKS                       R1 R28 K27 ["ref"]
      186 DUPTABLE                         R29 K36 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      187 SETTABLEKS                       R23 R29 K29 ["AutomaticSize"]
      189 GETIMPORT                        R30 K39 [Enum.ScrollingDirection.Y]
      191 SETTABLEKS                       R30 R29 K34 ["ScrollingDirection"]
      193 SETTABLEKS                       R12 R29 K35 ["CanvasSize"]
      195 SETTABLEKS                       R29 R28 K28 ["scroll"]
      197 SETTABLEKS                       R23 R28 K29 ["AutomaticSize"]
      199 GETUPVAL                         R29 0
      200 GETTABLEKS                       R29 R29 K22 ["joinBindings"]
      202 DUPTABLE                         R30 K40 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      203 SETTABLEKS                       R17 R30 K23 ["autoSize"]
      205 SETTABLEKS                       R6 R30 K5 ["width"]
      207 SETTABLEKS                       R19 R30 K24 ["isOverMaxHeight"]
      209 SETTABLEKS                       R7 R30 K6 ["maxHeight"]
      211 CALL                             R29 1 1
      212 GETUPVAL                         R31 11
      213 NAMECALL                         R29 R29 K26 ["map"]
      215 CALL                             R29 2 1
      216 SETTABLEKS                       R29 R28 K30 ["Size"]
      218 SETTABLEKS                       R18 R28 K31 ["sizeConstraint"]
      220 LOADK                            R30 K41 ["stroke-standard stroke-default %*"]
      221 MOVE                             R32 R22
      222 NAMECALL                         R30 R30 K42 ["format"]
      224 CALL                             R30 2 1
      225 MOVE                             R29 R30
      226 SETTABLEKS                       R29 R28 K32 ["tag"]
      228 CALL                             R26 2 1
      229 GETUPVAL                         R27 0
      230 GETTABLEKS                       R27 R27 K17 ["createElement"]
      232 GETUPVAL                         R28 12
      233 DUPTABLE                         R29 K44 [{"tag", "onAbsoluteSizeChanged"}]
      234 LOADK                            R30 K45 ["col size-full"]
      235 SETTABLEKS                       R30 R29 K32 ["tag"]
      237 SETTABLEKS                       R20 R29 K43 ["onAbsoluteSizeChanged"]
      239 GETUPVAL                         R30 0
      240 GETTABLEKS                       R30 R30 K17 ["createElement"]
      242 GETUPVAL                         R31 13
      243 GETTABLEKS                       R31 R31 K46 ["Provider"]
      245 DUPTABLE                         R32 K48 [{"value"}]
      246 DUPTABLE                         R33 K58 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      247 GETTABLEKS                       R34 R5 K49 ["onActivated"]
      249 SETTABLEKS                       R34 R33 K49 ["onActivated"]
      251 GETTABLEKS                       R34 R5 K50 ["onNestedLeafActivated"]
      253 SETTABLEKS                       R34 R33 K50 ["onNestedLeafActivated"]
      255 GETTABLEKS                       R34 R5 K18 ["size"]
      257 SETTABLEKS                       R34 R33 K18 ["size"]
      259 SETTABLEKS                       R10 R33 K51 ["hasLeading"]
      261 SETTABLEKS                       R15 R33 K52 ["setHasLeading"]
      263 GETTABLEKS                       R34 R14 K59 ["openPath"]
      265 SETTABLEKS                       R34 R33 K53 ["hoverOpenPath"]
      267 GETTABLEKS                       R34 R14 K60 ["openAtDepth"]
      269 SETTABLEKS                       R34 R33 K54 ["hoverOpenAtDepth"]
      271 GETTABLEKS                       R34 R14 K61 ["closeAtDepth"]
      273 SETTABLEKS                       R34 R33 K55 ["hoverCloseAtDepth"]
      275 GETTABLEKS                       R34 R14 K62 ["reset"]
      277 SETTABLEKS                       R34 R33 K56 ["hoverReset"]
      279 LOADN                            R34 1
      280 SETTABLEKS                       R34 R33 K57 ["depth"]
      282 SETTABLEKS                       R33 R32 K47 ["value"]
      284 MOVE                             R33 R21
      285 CALL                             R30 3 -1
      286 CALL                             R27 -1 -1
      287 CALL                             R24 -1 -1
      288 RETURN                           R24 -1
      289 GETUPVAL                         R23 0
      290 GETTABLEKS                       R23 R23 K17 ["createElement"]
      292 GETUPVAL                         R24 12
      293 GETUPVAL                         R25 10
      294 MOVE                             R26 R5
      295 DUPTABLE                         R27 K63 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      296 LOADK                            R29 K64 ["col stroke-standard stroke-default %*"]
      297 MOVE                             R31 R22
      298 NAMECALL                         R29 R29 K42 ["format"]
      300 CALL                             R29 2 1
      301 MOVE                             R28 R29
      302 SETTABLEKS                       R28 R27 K32 ["tag"]
      304 DUPCLOSURE                       R30 K65 [PROTO_15]
      305 NAMECALL                         R28 R17 K26 ["map"]
      307 CALL                             R28 2 1
      308 SETTABLEKS                       R28 R27 K29 ["AutomaticSize"]
      310 GETUPVAL                         R28 0
      311 GETTABLEKS                       R28 R28 K22 ["joinBindings"]
      313 NEWTABLE                         R29 0 2
      315 MOVE                             R30 R17
      316 MOVE                             R31 R6
      317 SETLIST                          R29 R30 2 [1]
      319 CALL                             R28 1 1
      320 DUPCLOSURE                       R30 K66 [PROTO_16]
      321 NAMECALL                         R28 R28 K26 ["map"]
      323 CALL                             R28 2 1
      324 SETTABLEKS                       R28 R27 K30 ["Size"]
      326 SETTABLEKS                       R1 R27 K27 ["ref"]
      328 SETTABLEKS                       R18 R27 K31 ["sizeConstraint"]
      330 CALL                             R25 2 1
      331 GETUPVAL                         R26 0
      332 GETTABLEKS                       R26 R26 K17 ["createElement"]
      334 GETUPVAL                         R27 13
      335 GETTABLEKS                       R27 R27 K46 ["Provider"]
      337 DUPTABLE                         R28 K48 [{"value"}]
      338 DUPTABLE                         R29 K58 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      339 GETTABLEKS                       R30 R5 K49 ["onActivated"]
      341 SETTABLEKS                       R30 R29 K49 ["onActivated"]
      343 GETTABLEKS                       R30 R5 K50 ["onNestedLeafActivated"]
      345 SETTABLEKS                       R30 R29 K50 ["onNestedLeafActivated"]
      347 GETTABLEKS                       R30 R5 K18 ["size"]
      349 SETTABLEKS                       R30 R29 K18 ["size"]
      351 SETTABLEKS                       R10 R29 K51 ["hasLeading"]
      353 SETTABLEKS                       R15 R29 K52 ["setHasLeading"]
      355 GETTABLEKS                       R30 R14 K59 ["openPath"]
      357 SETTABLEKS                       R30 R29 K53 ["hoverOpenPath"]
      359 GETTABLEKS                       R30 R14 K60 ["openAtDepth"]
      361 SETTABLEKS                       R30 R29 K54 ["hoverOpenAtDepth"]
      363 GETTABLEKS                       R30 R14 K61 ["closeAtDepth"]
      365 SETTABLEKS                       R30 R29 K55 ["hoverCloseAtDepth"]
      367 GETTABLEKS                       R30 R14 K62 ["reset"]
      369 SETTABLEKS                       R30 R29 K56 ["hoverReset"]
      371 LOADN                            R30 1
      372 SETTABLEKS                       R30 R29 K57 ["depth"]
      374 SETTABLEKS                       R29 R28 K47 ["value"]
      376 MOVE                             R29 R21
      377 CALL                             R26 3 -1
      378 CALL                             R23 -1 -1
      379 RETURN                           R23 -1

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
       39 GETTABLEKS                       R7 R7 K13 ["useBindable"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Utility"]
       46 GETTABLEKS                       R8 R8 K14 ["withCommonProps"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K17 ["ControlState"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R11 K18 ["Radius"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Components"]
       74 GETTABLEKS                       R12 R12 K19 ["Types"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K16 ["Enums"]
       81 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETIMPORT                        R14 K1 [script]
       88 GETTABLEKS                       R14 R14 K4 ["Parent"]
       90 GETTABLEKS                       R14 R14 K21 ["BaseMenuContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R15 K1 [script]
       97 GETTABLEKS                       R15 R15 K4 ["Parent"]
       99 GETTABLEKS                       R15 R15 K22 ["useSubmenuHover"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETIMPORT                        R16 K1 [script]
      106 GETTABLEKS                       R16 R16 K4 ["Parent"]
      108 GETTABLEKS                       R16 R16 K23 ["DeclarativeBaseMenuContent"]
      110 CALL                             R15 1 1
      111 DUPTABLE                         R16 K25 [{"size"}]
      112 GETTABLEKS                       R17 R12 K26 ["Medium"]
      114 SETTABLEKS                       R17 R16 K24 ["size"]
      116 NEWTABLE                         R17 2 0
      118 GETTABLEKS                       R18 R10 K27 ["Small"]
      120 LOADK                            R19 K28 ["radius-small"]
      121 SETTABLE                         R19 R17 R18
      122 GETTABLEKS                       R18 R10 K26 ["Medium"]
      124 LOADK                            R19 K29 ["radius-medium"]
      125 SETTABLE                         R19 R17 R18
      126 DUPCLOSURE                       R18 K30 [PROTO_0]
      127 DUPCLOSURE                       R19 K31 [PROTO_1]
      128 DUPCLOSURE                       R20 K32 [PROTO_17]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R13
      143 GETTABLEKS                       R21 R2 K33 ["memo"]
      145 GETTABLEKS                       R22 R2 K34 ["forwardRef"]
      147 MOVE                             R23 R20
      148 CALL                             R22 1 -1
      149 CALL                             R21 -1 -1
      150 RETURN                           R21 -1
