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
      130 GETTABLEKS                       R19 R2 K15 ["radius"]
      132 JUMPIFEQKNIL                     R19 ; [+6]
      134 GETUPVAL                         R19 6
      135 GETTABLEKS                       R20 R2 K15 ["radius"]
      137 GETTABLE                         R18 R19 R20
      138 JUMP                             ; [+1]
      139 LOADK                            R18 K16 [""]
      140 GETTABLEKS                       R19 R2 K1 ["maxHeight"]
      142 JUMPIFNOT                        R19 ; [+102]
      143 GETUPVAL                         R20 4
      144 GETTABLEKS                       R19 R20 K17 ["joinBindings"]
      146 DUPTABLE                         R20 K20 [{"autoSize", "isOverMaxHeight"}]
      147 SETTABLEKS                       R13 R20 K18 ["autoSize"]
      149 SETTABLEKS                       R15 R20 K19 ["isOverMaxHeight"]
      151 CALL                             R19 1 1
      152 GETUPVAL                         R21 7
      153 NAMECALL                         R19 R19 K21 ["map"]
      155 CALL                             R19 2 1
      156 GETUPVAL                         R21 4
      157 GETTABLEKS                       R20 R21 K12 ["createElement"]
      159 GETUPVAL                         R21 8
      160 GETUPVAL                         R22 9
      161 MOVE                             R23 R2
      162 DUPTABLE                         R24 K28 [{"ref", "scroll", "AutomaticSize", "Size", "sizeConstraint", "tag"}]
      163 SETTABLEKS                       R1 R24 K22 ["ref"]
      165 DUPTABLE                         R25 K31 [{"AutomaticSize", "ScrollingDirection", "CanvasSize"}]
      166 SETTABLEKS                       R19 R25 K24 ["AutomaticSize"]
      168 GETIMPORT                        R26 K34 [Enum.ScrollingDirection.Y]
      170 SETTABLEKS                       R26 R25 K29 ["ScrollingDirection"]
      172 SETTABLEKS                       R9 R25 K30 ["CanvasSize"]
      174 SETTABLEKS                       R25 R24 K23 ["scroll"]
      176 SETTABLEKS                       R19 R24 K24 ["AutomaticSize"]
      178 GETUPVAL                         R26 4
      179 GETTABLEKS                       R25 R26 K17 ["joinBindings"]
      181 DUPTABLE                         R26 K35 [{"autoSize", "width", "isOverMaxHeight", "maxHeight"}]
      182 SETTABLEKS                       R13 R26 K18 ["autoSize"]
      184 SETTABLEKS                       R3 R26 K0 ["width"]
      186 SETTABLEKS                       R15 R26 K19 ["isOverMaxHeight"]
      188 SETTABLEKS                       R4 R26 K1 ["maxHeight"]
      190 CALL                             R25 1 1
      191 GETUPVAL                         R27 10
      192 NAMECALL                         R25 R25 K21 ["map"]
      194 CALL                             R25 2 1
      195 SETTABLEKS                       R25 R24 K25 ["Size"]
      197 SETTABLEKS                       R14 R24 K26 ["sizeConstraint"]
      199 LOADK                            R26 K36 ["stroke-standard stroke-default %*"]
      200 MOVE                             R28 R18
      201 NAMECALL                         R26 R26 K37 ["format"]
      203 CALL                             R26 2 1
      204 MOVE                             R25 R26
      205 SETTABLEKS                       R25 R24 K27 ["tag"]
      207 CALL                             R22 2 1
      208 GETUPVAL                         R24 4
      209 GETTABLEKS                       R23 R24 K12 ["createElement"]
      211 GETUPVAL                         R24 11
      212 DUPTABLE                         R25 K39 [{"tag", "onAbsoluteSizeChanged"}]
      213 LOADK                            R26 K40 ["col size-full"]
      214 SETTABLEKS                       R26 R25 K27 ["tag"]
      216 SETTABLEKS                       R16 R25 K38 ["onAbsoluteSizeChanged"]
      218 GETUPVAL                         R27 4
      219 GETTABLEKS                       R26 R27 K12 ["createElement"]
      221 GETUPVAL                         R28 12
      222 GETTABLEKS                       R27 R28 K41 ["Provider"]
      224 DUPTABLE                         R28 K43 [{"value"}]
      225 DUPTABLE                         R29 K47 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      226 GETTABLEKS                       R30 R2 K44 ["onActivated"]
      228 SETTABLEKS                       R30 R29 K44 ["onActivated"]
      230 GETTABLEKS                       R30 R2 K13 ["size"]
      232 SETTABLEKS                       R30 R29 K13 ["size"]
      234 SETTABLEKS                       R7 R29 K45 ["hasLeading"]
      236 SETTABLEKS                       R11 R29 K46 ["setHasLeading"]
      238 SETTABLEKS                       R29 R28 K42 ["value"]
      240 MOVE                             R29 R17
      241 CALL                             R26 3 -1
      242 CALL                             R23 -1 -1
      243 CALL                             R20 -1 -1
      244 RETURN                           R20 -1
      245 GETUPVAL                         R20 4
      246 GETTABLEKS                       R19 R20 K12 ["createElement"]
      248 GETUPVAL                         R20 11
      249 GETUPVAL                         R21 9
      250 MOVE                             R22 R2
      251 DUPTABLE                         R23 K48 [{"tag", "AutomaticSize", "Size", "ref", "sizeConstraint"}]
      252 LOADK                            R25 K49 ["col stroke-standard stroke-default %*"]
      253 MOVE                             R27 R18
      254 NAMECALL                         R25 R25 K37 ["format"]
      256 CALL                             R25 2 1
      257 MOVE                             R24 R25
      258 SETTABLEKS                       R24 R23 K27 ["tag"]
      260 DUPCLOSURE                       R26 K50 [PROTO_13]
      261 NAMECALL                         R24 R13 K21 ["map"]
      263 CALL                             R24 2 1
      264 SETTABLEKS                       R24 R23 K24 ["AutomaticSize"]
      266 GETUPVAL                         R25 4
      267 GETTABLEKS                       R24 R25 K17 ["joinBindings"]
      269 NEWTABLE                         R25 0 2
      271 MOVE                             R26 R13
      272 MOVE                             R27 R3
      273 SETLIST                          R25 R26 2 [1]
      275 CALL                             R24 1 1
      276 DUPCLOSURE                       R26 K51 [PROTO_14]
      277 NAMECALL                         R24 R24 K21 ["map"]
      279 CALL                             R24 2 1
      280 SETTABLEKS                       R24 R23 K25 ["Size"]
      282 SETTABLEKS                       R1 R23 K22 ["ref"]
      284 SETTABLEKS                       R14 R23 K26 ["sizeConstraint"]
      286 CALL                             R21 2 1
      287 GETUPVAL                         R23 4
      288 GETTABLEKS                       R22 R23 K12 ["createElement"]
      290 GETUPVAL                         R24 12
      291 GETTABLEKS                       R23 R24 K41 ["Provider"]
      293 DUPTABLE                         R24 K43 [{"value"}]
      294 DUPTABLE                         R25 K47 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
      295 GETTABLEKS                       R26 R2 K44 ["onActivated"]
      297 SETTABLEKS                       R26 R25 K44 ["onActivated"]
      299 GETTABLEKS                       R26 R2 K13 ["size"]
      301 SETTABLEKS                       R26 R25 K13 ["size"]
      303 SETTABLEKS                       R7 R25 K45 ["hasLeading"]
      305 SETTABLEKS                       R11 R25 K46 ["setHasLeading"]
      307 SETTABLEKS                       R25 R24 K42 ["value"]
      309 MOVE                             R25 R17
      310 CALL                             R22 3 -1
      311 CALL                             R19 -1 -1
      312 RETURN                           R19 -1

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
       39 GETTABLEKS                       R7 R8 K13 ["useBindable"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Utility"]
       46 GETTABLEKS                       R8 R9 K14 ["withCommonProps"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K17 ["ControlState"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R12 K18 ["Radius"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K8 ["Components"]
       74 GETTABLEKS                       R12 R13 K19 ["Types"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K16 ["Enums"]
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
      107 NEWTABLE                         R16 2 0
      109 GETTABLEKS                       R17 R10 K26 ["Small"]
      111 LOADK                            R18 K27 ["radius-small"]
      112 SETTABLE                         R18 R16 R17
      113 GETTABLEKS                       R17 R10 K25 ["Medium"]
      115 LOADK                            R18 K28 ["radius-medium"]
      116 SETTABLE                         R18 R16 R17
      117 DUPCLOSURE                       R17 K29 [PROTO_0]
      118 DUPCLOSURE                       R18 K30 [PROTO_1]
      119 DUPCLOSURE                       R19 K31 [PROTO_15]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R13
      133 GETTABLEKS                       R20 R2 K32 ["memo"]
      135 GETTABLEKS                       R21 R2 K33 ["forwardRef"]
      137 MOVE                             R22 R19
      138 CALL                             R21 1 -1
      139 CALL                             R20 -1 -1
      140 RETURN                           R20 -1
