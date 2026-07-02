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
        1 GETTABLEKS                       R0 R0 K0 ["FoundationSheetReducedMotion"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["instant"]
       10 GETUPVAL                         R2 4
       11 CALL                             R1 1 1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["ease"]
       25 GETUPVAL                         R2 4
       26 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       27 GETUPVAL                         R4 6
       28 GETTABLEKS                       R4 R4 K6 ["Ease"]
       30 GETTABLEKS                       R4 R4 K7 ["StandardOut"]
       32 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       34 GETUPVAL                         R4 6
       35 GETTABLEKS                       R4 R4 K8 ["Time"]
       37 GETTABLEKS                       R4 R4 K9 ["Time_300"]
       39 SETTABLEKS                       R4 R3 K4 ["duration"]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 0
       43 GETUPVAL                         R0 5
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K2 ["ease"]
       47 LOADN                            R2 0
       48 DUPTABLE                         R3 K10 [{"duration"}]
       49 GETUPVAL                         R4 6
       50 GETTABLEKS                       R4 R4 K8 ["Time"]
       52 GETTABLEKS                       R4 R4 K11 ["Time_100"]
       54 SETTABLEKS                       R4 R3 K4 ["duration"]
       56 CALL                             R1 2 -1
       57 CALL                             R0 -1 0
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["FoundationSheetReducedMotion"]
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+19]
       11 GETUPVAL                         R0 0
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K2 ["instant"]
       19 GETUPVAL                         R2 5
       20 CALL                             R1 1 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 6
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K2 ["instant"]
       26 LOADN                            R2 1
       27 CALL                             R1 1 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 3
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K3 ["ease"]
       34 GETUPVAL                         R2 5
       35 DUPTABLE                         R3 K6 [{"easingStyle", "duration"}]
       36 GETUPVAL                         R4 7
       37 GETTABLEKS                       R4 R4 K7 ["Ease"]
       39 GETTABLEKS                       R4 R4 K8 ["StandardIn"]
       41 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R4 R4 K9 ["Time"]
       46 GETTABLEKS                       R4 R4 K10 ["Time_100"]
       48 SETTABLEKS                       R4 R3 K5 ["duration"]
       50 CALL                             R1 2 -1
       51 CALL                             R0 -1 0
       52 GETUPVAL                         R0 6
       53 GETUPVAL                         R1 4
       54 GETTABLEKS                       R1 R1 K3 ["ease"]
       56 LOADN                            R2 1
       57 DUPTABLE                         R3 K11 [{"duration"}]
       58 GETUPVAL                         R4 7
       59 GETTABLEKS                       R4 R4 K9 ["Time"]
       61 GETTABLEKS                       R4 R4 K10 ["Time_100"]
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
        0 DUPTABLE                         R0 K21 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K22 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K22 ["noop"]
       15 SETTABLEKS                       R1 R0 K6 ["setSheetHeightAvailable"]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K11 ["innerScrollY"]
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K12 ["setInnerScrollY"]
       23 GETUPVAL                         R1 5
       24 SETTABLEKS                       R1 R0 K13 ["hasHeader"]
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K14 ["setHasHeader"]
       29 GETUPVAL                         R1 7
       30 SETTABLEKS                       R1 R0 K15 ["closeSheet"]
       32 GETUPVAL                         R1 8
       33 GETTABLEKS                       R1 R1 K23 ["Side"]
       35 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       37 GETUPVAL                         R1 9
       38 GETTABLEKS                       R1 R1 K17 ["testId"]
       40 SETTABLEKS                       R1 R0 K17 ["testId"]
       42 GETUPVAL                         R1 10
       43 SETTABLEKS                       R1 R0 K18 ["closeAffordanceRef"]
       45 GETUPVAL                         R1 11
       46 SETTABLEKS                       R1 R0 K19 ["contentStartRef"]
       48 GETUPVAL                         R1 12
       49 SETTABLEKS                       R1 R0 K20 ["setContentStartRef"]
       51 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K3 [{["stackAboveOwner"] = False}]
       13 CALL                             R5 2 1
       14 LOADB                            R6 0
       15 GETUPVAL                         R7 6
       16 GETTABLEKS                       R7 R7 K4 ["FoundationSheetReducedMotion"]
       18 JUMPIFNOT                        R7 ; [+4]
       19 GETUPVAL                         R7 7
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R6 R7 K5 ["reducedMotion"]
       23 GETUPVAL                         R7 8
       24 MOVE                             R8 R3
       25 CALL                             R7 1 1
       26 GETUPVAL                         R9 6
       27 GETTABLEKS                       R9 R9 K6 ["FoundationSideSheetNewWidthCalculation"]
       29 JUMPIFNOT                        R9 ; [+3]
       30 GETUPVAL                         R8 9
       31 CALL                             R8 0 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R8
       34 GETTABLEKS                       R9 R7 K7 ["right"]
       36 GETUPVAL                         R11 6
       37 GETTABLEKS                       R11 R11 K8 ["FoundationSheetSideSheetTopBarFix"]
       39 JUMPIFNOT                        R11 ; [+3]
       40 GETTABLEKS                       R10 R7 K9 ["top"]
       42 JUMP                             ; [+1]
       43 LOADN                            R10 0
       44 GETTABLEKS                       R12 R2 K10 ["displaySize"]
       46 GETIMPORT                        R13 K14 [Enum.DisplaySize.Small]
       48 JUMPIFEQ                         R12 R13 ; [+2]
       50 LOADB                            R11 0 +1
       51 LOADB                            R11 1
       52 LOADNIL                          R12
       53 LOADNIL                          R13
       54 LOADNIL                          R14
       55 GETUPVAL                         R15 6
       56 GETTABLEKS                       R15 R15 K6 ["FoundationSideSheetNewWidthCalculation"]
       58 JUMPIFNOT                        R15 ; [+26]
       59 GETTABLEKS                       R15 R4 K15 ["Config"]
       61 GETTABLEKS                       R15 R15 K16 ["UI"]
       63 GETTABLEKS                       R15 R15 K17 ["Scale"]
       65 GETUPVAL                         R17 10
       66 GETTABLEKS                       R18 R2 K18 ["size"]
       68 GETTABLE                         R16 R17 R18
       69 GETTABLEKS                       R12 R16 K19 ["TARGET_WIDTH"]
       71 GETUPVAL                         R17 10
       72 GETTABLEKS                       R18 R2 K18 ["size"]
       74 GETTABLE                         R16 R17 R18
       75 GETTABLEKS                       R16 R16 K20 ["MIN"]
       77 MUL                              R13 R16 R15
       78 GETUPVAL                         R17 10
       79 GETTABLEKS                       R18 R2 K18 ["size"]
       81 GETTABLE                         R16 R17 R18
       82 GETTABLEKS                       R16 R16 K21 ["MAX"]
       84 MUL                              R14 R16 R15
       85 GETUPVAL                         R16 6
       86 GETTABLEKS                       R16 R16 K6 ["FoundationSideSheetNewWidthCalculation"]
       88 JUMPIFNOT                        R16 ; [+11]
       89 GETTABLEKS                       R17 R8 K22 ["X"]
       91 MUL                              R16 R17 R12
       92 FASTCALL3                        MATH_CLAMP R16 R13 R14
       94 MOVE                             R17 R13
       95 MOVE                             R18 R14
       96 GETIMPORT                        R15 K25 [math.clamp]
       98 CALL                             R15 3 1
       99 JUMP                             ; [+6]
      100 GETUPVAL                         R15 11
      101 JUMPIFNOT                        R11 ; [+2]
      102 LOADN                            R16 400
      103 JUMP                             ; [+1]
      104 LOADN                            R16 360
      105 CALL                             R15 1 1
      106 GETTABLEKS                       R16 R4 K26 ["Padding"]
      108 GETTABLEKS                       R16 R16 K27 ["Medium"]
      110 GETUPVAL                         R17 12
      111 GETTABLEKS                       R17 R17 K28 ["useRef"]
      113 LOADB                            R18 0
      114 CALL                             R17 1 1
      115 GETUPVAL                         R18 13
      116 LOADN                            R19 1
      117 NEWCLOSURE                       R20 P0
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R2
      120 CALL                             R18 2 2
      121 JUMPIFNOT                        R11 ; [+2]
      122 LOADN                            R22 0
      123 JUMP                             ; [+1]
      124 MOVE                             R22 R16
      125 ADD                              R21 R9 R22
      126 MINUS                            R20 R21
      127 GETUPVAL                         R21 13
      128 MOVE                             R22 R20
      129 CALL                             R21 1 2
      130 GETUPVAL                         R23 12
      131 GETTABLEKS                       R23 R23 K29 ["useBinding"]
      133 LOADB                            R24 0
      134 CALL                             R23 1 2
      135 GETUPVAL                         R25 12
      136 GETTABLEKS                       R25 R25 K29 ["useBinding"]
      138 LOADB                            R26 0
      139 CALL                             R25 1 2
      140 GETUPVAL                         R27 12
      141 GETTABLEKS                       R27 R27 K29 ["useBinding"]
      143 LOADN                            R28 0
      144 CALL                             R27 1 2
      145 GETUPVAL                         R29 12
      146 GETTABLEKS                       R29 R29 K28 ["useRef"]
      148 LOADNIL                          R30
      149 CALL                             R29 1 1
      150 GETUPVAL                         R30 12
      151 GETTABLEKS                       R30 R30 K30 ["useState"]
      153 LOADNIL                          R31
      154 CALL                             R30 1 2
      155 GETUPVAL                         R32 12
      156 GETTABLEKS                       R32 R32 K31 ["useEffect"]
      158 NEWCLOSURE                       R33 P1
      159 CAPTURE                          UPVAL U6
      160 CAPTURE                          REF R6
      161 CAPTURE                          VAL R22
      162 CAPTURE                          UPVAL U14
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R4
      166 NEWTABLE                         R34 0 2
      168 MOVE                             R35 R15
      169 GETUPVAL                         R37 6
      170 GETTABLEKS                       R37 R37 K4 ["FoundationSheetReducedMotion"]
      172 JUMPIFNOT                        R37 ; [+2]
      173 MOVE                             R36 R6
      174 JUMP                             ; [+1]
      175 LOADNIL                          R36
      176 SETLIST                          R34 R35 2 [1]
      178 CALL                             R32 2 0
      179 GETUPVAL                         R32 12
      180 GETTABLEKS                       R32 R32 K32 ["useCallback"]
      182 NEWCLOSURE                       R33 P2
      183 CAPTURE                          VAL R17
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          REF R6
      186 CAPTURE                          VAL R22
      187 CAPTURE                          UPVAL U14
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R4
      191 NEWTABLE                         R34 0 2
      193 MOVE                             R35 R20
      194 GETUPVAL                         R37 6
      195 GETTABLEKS                       R37 R37 K4 ["FoundationSheetReducedMotion"]
      197 JUMPIFNOT                        R37 ; [+2]
      198 MOVE                             R36 R6
      199 JUMP                             ; [+1]
      200 LOADNIL                          R36
      201 SETLIST                          R34 R35 2 [1]
      203 CALL                             R32 2 1
      204 GETUPVAL                         R33 12
      205 GETTABLEKS                       R33 R33 K33 ["useImperativeHandle"]
      207 GETTABLEKS                       R34 R2 K34 ["sheetRef"]
      209 NEWCLOSURE                       R35 P3
      210 CAPTURE                          VAL R32
      211 NEWTABLE                         R36 0 0
      213 CALL                             R33 3 0
      214 GETIMPORT                        R33 K37 [UDim2.new]
      216 LOADN                            R34 0
      217 JUMPIFNOT                        R11 ; [+2]
      218 MOVE                             R36 R9
      219 JUMP                             ; [+1]
      220 LOADN                            R36 0
      221 ADD                              R35 R15 R36
      222 LOADN                            R36 1
      223 JUMPIFNOT                        R11 ; [+2]
      224 LOADN                            R38 0
      225 JUMP                             ; [+2]
      226 MINUS                            R39 R16
      227 MULK                             R38 R39 K38 [2]
      228 ADD                              R37 R38 R10
      229 CALL                             R33 4 1
      230 NEWCLOSURE                       R36 P4
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R10
      234 NAMECALL                         R34 R21 K39 ["map"]
      236 CALL                             R34 2 1
      237 GETUPVAL                         R35 12
      238 GETTABLEKS                       R35 R35 K40 ["useMemo"]
      240 NEWCLOSURE                       R36 P5
      241 CAPTURE                          UPVAL U15
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R28
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R32
      249 CAPTURE                          UPVAL U16
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R31
      254 NEWTABLE                         R37 0 4
      256 GETTABLEKS                       R38 R2 K41 ["testId"]
      258 MOVE                             R39 R32
      259 MOVE                             R40 R30
      260 MOVE                             R41 R29
      261 SETLIST                          R37 R38 4 [1]
      263 CALL                             R35 2 1
      264 MOVE                             R36 R3
      265 JUMPIFNOT                        R36 ; [+278]
      266 GETUPVAL                         R36 17
      267 GETTABLEKS                       R36 R36 K42 ["createPortal"]
      269 GETUPVAL                         R37 12
      270 GETTABLEKS                       R37 R37 K43 ["createElement"]
      272 GETUPVAL                         R38 18
      273 DUPTABLE                         R39 K47 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      274 GETTABLEKS                       R40 R5 K48 ["zIndex"]
      276 SETTABLEKS                       R40 R39 K44 ["ZIndex"]
      278 LOADK                            R41 K49 ["%*--surface"]
      279 GETTABLEKS                       R43 R2 K41 ["testId"]
      281 NAMECALL                         R41 R41 K50 ["format"]
      283 CALL                             R41 2 1
      284 MOVE                             R40 R41
      285 SETTABLEKS                       R40 R39 K41 ["testId"]
      287 DUPTABLE                         R40 K53 [{"Sheet", "Shadow", "Backdrop"}]
      288 GETUPVAL                         R41 12
      289 GETTABLEKS                       R41 R41 K43 ["createElement"]
      291 GETUPVAL                         R42 18
      292 DUPTABLE                         R43 K65 [{["Size"], ["Position"], ["ClipsDescendants"] = True, ["ZIndex"] = 3, ["padding"], ["stateLayer"], ["onActivated"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      293 SETTABLEKS                       R33 R43 K54 ["Size"]
      295 SETTABLEKS                       R34 R43 K55 ["Position"]
      297 JUMPIFNOT                        R11 ; [+12]
      298 LOADN                            R45 0
      299 JUMPIFNOTLT                      R45 R9 ; [+10]
      301 DUPTABLE                         R44 K66 [{"right"}]
      302 GETIMPORT                        R45 K68 [UDim.new]
      304 LOADN                            R46 0
      305 MOVE                             R47 R9
      306 CALL                             R45 2 1
      307 SETTABLEKS                       R45 R44 K7 ["right"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R44
      311 SETTABLEKS                       R44 R43 K59 ["padding"]
      313 DUPTABLE                         R44 K70 [{"affordance"}]
      314 GETUPVAL                         R45 19
      315 GETTABLEKS                       R45 R45 K71 ["None"]
      317 SETTABLEKS                       R45 R44 K69 ["affordance"]
      319 SETTABLEKS                       R44 R43 K60 ["stateLayer"]
      321 GETUPVAL                         R44 15
      322 GETTABLEKS                       R44 R44 K72 ["noop"]
      324 SETTABLEKS                       R44 R43 K61 ["onActivated"]
      326 SETTABLEKS                       R1 R43 K62 ["ref"]
      328 GETUPVAL                         R44 20
      329 GETTABLEKS                       R44 R44 K73 ["nonSelectable"]
      331 SETTABLEKS                       R44 R43 K63 ["selection"]
      333 GETUPVAL                         R44 20
      334 GETTABLEKS                       R44 R44 K74 ["isolatedSelectionGroup"]
      336 SETTABLEKS                       R44 R43 K64 ["selectionGroup"]
      338 NEWTABLE                         R44 2 0
      340 LOADB                            R45 1
      341 SETTABLEKS                       R45 R44 K75 ["bg-surface-100 stroke-default stroke-standard"]
      343 NOT                              R45 R11
      344 SETTABLEKS                       R45 R44 K76 ["radius-large"]
      346 SETTABLEKS                       R44 R43 K45 ["tag"]
      348 GETTABLEKS                       R44 R2 K41 ["testId"]
      350 SETTABLEKS                       R44 R43 K41 ["testId"]
      352 DUPTABLE                         R44 K79 [{"Content", "CloseAffordance"}]
      353 GETUPVAL                         R45 12
      354 GETTABLEKS                       R45 R45 K43 ["createElement"]
      356 GETUPVAL                         R46 18
      357 DUPTABLE                         R47 K81 [{["tag"] = "size-full-full col items-center clip"}]
      358 GETUPVAL                         R48 12
      359 GETTABLEKS                       R48 R48 K43 ["createElement"]
      361 GETUPVAL                         R49 21
      362 GETTABLEKS                       R49 R49 K82 ["Provider"]
      364 DUPTABLE                         R50 K84 [{"value"}]
      365 SETTABLEKS                       R35 R50 K83 ["value"]
      367 GETUPVAL                         R51 12
      368 GETTABLEKS                       R51 R51 K43 ["createElement"]
      370 GETUPVAL                         R52 22
      371 DUPTABLE                         R53 K86 [{"owner"}]
      372 SETTABLEKS                       R5 R53 K85 ["owner"]
      374 GETTABLEKS                       R54 R2 K87 ["children"]
      376 CALL                             R51 3 -1
      377 CALL                             R48 -1 -1
      378 CALL                             R45 -1 1
      379 SETTABLEKS                       R45 R44 K77 ["Content"]
      381 GETUPVAL                         R45 12
      382 GETTABLEKS                       R45 R45 K43 ["createElement"]
      384 GETUPVAL                         R46 23
      385 DUPTABLE                         R47 K92 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      386 SETTABLEKS                       R32 R47 K61 ["onActivated"]
      388 SETTABLEKS                       R29 R47 K62 ["ref"]
      390 SETTABLEKS                       R30 R47 K88 ["NextSelectionDown"]
      392 GETUPVAL                         R48 24
      393 GETTABLEKS                       R48 R48 K93 ["Utility"]
      395 SETTABLEKS                       R48 R47 K89 ["variant"]
      397 GETIMPORT                        R48 K37 [UDim2.new]
      399 LOADN                            R49 1
      400 GETTABLEKS                       R51 R4 K94 ["Margin"]
      402 GETTABLEKS                       R51 R51 K13 ["Small"]
      404 MINUS                            R50 R51
      405 LOADN                            R51 0
      406 GETTABLEKS                       R52 R4 K94 ["Margin"]
      408 GETTABLEKS                       R52 R52 K13 ["Small"]
      410 CALL                             R48 4 1
      411 SETTABLEKS                       R48 R47 K55 ["Position"]
      413 GETIMPORT                        R48 K96 [Vector2.new]
      415 LOADN                            R49 1
      416 LOADN                            R50 0
      417 CALL                             R48 2 1
      418 SETTABLEKS                       R48 R47 K90 ["AnchorPoint"]
      420 DUPCLOSURE                       R50 K97 [PROTO_6]
      421 NAMECALL                         R48 R25 K39 ["map"]
      423 CALL                             R48 2 1
      424 SETTABLEKS                       R48 R47 K91 ["Visible"]
      426 LOADK                            R49 K98 ["%*--close-affordance"]
      427 GETTABLEKS                       R51 R2 K41 ["testId"]
      429 NAMECALL                         R49 R49 K50 ["format"]
      431 CALL                             R49 2 1
      432 MOVE                             R48 R49
      433 SETTABLEKS                       R48 R47 K41 ["testId"]
      435 CALL                             R45 2 1
      436 SETTABLEKS                       R45 R44 K78 ["CloseAffordance"]
      438 CALL                             R41 3 1
      439 SETTABLEKS                       R41 R40 K0 ["Sheet"]
      441 GETUPVAL                         R41 12
      442 GETTABLEKS                       R41 R41 K43 ["createElement"]
      444 GETUPVAL                         R42 25
      445 DUPTABLE                         R43 K102 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      446 GETUPVAL                         R44 26
      447 SETTABLEKS                       R44 R43 K99 ["Image"]
      449 GETIMPORT                        R45 K104 [UDim2.fromOffset]
      451 GETUPVAL                         R47 27
      452 MULK                             R46 R47 K38 [2]
      453 GETUPVAL                         R48 27
      454 MULK                             R47 R48 K38 [2]
      455 CALL                             R45 2 1
      456 ADD                              R44 R33 R45
      457 SETTABLEKS                       R44 R43 K54 ["Size"]
      459 DUPCLOSURE                       R46 K105 [PROTO_7]
      460 CAPTURE                          UPVAL U27
      461 NAMECALL                         R44 R34 K39 ["map"]
      463 CALL                             R44 2 1
      464 SETTABLEKS                       R44 R43 K55 ["Position"]
      466 DUPTABLE                         R44 K108 [{["center"], ["scale"] = 2}]
      467 GETIMPORT                        R45 K110 [Rect.new]
      469 GETUPVAL                         R46 27
      470 GETUPVAL                         R47 27
      471 GETUPVAL                         R49 27
      472 ADDK                             R48 R49 K111 [1]
      473 GETUPVAL                         R50 27
      474 ADDK                             R49 R50 K111 [1]
      475 CALL                             R45 4 1
      476 SETTABLEKS                       R45 R44 K106 ["center"]
      478 SETTABLEKS                       R44 R43 K100 ["slice"]
      480 GETTABLEKS                       R44 R4 K112 ["Color"]
      482 GETTABLEKS                       R44 R44 K113 ["Extended"]
      484 GETTABLEKS                       R44 R44 K114 ["Black"]
      486 GETTABLEKS                       R44 R44 K115 ["Black_10"]
      488 SETTABLEKS                       R44 R43 K101 ["imageStyle"]
      490 CALL                             R41 2 1
      491 SETTABLEKS                       R41 R40 K51 ["Shadow"]
      493 GETUPVAL                         R41 12
      494 GETTABLEKS                       R41 R41 K43 ["createElement"]
      496 GETUPVAL                         R42 18
      497 DUPTABLE                         R43 K117 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      498 GETIMPORT                        R44 K119 [UDim2.fromScale]
      500 LOADN                            R45 2
      501 LOADN                            R46 2
      502 CALL                             R44 2 1
      503 SETTABLEKS                       R44 R43 K54 ["Size"]
      505 GETIMPORT                        R44 K119 [UDim2.fromScale]
      507 LOADK                            R45 K120 [-0.5]
      508 LOADK                            R46 K120 [-0.5]
      509 CALL                             R44 2 1
      510 SETTABLEKS                       R44 R43 K55 ["Position"]
      512 DUPTABLE                         R44 K70 [{"affordance"}]
      513 GETUPVAL                         R45 19
      514 GETTABLEKS                       R45 R45 K71 ["None"]
      516 SETTABLEKS                       R45 R44 K69 ["affordance"]
      518 SETTABLEKS                       R44 R43 K60 ["stateLayer"]
      520 NEWCLOSURE                       R46 P8
      521 CAPTURE                          VAL R4
      522 NAMECALL                         R44 R18 K39 ["map"]
      524 CALL                             R44 2 1
      525 SETTABLEKS                       R44 R43 K116 ["backgroundStyle"]
      527 SETTABLEKS                       R32 R43 K61 ["onActivated"]
      529 LOADK                            R45 K121 ["%*--backdrop"]
      530 GETTABLEKS                       R47 R2 K41 ["testId"]
      532 NAMECALL                         R45 R45 K50 ["format"]
      534 CALL                             R45 2 1
      535 MOVE                             R44 R45
      536 SETTABLEKS                       R44 R43 K41 ["testId"]
      538 CALL                             R41 2 1
      539 SETTABLEKS                       R41 R40 K52 ["Backdrop"]
      541 CALL                             R37 3 1
      542 MOVE                             R38 R3
      543 CALL                             R36 2 1
      544 CLOSEUPVALS                      R6
      545 RETURN                           R36 1

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
      207 DUPTABLE                         R31 K50 [{["TARGET_WIDTH"] = 0.4, ["MIN"] = 360, ["MAX"] = 440}]
      208 SETTABLE                         R31 R29 R30
      209 GETTABLEKS                       R30 R21 K51 ["Large"]
      211 DUPTABLE                         R31 K54 [{["TARGET_WIDTH"] = 0.5, ["MIN"] = 440, ["MAX"] = 640}]
      212 SETTABLE                         R31 R29 R30
      213 DUPTABLE                         R30 K58 [{["testId"] = "--foundation-sheet", ["size"]}]
      214 GETTABLEKS                       R32 R25 K59 ["FoundationSideSheetNewWidthCalculation"]
      216 JUMPIFNOT                        R32 ; [+3]
      217 GETTABLEKS                       R31 R21 K43 ["Medium"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R31
      221 SETTABLEKS                       R31 R30 K57 ["size"]
      223 GETTABLEKS                       R31 R9 K60 ["SHADOW_IMAGE"]
      225 GETTABLEKS                       R32 R9 K61 ["SHADOW_SIZE"]
      227 DUPCLOSURE                       R33 K62 [PROTO_9]
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R28
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R6
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R26
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R32
      256 GETTABLEKS                       R34 R4 K63 ["memo"]
      258 GETTABLEKS                       R35 R4 K64 ["forwardRef"]
      260 MOVE                             R36 R33
      261 CALL                             R35 1 -1
      262 CALL                             R34 -1 -1
      263 RETURN                           R34 -1
