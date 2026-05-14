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
        0 DUPTABLE                         R0 K19 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K20 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K20 ["noop"]
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
       47 GETUPVAL                         R1 8
       48 GETTABLEKS                       R1 R1 K21 ["Side"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R1 9
       53 GETTABLEKS                       R1 R1 K15 ["testId"]
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
      130 GETUPVAL                         R27 12
      131 GETTABLEKS                       R27 R27 K25 ["useBinding"]
      133 LOADN                            R28 0
      134 CALL                             R27 1 2
      135 GETUPVAL                         R29 12
      136 GETTABLEKS                       R29 R29 K24 ["useRef"]
      138 LOADNIL                          R30
      139 CALL                             R29 1 1
      140 GETUPVAL                         R30 12
      141 GETTABLEKS                       R30 R30 K26 ["useState"]
      143 LOADNIL                          R31
      144 CALL                             R30 1 2
      145 GETUPVAL                         R32 12
      146 GETTABLEKS                       R32 R32 K27 ["useEffect"]
      148 NEWCLOSURE                       R33 P1
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R22
      151 CAPTURE                          UPVAL U14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R4
      155 NEWTABLE                         R34 0 2
      157 MOVE                             R35 R15
      158 MOVE                             R36 R7
      159 SETLIST                          R34 R35 2 [1]
      161 CALL                             R32 2 0
      162 GETUPVAL                         R32 12
      163 GETTABLEKS                       R32 R32 K28 ["useCallback"]
      165 NEWCLOSURE                       R33 P2
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R22
      169 CAPTURE                          UPVAL U14
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R4
      173 NEWTABLE                         R34 0 2
      175 MOVE                             R35 R20
      176 MOVE                             R36 R7
      177 SETLIST                          R34 R35 2 [1]
      179 CALL                             R32 2 1
      180 GETUPVAL                         R33 12
      181 GETTABLEKS                       R33 R33 K29 ["useImperativeHandle"]
      183 GETTABLEKS                       R34 R2 K30 ["sheetRef"]
      185 NEWCLOSURE                       R35 P3
      186 CAPTURE                          VAL R32
      187 NEWTABLE                         R36 0 0
      189 CALL                             R33 3 0
      190 GETIMPORT                        R33 K33 [UDim2.new]
      192 LOADN                            R34 0
      193 JUMPIFNOT                        R11 ; [+2]
      194 MOVE                             R36 R10
      195 JUMP                             ; [+1]
      196 LOADN                            R36 0
      197 ADD                              R35 R15 R36
      198 LOADN                            R36 1
      199 JUMPIFNOT                        R11 ; [+2]
      200 LOADN                            R37 0
      201 JUMP                             ; [+2]
      202 MINUS                            R38 R16
      203 MULK                             R37 R38 K34 [2]
      204 CALL                             R33 4 1
      205 NEWCLOSURE                       R36 P4
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R16
      208 NAMECALL                         R34 R21 K35 ["map"]
      210 CALL                             R34 2 1
      211 GETUPVAL                         R35 12
      212 GETTABLEKS                       R35 R35 K36 ["useMemo"]
      214 NEWCLOSURE                       R36 P5
      215 CAPTURE                          UPVAL U15
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R32
      223 CAPTURE                          UPVAL U16
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R29
      226 CAPTURE                          VAL R30
      227 CAPTURE                          VAL R31
      228 NEWTABLE                         R37 0 4
      230 GETTABLEKS                       R38 R2 K37 ["testId"]
      232 MOVE                             R39 R32
      233 MOVE                             R40 R30
      234 MOVE                             R41 R29
      235 SETLIST                          R37 R38 4 [1]
      237 CALL                             R35 2 1
      238 MOVE                             R36 R3
      239 JUMPIFNOT                        R36 ; [+299]
      240 GETUPVAL                         R36 17
      241 GETTABLEKS                       R36 R36 K38 ["createPortal"]
      243 GETUPVAL                         R37 12
      244 GETTABLEKS                       R37 R37 K39 ["createElement"]
      246 GETUPVAL                         R38 18
      247 DUPTABLE                         R39 K42 [{"ZIndex", "tag", "testId"}]
      248 GETTABLEKS                       R40 R5 K43 ["zIndex"]
      250 SETTABLEKS                       R40 R39 K40 ["ZIndex"]
      252 LOADK                            R40 K44 ["size-full"]
      253 SETTABLEKS                       R40 R39 K41 ["tag"]
      255 LOADK                            R41 K45 ["%*--surface"]
      256 GETTABLEKS                       R43 R2 K37 ["testId"]
      258 NAMECALL                         R41 R41 K46 ["format"]
      260 CALL                             R41 2 1
      261 MOVE                             R40 R41
      262 SETTABLEKS                       R40 R39 K37 ["testId"]
      264 DUPTABLE                         R40 K49 [{"Sheet", "Shadow", "Backdrop"}]
      265 GETUPVAL                         R41 12
      266 GETTABLEKS                       R41 R41 K39 ["createElement"]
      268 GETUPVAL                         R42 18
      269 DUPTABLE                         R43 K59 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      270 SETTABLEKS                       R33 R43 K50 ["Size"]
      272 SETTABLEKS                       R34 R43 K51 ["Position"]
      274 LOADB                            R44 1
      275 SETTABLEKS                       R44 R43 K52 ["ClipsDescendants"]
      277 LOADN                            R44 3
      278 SETTABLEKS                       R44 R43 K40 ["ZIndex"]
      280 JUMPIFNOT                        R11 ; [+12]
      281 LOADN                            R45 0
      282 JUMPIFNOTLT                      R45 R10 ; [+10]
      284 DUPTABLE                         R44 K60 [{"right"}]
      285 GETIMPORT                        R45 K62 [UDim.new]
      287 LOADN                            R46 0
      288 MOVE                             R47 R10
      289 CALL                             R45 2 1
      290 SETTABLEKS                       R45 R44 K5 ["right"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R44
      294 SETTABLEKS                       R44 R43 K53 ["padding"]
      296 DUPTABLE                         R44 K64 [{"affordance"}]
      297 GETUPVAL                         R45 19
      298 GETTABLEKS                       R45 R45 K65 ["None"]
      300 SETTABLEKS                       R45 R44 K63 ["affordance"]
      302 SETTABLEKS                       R44 R43 K54 ["stateLayer"]
      304 GETUPVAL                         R44 15
      305 GETTABLEKS                       R44 R44 K66 ["noop"]
      307 SETTABLEKS                       R44 R43 K55 ["onActivated"]
      309 SETTABLEKS                       R1 R43 K56 ["ref"]
      311 GETUPVAL                         R44 20
      312 GETTABLEKS                       R44 R44 K67 ["nonSelectable"]
      314 SETTABLEKS                       R44 R43 K57 ["selection"]
      316 GETUPVAL                         R44 20
      317 GETTABLEKS                       R44 R44 K68 ["isolatedSelectionGroup"]
      319 SETTABLEKS                       R44 R43 K58 ["selectionGroup"]
      321 NEWTABLE                         R44 2 0
      323 LOADB                            R45 1
      324 SETTABLEKS                       R45 R44 K69 ["stroke-standard stroke-default bg-surface-100"]
      326 NOT                              R45 R11
      327 SETTABLEKS                       R45 R44 K70 ["radius-large"]
      329 SETTABLEKS                       R44 R43 K41 ["tag"]
      331 GETTABLEKS                       R44 R2 K37 ["testId"]
      333 SETTABLEKS                       R44 R43 K37 ["testId"]
      335 DUPTABLE                         R44 K73 [{"Content", "CloseAffordance"}]
      336 GETUPVAL                         R45 12
      337 GETTABLEKS                       R45 R45 K39 ["createElement"]
      339 GETUPVAL                         R46 18
      340 DUPTABLE                         R47 K74 [{"tag"}]
      341 LOADK                            R48 K75 ["col items-center size-full-full clip"]
      342 SETTABLEKS                       R48 R47 K41 ["tag"]
      344 GETUPVAL                         R48 12
      345 GETTABLEKS                       R48 R48 K39 ["createElement"]
      347 GETUPVAL                         R49 21
      348 GETTABLEKS                       R49 R49 K76 ["Provider"]
      350 DUPTABLE                         R50 K78 [{"value"}]
      351 SETTABLEKS                       R35 R50 K77 ["value"]
      353 GETUPVAL                         R51 12
      354 GETTABLEKS                       R51 R51 K39 ["createElement"]
      356 GETUPVAL                         R52 22
      357 DUPTABLE                         R53 K80 [{"owner"}]
      358 SETTABLEKS                       R5 R53 K79 ["owner"]
      360 GETTABLEKS                       R54 R2 K81 ["children"]
      362 CALL                             R51 3 -1
      363 CALL                             R48 -1 -1
      364 CALL                             R45 -1 1
      365 SETTABLEKS                       R45 R44 K71 ["Content"]
      367 GETUPVAL                         R45 12
      368 GETTABLEKS                       R45 R45 K39 ["createElement"]
      370 GETUPVAL                         R46 23
      371 DUPTABLE                         R47 K86 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      372 SETTABLEKS                       R32 R47 K55 ["onActivated"]
      374 SETTABLEKS                       R29 R47 K56 ["ref"]
      376 SETTABLEKS                       R30 R47 K82 ["NextSelectionDown"]
      378 GETUPVAL                         R48 24
      379 GETTABLEKS                       R48 R48 K87 ["Utility"]
      381 SETTABLEKS                       R48 R47 K83 ["variant"]
      383 GETIMPORT                        R48 K33 [UDim2.new]
      385 LOADN                            R49 1
      386 GETTABLEKS                       R51 R4 K88 ["Margin"]
      388 GETTABLEKS                       R51 R51 K9 ["Small"]
      390 MINUS                            R50 R51
      391 LOADN                            R51 0
      392 GETTABLEKS                       R52 R4 K88 ["Margin"]
      394 GETTABLEKS                       R52 R52 K9 ["Small"]
      396 CALL                             R48 4 1
      397 SETTABLEKS                       R48 R47 K51 ["Position"]
      399 GETIMPORT                        R48 K90 [Vector2.new]
      401 LOADN                            R49 1
      402 LOADN                            R50 0
      403 CALL                             R48 2 1
      404 SETTABLEKS                       R48 R47 K84 ["AnchorPoint"]
      406 DUPCLOSURE                       R50 K91 [PROTO_6]
      407 NAMECALL                         R48 R25 K35 ["map"]
      409 CALL                             R48 2 1
      410 SETTABLEKS                       R48 R47 K85 ["Visible"]
      412 LOADK                            R49 K92 ["%*--close-affordance"]
      413 GETTABLEKS                       R51 R2 K37 ["testId"]
      415 NAMECALL                         R49 R49 K46 ["format"]
      417 CALL                             R49 2 1
      418 MOVE                             R48 R49
      419 SETTABLEKS                       R48 R47 K37 ["testId"]
      421 CALL                             R45 2 1
      422 SETTABLEKS                       R45 R44 K72 ["CloseAffordance"]
      424 CALL                             R41 3 1
      425 SETTABLEKS                       R41 R40 K0 ["Sheet"]
      427 GETUPVAL                         R41 12
      428 GETTABLEKS                       R41 R41 K39 ["createElement"]
      430 GETUPVAL                         R42 25
      431 DUPTABLE                         R43 K96 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      432 GETUPVAL                         R44 26
      433 SETTABLEKS                       R44 R43 K93 ["Image"]
      435 GETIMPORT                        R45 K98 [UDim2.fromOffset]
      437 GETUPVAL                         R47 27
      438 MULK                             R46 R47 K34 [2]
      439 GETUPVAL                         R48 27
      440 MULK                             R47 R48 K34 [2]
      441 CALL                             R45 2 1
      442 ADD                              R44 R33 R45
      443 SETTABLEKS                       R44 R43 K50 ["Size"]
      445 DUPCLOSURE                       R46 K99 [PROTO_7]
      446 CAPTURE                          UPVAL U27
      447 NAMECALL                         R44 R34 K35 ["map"]
      449 CALL                             R44 2 1
      450 SETTABLEKS                       R44 R43 K51 ["Position"]
      452 LOADN                            R44 2
      453 SETTABLEKS                       R44 R43 K40 ["ZIndex"]
      455 DUPTABLE                         R44 K102 [{"center", "scale"}]
      456 GETIMPORT                        R45 K104 [Rect.new]
      458 GETUPVAL                         R46 27
      459 GETUPVAL                         R47 27
      460 GETUPVAL                         R49 27
      461 ADDK                             R48 R49 K105 [1]
      462 GETUPVAL                         R50 27
      463 ADDK                             R49 R50 K105 [1]
      464 CALL                             R45 4 1
      465 SETTABLEKS                       R45 R44 K100 ["center"]
      467 LOADN                            R45 2
      468 SETTABLEKS                       R45 R44 K101 ["scale"]
      470 SETTABLEKS                       R44 R43 K94 ["slice"]
      472 GETTABLEKS                       R44 R4 K106 ["Color"]
      474 GETTABLEKS                       R44 R44 K107 ["Extended"]
      476 GETTABLEKS                       R44 R44 K108 ["Black"]
      478 GETTABLEKS                       R44 R44 K109 ["Black_10"]
      480 SETTABLEKS                       R44 R43 K95 ["imageStyle"]
      482 CALL                             R41 2 1
      483 SETTABLEKS                       R41 R40 K47 ["Shadow"]
      485 GETUPVAL                         R41 12
      486 GETTABLEKS                       R41 R41 K39 ["createElement"]
      488 GETUPVAL                         R42 18
      489 DUPTABLE                         R43 K111 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      490 GETIMPORT                        R44 K113 [UDim2.fromScale]
      492 LOADN                            R45 2
      493 LOADN                            R46 2
      494 CALL                             R44 2 1
      495 SETTABLEKS                       R44 R43 K50 ["Size"]
      497 GETIMPORT                        R44 K113 [UDim2.fromScale]
      499 LOADK                            R45 K114 [-0.5]
      500 LOADK                            R46 K114 [-0.5]
      501 CALL                             R44 2 1
      502 SETTABLEKS                       R44 R43 K51 ["Position"]
      504 LOADN                            R44 1
      505 SETTABLEKS                       R44 R43 K40 ["ZIndex"]
      507 DUPTABLE                         R44 K64 [{"affordance"}]
      508 GETUPVAL                         R45 19
      509 GETTABLEKS                       R45 R45 K65 ["None"]
      511 SETTABLEKS                       R45 R44 K63 ["affordance"]
      513 SETTABLEKS                       R44 R43 K54 ["stateLayer"]
      515 NEWCLOSURE                       R46 P8
      516 CAPTURE                          VAL R4
      517 NAMECALL                         R44 R18 K35 ["map"]
      519 CALL                             R44 2 1
      520 SETTABLEKS                       R44 R43 K110 ["backgroundStyle"]
      522 SETTABLEKS                       R32 R43 K55 ["onActivated"]
      524 LOADK                            R45 K115 ["%*--backdrop"]
      525 GETTABLEKS                       R47 R2 K37 ["testId"]
      527 NAMECALL                         R45 R45 K46 ["format"]
      529 CALL                             R45 2 1
      530 MOVE                             R44 R45
      531 SETTABLEKS                       R44 R43 K37 ["testId"]
      533 CALL                             R41 2 1
      534 SETTABLEKS                       R41 R40 K48 ["Backdrop"]
      536 CALL                             R37 3 1
      537 MOVE                             R38 R3
      538 CALL                             R36 2 1
      539 RETURN                           R36 1

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
      154 GETTABLEKS                       R23 R23 K34 ["useHardwareInsets"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K35 ["useScreenSize"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R25 K37 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K20 ["Utility"]
      177 GETTABLEKS                       R26 R26 K38 ["Flags"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K36 ["Components"]
      184 GETTABLEKS                       R27 R27 K39 ["Image"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K6 [require]
      189 GETTABLEKS                       R28 R0 K36 ["Components"]
      191 GETTABLEKS                       R28 R28 K40 ["View"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K6 [require]
      196 GETTABLEKS                       R29 R0 K17 ["Providers"]
      198 GETTABLEKS                       R29 R29 K41 ["Preferences"]
      200 GETTABLEKS                       R29 R29 K42 ["usePreferences"]
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
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R25
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
