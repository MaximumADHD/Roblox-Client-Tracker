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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["couldGrow"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["joinBindings"]
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
        5 GETTABLEKS                       R4 R0 K1 ["canvasSize"]
        7 GETTABLEKS                       R3 R4 K2 ["Y"]
        9 GETTABLEKS                       R2 R3 K3 ["Offset"]
       11 GETTABLEKS                       R3 R0 K0 ["maxHeight"]
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["joinBindings"]
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
        3 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R4 K4 ["X"]
        7 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R5 K5 ["Y"]
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
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K0 ["FoundationBaseMenuDelayVisible"]
        6 JUMPIFNOT                        R5 ; [+14]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["useBinding"]
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
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K0 ["FoundationBaseMenuDelayVisible"]
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
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K8 ["useState"]
       48 LOADB                            R11 0
       49 CALL                             R10 1 2
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R12 R13 K1 ["useBinding"]
       53 GETIMPORT                        R13 K11 [UDim2.fromScale]
       55 LOADN                            R14 0
       56 LOADN                            R15 1
       57 CALL                             R13 2 -1
       58 CALL                             R12 -1 2
       59 GETUPVAL                         R14 6
       60 CALL                             R14 0 1
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R15 R16 K0 ["FoundationBaseMenuDelayVisible"]
       64 JUMPIFNOT                        R15 ; [+8]
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K12 ["useEffect"]
       68 NEWCLOSURE                       R16 P0
       69 CAPTURE                          REF R3
       70 NEWTABLE                         R17 0 0
       72 CALL                             R15 2 0
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R15 R16 K13 ["useCallback"]
       76 NEWCLOSURE                       R16 P1
       77 CAPTURE                          VAL R11
       78 NEWTABLE                         R17 0 0
       80 CALL                             R15 2 1
       81 GETUPVAL                         R17 1
       82 GETTABLEKS                       R16 R17 K14 ["useMemo"]
       84 NEWCLOSURE                       R17 P2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 NEWTABLE                         R18 0 2
       89 MOVE                             R19 R6
       90 MOVE                             R20 R8
       91 SETLIST                          R18 R19 2 [1]
       93 CALL                             R16 2 1
       94 GETUPVAL                         R18 1
       95 GETTABLEKS                       R17 R18 K14 ["useMemo"]
       97 NEWCLOSURE                       R18 P3
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R9
      101 NEWTABLE                         R19 0 3
      103 MOVE                             R20 R6
      104 MOVE                             R21 R9
      105 GETTABLEKS                       R22 R5 K15 ["couldGrow"]
      107 SETLIST                          R19 R20 3 [1]
      109 CALL                             R17 2 1
      110 GETUPVAL                         R19 1
      111 GETTABLEKS                       R18 R19 K14 ["useMemo"]
      113 NEWCLOSURE                       R19 P4
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R9
      118 NEWTABLE                         R20 0 3
      120 MOVE                             R21 R17
      121 MOVE                             R22 R16
      122 MOVE                             R23 R9
      123 SETLIST                          R20 R21 3 [1]
      125 CALL                             R18 2 1
      126 GETUPVAL                         R20 1
      127 GETTABLEKS                       R19 R20 K14 ["useMemo"]
      129 NEWCLOSURE                       R20 P5
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R7
      133 NEWTABLE                         R21 0 1
      135 MOVE                             R22 R7
      136 SETLIST                          R21 R22 1 [1]
      138 CALL                             R19 2 1
      139 GETUPVAL                         R21 1
      140 GETTABLEKS                       R20 R21 K13 ["useCallback"]
      142 NEWCLOSURE                       R21 P6
      143 CAPTURE                          VAL R13
      144 NEWTABLE                         R22 0 1
      146 MOVE                             R23 R13
      147 SETLIST                          R22 R23 1 [1]
      149 CALL                             R20 2 1
      150 GETTABLEKS                       R21 R5 K16 ["children"]
      152 JUMPIF                           R21 ; [+18]
      153 GETTABLEKS                       R22 R5 K17 ["items"]
      155 JUMPIFNOT                        R22 ; [+15]
      156 GETUPVAL                         R23 1
      157 GETTABLEKS                       R22 R23 K18 ["createElement"]
      159 GETUPVAL                         R23 7
      160 DUPTABLE                         R24 K20 [{"items", "size"}]
      161 GETTABLEKS                       R25 R5 K17 ["items"]
      163 SETTABLEKS                       R25 R24 K17 ["items"]
      165 GETTABLEKS                       R25 R5 K19 ["size"]
      167 SETTABLEKS                       R25 R24 K19 ["size"]
      169 CALL                             R22 2 1
      170 MOVE                             R21 R22
      171 GETTABLEKS                       R23 R5 K21 ["radius"]
      173 JUMPIFEQKNIL                     R23 ; [+6]
      175 GETUPVAL                         R23 8
      176 GETTABLEKS                       R24 R5 K21 ["radius"]
      178 GETTABLE                         R22 R23 R24
      179 JUMP                             ; [+1]
      180 LOADK                            R22 K22 [""]
      181 GETTABLEKS                       R23 R5 K7 ["maxHeight"]
      183 JUMPIFNOT                        R23 ; [+122]
      184 GETUPVAL                         R24 1
      185 GETTABLEKS                       R23 R24 K23 ["joinBindings"]
      187 DUPTABLE                         R24 K26 [{"autoSize", "isOverMaxHeight"}]
      188 SETTABLEKS                       R17 R24 K24 ["autoSize"]
      190 SETTABLEKS                       R19 R24 K25 ["isOverMaxHeight"]
      192 CALL                             R23 1 1
      193 GETUPVAL                         R25 9
      194 NAMECALL                         R23 R23 K27 ["map"]
      196 CALL                             R23 2 1
      197 GETUPVAL                         R25 1
      198 GETTABLEKS                       R24 R25 K18 ["createElement"]
      200 GETUPVAL                         R25 10
      201 GETUPVAL                         R26 11
      202 MOVE                             R27 R5
      203 DUPTABLE                         R28 K34 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint", "tag"}]
      204 SETTABLEKS                       R1 R28 K28 ["ref"]
      206 DUPTABLE                         R29 K37 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      207 SETTABLEKS                       R23 R29 K30 ["AutomaticSize"]
      209 GETIMPORT                        R30 K40 [Enum.ScrollingDirection.Y]
      211 SETTABLEKS                       R30 R29 K35 ["ScrollingDirection"]
      213 SETTABLEKS                       R12 R29 K36 ["CanvasSize"]
      215 SETTABLEKS                       R29 R28 K29 ["scroll"]
      217 SETTABLEKS                       R23 R28 K30 ["AutomaticSize"]
      219 GETUPVAL                         R30 1
      220 GETTABLEKS                       R29 R30 K23 ["joinBindings"]
      222 DUPTABLE                         R30 K41 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      223 SETTABLEKS                       R17 R30 K24 ["autoSize"]
      225 SETTABLEKS                       R6 R30 K6 ["width"]
      227 SETTABLEKS                       R19 R30 K25 ["isOverMaxHeight"]
      229 SETTABLEKS                       R7 R30 K7 ["maxHeight"]
      231 CALL                             R29 1 1
      232 GETUPVAL                         R31 12
      233 NAMECALL                         R29 R29 K27 ["map"]
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K31 ["Size"]
      238 SETTABLEKS                       R18 R28 K32 ["sizeConstraint"]
      240 LOADK                            R30 K42 ["stroke-standard stroke-default %*"]
      241 MOVE                             R32 R22
      242 NAMECALL                         R30 R30 K43 ["format"]
      244 CALL                             R30 2 1
      245 MOVE                             R29 R30
      246 SETTABLEKS                       R29 R28 K33 ["tag"]
      248 CALL                             R26 2 1
      249 GETUPVAL                         R28 1
      250 GETTABLEKS                       R27 R28 K18 ["createElement"]
      252 GETUPVAL                         R28 13
      253 DUPTABLE                         R29 K45 [{"tag", "onAbsoluteSizeChanged"}]
      254 LOADK                            R30 K46 ["col size-full"]
      255 SETTABLEKS                       R30 R29 K33 ["tag"]
      257 SETTABLEKS                       R20 R29 K44 ["onAbsoluteSizeChanged"]
      259 GETUPVAL                         R31 1
      260 GETTABLEKS                       R30 R31 K18 ["createElement"]
      262 GETUPVAL                         R32 14
      263 GETTABLEKS                       R31 R32 K47 ["Provider"]
      265 DUPTABLE                         R32 K49 [{"value"}]
      266 DUPTABLE                         R33 K58 [{"onActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      267 GETTABLEKS                       R34 R5 K50 ["onActivated"]
      269 SETTABLEKS                       R34 R33 K50 ["onActivated"]
      271 GETTABLEKS                       R34 R5 K19 ["size"]
      273 SETTABLEKS                       R34 R33 K19 ["size"]
      275 SETTABLEKS                       R10 R33 K51 ["hasLeading"]
      277 SETTABLEKS                       R15 R33 K52 ["setHasLeading"]
      279 GETTABLEKS                       R34 R14 K59 ["openPath"]
      281 SETTABLEKS                       R34 R33 K53 ["hoverOpenPath"]
      283 GETTABLEKS                       R34 R14 K60 ["openAtDepth"]
      285 SETTABLEKS                       R34 R33 K54 ["hoverOpenAtDepth"]
      287 GETTABLEKS                       R34 R14 K61 ["closeAtDepth"]
      289 SETTABLEKS                       R34 R33 K55 ["hoverCloseAtDepth"]
      291 GETTABLEKS                       R34 R14 K62 ["reset"]
      293 SETTABLEKS                       R34 R33 K56 ["hoverReset"]
      295 LOADN                            R34 1
      296 SETTABLEKS                       R34 R33 K57 ["depth"]
      298 SETTABLEKS                       R33 R32 K48 ["value"]
      300 MOVE                             R33 R21
      301 CALL                             R30 3 -1
      302 CALL                             R27 -1 -1
      303 CALL                             R24 -1 -1
      304 CLOSEUPVALS                      R3
      305 RETURN                           R24 -1
      306 GETUPVAL                         R24 1
      307 GETTABLEKS                       R23 R24 K18 ["createElement"]
      309 GETUPVAL                         R24 13
      310 GETUPVAL                         R25 11
      311 MOVE                             R26 R5
      312 DUPTABLE                         R27 K63 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      313 LOADK                            R29 K64 ["col stroke-standard stroke-default %*"]
      314 MOVE                             R31 R22
      315 NAMECALL                         R29 R29 K43 ["format"]
      317 CALL                             R29 2 1
      318 MOVE                             R28 R29
      319 SETTABLEKS                       R28 R27 K33 ["tag"]
      321 DUPCLOSURE                       R30 K65 [PROTO_15]
      322 NAMECALL                         R28 R17 K27 ["map"]
      324 CALL                             R28 2 1
      325 SETTABLEKS                       R28 R27 K30 ["AutomaticSize"]
      327 GETUPVAL                         R29 1
      328 GETTABLEKS                       R28 R29 K23 ["joinBindings"]
      330 NEWTABLE                         R29 0 2
      332 MOVE                             R30 R17
      333 MOVE                             R31 R6
      334 SETLIST                          R29 R30 2 [1]
      336 CALL                             R28 1 1
      337 DUPCLOSURE                       R30 K66 [PROTO_16]
      338 NAMECALL                         R28 R28 K27 ["map"]
      340 CALL                             R28 2 1
      341 SETTABLEKS                       R28 R27 K31 ["Size"]
      343 SETTABLEKS                       R1 R27 K28 ["ref"]
      345 SETTABLEKS                       R18 R27 K32 ["sizeConstraint"]
      347 CALL                             R25 2 1
      348 GETUPVAL                         R27 1
      349 GETTABLEKS                       R26 R27 K18 ["createElement"]
      351 GETUPVAL                         R28 14
      352 GETTABLEKS                       R27 R28 K47 ["Provider"]
      354 DUPTABLE                         R28 K49 [{"value"}]
      355 DUPTABLE                         R29 K58 [{"onActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      356 GETTABLEKS                       R30 R5 K50 ["onActivated"]
      358 SETTABLEKS                       R30 R29 K50 ["onActivated"]
      360 GETTABLEKS                       R30 R5 K19 ["size"]
      362 SETTABLEKS                       R30 R29 K19 ["size"]
      364 SETTABLEKS                       R10 R29 K51 ["hasLeading"]
      366 SETTABLEKS                       R15 R29 K52 ["setHasLeading"]
      368 GETTABLEKS                       R30 R14 K59 ["openPath"]
      370 SETTABLEKS                       R30 R29 K53 ["hoverOpenPath"]
      372 GETTABLEKS                       R30 R14 K60 ["openAtDepth"]
      374 SETTABLEKS                       R30 R29 K54 ["hoverOpenAtDepth"]
      376 GETTABLEKS                       R30 R14 K61 ["closeAtDepth"]
      378 SETTABLEKS                       R30 R29 K55 ["hoverCloseAtDepth"]
      380 GETTABLEKS                       R30 R14 K62 ["reset"]
      382 SETTABLEKS                       R30 R29 K56 ["hoverReset"]
      384 LOADN                            R30 1
      385 SETTABLEKS                       R30 R29 K57 ["depth"]
      387 SETTABLEKS                       R29 R28 K48 ["value"]
      389 MOVE                             R29 R21
      390 CALL                             R26 3 -1
      391 CALL                             R23 -1 -1
      392 CLOSEUPVALS                      R3
      393 RETURN                           R23 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["ScrollView"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
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
       46 GETTABLEKS                       R8 R9 K14 ["useBindable"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["withCommonProps"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K11 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R12 K18 ["ControlState"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R13 K19 ["Radius"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K8 ["Components"]
       81 GETTABLEKS                       R13 R14 K20 ["Types"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K17 ["Enums"]
       88 GETTABLEKS                       R14 R15 K21 ["InputSize"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETIMPORT                        R17 K1 [script]
       95 GETTABLEKS                       R16 R17 K4 ["Parent"]
       97 GETTABLEKS                       R15 R16 K22 ["BaseMenuContext"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETIMPORT                        R18 K1 [script]
      104 GETTABLEKS                       R17 R18 K4 ["Parent"]
      106 GETTABLEKS                       R16 R17 K23 ["useSubmenuHover"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETIMPORT                        R19 K1 [script]
      113 GETTABLEKS                       R18 R19 K4 ["Parent"]
      115 GETTABLEKS                       R17 R18 K24 ["DeclarativeBaseMenuContent"]
      117 CALL                             R16 1 1
      118 DUPTABLE                         R17 K26 [{"size"}]
      119 GETTABLEKS                       R18 R13 K27 ["Medium"]
      121 SETTABLEKS                       R18 R17 K25 ["size"]
      123 NEWTABLE                         R18 2 0
      125 GETTABLEKS                       R19 R11 K28 ["Small"]
      127 LOADK                            R20 K29 ["radius-small"]
      128 SETTABLE                         R20 R18 R19
      129 GETTABLEKS                       R19 R11 K27 ["Medium"]
      131 LOADK                            R20 K30 ["radius-medium"]
      132 SETTABLE                         R20 R18 R19
      133 DUPCLOSURE                       R19 K31 [PROTO_0]
      134 DUPCLOSURE                       R20 K32 [PROTO_1]
      135 DUPCLOSURE                       R21 K33 [PROTO_17]
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R14
      151 GETTABLEKS                       R22 R2 K34 ["memo"]
      153 GETTABLEKS                       R23 R2 K35 ["forwardRef"]
      155 MOVE                             R24 R21
      156 CALL                             R23 1 -1
      157 CALL                             R22 -1 -1
      158 RETURN                           R22 -1
