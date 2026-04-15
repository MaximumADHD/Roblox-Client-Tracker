PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationSheetReducedMotion"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["instant"]
       10 GETUPVAL                         R2 4
       11 CALL                             R1 1 1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K1 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K2 ["ease"]
       25 GETUPVAL                         R2 4
       26 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       27 GETUPVAL                         R6 6
       28 GETTABLEKS                       R5 R6 K6 ["Ease"]
       30 GETTABLEKS                       R4 R5 K7 ["StandardOut"]
       32 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R5 R6 K8 ["Time"]
       37 GETTABLEKS                       R4 R5 K9 ["Time_300"]
       39 SETTABLEKS                       R4 R3 K4 ["duration"]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 0
       43 GETUPVAL                         R0 5
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R1 R2 K2 ["ease"]
       47 LOADN                            R2 0
       48 DUPTABLE                         R3 K10 [{"duration"}]
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R5 R6 K8 ["Time"]
       52 GETTABLEKS                       R4 R5 K11 ["Time_100"]
       54 SETTABLEKS                       R4 R3 K4 ["duration"]
       56 CALL                             R1 2 -1
       57 CALL                             R0 -1 0
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["FoundationSheetReducedMotion"]
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+19]
       11 GETUPVAL                         R0 0
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K2 ["instant"]
       19 GETUPVAL                         R2 5
       20 CALL                             R1 1 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 6
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R1 R2 K2 ["instant"]
       26 LOADN                            R2 1
       27 CALL                             R1 1 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 3
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R1 R2 K3 ["ease"]
       34 GETUPVAL                         R2 5
       35 DUPTABLE                         R3 K6 [{"easingStyle", "duration"}]
       36 GETUPVAL                         R6 7
       37 GETTABLEKS                       R5 R6 K7 ["Ease"]
       39 GETTABLEKS                       R4 R5 K8 ["StandardIn"]
       41 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       43 GETUPVAL                         R6 7
       44 GETTABLEKS                       R5 R6 K9 ["Time"]
       46 GETTABLEKS                       R4 R5 K10 ["Time_100"]
       48 SETTABLEKS                       R4 R3 K5 ["duration"]
       50 CALL                             R1 2 -1
       51 CALL                             R0 -1 0
       52 GETUPVAL                         R0 6
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R1 R2 K3 ["ease"]
       56 LOADN                            R2 1
       57 DUPTABLE                         R3 K11 [{"duration"}]
       58 GETUPVAL                         R6 7
       59 GETTABLEKS                       R5 R6 K9 ["Time"]
       61 GETTABLEKS                       R4 R5 K10 ["Time_100"]
       63 SETTABLEKS                       R4 R3 K5 ["duration"]
       65 CALL                             R1 2 -1
       66 CALL                             R0 -1 0
       67 GETUPVAL                         R0 0
       68 LOADB                            R1 1
       69 SETTABLEKS                       R1 R0 K0 ["current"]
       71 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K19 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K20 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K20 ["noop"]
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
       44 GETUPVAL                         R1 7
       45 SETTABLEKS                       R1 R0 K13 ["closeSheet"]
       47 GETUPVAL                         R2 8
       48 GETTABLEKS                       R1 R2 K21 ["Side"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R2 9
       53 GETTABLEKS                       R1 R2 K15 ["testId"]
       55 SETTABLEKS                       R1 R0 K15 ["testId"]
       57 GETUPVAL                         R1 10
       58 SETTABLEKS                       R1 R0 K16 ["closeAffordanceRef"]
       60 GETUPVAL                         R1 11
       61 SETTABLEKS                       R1 R0 K17 ["contentStartRef"]
       63 GETUPVAL                         R1 12
       64 SETTABLEKS                       R1 R0 K18 ["setContentStartRef"]
       66 RETURN                           R0 1

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
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Common"]
        6 GETTABLEKS                       R3 R4 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["Color"]
       15 GETTABLEKS                       R5 R6 K4 ["Common"]
       17 GETTABLEKS                       R4 R5 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R4 K1 ["Transparency"]
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
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 LOADB                            R6 0
       18 GETUPVAL                         R8 6
       19 GETTABLEKS                       R7 R8 K3 ["FoundationSheetReducedMotion"]
       21 JUMPIFNOT                        R7 ; [+4]
       22 GETUPVAL                         R7 7
       23 CALL                             R7 0 1
       24 GETTABLEKS                       R6 R7 K4 ["reducedMotion"]
       26 GETUPVAL                         R7 8
       27 MOVE                             R8 R3
       28 CALL                             R7 1 1
       29 GETUPVAL                         R10 6
       30 GETTABLEKS                       R9 R10 K5 ["FoundationSideSheetNewWidthCalculation"]
       32 JUMPIFNOT                        R9 ; [+3]
       33 GETUPVAL                         R8 9
       34 CALL                             R8 0 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 GETTABLEKS                       R9 R7 K6 ["right"]
       39 GETTABLEKS                       R11 R2 K7 ["displaySize"]
       41 GETIMPORT                        R12 K11 [Enum.DisplaySize.Small]
       43 JUMPIFEQ                         R11 R12 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 LOADNIL                          R11
       48 LOADNIL                          R12
       49 LOADNIL                          R13
       50 GETUPVAL                         R15 6
       51 GETTABLEKS                       R14 R15 K5 ["FoundationSideSheetNewWidthCalculation"]
       53 JUMPIFNOT                        R14 ; [+26]
       54 GETTABLEKS                       R16 R4 K12 ["Config"]
       56 GETTABLEKS                       R15 R16 K13 ["UI"]
       58 GETTABLEKS                       R14 R15 K14 ["Scale"]
       60 GETUPVAL                         R16 10
       61 GETTABLEKS                       R17 R2 K15 ["size"]
       63 GETTABLE                         R15 R16 R17
       64 GETTABLEKS                       R11 R15 K16 ["TARGET_WIDTH"]
       66 GETUPVAL                         R17 10
       67 GETTABLEKS                       R18 R2 K15 ["size"]
       69 GETTABLE                         R16 R17 R18
       70 GETTABLEKS                       R15 R16 K17 ["MIN"]
       72 MUL                              R12 R15 R14
       73 GETUPVAL                         R17 10
       74 GETTABLEKS                       R18 R2 K15 ["size"]
       76 GETTABLE                         R16 R17 R18
       77 GETTABLEKS                       R15 R16 K18 ["MAX"]
       79 MUL                              R13 R15 R14
       80 GETUPVAL                         R16 6
       81 GETTABLEKS                       R15 R16 K5 ["FoundationSideSheetNewWidthCalculation"]
       83 JUMPIFNOT                        R15 ; [+11]
       84 GETTABLEKS                       R16 R8 K19 ["X"]
       86 MUL                              R15 R16 R11
       87 FASTCALL3                        MATH_CLAMP R15 R12 R13
       89 MOVE                             R16 R12
       90 MOVE                             R17 R13
       91 GETIMPORT                        R14 K22 [math.clamp]
       93 CALL                             R14 3 1
       94 JUMP                             ; [+6]
       95 GETUPVAL                         R14 11
       96 JUMPIFNOT                        R10 ; [+2]
       97 LOADN                            R15 144
       98 JUMP                             ; [+1]
       99 LOADN                            R15 104
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R16 R4 K23 ["Padding"]
      103 GETTABLEKS                       R15 R16 K24 ["Medium"]
      105 GETUPVAL                         R17 12
      106 GETTABLEKS                       R16 R17 K25 ["useRef"]
      108 LOADB                            R17 0
      109 CALL                             R16 1 1
      110 GETUPVAL                         R17 13
      111 LOADN                            R18 1
      112 NEWCLOSURE                       R19 P0
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R2
      115 CALL                             R17 2 2
      116 JUMPIFNOT                        R10 ; [+2]
      117 LOADN                            R21 0
      118 JUMP                             ; [+1]
      119 MOVE                             R21 R15
      120 ADD                              R20 R9 R21
      121 MINUS                            R19 R20
      122 GETUPVAL                         R20 13
      123 MOVE                             R21 R19
      124 CALL                             R20 1 2
      125 GETUPVAL                         R23 12
      126 GETTABLEKS                       R22 R23 K26 ["useBinding"]
      128 LOADB                            R23 0
      129 CALL                             R22 1 2
      130 GETUPVAL                         R25 12
      131 GETTABLEKS                       R24 R25 K26 ["useBinding"]
      133 LOADB                            R25 0
      134 CALL                             R24 1 2
      135 GETUPVAL                         R27 12
      136 GETTABLEKS                       R26 R27 K26 ["useBinding"]
      138 LOADN                            R27 0
      139 CALL                             R26 1 2
      140 GETUPVAL                         R29 12
      141 GETTABLEKS                       R28 R29 K25 ["useRef"]
      143 LOADNIL                          R29
      144 CALL                             R28 1 1
      145 GETUPVAL                         R30 12
      146 GETTABLEKS                       R29 R30 K27 ["useState"]
      148 LOADNIL                          R30
      149 CALL                             R29 1 2
      150 GETUPVAL                         R32 12
      151 GETTABLEKS                       R31 R32 K28 ["useEffect"]
      153 NEWCLOSURE                       R32 P1
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          REF R6
      156 CAPTURE                          VAL R21
      157 CAPTURE                          UPVAL U14
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R4
      161 NEWTABLE                         R33 0 2
      163 MOVE                             R34 R14
      164 GETUPVAL                         R37 6
      165 GETTABLEKS                       R36 R37 K3 ["FoundationSheetReducedMotion"]
      167 JUMPIFNOT                        R36 ; [+2]
      168 MOVE                             R35 R6
      169 JUMP                             ; [+1]
      170 LOADNIL                          R35
      171 SETLIST                          R33 R34 2 [1]
      173 CALL                             R31 2 0
      174 GETUPVAL                         R32 12
      175 GETTABLEKS                       R31 R32 K29 ["useCallback"]
      177 NEWCLOSURE                       R32 P2
      178 CAPTURE                          VAL R16
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          REF R6
      181 CAPTURE                          VAL R21
      182 CAPTURE                          UPVAL U14
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R4
      186 NEWTABLE                         R33 0 2
      188 MOVE                             R34 R19
      189 GETUPVAL                         R37 6
      190 GETTABLEKS                       R36 R37 K3 ["FoundationSheetReducedMotion"]
      192 JUMPIFNOT                        R36 ; [+2]
      193 MOVE                             R35 R6
      194 JUMP                             ; [+1]
      195 LOADNIL                          R35
      196 SETLIST                          R33 R34 2 [1]
      198 CALL                             R31 2 1
      199 GETUPVAL                         R33 12
      200 GETTABLEKS                       R32 R33 K30 ["useImperativeHandle"]
      202 GETTABLEKS                       R33 R2 K31 ["sheetRef"]
      204 NEWCLOSURE                       R34 P3
      205 CAPTURE                          VAL R31
      206 NEWTABLE                         R35 0 0
      208 CALL                             R32 3 0
      209 GETIMPORT                        R32 K34 [UDim2.new]
      211 LOADN                            R33 0
      212 JUMPIFNOT                        R10 ; [+2]
      213 MOVE                             R35 R9
      214 JUMP                             ; [+1]
      215 LOADN                            R35 0
      216 ADD                              R34 R14 R35
      217 LOADN                            R35 1
      218 JUMPIFNOT                        R10 ; [+2]
      219 LOADN                            R36 0
      220 JUMP                             ; [+2]
      221 MINUS                            R37 R15
      222 MULK                             R36 R37 K35 [2]
      223 CALL                             R32 4 1
      224 NEWCLOSURE                       R35 P4
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R15
      227 NAMECALL                         R33 R20 K36 ["map"]
      229 CALL                             R33 2 1
      230 GETUPVAL                         R35 12
      231 GETTABLEKS                       R34 R35 K37 ["useMemo"]
      233 NEWCLOSURE                       R35 P5
      234 CAPTURE                          UPVAL U15
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R31
      242 CAPTURE                          UPVAL U16
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R30
      247 NEWTABLE                         R36 0 4
      249 GETTABLEKS                       R37 R2 K38 ["testId"]
      251 MOVE                             R38 R31
      252 MOVE                             R39 R29
      253 MOVE                             R40 R28
      254 SETLIST                          R36 R37 4 [1]
      256 CALL                             R34 2 1
      257 MOVE                             R35 R3
      258 JUMPIFNOT                        R35 ; [+299]
      259 GETUPVAL                         R36 17
      260 GETTABLEKS                       R35 R36 K39 ["createPortal"]
      262 GETUPVAL                         R37 12
      263 GETTABLEKS                       R36 R37 K40 ["createElement"]
      265 GETUPVAL                         R37 18
      266 DUPTABLE                         R38 K43 [{"ZIndex", "tag", "testId"}]
      267 GETTABLEKS                       R39 R5 K44 ["zIndex"]
      269 SETTABLEKS                       R39 R38 K41 ["ZIndex"]
      271 LOADK                            R39 K45 ["size-full"]
      272 SETTABLEKS                       R39 R38 K42 ["tag"]
      274 LOADK                            R40 K46 ["%*--surface"]
      275 GETTABLEKS                       R42 R2 K38 ["testId"]
      277 NAMECALL                         R40 R40 K47 ["format"]
      279 CALL                             R40 2 1
      280 MOVE                             R39 R40
      281 SETTABLEKS                       R39 R38 K38 ["testId"]
      283 DUPTABLE                         R39 K50 [{"Sheet", "Shadow", "Backdrop"}]
      284 GETUPVAL                         R41 12
      285 GETTABLEKS                       R40 R41 K40 ["createElement"]
      287 GETUPVAL                         R41 18
      288 DUPTABLE                         R42 K60 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      289 SETTABLEKS                       R32 R42 K51 ["Size"]
      291 SETTABLEKS                       R33 R42 K52 ["Position"]
      293 LOADB                            R43 1
      294 SETTABLEKS                       R43 R42 K53 ["ClipsDescendants"]
      296 LOADN                            R43 3
      297 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      299 JUMPIFNOT                        R10 ; [+12]
      300 LOADN                            R44 0
      301 JUMPIFNOTLT                      R44 R9 ; [+10]
      303 DUPTABLE                         R43 K61 [{"right"}]
      304 GETIMPORT                        R44 K63 [UDim.new]
      306 LOADN                            R45 0
      307 MOVE                             R46 R9
      308 CALL                             R44 2 1
      309 SETTABLEKS                       R44 R43 K6 ["right"]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R43
      313 SETTABLEKS                       R43 R42 K54 ["padding"]
      315 DUPTABLE                         R43 K65 [{"affordance"}]
      316 GETUPVAL                         R45 19
      317 GETTABLEKS                       R44 R45 K66 ["None"]
      319 SETTABLEKS                       R44 R43 K64 ["affordance"]
      321 SETTABLEKS                       R43 R42 K55 ["stateLayer"]
      323 GETUPVAL                         R44 15
      324 GETTABLEKS                       R43 R44 K67 ["noop"]
      326 SETTABLEKS                       R43 R42 K56 ["onActivated"]
      328 SETTABLEKS                       R1 R42 K57 ["ref"]
      330 GETUPVAL                         R44 20
      331 GETTABLEKS                       R43 R44 K68 ["nonSelectable"]
      333 SETTABLEKS                       R43 R42 K58 ["selection"]
      335 GETUPVAL                         R44 20
      336 GETTABLEKS                       R43 R44 K69 ["isolatedSelectionGroup"]
      338 SETTABLEKS                       R43 R42 K59 ["selectionGroup"]
      340 NEWTABLE                         R43 2 0
      342 LOADB                            R44 1
      343 SETTABLEKS                       R44 R43 K70 ["bg-surface-100 stroke-default stroke-standard"]
      345 NOT                              R44 R10
      346 SETTABLEKS                       R44 R43 K71 ["radius-large"]
      348 SETTABLEKS                       R43 R42 K42 ["tag"]
      350 GETTABLEKS                       R43 R2 K38 ["testId"]
      352 SETTABLEKS                       R43 R42 K38 ["testId"]
      354 DUPTABLE                         R43 K74 [{"Content", "CloseAffordance"}]
      355 GETUPVAL                         R45 12
      356 GETTABLEKS                       R44 R45 K40 ["createElement"]
      358 GETUPVAL                         R45 18
      359 DUPTABLE                         R46 K75 [{"tag"}]
      360 LOADK                            R47 K76 ["size-full-full col items-center clip"]
      361 SETTABLEKS                       R47 R46 K42 ["tag"]
      363 GETUPVAL                         R48 12
      364 GETTABLEKS                       R47 R48 K40 ["createElement"]
      366 GETUPVAL                         R49 21
      367 GETTABLEKS                       R48 R49 K77 ["Provider"]
      369 DUPTABLE                         R49 K79 [{"value"}]
      370 SETTABLEKS                       R34 R49 K78 ["value"]
      372 GETUPVAL                         R51 12
      373 GETTABLEKS                       R50 R51 K40 ["createElement"]
      375 GETUPVAL                         R51 22
      376 DUPTABLE                         R52 K81 [{"owner"}]
      377 SETTABLEKS                       R5 R52 K80 ["owner"]
      379 GETTABLEKS                       R53 R2 K82 ["children"]
      381 CALL                             R50 3 -1
      382 CALL                             R47 -1 -1
      383 CALL                             R44 -1 1
      384 SETTABLEKS                       R44 R43 K72 ["Content"]
      386 GETUPVAL                         R45 12
      387 GETTABLEKS                       R44 R45 K40 ["createElement"]
      389 GETUPVAL                         R45 23
      390 DUPTABLE                         R46 K87 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      391 SETTABLEKS                       R31 R46 K56 ["onActivated"]
      393 SETTABLEKS                       R28 R46 K57 ["ref"]
      395 SETTABLEKS                       R29 R46 K83 ["NextSelectionDown"]
      397 GETUPVAL                         R48 24
      398 GETTABLEKS                       R47 R48 K88 ["Utility"]
      400 SETTABLEKS                       R47 R46 K84 ["variant"]
      402 GETIMPORT                        R47 K34 [UDim2.new]
      404 LOADN                            R48 1
      405 GETTABLEKS                       R51 R4 K89 ["Margin"]
      407 GETTABLEKS                       R50 R51 K10 ["Small"]
      409 MINUS                            R49 R50
      410 LOADN                            R50 0
      411 GETTABLEKS                       R52 R4 K89 ["Margin"]
      413 GETTABLEKS                       R51 R52 K10 ["Small"]
      415 CALL                             R47 4 1
      416 SETTABLEKS                       R47 R46 K52 ["Position"]
      418 GETIMPORT                        R47 K91 [Vector2.new]
      420 LOADN                            R48 1
      421 LOADN                            R49 0
      422 CALL                             R47 2 1
      423 SETTABLEKS                       R47 R46 K85 ["AnchorPoint"]
      425 DUPCLOSURE                       R49 K92 [PROTO_6]
      426 NAMECALL                         R47 R24 K36 ["map"]
      428 CALL                             R47 2 1
      429 SETTABLEKS                       R47 R46 K86 ["Visible"]
      431 LOADK                            R48 K93 ["%*--close-affordance"]
      432 GETTABLEKS                       R50 R2 K38 ["testId"]
      434 NAMECALL                         R48 R48 K47 ["format"]
      436 CALL                             R48 2 1
      437 MOVE                             R47 R48
      438 SETTABLEKS                       R47 R46 K38 ["testId"]
      440 CALL                             R44 2 1
      441 SETTABLEKS                       R44 R43 K73 ["CloseAffordance"]
      443 CALL                             R40 3 1
      444 SETTABLEKS                       R40 R39 K0 ["Sheet"]
      446 GETUPVAL                         R41 12
      447 GETTABLEKS                       R40 R41 K40 ["createElement"]
      449 GETUPVAL                         R41 25
      450 DUPTABLE                         R42 K97 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      451 GETUPVAL                         R43 26
      452 SETTABLEKS                       R43 R42 K94 ["Image"]
      454 GETIMPORT                        R44 K99 [UDim2.fromOffset]
      456 GETUPVAL                         R46 27
      457 MULK                             R45 R46 K35 [2]
      458 GETUPVAL                         R47 27
      459 MULK                             R46 R47 K35 [2]
      460 CALL                             R44 2 1
      461 ADD                              R43 R32 R44
      462 SETTABLEKS                       R43 R42 K51 ["Size"]
      464 DUPCLOSURE                       R45 K100 [PROTO_7]
      465 CAPTURE                          UPVAL U27
      466 NAMECALL                         R43 R33 K36 ["map"]
      468 CALL                             R43 2 1
      469 SETTABLEKS                       R43 R42 K52 ["Position"]
      471 LOADN                            R43 2
      472 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      474 DUPTABLE                         R43 K103 [{"center", "scale"}]
      475 GETIMPORT                        R44 K105 [Rect.new]
      477 GETUPVAL                         R45 27
      478 GETUPVAL                         R46 27
      479 GETUPVAL                         R48 27
      480 ADDK                             R47 R48 K106 [1]
      481 GETUPVAL                         R49 27
      482 ADDK                             R48 R49 K106 [1]
      483 CALL                             R44 4 1
      484 SETTABLEKS                       R44 R43 K101 ["center"]
      486 LOADN                            R44 2
      487 SETTABLEKS                       R44 R43 K102 ["scale"]
      489 SETTABLEKS                       R43 R42 K95 ["slice"]
      491 GETTABLEKS                       R46 R4 K107 ["Color"]
      493 GETTABLEKS                       R45 R46 K108 ["Extended"]
      495 GETTABLEKS                       R44 R45 K109 ["Black"]
      497 GETTABLEKS                       R43 R44 K110 ["Black_10"]
      499 SETTABLEKS                       R43 R42 K96 ["imageStyle"]
      501 CALL                             R40 2 1
      502 SETTABLEKS                       R40 R39 K48 ["Shadow"]
      504 GETUPVAL                         R41 12
      505 GETTABLEKS                       R40 R41 K40 ["createElement"]
      507 GETUPVAL                         R41 18
      508 DUPTABLE                         R42 K112 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      509 GETIMPORT                        R43 K114 [UDim2.fromScale]
      511 LOADN                            R44 2
      512 LOADN                            R45 2
      513 CALL                             R43 2 1
      514 SETTABLEKS                       R43 R42 K51 ["Size"]
      516 GETIMPORT                        R43 K114 [UDim2.fromScale]
      518 LOADK                            R44 K115 [-0.5]
      519 LOADK                            R45 K115 [-0.5]
      520 CALL                             R43 2 1
      521 SETTABLEKS                       R43 R42 K52 ["Position"]
      523 LOADN                            R43 1
      524 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      526 DUPTABLE                         R43 K65 [{"affordance"}]
      527 GETUPVAL                         R45 19
      528 GETTABLEKS                       R44 R45 K66 ["None"]
      530 SETTABLEKS                       R44 R43 K64 ["affordance"]
      532 SETTABLEKS                       R43 R42 K55 ["stateLayer"]
      534 NEWCLOSURE                       R45 P8
      535 CAPTURE                          VAL R4
      536 NAMECALL                         R43 R17 K36 ["map"]
      538 CALL                             R43 2 1
      539 SETTABLEKS                       R43 R42 K111 ["backgroundStyle"]
      541 SETTABLEKS                       R31 R42 K56 ["onActivated"]
      543 LOADK                            R44 K116 ["%*--backdrop"]
      544 GETTABLEKS                       R46 R2 K38 ["testId"]
      546 NAMECALL                         R44 R44 K47 ["format"]
      548 CALL                             R44 2 1
      549 MOVE                             R43 R44
      550 SETTABLEKS                       R43 R42 K38 ["testId"]
      552 CALL                             R40 2 1
      553 SETTABLEKS                       R40 R39 K49 ["Backdrop"]
      555 CALL                             R36 3 1
      556 MOVE                             R37 R3
      557 CALL                             R35 2 1
      558 CLOSEUPVALS                      R6
      559 RETURN                           R35 1

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
       38 GETTABLEKS                       R10 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R10 K14 ["CloseAffordanceVariant"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K13 ["Enums"]
       52 GETTABLEKS                       R11 R12 K16 ["StateLayerAffordance"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Providers"]
       59 GETTABLEKS                       R13 R14 K18 ["Overlay"]
       61 GETTABLEKS                       R12 R13 K19 ["useOverlay"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R14 R0 K20 ["Utility"]
       68 GETTABLEKS                       R13 R14 K21 ["useScaledValue"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R16 R0 K17 ["Providers"]
       75 GETTABLEKS                       R15 R16 K22 ["Style"]
       77 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K20 ["Utility"]
       84 GETTABLEKS                       R15 R16 K24 ["withDefaults"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R18 K1 [script]
       91 GETTABLEKS                       R17 R18 K4 ["Parent"]
       93 GETTABLEKS                       R16 R17 K25 ["SheetContext"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R19 K1 [script]
      100 GETTABLEKS                       R18 R19 K4 ["Parent"]
      102 GETTABLEKS                       R17 R18 K26 ["Types"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K27 ["SheetType"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R21 R0 K17 ["Providers"]
      118 GETTABLEKS                       R20 R21 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R20 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R20 K6 [require]
      125 GETTABLEKS                       R23 R0 K17 ["Providers"]
      127 GETTABLEKS                       R22 R23 K28 ["Elevation"]
      129 GETTABLEKS                       R21 R22 K30 ["ElevationProvider"]
      131 CALL                             R20 1 1
      132 GETTABLEKS                       R19 R20 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R22 R0 K13 ["Enums"]
      138 GETTABLEKS                       R21 R22 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETTABLEKS                       R23 R0 K13 ["Enums"]
      145 GETTABLEKS                       R22 R23 K33 ["DialogSize"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R25 K1 [script]
      152 GETTABLEKS                       R24 R25 K4 ["Parent"]
      154 GETTABLEKS                       R23 R24 K34 ["useHardwareInsets"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K4 ["Parent"]
      163 GETTABLEKS                       R24 R25 K35 ["useScreenSize"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R26 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R26 K37 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R27 R0 K20 ["Utility"]
      177 GETTABLEKS                       R26 R27 K38 ["Flags"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R28 R0 K36 ["Components"]
      184 GETTABLEKS                       R27 R28 K39 ["Image"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K6 [require]
      189 GETTABLEKS                       R29 R0 K36 ["Components"]
      191 GETTABLEKS                       R28 R29 K40 ["View"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K6 [require]
      196 GETTABLEKS                       R31 R0 K17 ["Providers"]
      198 GETTABLEKS                       R30 R31 K41 ["Preferences"]
      200 GETTABLEKS                       R29 R30 K42 ["usePreferences"]
      202 CALL                             R28 1 1
      203 NEWTABLE                         R29 2 0
      205 GETTABLEKS                       R30 R21 K43 ["Medium"]
      207 DUPTABLE                         R31 K47 [{"TARGET_WIDTH", "MIN", "MAX"}]
      208 LOADK                            R32 K48 [0.4]
      209 SETTABLEKS                       R32 R31 K44 ["TARGET_WIDTH"]
      211 LOADN                            R32 104
      212 SETTABLEKS                       R32 R31 K45 ["MIN"]
      214 LOADN                            R32 184
      215 SETTABLEKS                       R32 R31 K46 ["MAX"]
      217 SETTABLE                         R31 R29 R30
      218 GETTABLEKS                       R30 R21 K49 ["Large"]
      220 DUPTABLE                         R31 K47 [{"TARGET_WIDTH", "MIN", "MAX"}]
      221 LOADK                            R32 K50 [0.5]
      222 SETTABLEKS                       R32 R31 K44 ["TARGET_WIDTH"]
      224 LOADN                            R32 184
      225 SETTABLEKS                       R32 R31 K45 ["MIN"]
      227 LOADN                            R32 128
      228 SETTABLEKS                       R32 R31 K46 ["MAX"]
      230 SETTABLE                         R31 R29 R30
      231 DUPTABLE                         R30 K53 [{"testId", "size"}]
      232 LOADK                            R31 K54 ["--foundation-sheet"]
      233 SETTABLEKS                       R31 R30 K51 ["testId"]
      235 GETTABLEKS                       R32 R25 K55 ["FoundationSideSheetNewWidthCalculation"]
      237 JUMPIFNOT                        R32 ; [+3]
      238 GETTABLEKS                       R31 R21 K43 ["Medium"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R31
      242 SETTABLEKS                       R31 R30 K52 ["size"]
      244 GETTABLEKS                       R31 R9 K56 ["SHADOW_IMAGE"]
      246 GETTABLEKS                       R32 R9 K57 ["SHADOW_SIZE"]
      248 DUPCLOSURE                       R33 K58 [PROTO_9]
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R30
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R20
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R23
      259 CAPTURE                          VAL R29
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R17
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R10
      269 CAPTURE                          VAL R16
      270 CAPTURE                          VAL R15
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R24
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R32
      277 GETTABLEKS                       R34 R4 K59 ["memo"]
      279 GETTABLEKS                       R35 R4 K60 ["forwardRef"]
      281 MOVE                             R36 R33
      282 CALL                             R35 1 -1
      283 CALL                             R34 -1 -1
      284 RETURN                           R34 -1
