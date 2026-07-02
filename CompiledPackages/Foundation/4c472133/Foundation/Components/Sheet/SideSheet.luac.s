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
        0 DUPTABLE                         R0 K25 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["hasFullBleed"], ["fullBleedHeight"], ["setFullBleedHeight"], ["closeSheet"], ["hasRadius"], ["sheetType"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K26 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K26 ["noop"]
       15 SETTABLEKS                       R1 R0 K6 ["setSheetHeightAvailable"]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K11 ["innerScrollY"]
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K12 ["setInnerScrollY"]
       23 GETUPVAL                         R1 5
       24 SETTABLEKS                       R1 R0 K13 ["hasHeader"]
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K14 ["setHasHeader"]
       29 GETUPVAL                         R2 7
       30 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       32 JUMPIFNOT                        R2 ; [+2]
       33 GETUPVAL                         R1 8
       34 JUMP                             ; [+1]
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K15 ["hasFullBleed"]
       38 GETUPVAL                         R2 7
       39 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       41 JUMPIFNOT                        R2 ; [+2]
       42 GETUPVAL                         R1 9
       43 JUMP                             ; [+1]
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K16 ["fullBleedHeight"]
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       50 JUMPIFNOT                        R2 ; [+2]
       51 GETUPVAL                         R1 10
       52 JUMP                             ; [+1]
       53 LOADNIL                          R1
       54 SETTABLEKS                       R1 R0 K17 ["setFullBleedHeight"]
       56 GETUPVAL                         R1 11
       57 SETTABLEKS                       R1 R0 K18 ["closeSheet"]
       59 GETUPVAL                         R2 7
       60 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       62 JUMPIFNOT                        R2 ; [+3]
       63 GETUPVAL                         R2 12
       64 NOT                              R1 R2
       65 JUMP                             ; [+1]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K19 ["hasRadius"]
       69 GETUPVAL                         R1 13
       70 GETTABLEKS                       R1 R1 K28 ["Side"]
       72 SETTABLEKS                       R1 R0 K20 ["sheetType"]
       74 GETUPVAL                         R1 14
       75 GETTABLEKS                       R1 R1 K21 ["testId"]
       77 SETTABLEKS                       R1 R0 K21 ["testId"]
       79 GETUPVAL                         R1 15
       80 SETTABLEKS                       R1 R0 K22 ["closeAffordanceRef"]
       82 GETUPVAL                         R1 16
       83 SETTABLEKS                       R1 R0 K23 ["contentStartRef"]
       85 GETUPVAL                         R1 17
       86 SETTABLEKS                       R1 R0 K24 ["setContentStartRef"]
       88 RETURN                           R0 1

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
       14 GETUPVAL                         R6 6
       15 CALL                             R6 0 1
       16 GETTABLEKS                       R7 R6 K4 ["reducedMotion"]
       18 GETUPVAL                         R8 7
       19 MOVE                             R9 R3
       20 CALL                             R8 1 1
       21 GETUPVAL                         R10 8
       22 GETTABLEKS                       R10 R10 K5 ["FoundationSideSheetNewWidthCalculation"]
       24 JUMPIFNOT                        R10 ; [+3]
       25 GETUPVAL                         R9 9
       26 CALL                             R9 0 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R9
       29 GETTABLEKS                       R10 R8 K6 ["right"]
       31 GETTABLEKS                       R12 R2 K7 ["displaySize"]
       33 GETIMPORT                        R13 K11 [Enum.DisplaySize.Small]
       35 JUMPIFEQ                         R12 R13 ; [+2]
       37 LOADB                            R11 0 +1
       38 LOADB                            R11 1
       39 LOADNIL                          R12
       40 LOADNIL                          R13
       41 LOADNIL                          R14
       42 GETUPVAL                         R15 8
       43 GETTABLEKS                       R15 R15 K5 ["FoundationSideSheetNewWidthCalculation"]
       45 JUMPIFNOT                        R15 ; [+26]
       46 GETTABLEKS                       R15 R4 K12 ["Config"]
       48 GETTABLEKS                       R15 R15 K13 ["UI"]
       50 GETTABLEKS                       R15 R15 K14 ["Scale"]
       52 GETUPVAL                         R17 10
       53 GETTABLEKS                       R18 R2 K15 ["size"]
       55 GETTABLE                         R16 R17 R18
       56 GETTABLEKS                       R12 R16 K16 ["TARGET_WIDTH"]
       58 GETUPVAL                         R17 10
       59 GETTABLEKS                       R18 R2 K15 ["size"]
       61 GETTABLE                         R16 R17 R18
       62 GETTABLEKS                       R16 R16 K17 ["MIN"]
       64 MUL                              R13 R16 R15
       65 GETUPVAL                         R17 10
       66 GETTABLEKS                       R18 R2 K15 ["size"]
       68 GETTABLE                         R16 R17 R18
       69 GETTABLEKS                       R16 R16 K18 ["MAX"]
       71 MUL                              R14 R16 R15
       72 GETUPVAL                         R16 8
       73 GETTABLEKS                       R16 R16 K5 ["FoundationSideSheetNewWidthCalculation"]
       75 JUMPIFNOT                        R16 ; [+11]
       76 GETTABLEKS                       R17 R9 K19 ["X"]
       78 MUL                              R16 R17 R12
       79 FASTCALL3                        MATH_CLAMP R16 R13 R14
       81 MOVE                             R17 R13
       82 MOVE                             R18 R14
       83 GETIMPORT                        R15 K22 [math.clamp]
       85 CALL                             R15 3 1
       86 JUMP                             ; [+6]
       87 GETUPVAL                         R15 11
       88 JUMPIFNOT                        R11 ; [+2]
       89 LOADN                            R16 400
       90 JUMP                             ; [+1]
       91 LOADN                            R16 360
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R4 K23 ["Padding"]
       95 GETTABLEKS                       R16 R16 K24 ["Medium"]
       97 GETUPVAL                         R17 12
       98 GETTABLEKS                       R17 R17 K25 ["useRef"]
      100 LOADB                            R18 0
      101 CALL                             R17 1 1
      102 GETUPVAL                         R18 13
      103 LOADN                            R19 1
      104 NEWCLOSURE                       R20 P0
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R2
      107 CALL                             R18 2 2
      108 JUMPIFNOT                        R11 ; [+2]
      109 LOADN                            R22 0
      110 JUMP                             ; [+1]
      111 MOVE                             R22 R16
      112 ADD                              R21 R10 R22
      113 MINUS                            R20 R21
      114 GETUPVAL                         R21 13
      115 MOVE                             R22 R20
      116 CALL                             R21 1 2
      117 GETUPVAL                         R23 12
      118 GETTABLEKS                       R23 R23 K26 ["useBinding"]
      120 LOADB                            R24 0
      121 CALL                             R23 1 2
      122 GETUPVAL                         R25 12
      123 GETTABLEKS                       R25 R25 K26 ["useBinding"]
      125 LOADB                            R26 0
      126 CALL                             R25 1 2
      127 LOADNIL                          R27
      128 LOADNIL                          R28
      129 LOADNIL                          R29
      130 GETUPVAL                         R30 8
      131 GETTABLEKS                       R30 R30 K27 ["FoundationSheetFullBleed"]
      133 JUMPIFNOT                        R30 ; [+12]
      134 GETUPVAL                         R30 14
      135 GETTABLEKS                       R31 R2 K28 ["children"]
      137 CALL                             R30 1 1
      138 MOVE                             R27 R30
      139 GETUPVAL                         R30 12
      140 GETTABLEKS                       R30 R30 K26 ["useBinding"]
      142 LOADN                            R31 0
      143 CALL                             R30 1 2
      144 MOVE                             R28 R30
      145 MOVE                             R29 R31
      146 GETUPVAL                         R30 12
      147 GETTABLEKS                       R30 R30 K26 ["useBinding"]
      149 LOADN                            R31 0
      150 CALL                             R30 1 2
      151 GETUPVAL                         R32 12
      152 GETTABLEKS                       R32 R32 K25 ["useRef"]
      154 LOADNIL                          R33
      155 CALL                             R32 1 1
      156 GETUPVAL                         R33 12
      157 GETTABLEKS                       R33 R33 K29 ["useState"]
      159 LOADNIL                          R34
      160 CALL                             R33 1 2
      161 GETUPVAL                         R35 12
      162 GETTABLEKS                       R35 R35 K30 ["useEffect"]
      164 NEWCLOSURE                       R36 P1
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R22
      167 CAPTURE                          UPVAL U15
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R4
      171 NEWTABLE                         R37 0 2
      173 MOVE                             R38 R15
      174 MOVE                             R39 R7
      175 SETLIST                          R37 R38 2 [1]
      177 CALL                             R35 2 0
      178 GETUPVAL                         R35 12
      179 GETTABLEKS                       R35 R35 K31 ["useCallback"]
      181 NEWCLOSURE                       R36 P2
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R22
      185 CAPTURE                          UPVAL U15
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R4
      189 NEWTABLE                         R37 0 2
      191 MOVE                             R38 R20
      192 MOVE                             R39 R7
      193 SETLIST                          R37 R38 2 [1]
      195 CALL                             R35 2 1
      196 GETUPVAL                         R36 12
      197 GETTABLEKS                       R36 R36 K32 ["useImperativeHandle"]
      199 GETTABLEKS                       R37 R2 K33 ["sheetRef"]
      201 NEWCLOSURE                       R38 P3
      202 CAPTURE                          VAL R35
      203 NEWTABLE                         R39 0 0
      205 CALL                             R36 3 0
      206 GETIMPORT                        R36 K36 [UDim2.new]
      208 LOADN                            R37 0
      209 JUMPIFNOT                        R11 ; [+2]
      210 MOVE                             R39 R10
      211 JUMP                             ; [+1]
      212 LOADN                            R39 0
      213 ADD                              R38 R15 R39
      214 LOADN                            R39 1
      215 JUMPIFNOT                        R11 ; [+2]
      216 LOADN                            R40 0
      217 JUMP                             ; [+2]
      218 MINUS                            R41 R16
      219 MULK                             R40 R41 K37 [2]
      220 CALL                             R36 4 1
      221 NEWCLOSURE                       R39 P4
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R16
      224 NAMECALL                         R37 R21 K38 ["map"]
      226 CALL                             R37 2 1
      227 GETUPVAL                         R38 12
      228 GETTABLEKS                       R38 R38 K39 ["useMemo"]
      230 NEWCLOSURE                       R39 P5
      231 CAPTURE                          UPVAL U16
      232 CAPTURE                          VAL R23
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R30
      235 CAPTURE                          VAL R31
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R26
      238 CAPTURE                          UPVAL U8
      239 CAPTURE                          REF R27
      240 CAPTURE                          REF R28
      241 CAPTURE                          REF R29
      242 CAPTURE                          VAL R35
      243 CAPTURE                          VAL R11
      244 CAPTURE                          UPVAL U17
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R33
      248 CAPTURE                          VAL R34
      249 NEWTABLE                         R40 0 6
      251 GETTABLEKS                       R41 R2 K40 ["testId"]
      253 MOVE                             R42 R35
      254 MOVE                             R43 R33
      255 MOVE                             R44 R32
      256 MOVE                             R45 R27
      257 GETUPVAL                         R47 8
      258 GETTABLEKS                       R47 R47 K27 ["FoundationSheetFullBleed"]
      260 JUMPIFNOT                        R47 ; [+2]
      261 MOVE                             R46 R11
      262 JUMP                             ; [+1]
      263 LOADNIL                          R46
      264 SETLIST                          R40 R41 6 [1]
      266 CALL                             R38 2 1
      267 MOVE                             R39 R3
      268 JUMPIFNOT                        R39 ; [+287]
      269 GETUPVAL                         R39 18
      270 GETTABLEKS                       R39 R39 K41 ["createPortal"]
      272 GETUPVAL                         R40 12
      273 GETTABLEKS                       R40 R40 K42 ["createElement"]
      275 GETUPVAL                         R41 19
      276 DUPTABLE                         R42 K46 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      277 GETTABLEKS                       R43 R5 K47 ["zIndex"]
      279 SETTABLEKS                       R43 R42 K43 ["ZIndex"]
      281 LOADK                            R44 K48 ["%*--surface"]
      282 GETTABLEKS                       R46 R2 K40 ["testId"]
      284 NAMECALL                         R44 R44 K49 ["format"]
      286 CALL                             R44 2 1
      287 MOVE                             R43 R44
      288 SETTABLEKS                       R43 R42 K40 ["testId"]
      290 DUPTABLE                         R43 K52 [{"Sheet", "Shadow", "Backdrop"}]
      291 GETUPVAL                         R44 12
      292 GETTABLEKS                       R44 R44 K42 ["createElement"]
      294 GETUPVAL                         R45 19
      295 DUPTABLE                         R46 K64 [{["Size"], ["Position"], ["ClipsDescendants"] = True, ["ZIndex"] = 3, ["padding"], ["stateLayer"], ["onActivated"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      296 SETTABLEKS                       R36 R46 K53 ["Size"]
      298 SETTABLEKS                       R37 R46 K54 ["Position"]
      300 JUMPIFNOT                        R11 ; [+12]
      301 LOADN                            R48 0
      302 JUMPIFNOTLT                      R48 R10 ; [+10]
      304 DUPTABLE                         R47 K65 [{"right"}]
      305 GETIMPORT                        R48 K67 [UDim.new]
      307 LOADN                            R49 0
      308 MOVE                             R50 R10
      309 CALL                             R48 2 1
      310 SETTABLEKS                       R48 R47 K6 ["right"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R47
      314 SETTABLEKS                       R47 R46 K58 ["padding"]
      316 DUPTABLE                         R47 K69 [{"affordance"}]
      317 GETUPVAL                         R48 20
      318 GETTABLEKS                       R48 R48 K70 ["None"]
      320 SETTABLEKS                       R48 R47 K68 ["affordance"]
      322 SETTABLEKS                       R47 R46 K59 ["stateLayer"]
      324 GETUPVAL                         R47 16
      325 GETTABLEKS                       R47 R47 K71 ["noop"]
      327 SETTABLEKS                       R47 R46 K60 ["onActivated"]
      329 SETTABLEKS                       R1 R46 K61 ["ref"]
      331 GETUPVAL                         R47 21
      332 GETTABLEKS                       R47 R47 K72 ["nonSelectable"]
      334 SETTABLEKS                       R47 R46 K62 ["selection"]
      336 GETUPVAL                         R47 21
      337 GETTABLEKS                       R47 R47 K73 ["isolatedSelectionGroup"]
      339 SETTABLEKS                       R47 R46 K63 ["selectionGroup"]
      341 NEWTABLE                         R47 2 0
      343 LOADB                            R48 1
      344 SETTABLEKS                       R48 R47 K74 ["stroke-standard stroke-default bg-surface-100"]
      346 NOT                              R48 R11
      347 SETTABLEKS                       R48 R47 K75 ["radius-large"]
      349 SETTABLEKS                       R47 R46 K44 ["tag"]
      351 GETTABLEKS                       R47 R2 K40 ["testId"]
      353 SETTABLEKS                       R47 R46 K40 ["testId"]
      355 DUPTABLE                         R47 K78 [{"Content", "CloseAffordance"}]
      356 GETUPVAL                         R48 12
      357 GETTABLEKS                       R48 R48 K42 ["createElement"]
      359 GETUPVAL                         R49 19
      360 DUPTABLE                         R50 K80 [{["tag"] = "col items-center size-full-full clip"}]
      361 GETUPVAL                         R51 12
      362 GETTABLEKS                       R51 R51 K42 ["createElement"]
      364 GETUPVAL                         R52 22
      365 GETTABLEKS                       R52 R52 K81 ["Provider"]
      367 DUPTABLE                         R53 K83 [{"value"}]
      368 SETTABLEKS                       R38 R53 K82 ["value"]
      370 GETUPVAL                         R54 12
      371 GETTABLEKS                       R54 R54 K42 ["createElement"]
      373 GETUPVAL                         R55 23
      374 DUPTABLE                         R56 K85 [{"owner"}]
      375 SETTABLEKS                       R5 R56 K84 ["owner"]
      377 GETTABLEKS                       R57 R2 K28 ["children"]
      379 CALL                             R54 3 -1
      380 CALL                             R51 -1 -1
      381 CALL                             R48 -1 1
      382 SETTABLEKS                       R48 R47 K76 ["Content"]
      384 GETUPVAL                         R48 12
      385 GETTABLEKS                       R48 R48 K42 ["createElement"]
      387 GETUPVAL                         R49 24
      388 DUPTABLE                         R50 K90 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      389 SETTABLEKS                       R35 R50 K60 ["onActivated"]
      391 SETTABLEKS                       R32 R50 K61 ["ref"]
      393 SETTABLEKS                       R33 R50 K86 ["NextSelectionDown"]
      395 GETUPVAL                         R52 8
      396 GETTABLEKS                       R52 R52 K27 ["FoundationSheetFullBleed"]
      398 JUMPIFNOT                        R52 ; [+5]
      399 JUMPIFNOT                        R27 ; [+4]
      400 GETUPVAL                         R51 25
      401 GETTABLEKS                       R51 R51 K91 ["OverMedia"]
      403 JUMP                             ; [+3]
      404 GETUPVAL                         R51 25
      405 GETTABLEKS                       R51 R51 K92 ["Utility"]
      407 SETTABLEKS                       R51 R50 K87 ["variant"]
      409 GETIMPORT                        R51 K36 [UDim2.new]
      411 LOADN                            R52 1
      412 GETTABLEKS                       R54 R4 K93 ["Margin"]
      414 GETTABLEKS                       R54 R54 K10 ["Small"]
      416 MINUS                            R53 R54
      417 LOADN                            R54 0
      418 GETTABLEKS                       R55 R4 K93 ["Margin"]
      420 GETTABLEKS                       R55 R55 K10 ["Small"]
      422 CALL                             R51 4 1
      423 SETTABLEKS                       R51 R50 K54 ["Position"]
      425 GETIMPORT                        R51 K95 [Vector2.new]
      427 LOADN                            R52 1
      428 LOADN                            R53 0
      429 CALL                             R51 2 1
      430 SETTABLEKS                       R51 R50 K88 ["AnchorPoint"]
      432 DUPCLOSURE                       R53 K96 [PROTO_6]
      433 NAMECALL                         R51 R25 K38 ["map"]
      435 CALL                             R51 2 1
      436 SETTABLEKS                       R51 R50 K89 ["Visible"]
      438 LOADK                            R52 K97 ["%*--close-affordance"]
      439 GETTABLEKS                       R54 R2 K40 ["testId"]
      441 NAMECALL                         R52 R52 K49 ["format"]
      443 CALL                             R52 2 1
      444 MOVE                             R51 R52
      445 SETTABLEKS                       R51 R50 K40 ["testId"]
      447 CALL                             R48 2 1
      448 SETTABLEKS                       R48 R47 K77 ["CloseAffordance"]
      450 CALL                             R44 3 1
      451 SETTABLEKS                       R44 R43 K0 ["Sheet"]
      453 GETUPVAL                         R44 12
      454 GETTABLEKS                       R44 R44 K42 ["createElement"]
      456 GETUPVAL                         R45 26
      457 DUPTABLE                         R46 K101 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      458 GETUPVAL                         R47 27
      459 SETTABLEKS                       R47 R46 K98 ["Image"]
      461 GETIMPORT                        R48 K103 [UDim2.fromOffset]
      463 GETUPVAL                         R50 28
      464 MULK                             R49 R50 K37 [2]
      465 GETUPVAL                         R51 28
      466 MULK                             R50 R51 K37 [2]
      467 CALL                             R48 2 1
      468 ADD                              R47 R36 R48
      469 SETTABLEKS                       R47 R46 K53 ["Size"]
      471 DUPCLOSURE                       R49 K104 [PROTO_7]
      472 CAPTURE                          UPVAL U28
      473 NAMECALL                         R47 R37 K38 ["map"]
      475 CALL                             R47 2 1
      476 SETTABLEKS                       R47 R46 K54 ["Position"]
      478 DUPTABLE                         R47 K107 [{["center"], ["scale"] = 2}]
      479 GETIMPORT                        R48 K109 [Rect.new]
      481 GETUPVAL                         R49 28
      482 GETUPVAL                         R50 28
      483 GETUPVAL                         R52 28
      484 ADDK                             R51 R52 K110 [1]
      485 GETUPVAL                         R53 28
      486 ADDK                             R52 R53 K110 [1]
      487 CALL                             R48 4 1
      488 SETTABLEKS                       R48 R47 K105 ["center"]
      490 SETTABLEKS                       R47 R46 K99 ["slice"]
      492 GETTABLEKS                       R47 R4 K111 ["Color"]
      494 GETTABLEKS                       R47 R47 K112 ["Extended"]
      496 GETTABLEKS                       R47 R47 K113 ["Black"]
      498 GETTABLEKS                       R47 R47 K114 ["Black_10"]
      500 SETTABLEKS                       R47 R46 K100 ["imageStyle"]
      502 CALL                             R44 2 1
      503 SETTABLEKS                       R44 R43 K50 ["Shadow"]
      505 GETUPVAL                         R44 12
      506 GETTABLEKS                       R44 R44 K42 ["createElement"]
      508 GETUPVAL                         R45 19
      509 DUPTABLE                         R46 K116 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      510 GETIMPORT                        R47 K118 [UDim2.fromScale]
      512 LOADN                            R48 2
      513 LOADN                            R49 2
      514 CALL                             R47 2 1
      515 SETTABLEKS                       R47 R46 K53 ["Size"]
      517 GETIMPORT                        R47 K118 [UDim2.fromScale]
      519 LOADK                            R48 K119 [-0.5]
      520 LOADK                            R49 K119 [-0.5]
      521 CALL                             R47 2 1
      522 SETTABLEKS                       R47 R46 K54 ["Position"]
      524 DUPTABLE                         R47 K69 [{"affordance"}]
      525 GETUPVAL                         R48 20
      526 GETTABLEKS                       R48 R48 K70 ["None"]
      528 SETTABLEKS                       R48 R47 K68 ["affordance"]
      530 SETTABLEKS                       R47 R46 K59 ["stateLayer"]
      532 NEWCLOSURE                       R49 P8
      533 CAPTURE                          VAL R4
      534 NAMECALL                         R47 R18 K38 ["map"]
      536 CALL                             R47 2 1
      537 SETTABLEKS                       R47 R46 K115 ["backgroundStyle"]
      539 SETTABLEKS                       R35 R46 K60 ["onActivated"]
      541 LOADK                            R48 K120 ["%*--backdrop"]
      542 GETTABLEKS                       R50 R2 K40 ["testId"]
      544 NAMECALL                         R48 R48 K49 ["format"]
      546 CALL                             R48 2 1
      547 MOVE                             R47 R48
      548 SETTABLEKS                       R47 R46 K40 ["testId"]
      550 CALL                             R44 2 1
      551 SETTABLEKS                       R44 R43 K51 ["Backdrop"]
      553 CALL                             R40 3 1
      554 MOVE                             R41 R3
      555 CALL                             R39 2 1
      556 CLOSEUPVALS                      R27
      557 RETURN                           R39 1

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
      216 DUPTABLE                         R32 K51 [{["TARGET_WIDTH"] = 0.4, ["MIN"] = 360, ["MAX"] = 440}]
      217 SETTABLE                         R32 R30 R31
      218 GETTABLEKS                       R31 R21 K52 ["Large"]
      220 DUPTABLE                         R32 K55 [{["TARGET_WIDTH"] = 0.5, ["MIN"] = 440, ["MAX"] = 640}]
      221 SETTABLE                         R32 R30 R31
      222 DUPTABLE                         R31 K59 [{["testId"] = "--foundation-sheet", ["size"]}]
      223 GETTABLEKS                       R33 R26 K60 ["FoundationSideSheetNewWidthCalculation"]
      225 JUMPIFNOT                        R33 ; [+3]
      226 GETTABLEKS                       R32 R21 K44 ["Medium"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R32
      230 SETTABLEKS                       R32 R31 K58 ["size"]
      232 GETTABLEKS                       R32 R9 K61 ["SHADOW_IMAGE"]
      234 GETTABLEKS                       R33 R9 K62 ["SHADOW_SIZE"]
      236 DUPCLOSURE                       R34 K63 [PROTO_9]
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R29
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R7
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R10
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R27
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R33
      266 GETTABLEKS                       R35 R4 K64 ["memo"]
      268 GETTABLEKS                       R36 R4 K65 ["forwardRef"]
      270 MOVE                             R37 R34
      271 CALL                             R36 1 -1
      272 CALL                             R35 -1 -1
      273 RETURN                           R35 -1
