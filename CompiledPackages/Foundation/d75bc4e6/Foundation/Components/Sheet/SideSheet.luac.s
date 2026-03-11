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
       11 GETUPVAL                         R7 0
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADN                            R6 0
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 SUB                              R5 R6 R7
       18 CALL                             R1 4 -1
       19 RETURN                           R1 -1

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
       39 GETUPVAL                         R12 6
       40 GETTABLEKS                       R11 R12 K7 ["FoundationSheetSideSheetTopBarFix"]
       42 JUMPIFNOT                        R11 ; [+3]
       43 GETTABLEKS                       R10 R7 K8 ["top"]
       45 JUMP                             ; [+1]
       46 LOADN                            R10 0
       47 GETTABLEKS                       R12 R2 K9 ["displaySize"]
       49 GETIMPORT                        R13 K13 [Enum.DisplaySize.Small]
       51 JUMPIFEQ                         R12 R13 ; [+2]
       53 LOADB                            R11 0 +1
       54 LOADB                            R11 1
       55 LOADNIL                          R12
       56 LOADNIL                          R13
       57 LOADNIL                          R14
       58 GETUPVAL                         R16 6
       59 GETTABLEKS                       R15 R16 K5 ["FoundationSideSheetNewWidthCalculation"]
       61 JUMPIFNOT                        R15 ; [+26]
       62 GETTABLEKS                       R17 R4 K14 ["Config"]
       64 GETTABLEKS                       R16 R17 K15 ["UI"]
       66 GETTABLEKS                       R15 R16 K16 ["Scale"]
       68 GETUPVAL                         R17 10
       69 GETTABLEKS                       R18 R2 K17 ["size"]
       71 GETTABLE                         R16 R17 R18
       72 GETTABLEKS                       R12 R16 K18 ["TARGET_WIDTH"]
       74 GETUPVAL                         R18 10
       75 GETTABLEKS                       R19 R2 K17 ["size"]
       77 GETTABLE                         R17 R18 R19
       78 GETTABLEKS                       R16 R17 K19 ["MIN"]
       80 MUL                              R13 R16 R15
       81 GETUPVAL                         R18 10
       82 GETTABLEKS                       R19 R2 K17 ["size"]
       84 GETTABLE                         R17 R18 R19
       85 GETTABLEKS                       R16 R17 K20 ["MAX"]
       87 MUL                              R14 R16 R15
       88 GETUPVAL                         R17 6
       89 GETTABLEKS                       R16 R17 K5 ["FoundationSideSheetNewWidthCalculation"]
       91 JUMPIFNOT                        R16 ; [+11]
       92 GETTABLEKS                       R17 R8 K21 ["X"]
       94 MUL                              R16 R17 R12
       95 FASTCALL3                        MATH_CLAMP R16 R13 R14
       97 MOVE                             R17 R13
       98 MOVE                             R18 R14
       99 GETIMPORT                        R15 K24 [math.clamp]
      101 CALL                             R15 3 1
      102 JUMP                             ; [+6]
      103 GETUPVAL                         R15 11
      104 JUMPIFNOT                        R11 ; [+2]
      105 LOADN                            R16 144
      106 JUMP                             ; [+1]
      107 LOADN                            R16 104
      108 CALL                             R15 1 1
      109 GETTABLEKS                       R17 R4 K25 ["Padding"]
      111 GETTABLEKS                       R16 R17 K26 ["Medium"]
      113 GETUPVAL                         R18 12
      114 GETTABLEKS                       R17 R18 K27 ["useRef"]
      116 LOADB                            R18 0
      117 CALL                             R17 1 1
      118 GETUPVAL                         R18 13
      119 LOADN                            R19 1
      120 NEWCLOSURE                       R20 P0
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R2
      123 CALL                             R18 2 2
      124 JUMPIFNOT                        R11 ; [+2]
      125 LOADN                            R22 0
      126 JUMP                             ; [+1]
      127 MOVE                             R22 R16
      128 ADD                              R21 R9 R22
      129 MINUS                            R20 R21
      130 GETUPVAL                         R21 13
      131 MOVE                             R22 R20
      132 CALL                             R21 1 2
      133 GETUPVAL                         R24 12
      134 GETTABLEKS                       R23 R24 K28 ["useBinding"]
      136 LOADB                            R24 0
      137 CALL                             R23 1 2
      138 GETUPVAL                         R26 12
      139 GETTABLEKS                       R25 R26 K28 ["useBinding"]
      141 LOADB                            R26 0
      142 CALL                             R25 1 2
      143 GETUPVAL                         R28 12
      144 GETTABLEKS                       R27 R28 K28 ["useBinding"]
      146 LOADN                            R28 0
      147 CALL                             R27 1 2
      148 GETUPVAL                         R30 12
      149 GETTABLEKS                       R29 R30 K27 ["useRef"]
      151 LOADNIL                          R30
      152 CALL                             R29 1 1
      153 GETUPVAL                         R31 12
      154 GETTABLEKS                       R30 R31 K29 ["useState"]
      156 LOADNIL                          R31
      157 CALL                             R30 1 2
      158 GETUPVAL                         R33 12
      159 GETTABLEKS                       R32 R33 K30 ["useEffect"]
      161 NEWCLOSURE                       R33 P1
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          REF R6
      164 CAPTURE                          VAL R22
      165 CAPTURE                          UPVAL U14
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R4
      169 NEWTABLE                         R34 0 2
      171 MOVE                             R35 R15
      172 GETUPVAL                         R38 6
      173 GETTABLEKS                       R37 R38 K3 ["FoundationSheetReducedMotion"]
      175 JUMPIFNOT                        R37 ; [+2]
      176 MOVE                             R36 R6
      177 JUMP                             ; [+1]
      178 LOADNIL                          R36
      179 SETLIST                          R34 R35 2 [1]
      181 CALL                             R32 2 0
      182 GETUPVAL                         R33 12
      183 GETTABLEKS                       R32 R33 K31 ["useCallback"]
      185 NEWCLOSURE                       R33 P2
      186 CAPTURE                          VAL R17
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          REF R6
      189 CAPTURE                          VAL R22
      190 CAPTURE                          UPVAL U14
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R4
      194 NEWTABLE                         R34 0 2
      196 MOVE                             R35 R20
      197 GETUPVAL                         R38 6
      198 GETTABLEKS                       R37 R38 K3 ["FoundationSheetReducedMotion"]
      200 JUMPIFNOT                        R37 ; [+2]
      201 MOVE                             R36 R6
      202 JUMP                             ; [+1]
      203 LOADNIL                          R36
      204 SETLIST                          R34 R35 2 [1]
      206 CALL                             R32 2 1
      207 GETUPVAL                         R34 12
      208 GETTABLEKS                       R33 R34 K32 ["useImperativeHandle"]
      210 GETTABLEKS                       R34 R2 K33 ["sheetRef"]
      212 NEWCLOSURE                       R35 P3
      213 CAPTURE                          VAL R32
      214 NEWTABLE                         R36 0 0
      216 CALL                             R33 3 0
      217 GETIMPORT                        R33 K36 [UDim2.new]
      219 LOADN                            R34 0
      220 JUMPIFNOT                        R11 ; [+2]
      221 MOVE                             R36 R9
      222 JUMP                             ; [+1]
      223 LOADN                            R36 0
      224 ADD                              R35 R15 R36
      225 LOADN                            R36 1
      226 JUMPIFNOT                        R11 ; [+2]
      227 LOADN                            R38 0
      228 JUMP                             ; [+2]
      229 MINUS                            R39 R16
      230 MULK                             R38 R39 K37 [2]
      231 ADD                              R37 R38 R10
      232 CALL                             R33 4 1
      233 NEWCLOSURE                       R36 P4
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R10
      237 NAMECALL                         R34 R21 K38 ["map"]
      239 CALL                             R34 2 1
      240 GETUPVAL                         R36 12
      241 GETTABLEKS                       R35 R36 K39 ["useMemo"]
      243 NEWCLOSURE                       R36 P5
      244 CAPTURE                          UPVAL U15
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R28
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R32
      252 CAPTURE                          UPVAL U16
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R31
      257 NEWTABLE                         R37 0 4
      259 GETTABLEKS                       R38 R2 K40 ["testId"]
      261 MOVE                             R39 R32
      262 MOVE                             R40 R30
      263 MOVE                             R41 R29
      264 SETLIST                          R37 R38 4 [1]
      266 CALL                             R35 2 1
      267 MOVE                             R36 R3
      268 JUMPIFNOT                        R36 ; [+299]
      269 GETUPVAL                         R37 17
      270 GETTABLEKS                       R36 R37 K41 ["createPortal"]
      272 GETUPVAL                         R38 12
      273 GETTABLEKS                       R37 R38 K42 ["createElement"]
      275 GETUPVAL                         R38 18
      276 DUPTABLE                         R39 K45 [{"ZIndex", "tag", "testId"}]
      277 GETTABLEKS                       R40 R5 K46 ["zIndex"]
      279 SETTABLEKS                       R40 R39 K43 ["ZIndex"]
      281 LOADK                            R40 K47 ["size-full"]
      282 SETTABLEKS                       R40 R39 K44 ["tag"]
      284 LOADK                            R41 K48 ["%*--surface"]
      285 GETTABLEKS                       R43 R2 K40 ["testId"]
      287 NAMECALL                         R41 R41 K49 ["format"]
      289 CALL                             R41 2 1
      290 MOVE                             R40 R41
      291 SETTABLEKS                       R40 R39 K40 ["testId"]
      293 DUPTABLE                         R40 K52 [{"Sheet", "Shadow", "Backdrop"}]
      294 GETUPVAL                         R42 12
      295 GETTABLEKS                       R41 R42 K42 ["createElement"]
      297 GETUPVAL                         R42 18
      298 DUPTABLE                         R43 K62 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      299 SETTABLEKS                       R33 R43 K53 ["Size"]
      301 SETTABLEKS                       R34 R43 K54 ["Position"]
      303 LOADB                            R44 1
      304 SETTABLEKS                       R44 R43 K55 ["ClipsDescendants"]
      306 LOADN                            R44 3
      307 SETTABLEKS                       R44 R43 K43 ["ZIndex"]
      309 JUMPIFNOT                        R11 ; [+12]
      310 LOADN                            R45 0
      311 JUMPIFNOTLT                      R45 R9 ; [+10]
      313 DUPTABLE                         R44 K63 [{"right"}]
      314 GETIMPORT                        R45 K65 [UDim.new]
      316 LOADN                            R46 0
      317 MOVE                             R47 R9
      318 CALL                             R45 2 1
      319 SETTABLEKS                       R45 R44 K6 ["right"]
      321 JUMP                             ; [+1]
      322 LOADNIL                          R44
      323 SETTABLEKS                       R44 R43 K56 ["padding"]
      325 DUPTABLE                         R44 K67 [{"affordance"}]
      326 GETUPVAL                         R46 19
      327 GETTABLEKS                       R45 R46 K68 ["None"]
      329 SETTABLEKS                       R45 R44 K66 ["affordance"]
      331 SETTABLEKS                       R44 R43 K57 ["stateLayer"]
      333 GETUPVAL                         R45 15
      334 GETTABLEKS                       R44 R45 K69 ["noop"]
      336 SETTABLEKS                       R44 R43 K58 ["onActivated"]
      338 SETTABLEKS                       R1 R43 K59 ["ref"]
      340 GETUPVAL                         R45 20
      341 GETTABLEKS                       R44 R45 K70 ["nonSelectable"]
      343 SETTABLEKS                       R44 R43 K60 ["selection"]
      345 GETUPVAL                         R45 20
      346 GETTABLEKS                       R44 R45 K71 ["isolatedSelectionGroup"]
      348 SETTABLEKS                       R44 R43 K61 ["selectionGroup"]
      350 NEWTABLE                         R44 2 0
      352 LOADB                            R45 1
      353 SETTABLEKS                       R45 R44 K72 ["bg-surface-100 stroke-default stroke-standard"]
      355 NOT                              R45 R11
      356 SETTABLEKS                       R45 R44 K73 ["radius-large"]
      358 SETTABLEKS                       R44 R43 K44 ["tag"]
      360 GETTABLEKS                       R44 R2 K40 ["testId"]
      362 SETTABLEKS                       R44 R43 K40 ["testId"]
      364 DUPTABLE                         R44 K76 [{"Content", "CloseAffordance"}]
      365 GETUPVAL                         R46 12
      366 GETTABLEKS                       R45 R46 K42 ["createElement"]
      368 GETUPVAL                         R46 18
      369 DUPTABLE                         R47 K77 [{"tag"}]
      370 LOADK                            R48 K78 ["size-full-full col items-center clip"]
      371 SETTABLEKS                       R48 R47 K44 ["tag"]
      373 GETUPVAL                         R49 12
      374 GETTABLEKS                       R48 R49 K42 ["createElement"]
      376 GETUPVAL                         R50 21
      377 GETTABLEKS                       R49 R50 K79 ["Provider"]
      379 DUPTABLE                         R50 K81 [{"value"}]
      380 SETTABLEKS                       R35 R50 K80 ["value"]
      382 GETUPVAL                         R52 12
      383 GETTABLEKS                       R51 R52 K42 ["createElement"]
      385 GETUPVAL                         R52 22
      386 DUPTABLE                         R53 K83 [{"owner"}]
      387 SETTABLEKS                       R5 R53 K82 ["owner"]
      389 GETTABLEKS                       R54 R2 K84 ["children"]
      391 CALL                             R51 3 -1
      392 CALL                             R48 -1 -1
      393 CALL                             R45 -1 1
      394 SETTABLEKS                       R45 R44 K74 ["Content"]
      396 GETUPVAL                         R46 12
      397 GETTABLEKS                       R45 R46 K42 ["createElement"]
      399 GETUPVAL                         R46 23
      400 DUPTABLE                         R47 K89 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      401 SETTABLEKS                       R32 R47 K58 ["onActivated"]
      403 SETTABLEKS                       R29 R47 K59 ["ref"]
      405 SETTABLEKS                       R30 R47 K85 ["NextSelectionDown"]
      407 GETUPVAL                         R49 24
      408 GETTABLEKS                       R48 R49 K90 ["Utility"]
      410 SETTABLEKS                       R48 R47 K86 ["variant"]
      412 GETIMPORT                        R48 K36 [UDim2.new]
      414 LOADN                            R49 1
      415 GETTABLEKS                       R52 R4 K91 ["Margin"]
      417 GETTABLEKS                       R51 R52 K12 ["Small"]
      419 MINUS                            R50 R51
      420 LOADN                            R51 0
      421 GETTABLEKS                       R53 R4 K91 ["Margin"]
      423 GETTABLEKS                       R52 R53 K12 ["Small"]
      425 CALL                             R48 4 1
      426 SETTABLEKS                       R48 R47 K54 ["Position"]
      428 GETIMPORT                        R48 K93 [Vector2.new]
      430 LOADN                            R49 1
      431 LOADN                            R50 0
      432 CALL                             R48 2 1
      433 SETTABLEKS                       R48 R47 K87 ["AnchorPoint"]
      435 DUPCLOSURE                       R50 K94 [PROTO_6]
      436 NAMECALL                         R48 R25 K38 ["map"]
      438 CALL                             R48 2 1
      439 SETTABLEKS                       R48 R47 K88 ["Visible"]
      441 LOADK                            R49 K95 ["%*--close-affordance"]
      442 GETTABLEKS                       R51 R2 K40 ["testId"]
      444 NAMECALL                         R49 R49 K49 ["format"]
      446 CALL                             R49 2 1
      447 MOVE                             R48 R49
      448 SETTABLEKS                       R48 R47 K40 ["testId"]
      450 CALL                             R45 2 1
      451 SETTABLEKS                       R45 R44 K75 ["CloseAffordance"]
      453 CALL                             R41 3 1
      454 SETTABLEKS                       R41 R40 K0 ["Sheet"]
      456 GETUPVAL                         R42 12
      457 GETTABLEKS                       R41 R42 K42 ["createElement"]
      459 GETUPVAL                         R42 25
      460 DUPTABLE                         R43 K99 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      461 GETUPVAL                         R44 26
      462 SETTABLEKS                       R44 R43 K96 ["Image"]
      464 GETIMPORT                        R45 K101 [UDim2.fromOffset]
      466 GETUPVAL                         R47 27
      467 MULK                             R46 R47 K37 [2]
      468 GETUPVAL                         R48 27
      469 MULK                             R47 R48 K37 [2]
      470 CALL                             R45 2 1
      471 ADD                              R44 R33 R45
      472 SETTABLEKS                       R44 R43 K53 ["Size"]
      474 DUPCLOSURE                       R46 K102 [PROTO_7]
      475 CAPTURE                          UPVAL U27
      476 NAMECALL                         R44 R34 K38 ["map"]
      478 CALL                             R44 2 1
      479 SETTABLEKS                       R44 R43 K54 ["Position"]
      481 LOADN                            R44 2
      482 SETTABLEKS                       R44 R43 K43 ["ZIndex"]
      484 DUPTABLE                         R44 K105 [{"center", "scale"}]
      485 GETIMPORT                        R45 K107 [Rect.new]
      487 GETUPVAL                         R46 27
      488 GETUPVAL                         R47 27
      489 GETUPVAL                         R49 27
      490 ADDK                             R48 R49 K108 [1]
      491 GETUPVAL                         R50 27
      492 ADDK                             R49 R50 K108 [1]
      493 CALL                             R45 4 1
      494 SETTABLEKS                       R45 R44 K103 ["center"]
      496 LOADN                            R45 2
      497 SETTABLEKS                       R45 R44 K104 ["scale"]
      499 SETTABLEKS                       R44 R43 K97 ["slice"]
      501 GETTABLEKS                       R47 R4 K109 ["Color"]
      503 GETTABLEKS                       R46 R47 K110 ["Extended"]
      505 GETTABLEKS                       R45 R46 K111 ["Black"]
      507 GETTABLEKS                       R44 R45 K112 ["Black_10"]
      509 SETTABLEKS                       R44 R43 K98 ["imageStyle"]
      511 CALL                             R41 2 1
      512 SETTABLEKS                       R41 R40 K50 ["Shadow"]
      514 GETUPVAL                         R42 12
      515 GETTABLEKS                       R41 R42 K42 ["createElement"]
      517 GETUPVAL                         R42 18
      518 DUPTABLE                         R43 K114 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      519 GETIMPORT                        R44 K116 [UDim2.fromScale]
      521 LOADN                            R45 2
      522 LOADN                            R46 2
      523 CALL                             R44 2 1
      524 SETTABLEKS                       R44 R43 K53 ["Size"]
      526 GETIMPORT                        R44 K116 [UDim2.fromScale]
      528 LOADK                            R45 K117 [-0.5]
      529 LOADK                            R46 K117 [-0.5]
      530 CALL                             R44 2 1
      531 SETTABLEKS                       R44 R43 K54 ["Position"]
      533 LOADN                            R44 1
      534 SETTABLEKS                       R44 R43 K43 ["ZIndex"]
      536 DUPTABLE                         R44 K67 [{"affordance"}]
      537 GETUPVAL                         R46 19
      538 GETTABLEKS                       R45 R46 K68 ["None"]
      540 SETTABLEKS                       R45 R44 K66 ["affordance"]
      542 SETTABLEKS                       R44 R43 K57 ["stateLayer"]
      544 NEWCLOSURE                       R46 P8
      545 CAPTURE                          VAL R4
      546 NAMECALL                         R44 R18 K38 ["map"]
      548 CALL                             R44 2 1
      549 SETTABLEKS                       R44 R43 K113 ["backgroundStyle"]
      551 SETTABLEKS                       R32 R43 K58 ["onActivated"]
      553 LOADK                            R45 K118 ["%*--backdrop"]
      554 GETTABLEKS                       R47 R2 K40 ["testId"]
      556 NAMECALL                         R45 R45 K49 ["format"]
      558 CALL                             R45 2 1
      559 MOVE                             R44 R45
      560 SETTABLEKS                       R44 R43 K40 ["testId"]
      562 CALL                             R41 2 1
      563 SETTABLEKS                       R41 R40 K51 ["Backdrop"]
      565 CALL                             R37 3 1
      566 MOVE                             R38 R3
      567 CALL                             R36 2 1
      568 CLOSEUPVALS                      R6
      569 RETURN                           R36 1

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
