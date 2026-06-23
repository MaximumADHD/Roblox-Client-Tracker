PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["instant"]
        6 GETUPVAL                         R2 3
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["ease"]
       21 GETUPVAL                         R2 3
       22 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K5 ["Ease"]
       26 GETTABLEKS                       R4 R4 K6 ["StandardOut"]
       28 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R4 R4 K7 ["Time"]
       33 GETTABLEKS                       R4 R4 K8 ["Time_300"]
       35 SETTABLEKS                       R4 R3 K3 ["duration"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 4
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K1 ["ease"]
       43 LOADN                            R2 0
       44 DUPTABLE                         R3 K9 [{"duration"}]
       45 GETUPVAL                         R4 5
       46 GETTABLEKS                       R4 R4 K7 ["Time"]
       48 GETTABLEKS                       R4 R4 K10 ["Time_100"]
       50 SETTABLEKS                       R4 R3 K3 ["duration"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+19]
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K1 ["instant"]
       15 GETUPVAL                         R2 4
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K1 ["instant"]
       22 LOADN                            R2 1
       23 CALL                             R1 1 -1
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K2 ["ease"]
       30 GETUPVAL                         R2 4
       31 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       32 GETUPVAL                         R4 6
       33 GETTABLEKS                       R4 R4 K6 ["Ease"]
       35 GETTABLEKS                       R4 R4 K7 ["StandardIn"]
       37 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       39 GETUPVAL                         R4 6
       40 GETTABLEKS                       R4 R4 K8 ["Time"]
       42 GETTABLEKS                       R4 R4 K9 ["Time_100"]
       44 SETTABLEKS                       R4 R3 K4 ["duration"]
       46 CALL                             R1 2 -1
       47 CALL                             R0 -1 0
       48 GETUPVAL                         R0 5
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K2 ["ease"]
       52 LOADN                            R2 1
       53 DUPTABLE                         R3 K10 [{"duration"}]
       54 GETUPVAL                         R4 6
       55 GETTABLEKS                       R4 R4 K8 ["Time"]
       57 GETTABLEKS                       R4 R4 K9 ["Time_100"]
       59 SETTABLEKS                       R4 R3 K4 ["duration"]
       61 CALL                             R1 2 -1
       62 CALL                             R0 -1 0
       63 GETUPVAL                         R0 0
       64 LOADB                            R1 1
       65 SETTABLEKS                       R1 R0 K0 ["current"]
       67 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R4 0
        4 JUMPIFNOT                        R4 ; [+2]
        5 MINUS                            R3 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R5 1
        8 ADD                              R4 R0 R5
        9 MINUS                            R3 R4
       10 LOADN                            R4 0
       11 GETUPVAL                         R6 0
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R5 0
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R5 1
       16 CALL                             R1 4 -1
       17 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R0 K23 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "hasFullBleed", "fullBleedHeight", "setFullBleedHeight", "closeSheet", "hasRadius", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K24 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K24 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetHeightAvailable"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["safeAreaPadding"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K7 ["bottomPadding"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K8 ["innerScrollingEnabled"]
       32 GETUPVAL                         R1 3
       33 SETTABLEKS                       R1 R0 K9 ["innerScrollY"]
       35 GETUPVAL                         R1 4
       36 SETTABLEKS                       R1 R0 K10 ["setInnerScrollY"]
       38 GETUPVAL                         R1 5
       39 SETTABLEKS                       R1 R0 K11 ["hasHeader"]
       41 GETUPVAL                         R1 6
       42 SETTABLEKS                       R1 R0 K12 ["setHasHeader"]
       44 GETUPVAL                         R2 7
       45 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       47 JUMPIFNOT                        R2 ; [+2]
       48 GETUPVAL                         R1 8
       49 JUMP                             ; [+1]
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K13 ["hasFullBleed"]
       53 GETUPVAL                         R2 7
       54 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       56 JUMPIFNOT                        R2 ; [+2]
       57 GETUPVAL                         R1 9
       58 JUMP                             ; [+1]
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K14 ["fullBleedHeight"]
       62 GETUPVAL                         R2 7
       63 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       65 JUMPIFNOT                        R2 ; [+2]
       66 GETUPVAL                         R1 10
       67 JUMP                             ; [+1]
       68 LOADNIL                          R1
       69 SETTABLEKS                       R1 R0 K15 ["setFullBleedHeight"]
       71 GETUPVAL                         R1 11
       72 SETTABLEKS                       R1 R0 K16 ["closeSheet"]
       74 GETUPVAL                         R2 7
       75 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       77 JUMPIFNOT                        R2 ; [+3]
       78 GETUPVAL                         R2 12
       79 NOT                              R1 R2
       80 JUMP                             ; [+1]
       81 LOADNIL                          R1
       82 SETTABLEKS                       R1 R0 K17 ["hasRadius"]
       84 GETUPVAL                         R1 13
       85 GETTABLEKS                       R1 R1 K26 ["Side"]
       87 SETTABLEKS                       R1 R0 K18 ["sheetType"]
       89 GETUPVAL                         R1 14
       90 GETTABLEKS                       R1 R1 K19 ["testId"]
       92 SETTABLEKS                       R1 R0 K19 ["testId"]
       94 GETUPVAL                         R1 15
       95 SETTABLEKS                       R1 R0 K20 ["closeAffordanceRef"]
       97 GETUPVAL                         R1 16
       98 SETTABLEKS                       R1 R0 K21 ["contentStartRef"]
      100 GETUPVAL                         R1 17
      101 SETTABLEKS                       R1 R0 K22 ["setContentStartRef"]
      103 RETURN                           R0 1

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R4 0
        3 MINUS                            R3 R4
        4 GETUPVAL                         R5 0
        5 MINUS                            R4 R5
        6 CALL                             R2 2 1
        7 ADD                              R1 R0 R2
        8 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Common"]
        6 GETTABLEKS                       R2 R2 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Color"]
       15 GETTABLEKS                       R3 R3 K4 ["Common"]
       17 GETTABLEKS                       R3 R3 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R3 K1 ["Transparency"]
       21 LOADN                            R4 1
       22 FASTCALL3                        MATH_LERP R3 R4 R0
       24 MOVE                             R5 R0
       25 GETIMPORT                        R2 K8 [math.lerp]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       30 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R6 5
       10 GETTABLEKS                       R6 R6 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 GETTABLEKS                       R7 R6 K3 ["reducedMotion"]
       21 GETUPVAL                         R8 7
       22 MOVE                             R9 R3
       23 CALL                             R8 1 1
       24 GETUPVAL                         R10 8
       25 GETTABLEKS                       R10 R10 K4 ["FoundationSideSheetNewWidthCalculation"]
       27 JUMPIFNOT                        R10 ; [+3]
       28 GETUPVAL                         R9 9
       29 CALL                             R9 0 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R9
       32 GETTABLEKS                       R10 R8 K5 ["right"]
       34 GETTABLEKS                       R12 R2 K6 ["displaySize"]
       36 GETIMPORT                        R13 K10 [Enum.DisplaySize.Small]
       38 JUMPIFEQ                         R12 R13 ; [+2]
       40 LOADB                            R11 0 +1
       41 LOADB                            R11 1
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 GETUPVAL                         R15 8
       46 GETTABLEKS                       R15 R15 K4 ["FoundationSideSheetNewWidthCalculation"]
       48 JUMPIFNOT                        R15 ; [+26]
       49 GETTABLEKS                       R15 R4 K11 ["Config"]
       51 GETTABLEKS                       R15 R15 K12 ["UI"]
       53 GETTABLEKS                       R15 R15 K13 ["Scale"]
       55 GETUPVAL                         R17 10
       56 GETTABLEKS                       R18 R2 K14 ["size"]
       58 GETTABLE                         R16 R17 R18
       59 GETTABLEKS                       R12 R16 K15 ["TARGET_WIDTH"]
       61 GETUPVAL                         R17 10
       62 GETTABLEKS                       R18 R2 K14 ["size"]
       64 GETTABLE                         R16 R17 R18
       65 GETTABLEKS                       R16 R16 K16 ["MIN"]
       67 MUL                              R13 R16 R15
       68 GETUPVAL                         R17 10
       69 GETTABLEKS                       R18 R2 K14 ["size"]
       71 GETTABLE                         R16 R17 R18
       72 GETTABLEKS                       R16 R16 K17 ["MAX"]
       74 MUL                              R14 R16 R15
       75 GETUPVAL                         R16 8
       76 GETTABLEKS                       R16 R16 K4 ["FoundationSideSheetNewWidthCalculation"]
       78 JUMPIFNOT                        R16 ; [+11]
       79 GETTABLEKS                       R17 R9 K18 ["X"]
       81 MUL                              R16 R17 R12
       82 FASTCALL3                        MATH_CLAMP R16 R13 R14
       84 MOVE                             R17 R13
       85 MOVE                             R18 R14
       86 GETIMPORT                        R15 K21 [math.clamp]
       88 CALL                             R15 3 1
       89 JUMP                             ; [+6]
       90 GETUPVAL                         R15 11
       91 JUMPIFNOT                        R11 ; [+2]
       92 LOADN                            R16 144
       93 JUMP                             ; [+1]
       94 LOADN                            R16 104
       95 CALL                             R15 1 1
       96 GETTABLEKS                       R16 R4 K22 ["Padding"]
       98 GETTABLEKS                       R16 R16 K23 ["Medium"]
      100 GETUPVAL                         R17 12
      101 GETTABLEKS                       R17 R17 K24 ["useRef"]
      103 LOADB                            R18 0
      104 CALL                             R17 1 1
      105 GETUPVAL                         R18 13
      106 LOADN                            R19 1
      107 NEWCLOSURE                       R20 P0
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R2
      110 CALL                             R18 2 2
      111 JUMPIFNOT                        R11 ; [+2]
      112 LOADN                            R22 0
      113 JUMP                             ; [+1]
      114 MOVE                             R22 R16
      115 ADD                              R21 R10 R22
      116 MINUS                            R20 R21
      117 GETUPVAL                         R21 13
      118 MOVE                             R22 R20
      119 CALL                             R21 1 2
      120 GETUPVAL                         R23 12
      121 GETTABLEKS                       R23 R23 K25 ["useBinding"]
      123 LOADB                            R24 0
      124 CALL                             R23 1 2
      125 GETUPVAL                         R25 12
      126 GETTABLEKS                       R25 R25 K25 ["useBinding"]
      128 LOADB                            R26 0
      129 CALL                             R25 1 2
      130 LOADNIL                          R27
      131 LOADNIL                          R28
      132 LOADNIL                          R29
      133 GETUPVAL                         R30 8
      134 GETTABLEKS                       R30 R30 K26 ["FoundationSheetFullBleed"]
      136 JUMPIFNOT                        R30 ; [+12]
      137 GETUPVAL                         R30 14
      138 GETTABLEKS                       R31 R2 K27 ["children"]
      140 CALL                             R30 1 1
      141 MOVE                             R27 R30
      142 GETUPVAL                         R30 12
      143 GETTABLEKS                       R30 R30 K25 ["useBinding"]
      145 LOADN                            R31 0
      146 CALL                             R30 1 2
      147 MOVE                             R28 R30
      148 MOVE                             R29 R31
      149 GETUPVAL                         R30 12
      150 GETTABLEKS                       R30 R30 K25 ["useBinding"]
      152 LOADN                            R31 0
      153 CALL                             R30 1 2
      154 GETUPVAL                         R32 12
      155 GETTABLEKS                       R32 R32 K24 ["useRef"]
      157 LOADNIL                          R33
      158 CALL                             R32 1 1
      159 GETUPVAL                         R33 12
      160 GETTABLEKS                       R33 R33 K28 ["useState"]
      162 LOADNIL                          R34
      163 CALL                             R33 1 2
      164 GETUPVAL                         R35 12
      165 GETTABLEKS                       R35 R35 K29 ["useEffect"]
      167 NEWCLOSURE                       R36 P1
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R22
      170 CAPTURE                          UPVAL U15
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R4
      174 NEWTABLE                         R37 0 2
      176 MOVE                             R38 R15
      177 MOVE                             R39 R7
      178 SETLIST                          R37 R38 2 [1]
      180 CALL                             R35 2 0
      181 GETUPVAL                         R35 12
      182 GETTABLEKS                       R35 R35 K30 ["useCallback"]
      184 NEWCLOSURE                       R36 P2
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R22
      188 CAPTURE                          UPVAL U15
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R4
      192 NEWTABLE                         R37 0 2
      194 MOVE                             R38 R20
      195 MOVE                             R39 R7
      196 SETLIST                          R37 R38 2 [1]
      198 CALL                             R35 2 1
      199 GETUPVAL                         R36 12
      200 GETTABLEKS                       R36 R36 K31 ["useImperativeHandle"]
      202 GETTABLEKS                       R37 R2 K32 ["sheetRef"]
      204 NEWCLOSURE                       R38 P3
      205 CAPTURE                          VAL R35
      206 NEWTABLE                         R39 0 0
      208 CALL                             R36 3 0
      209 GETIMPORT                        R36 K35 [UDim2.new]
      211 LOADN                            R37 0
      212 JUMPIFNOT                        R11 ; [+2]
      213 MOVE                             R39 R10
      214 JUMP                             ; [+1]
      215 LOADN                            R39 0
      216 ADD                              R38 R15 R39
      217 LOADN                            R39 1
      218 JUMPIFNOT                        R11 ; [+2]
      219 LOADN                            R40 0
      220 JUMP                             ; [+2]
      221 MINUS                            R41 R16
      222 MULK                             R40 R41 K36 [2]
      223 CALL                             R36 4 1
      224 NEWCLOSURE                       R39 P4
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R16
      227 NAMECALL                         R37 R21 K37 ["map"]
      229 CALL                             R37 2 1
      230 GETUPVAL                         R38 12
      231 GETTABLEKS                       R38 R38 K38 ["useMemo"]
      233 NEWCLOSURE                       R39 P5
      234 CAPTURE                          UPVAL U16
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R30
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R26
      241 CAPTURE                          UPVAL U8
      242 CAPTURE                          REF R27
      243 CAPTURE                          REF R28
      244 CAPTURE                          REF R29
      245 CAPTURE                          VAL R35
      246 CAPTURE                          VAL R11
      247 CAPTURE                          UPVAL U17
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R32
      250 CAPTURE                          VAL R33
      251 CAPTURE                          VAL R34
      252 NEWTABLE                         R40 0 6
      254 GETTABLEKS                       R41 R2 K39 ["testId"]
      256 MOVE                             R42 R35
      257 MOVE                             R43 R33
      258 MOVE                             R44 R32
      259 MOVE                             R45 R27
      260 GETUPVAL                         R47 8
      261 GETTABLEKS                       R47 R47 K26 ["FoundationSheetFullBleed"]
      263 JUMPIFNOT                        R47 ; [+2]
      264 MOVE                             R46 R11
      265 JUMP                             ; [+1]
      266 LOADNIL                          R46
      267 SETLIST                          R40 R41 6 [1]
      269 CALL                             R38 2 1
      270 MOVE                             R39 R3
      271 JUMPIFNOT                        R39 ; [+308]
      272 GETUPVAL                         R39 18
      273 GETTABLEKS                       R39 R39 K40 ["createPortal"]
      275 GETUPVAL                         R40 12
      276 GETTABLEKS                       R40 R40 K41 ["createElement"]
      278 GETUPVAL                         R41 19
      279 DUPTABLE                         R42 K44 [{"ZIndex", "tag", "testId"}]
      280 GETTABLEKS                       R43 R5 K45 ["zIndex"]
      282 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      284 LOADK                            R43 K46 ["size-full"]
      285 SETTABLEKS                       R43 R42 K43 ["tag"]
      287 LOADK                            R44 K47 ["%*--surface"]
      288 GETTABLEKS                       R46 R2 K39 ["testId"]
      290 NAMECALL                         R44 R44 K48 ["format"]
      292 CALL                             R44 2 1
      293 MOVE                             R43 R44
      294 SETTABLEKS                       R43 R42 K39 ["testId"]
      296 DUPTABLE                         R43 K51 [{"Sheet", "Shadow", "Backdrop"}]
      297 GETUPVAL                         R44 12
      298 GETTABLEKS                       R44 R44 K41 ["createElement"]
      300 GETUPVAL                         R45 19
      301 DUPTABLE                         R46 K61 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      302 SETTABLEKS                       R36 R46 K52 ["Size"]
      304 SETTABLEKS                       R37 R46 K53 ["Position"]
      306 LOADB                            R47 1
      307 SETTABLEKS                       R47 R46 K54 ["ClipsDescendants"]
      309 LOADN                            R47 3
      310 SETTABLEKS                       R47 R46 K42 ["ZIndex"]
      312 JUMPIFNOT                        R11 ; [+12]
      313 LOADN                            R48 0
      314 JUMPIFNOTLT                      R48 R10 ; [+10]
      316 DUPTABLE                         R47 K62 [{"right"}]
      317 GETIMPORT                        R48 K64 [UDim.new]
      319 LOADN                            R49 0
      320 MOVE                             R50 R10
      321 CALL                             R48 2 1
      322 SETTABLEKS                       R48 R47 K5 ["right"]
      324 JUMP                             ; [+1]
      325 LOADNIL                          R47
      326 SETTABLEKS                       R47 R46 K55 ["padding"]
      328 DUPTABLE                         R47 K66 [{"affordance"}]
      329 GETUPVAL                         R48 20
      330 GETTABLEKS                       R48 R48 K67 ["None"]
      332 SETTABLEKS                       R48 R47 K65 ["affordance"]
      334 SETTABLEKS                       R47 R46 K56 ["stateLayer"]
      336 GETUPVAL                         R47 16
      337 GETTABLEKS                       R47 R47 K68 ["noop"]
      339 SETTABLEKS                       R47 R46 K57 ["onActivated"]
      341 SETTABLEKS                       R1 R46 K58 ["ref"]
      343 GETUPVAL                         R47 21
      344 GETTABLEKS                       R47 R47 K69 ["nonSelectable"]
      346 SETTABLEKS                       R47 R46 K59 ["selection"]
      348 GETUPVAL                         R47 21
      349 GETTABLEKS                       R47 R47 K70 ["isolatedSelectionGroup"]
      351 SETTABLEKS                       R47 R46 K60 ["selectionGroup"]
      353 NEWTABLE                         R47 2 0
      355 LOADB                            R48 1
      356 SETTABLEKS                       R48 R47 K71 ["stroke-standard stroke-default bg-surface-100"]
      358 NOT                              R48 R11
      359 SETTABLEKS                       R48 R47 K72 ["radius-large"]
      361 SETTABLEKS                       R47 R46 K43 ["tag"]
      363 GETTABLEKS                       R47 R2 K39 ["testId"]
      365 SETTABLEKS                       R47 R46 K39 ["testId"]
      367 DUPTABLE                         R47 K75 [{"Content", "CloseAffordance"}]
      368 GETUPVAL                         R48 12
      369 GETTABLEKS                       R48 R48 K41 ["createElement"]
      371 GETUPVAL                         R49 19
      372 DUPTABLE                         R50 K76 [{"tag"}]
      373 LOADK                            R51 K77 ["col items-center size-full-full clip"]
      374 SETTABLEKS                       R51 R50 K43 ["tag"]
      376 GETUPVAL                         R51 12
      377 GETTABLEKS                       R51 R51 K41 ["createElement"]
      379 GETUPVAL                         R52 22
      380 GETTABLEKS                       R52 R52 K78 ["Provider"]
      382 DUPTABLE                         R53 K80 [{"value"}]
      383 SETTABLEKS                       R38 R53 K79 ["value"]
      385 GETUPVAL                         R54 12
      386 GETTABLEKS                       R54 R54 K41 ["createElement"]
      388 GETUPVAL                         R55 23
      389 DUPTABLE                         R56 K82 [{"owner"}]
      390 SETTABLEKS                       R5 R56 K81 ["owner"]
      392 GETTABLEKS                       R57 R2 K27 ["children"]
      394 CALL                             R54 3 -1
      395 CALL                             R51 -1 -1
      396 CALL                             R48 -1 1
      397 SETTABLEKS                       R48 R47 K73 ["Content"]
      399 GETUPVAL                         R48 12
      400 GETTABLEKS                       R48 R48 K41 ["createElement"]
      402 GETUPVAL                         R49 24
      403 DUPTABLE                         R50 K87 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      404 SETTABLEKS                       R35 R50 K57 ["onActivated"]
      406 SETTABLEKS                       R32 R50 K58 ["ref"]
      408 SETTABLEKS                       R33 R50 K83 ["NextSelectionDown"]
      410 GETUPVAL                         R52 8
      411 GETTABLEKS                       R52 R52 K26 ["FoundationSheetFullBleed"]
      413 JUMPIFNOT                        R52 ; [+5]
      414 JUMPIFNOT                        R27 ; [+4]
      415 GETUPVAL                         R51 25
      416 GETTABLEKS                       R51 R51 K88 ["OverMedia"]
      418 JUMP                             ; [+3]
      419 GETUPVAL                         R51 25
      420 GETTABLEKS                       R51 R51 K89 ["Utility"]
      422 SETTABLEKS                       R51 R50 K84 ["variant"]
      424 GETIMPORT                        R51 K35 [UDim2.new]
      426 LOADN                            R52 1
      427 GETTABLEKS                       R54 R4 K90 ["Margin"]
      429 GETTABLEKS                       R54 R54 K9 ["Small"]
      431 MINUS                            R53 R54
      432 LOADN                            R54 0
      433 GETTABLEKS                       R55 R4 K90 ["Margin"]
      435 GETTABLEKS                       R55 R55 K9 ["Small"]
      437 CALL                             R51 4 1
      438 SETTABLEKS                       R51 R50 K53 ["Position"]
      440 GETIMPORT                        R51 K92 [Vector2.new]
      442 LOADN                            R52 1
      443 LOADN                            R53 0
      444 CALL                             R51 2 1
      445 SETTABLEKS                       R51 R50 K85 ["AnchorPoint"]
      447 DUPCLOSURE                       R53 K93 [PROTO_6]
      448 NAMECALL                         R51 R25 K37 ["map"]
      450 CALL                             R51 2 1
      451 SETTABLEKS                       R51 R50 K86 ["Visible"]
      453 LOADK                            R52 K94 ["%*--close-affordance"]
      454 GETTABLEKS                       R54 R2 K39 ["testId"]
      456 NAMECALL                         R52 R52 K48 ["format"]
      458 CALL                             R52 2 1
      459 MOVE                             R51 R52
      460 SETTABLEKS                       R51 R50 K39 ["testId"]
      462 CALL                             R48 2 1
      463 SETTABLEKS                       R48 R47 K74 ["CloseAffordance"]
      465 CALL                             R44 3 1
      466 SETTABLEKS                       R44 R43 K0 ["Sheet"]
      468 GETUPVAL                         R44 12
      469 GETTABLEKS                       R44 R44 K41 ["createElement"]
      471 GETUPVAL                         R45 26
      472 DUPTABLE                         R46 K98 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      473 GETUPVAL                         R47 27
      474 SETTABLEKS                       R47 R46 K95 ["Image"]
      476 GETIMPORT                        R48 K100 [UDim2.fromOffset]
      478 GETUPVAL                         R50 28
      479 MULK                             R49 R50 K36 [2]
      480 GETUPVAL                         R51 28
      481 MULK                             R50 R51 K36 [2]
      482 CALL                             R48 2 1
      483 ADD                              R47 R36 R48
      484 SETTABLEKS                       R47 R46 K52 ["Size"]
      486 DUPCLOSURE                       R49 K101 [PROTO_7]
      487 CAPTURE                          UPVAL U28
      488 NAMECALL                         R47 R37 K37 ["map"]
      490 CALL                             R47 2 1
      491 SETTABLEKS                       R47 R46 K53 ["Position"]
      493 LOADN                            R47 2
      494 SETTABLEKS                       R47 R46 K42 ["ZIndex"]
      496 DUPTABLE                         R47 K104 [{"center", "scale"}]
      497 GETIMPORT                        R48 K106 [Rect.new]
      499 GETUPVAL                         R49 28
      500 GETUPVAL                         R50 28
      501 GETUPVAL                         R52 28
      502 ADDK                             R51 R52 K107 [1]
      503 GETUPVAL                         R53 28
      504 ADDK                             R52 R53 K107 [1]
      505 CALL                             R48 4 1
      506 SETTABLEKS                       R48 R47 K102 ["center"]
      508 LOADN                            R48 2
      509 SETTABLEKS                       R48 R47 K103 ["scale"]
      511 SETTABLEKS                       R47 R46 K96 ["slice"]
      513 GETTABLEKS                       R47 R4 K108 ["Color"]
      515 GETTABLEKS                       R47 R47 K109 ["Extended"]
      517 GETTABLEKS                       R47 R47 K110 ["Black"]
      519 GETTABLEKS                       R47 R47 K111 ["Black_10"]
      521 SETTABLEKS                       R47 R46 K97 ["imageStyle"]
      523 CALL                             R44 2 1
      524 SETTABLEKS                       R44 R43 K49 ["Shadow"]
      526 GETUPVAL                         R44 12
      527 GETTABLEKS                       R44 R44 K41 ["createElement"]
      529 GETUPVAL                         R45 19
      530 DUPTABLE                         R46 K113 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      531 GETIMPORT                        R47 K115 [UDim2.fromScale]
      533 LOADN                            R48 2
      534 LOADN                            R49 2
      535 CALL                             R47 2 1
      536 SETTABLEKS                       R47 R46 K52 ["Size"]
      538 GETIMPORT                        R47 K115 [UDim2.fromScale]
      540 LOADK                            R48 K116 [-0.5]
      541 LOADK                            R49 K116 [-0.5]
      542 CALL                             R47 2 1
      543 SETTABLEKS                       R47 R46 K53 ["Position"]
      545 LOADN                            R47 1
      546 SETTABLEKS                       R47 R46 K42 ["ZIndex"]
      548 DUPTABLE                         R47 K66 [{"affordance"}]
      549 GETUPVAL                         R48 20
      550 GETTABLEKS                       R48 R48 K67 ["None"]
      552 SETTABLEKS                       R48 R47 K65 ["affordance"]
      554 SETTABLEKS                       R47 R46 K56 ["stateLayer"]
      556 NEWCLOSURE                       R49 P8
      557 CAPTURE                          VAL R4
      558 NAMECALL                         R47 R18 K37 ["map"]
      560 CALL                             R47 2 1
      561 SETTABLEKS                       R47 R46 K112 ["backgroundStyle"]
      563 SETTABLEKS                       R35 R46 K57 ["onActivated"]
      565 LOADK                            R48 K117 ["%*--backdrop"]
      566 GETTABLEKS                       R50 R2 K39 ["testId"]
      568 NAMECALL                         R48 R48 K48 ["format"]
      570 CALL                             R48 2 1
      571 MOVE                             R47 R48
      572 SETTABLEKS                       R47 R46 K39 ["testId"]
      574 CALL                             R44 2 1
      575 SETTABLEKS                       R44 R43 K50 ["Backdrop"]
      577 CALL                             R40 3 1
      578 MOVE                             R41 R3
      579 CALL                             R39 2 1
      580 CLOSEUPVALS                      R27
      581 RETURN                           R39 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactRoblox"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K12 ["useAnimatedBinding"]
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R9 K14 ["CloseAffordanceVariant"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Enums"]
       52 GETTABLEKS                       R11 R11 K16 ["StateLayerAffordance"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K17 ["Providers"]
       59 GETTABLEKS                       R12 R12 K18 ["Overlay"]
       61 GETTABLEKS                       R12 R12 K19 ["useOverlay"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K20 ["Utility"]
       68 GETTABLEKS                       R13 R13 K21 ["useScaledValue"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K17 ["Providers"]
       75 GETTABLEKS                       R14 R14 K22 ["Style"]
       77 GETTABLEKS                       R14 R14 K23 ["useTokens"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K20 ["Utility"]
       84 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R16 K1 [script]
       91 GETTABLEKS                       R16 R16 K4 ["Parent"]
       93 GETTABLEKS                       R16 R16 K25 ["SheetContext"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R17 K1 [script]
      100 GETTABLEKS                       R17 R17 K4 ["Parent"]
      102 GETTABLEKS                       R17 R17 K26 ["Types"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R18 K1 [script]
      109 GETTABLEKS                       R18 R18 K4 ["Parent"]
      111 GETTABLEKS                       R18 R18 K27 ["SheetType"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R19 R0 K17 ["Providers"]
      118 GETTABLEKS                       R19 R19 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R19 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K17 ["Providers"]
      127 GETTABLEKS                       R20 R20 K28 ["Elevation"]
      129 GETTABLEKS                       R20 R20 K30 ["ElevationProvider"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R19 R19 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R21 R0 K13 ["Enums"]
      138 GETTABLEKS                       R21 R21 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETTABLEKS                       R22 R0 K13 ["Enums"]
      145 GETTABLEKS                       R22 R22 K33 ["DialogSize"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K4 ["Parent"]
      154 GETTABLEKS                       R23 R23 K34 ["childrenHasFullBleed"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K35 ["useHardwareInsets"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETIMPORT                        R25 K1 [script]
      170 GETTABLEKS                       R25 R25 K4 ["Parent"]
      172 GETTABLEKS                       R25 R25 K36 ["useScreenSize"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K6 [require]
      177 GETTABLEKS                       R26 R0 K37 ["Components"]
      179 GETTABLEKS                       R26 R26 K38 ["CloseAffordance"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K6 [require]
      184 GETTABLEKS                       R27 R0 K20 ["Utility"]
      186 GETTABLEKS                       R27 R27 K39 ["Flags"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K6 [require]
      191 GETTABLEKS                       R28 R0 K37 ["Components"]
      193 GETTABLEKS                       R28 R28 K40 ["Image"]
      195 CALL                             R27 1 1
      196 GETIMPORT                        R28 K6 [require]
      198 GETTABLEKS                       R29 R0 K37 ["Components"]
      200 GETTABLEKS                       R29 R29 K41 ["View"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K6 [require]
      205 GETTABLEKS                       R30 R0 K17 ["Providers"]
      207 GETTABLEKS                       R30 R30 K42 ["Preferences"]
      209 GETTABLEKS                       R30 R30 K43 ["usePreferences"]
      211 CALL                             R29 1 1
      212 NEWTABLE                         R30 2 0
      214 GETTABLEKS                       R31 R21 K44 ["Medium"]
      216 DUPTABLE                         R32 K48 [{"TARGET_WIDTH", "MIN", "MAX"}]
      217 LOADK                            R33 K49 [0.4]
      218 SETTABLEKS                       R33 R32 K45 ["TARGET_WIDTH"]
      220 LOADN                            R33 104
      221 SETTABLEKS                       R33 R32 K46 ["MIN"]
      223 LOADN                            R33 184
      224 SETTABLEKS                       R33 R32 K47 ["MAX"]
      226 SETTABLE                         R32 R30 R31
      227 GETTABLEKS                       R31 R21 K50 ["Large"]
      229 DUPTABLE                         R32 K48 [{"TARGET_WIDTH", "MIN", "MAX"}]
      230 LOADK                            R33 K51 [0.5]
      231 SETTABLEKS                       R33 R32 K45 ["TARGET_WIDTH"]
      233 LOADN                            R33 184
      234 SETTABLEKS                       R33 R32 K46 ["MIN"]
      236 LOADN                            R33 128
      237 SETTABLEKS                       R33 R32 K47 ["MAX"]
      239 SETTABLE                         R32 R30 R31
      240 DUPTABLE                         R31 K54 [{"testId", "size"}]
      241 LOADK                            R32 K55 ["--foundation-sheet"]
      242 SETTABLEKS                       R32 R31 K52 ["testId"]
      244 GETTABLEKS                       R33 R26 K56 ["FoundationSideSheetNewWidthCalculation"]
      246 JUMPIFNOT                        R33 ; [+3]
      247 GETTABLEKS                       R32 R21 K44 ["Medium"]
      249 JUMP                             ; [+1]
      250 LOADNIL                          R32
      251 SETTABLEKS                       R32 R31 K53 ["size"]
      253 GETTABLEKS                       R32 R9 K57 ["SHADOW_IMAGE"]
      255 GETTABLEKS                       R33 R9 K58 ["SHADOW_SIZE"]
      257 DUPCLOSURE                       R34 K59 [PROTO_9]
      258 CAPTURE                          VAL R14
      259 CAPTURE                          VAL R31
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R18
      263 CAPTURE                          VAL R20
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R23
      266 CAPTURE                          VAL R26
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R12
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R22
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R17
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R28
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R16
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R19
      282 CAPTURE                          VAL R25
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R27
      285 CAPTURE                          VAL R32
      286 CAPTURE                          VAL R33
      287 GETTABLEKS                       R35 R4 K60 ["memo"]
      289 GETTABLEKS                       R36 R4 K61 ["forwardRef"]
      291 MOVE                             R37 R34
      292 CALL                             R36 1 -1
      293 CALL                             R35 -1 -1
      294 RETURN                           R35 -1
