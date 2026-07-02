PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["centerSheetHeight"]
        3 JUMPIFNOT                        R1 ; [+33]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["centerSheetHeight"]
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+12]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["centerSheetHeight"]
       13 LOADN                            R2 1
       14 JUMPIFNOTLE                      R1 R2 ; [+6]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["centerSheetHeight"]
       19 MUL                              R1 R0 R2
       20 RETURN                           R1 1
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["centerSheetHeight"]
       24 LOADN                            R2 1
       25 JUMPIFNOTLT                      R2 R1 ; [+11]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["centerSheetHeight"]
       30 FASTCALL2                        MATH_MIN R2 R0 ; [+4]
       32 MOVE                             R3 R0
       33 GETIMPORT                        R1 K3 [math.min]
       35 CALL                             R1 2 1
       36 RETURN                           R1 1
       37 LOADNIL                          R1
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 LOADN                            R2 0
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K4 ["Ease"]
        9 GETTABLEKS                       R4 R4 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K6 ["Time"]
       16 GETTABLEKS                       R4 R4 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K6 ["Time"]
       31 GETTABLEKS                       R4 R4 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["ease"]
        9 GETUPVAL                         R2 3
       10 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K5 ["Ease"]
       14 GETTABLEKS                       R4 R4 K6 ["StandardIn"]
       16 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K7 ["Time"]
       21 GETTABLEKS                       R4 R4 K8 ["Time_100"]
       23 SETTABLEKS                       R4 R3 K3 ["duration"]
       25 CALL                             R1 2 -1
       26 CALL                             R0 -1 0
       27 GETUPVAL                         R0 5
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K1 ["ease"]
       31 LOADN                            R2 1
       32 DUPTABLE                         R3 K9 [{"duration"}]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K7 ["Time"]
       36 GETTABLEKS                       R4 R4 K8 ["Time_100"]
       38 SETTABLEKS                       R4 R3 K3 ["duration"]
       40 CALL                             R1 2 -1
       41 CALL                             R0 -1 0
       42 GETUPVAL                         R0 6
       43 LOADB                            R1 1
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 0
       46 LOADB                            R1 1
       47 SETTABLEKS                       R1 R0 K0 ["current"]
       49 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K20 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetContentHeight"], ["setSheetContentHeight"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["testId"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K21 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K5 ["sheetContentHeight"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K21 ["noop"]
       18 SETTABLEKS                       R1 R0 K6 ["setSheetContentHeight"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K21 ["noop"]
       23 SETTABLEKS                       R1 R0 K8 ["setSheetHeightAvailable"]
       25 GETUPVAL                         R1 4
       26 SETTABLEKS                       R1 R0 K13 ["innerScrollY"]
       28 GETUPVAL                         R1 5
       29 SETTABLEKS                       R1 R0 K14 ["setInnerScrollY"]
       31 GETUPVAL                         R1 6
       32 SETTABLEKS                       R1 R0 K15 ["hasHeader"]
       34 GETUPVAL                         R1 7
       35 SETTABLEKS                       R1 R0 K16 ["setHasHeader"]
       37 GETUPVAL                         R1 8
       38 SETTABLEKS                       R1 R0 K17 ["closeSheet"]
       40 GETUPVAL                         R1 9
       41 GETTABLEKS                       R1 R1 K22 ["Center"]
       43 SETTABLEKS                       R1 R0 K18 ["sheetType"]
       45 GETUPVAL                         R1 10
       46 GETTABLEKS                       R1 R1 K19 ["testId"]
       48 SETTABLEKS                       R1 R0 K19 ["testId"]
       50 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADK                            R4 K3 [0.5]
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["Margin"]
        3 GETTABLEKS                       R2 R2 K2 ["Medium"]
        5 MULK                             R1 R2 K0 [2]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R5 R5 K4 ["Y"]
       11 SUB                              R4 R5 R1
       12 GETUPVAL                         R5 2
       13 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       15 GETIMPORT                        R3 K7 [math.min]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim2.new]
        3 LOADN                            R2 1
        4 LOADN                            R3 0
        5 LOADN                            R4 0
        6 MOVE                             R5 R0
        7 CALL                             R1 4 1
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADK                            R2 K3 [∞]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim2.new]
        3 LOADN                            R2 1
        4 LOADN                            R3 0
        5 LOADN                            R4 0
        6 MOVE                             R5 R0
        7 CALL                             R1 4 1
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_14:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R4 0
        4 MULK                             R3 R4 K3 [2]
        5 LOADN                            R4 0
        6 GETUPVAL                         R7 0
        7 MULK                             R6 R7 K3 [2]
        8 ADD                              R5 R0 R6
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_16:
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

PROTO_17:
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
       15 GETUPVAL                         R8 7
       16 GETTABLEKS                       R9 R2 K4 ["size"]
       18 GETTABLE                         R7 R8 R9
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 6
       21 LOADN                            R8 600
       22 CALL                             R7 1 1
       23 GETTABLEKS                       R8 R4 K5 ["Size"]
       25 GETTABLEKS                       R8 R8 K6 ["Size_800"]
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 GETUPVAL                         R11 8
       30 GETTABLEKS                       R11 R11 K7 ["FoundationAddHeightPropToCenterSheet"]
       32 JUMPIFNOT                        R11 ; [+7]
       33 GETUPVAL                         R11 9
       34 GETTABLEKS                       R11 R11 K8 ["useBinding"]
       36 MOVE                             R12 R7
       37 CALL                             R11 1 2
       38 MOVE                             R9 R11
       39 MOVE                             R10 R12
       40 GETUPVAL                         R12 8
       41 GETTABLEKS                       R12 R12 K7 ["FoundationAddHeightPropToCenterSheet"]
       43 JUMPIFNOT                        R12 ; [+7]
       44 JUMPIFNOT                        R9 ; [+6]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R2
       47 NAMECALL                         R11 R9 K9 ["map"]
       49 CALL                             R11 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R11
       52 GETUPVAL                         R12 9
       53 GETTABLEKS                       R12 R12 K10 ["useState"]
       55 LOADB                            R13 1
       56 CALL                             R12 1 2
       57 GETUPVAL                         R14 9
       58 GETTABLEKS                       R14 R14 K11 ["useRef"]
       60 LOADB                            R15 0
       61 CALL                             R14 1 1
       62 GETUPVAL                         R15 10
       63 LOADN                            R16 1
       64 NEWCLOSURE                       R17 P1
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R2
       67 CALL                             R15 2 2
       68 GETUPVAL                         R17 10
       69 MOVE                             R18 R8
       70 NEWCLOSURE                       R19 P2
       71 CAPTURE                          VAL R13
       72 CALL                             R17 2 2
       73 GETUPVAL                         R19 9
       74 GETTABLEKS                       R19 R19 K8 ["useBinding"]
       76 LOADB                            R20 0
       77 CALL                             R19 1 2
       78 GETUPVAL                         R21 9
       79 GETTABLEKS                       R21 R21 K8 ["useBinding"]
       81 LOADB                            R22 0
       82 CALL                             R21 1 2
       83 GETUPVAL                         R23 9
       84 GETTABLEKS                       R23 R23 K8 ["useBinding"]
       86 LOADN                            R24 0
       87 CALL                             R23 1 2
       88 GETUPVAL                         R25 9
       89 GETTABLEKS                       R25 R25 K8 ["useBinding"]
       91 LOADN                            R26 0
       92 CALL                             R25 1 2
       93 GETUPVAL                         R27 9
       94 GETTABLEKS                       R27 R27 K12 ["useEffect"]
       96 NEWCLOSURE                       R28 P3
       97 CAPTURE                          VAL R18
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R16
      101 NEWTABLE                         R29 0 0
      103 CALL                             R27 2 0
      104 GETUPVAL                         R27 9
      105 GETTABLEKS                       R27 R27 K13 ["useCallback"]
      107 NEWCLOSURE                       R28 P4
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R18
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R13
      115 NEWTABLE                         R29 0 1
      117 MOVE                             R30 R8
      118 SETLIST                          R29 R30 1 [1]
      120 CALL                             R27 2 1
      121 GETUPVAL                         R28 9
      122 GETTABLEKS                       R28 R28 K14 ["useImperativeHandle"]
      124 GETTABLEKS                       R29 R2 K15 ["sheetRef"]
      126 NEWCLOSURE                       R30 P5
      127 CAPTURE                          VAL R27
      128 NEWTABLE                         R31 0 0
      130 CALL                             R28 3 0
      131 GETUPVAL                         R28 9
      132 GETTABLEKS                       R28 R28 K16 ["useMemo"]
      134 NEWCLOSURE                       R29 P6
      135 CAPTURE                          UPVAL U12
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R27
      144 CAPTURE                          UPVAL U13
      145 CAPTURE                          VAL R2
      146 NEWTABLE                         R30 0 2
      148 GETTABLEKS                       R31 R2 K17 ["testId"]
      150 MOVE                             R32 R27
      151 SETLIST                          R30 R31 2 [1]
      153 CALL                             R28 2 1
      154 MOVE                             R29 R3
      155 JUMPIFNOT                        R29 ; [+377]
      156 GETUPVAL                         R29 14
      157 GETTABLEKS                       R29 R29 K18 ["createPortal"]
      159 GETUPVAL                         R30 9
      160 GETTABLEKS                       R30 R30 K19 ["createElement"]
      162 GETUPVAL                         R31 15
      163 DUPTABLE                         R32 K23 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      164 GETTABLEKS                       R33 R5 K24 ["zIndex"]
      166 SETTABLEKS                       R33 R32 K20 ["ZIndex"]
      168 LOADK                            R34 K25 ["%*--surface"]
      169 GETTABLEKS                       R36 R2 K17 ["testId"]
      171 NAMECALL                         R34 R34 K26 ["format"]
      173 CALL                             R34 2 1
      174 MOVE                             R33 R34
      175 SETTABLEKS                       R33 R32 K17 ["testId"]
      177 DUPTABLE                         R33 K29 [{"SheetContainer", "Backdrop"}]
      178 GETUPVAL                         R34 9
      179 GETTABLEKS                       R34 R34 K19 ["createElement"]
      181 GETUPVAL                         R35 15
      182 DUPTABLE                         R36 K36 [{["ZIndex"] = 2, ["sizeConstraint"], ["Position"], ["tag"] = "size-full col align-y-center padding-medium anchor-center-center", ["GroupTransparency"], ["onAbsoluteSizeChanged"]}]
      183 DUPTABLE                         R37 K38 [{"MaxSize"}]
      184 GETIMPORT                        R38 K41 [Vector2.new]
      186 MOVE                             R39 R6
      187 MOVE                             R40 R7
      188 CALL                             R38 2 1
      189 SETTABLEKS                       R38 R37 K37 ["MaxSize"]
      191 SETTABLEKS                       R37 R36 K31 ["sizeConstraint"]
      193 DUPCLOSURE                       R39 K42 [PROTO_7]
      194 NAMECALL                         R37 R17 K9 ["map"]
      196 CALL                             R37 2 1
      197 SETTABLEKS                       R37 R36 K32 ["Position"]
      199 JUMPIFNOT                        R12 ; [+6]
      200 NEWCLOSURE                       R39 P8
      201 CAPTURE                          VAL R8
      202 NAMECALL                         R37 R17 K9 ["map"]
      204 CALL                             R37 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R37
      207 SETTABLEKS                       R37 R36 K34 ["GroupTransparency"]
      209 GETUPVAL                         R38 8
      210 GETTABLEKS                       R38 R38 K7 ["FoundationAddHeightPropToCenterSheet"]
      212 JUMPIFNOT                        R38 ; [+9]
      213 GETTABLEKS                       R38 R2 K43 ["centerSheetHeight"]
      215 JUMPIFNOT                        R38 ; [+6]
      216 JUMPIFNOT                        R10 ; [+5]
      217 NEWCLOSURE                       R37 P9
      218 CAPTURE                          VAL R4
      219 CAPTURE                          REF R10
      220 CAPTURE                          VAL R7
      221 JUMP                             ; [+1]
      222 LOADNIL                          R37
      223 SETTABLEKS                       R37 R36 K35 ["onAbsoluteSizeChanged"]
      225 DUPTABLE                         R37 K45 [{"Sheet", "Shadow"}]
      226 GETUPVAL                         R38 9
      227 GETTABLEKS                       R38 R38 K19 ["createElement"]
      229 GETUPVAL                         R39 15
      230 DUPTABLE                         R40 K53 [{["ClipsDescendants"] = True, ["Size"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 2, ["onActivated"], ["onAbsoluteSizeChanged"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      231 GETUPVAL                         R42 8
      232 GETTABLEKS                       R42 R42 K7 ["FoundationAddHeightPropToCenterSheet"]
      234 JUMPIFNOT                        R42 ; [+9]
      235 GETTABLEKS                       R42 R2 K43 ["centerSheetHeight"]
      237 JUMPIFNOT                        R42 ; [+6]
      238 JUMPIFNOT                        R11 ; [+5]
      239 DUPCLOSURE                       R43 K54 [PROTO_10]
      240 NAMECALL                         R41 R11 K9 ["map"]
      242 CALL                             R41 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R41
      245 SETTABLEKS                       R41 R40 K5 ["Size"]
      247 GETUPVAL                         R42 8
      248 GETTABLEKS                       R42 R42 K7 ["FoundationAddHeightPropToCenterSheet"]
      250 JUMPIFNOT                        R42 ; [+12]
      251 GETTABLEKS                       R42 R2 K43 ["centerSheetHeight"]
      253 JUMPIFNOT                        R42 ; [+9]
      254 JUMPIFNOT                        R9 ; [+8]
      255 DUPTABLE                         R41 K38 [{"MaxSize"}]
      256 DUPCLOSURE                       R44 K55 [PROTO_11]
      257 NAMECALL                         R42 R9 K9 ["map"]
      259 CALL                             R42 2 1
      260 SETTABLEKS                       R42 R41 K37 ["MaxSize"]
      262 JUMP                             ; [+1]
      263 LOADNIL                          R41
      264 SETTABLEKS                       R41 R40 K31 ["sizeConstraint"]
      266 DUPTABLE                         R41 K57 [{"affordance"}]
      267 GETUPVAL                         R42 16
      268 GETTABLEKS                       R42 R42 K58 ["None"]
      270 SETTABLEKS                       R42 R41 K56 ["affordance"]
      272 SETTABLEKS                       R41 R40 K48 ["stateLayer"]
      274 GETUPVAL                         R41 12
      275 GETTABLEKS                       R41 R41 K59 ["noop"]
      277 SETTABLEKS                       R41 R40 K49 ["onActivated"]
      279 NEWCLOSURE                       R41 P12
      280 CAPTURE                          VAL R26
      281 SETTABLEKS                       R41 R40 K35 ["onAbsoluteSizeChanged"]
      283 SETTABLEKS                       R1 R40 K50 ["ref"]
      285 GETUPVAL                         R41 17
      286 GETTABLEKS                       R41 R41 K60 ["nonSelectable"]
      288 SETTABLEKS                       R41 R40 K51 ["selection"]
      290 GETUPVAL                         R41 17
      291 GETTABLEKS                       R41 R41 K61 ["isolatedSelectionGroup"]
      293 SETTABLEKS                       R41 R40 K52 ["selectionGroup"]
      295 GETUPVAL                         R42 8
      296 GETTABLEKS                       R42 R42 K7 ["FoundationAddHeightPropToCenterSheet"]
      298 JUMPIFNOT                        R42 ; [+14]
      299 NEWTABLE                         R41 2 0
      301 LOADB                            R42 1
      302 SETTABLEKS                       R42 R41 K62 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      304 GETTABLEKS                       R43 R2 K43 ["centerSheetHeight"]
      306 JUMPIFEQKNIL                     R43 ; [+2]
      308 LOADB                            R42 0 +1
      309 LOADB                            R42 1
      310 SETTABLEKS                       R42 R41 K63 ["size-full-0 auto-y"]
      312 JUMP                             ; [+1]
      313 LOADK                            R41 K64 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      314 SETTABLEKS                       R41 R40 K21 ["tag"]
      316 GETTABLEKS                       R41 R2 K17 ["testId"]
      318 SETTABLEKS                       R41 R40 K17 ["testId"]
      320 DUPTABLE                         R41 K67 [{"Content", "CloseAffordance"}]
      321 GETUPVAL                         R42 9
      322 GETTABLEKS                       R42 R42 K19 ["createElement"]
      324 GETUPVAL                         R43 15
      325 DUPTABLE                         R44 K69 [{["Size"], ["tag"] = "size-full-0 auto-y col items-center clip"}]
      326 GETUPVAL                         R46 8
      327 GETTABLEKS                       R46 R46 K7 ["FoundationAddHeightPropToCenterSheet"]
      329 JUMPIFNOT                        R46 ; [+9]
      330 GETTABLEKS                       R46 R2 K43 ["centerSheetHeight"]
      332 JUMPIFNOT                        R46 ; [+6]
      333 JUMPIFNOT                        R11 ; [+5]
      334 DUPCLOSURE                       R47 K70 [PROTO_13]
      335 NAMECALL                         R45 R11 K9 ["map"]
      337 CALL                             R45 2 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R45
      340 SETTABLEKS                       R45 R44 K5 ["Size"]
      342 GETUPVAL                         R45 9
      343 GETTABLEKS                       R45 R45 K19 ["createElement"]
      345 GETUPVAL                         R46 18
      346 GETTABLEKS                       R46 R46 K71 ["Provider"]
      348 DUPTABLE                         R47 K73 [{"value"}]
      349 SETTABLEKS                       R28 R47 K72 ["value"]
      351 GETUPVAL                         R48 9
      352 GETTABLEKS                       R48 R48 K19 ["createElement"]
      354 GETUPVAL                         R49 19
      355 DUPTABLE                         R50 K75 [{"owner"}]
      356 SETTABLEKS                       R5 R50 K74 ["owner"]
      358 GETTABLEKS                       R51 R2 K76 ["children"]
      360 CALL                             R48 3 -1
      361 CALL                             R45 -1 -1
      362 CALL                             R42 -1 1
      363 SETTABLEKS                       R42 R41 K65 ["Content"]
      365 GETUPVAL                         R42 9
      366 GETTABLEKS                       R42 R42 K19 ["createElement"]
      368 GETUPVAL                         R43 20
      369 DUPTABLE                         R44 K80 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      370 SETTABLEKS                       R27 R44 K49 ["onActivated"]
      372 GETUPVAL                         R45 21
      373 GETTABLEKS                       R45 R45 K81 ["Utility"]
      375 SETTABLEKS                       R45 R44 K77 ["variant"]
      377 GETIMPORT                        R45 K83 [UDim2.new]
      379 LOADN                            R46 1
      380 GETTABLEKS                       R48 R4 K84 ["Margin"]
      382 GETTABLEKS                       R48 R48 K85 ["Small"]
      384 MINUS                            R47 R48
      385 LOADN                            R48 0
      386 GETTABLEKS                       R49 R4 K84 ["Margin"]
      388 GETTABLEKS                       R49 R49 K85 ["Small"]
      390 CALL                             R45 4 1
      391 SETTABLEKS                       R45 R44 K32 ["Position"]
      393 GETIMPORT                        R45 K41 [Vector2.new]
      395 LOADN                            R46 1
      396 LOADN                            R47 0
      397 CALL                             R45 2 1
      398 SETTABLEKS                       R45 R44 K78 ["AnchorPoint"]
      400 DUPCLOSURE                       R47 K86 [PROTO_14]
      401 NAMECALL                         R45 R21 K9 ["map"]
      403 CALL                             R45 2 1
      404 SETTABLEKS                       R45 R44 K79 ["Visible"]
      406 LOADK                            R46 K87 ["%*--close-affordance"]
      407 GETTABLEKS                       R48 R2 K17 ["testId"]
      409 NAMECALL                         R46 R46 K26 ["format"]
      411 CALL                             R46 2 1
      412 MOVE                             R45 R46
      413 SETTABLEKS                       R45 R44 K17 ["testId"]
      415 CALL                             R42 2 1
      416 SETTABLEKS                       R42 R41 K66 ["CloseAffordance"]
      418 CALL                             R38 3 1
      419 SETTABLEKS                       R38 R37 K0 ["Sheet"]
      421 GETUPVAL                         R38 9
      422 GETTABLEKS                       R38 R38 K19 ["createElement"]
      424 LOADK                            R39 K88 ["Folder"]
      425 LOADNIL                          R40
      426 GETUPVAL                         R41 9
      427 GETTABLEKS                       R41 R41 K19 ["createElement"]
      429 GETUPVAL                         R42 22
      430 DUPTABLE                         R43 K94 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 1, ["slice"], ["imageStyle"], ["tag"] = "anchor-center-left"}]
      431 GETUPVAL                         R44 23
      432 SETTABLEKS                       R44 R43 K89 ["Image"]
      434 DUPCLOSURE                       R46 K95 [PROTO_15]
      435 CAPTURE                          UPVAL U24
      436 NAMECALL                         R44 R25 K9 ["map"]
      438 CALL                             R44 2 1
      439 SETTABLEKS                       R44 R43 K5 ["Size"]
      441 GETIMPORT                        R44 K83 [UDim2.new]
      443 LOADN                            R45 0
      444 GETUPVAL                         R47 24
      445 MINUS                            R46 R47
      446 LOADK                            R47 K96 [0.5]
      447 LOADN                            R48 0
      448 CALL                             R44 4 1
      449 SETTABLEKS                       R44 R43 K32 ["Position"]
      451 DUPTABLE                         R44 K99 [{["center"], ["scale"] = 2}]
      452 GETIMPORT                        R45 K101 [Rect.new]
      454 GETUPVAL                         R46 24
      455 GETUPVAL                         R47 24
      456 GETUPVAL                         R49 24
      457 ADDK                             R48 R49 K90 [1]
      458 GETUPVAL                         R50 24
      459 ADDK                             R49 R50 K90 [1]
      460 CALL                             R45 4 1
      461 SETTABLEKS                       R45 R44 K97 ["center"]
      463 SETTABLEKS                       R44 R43 K91 ["slice"]
      465 GETTABLEKS                       R44 R4 K102 ["Color"]
      467 GETTABLEKS                       R44 R44 K103 ["Extended"]
      469 GETTABLEKS                       R44 R44 K104 ["Black"]
      471 GETTABLEKS                       R44 R44 K105 ["Black_10"]
      473 SETTABLEKS                       R44 R43 K92 ["imageStyle"]
      475 CALL                             R41 2 -1
      476 CALL                             R38 -1 1
      477 SETTABLEKS                       R38 R37 K44 ["Shadow"]
      479 CALL                             R34 3 1
      480 SETTABLEKS                       R34 R33 K27 ["SheetContainer"]
      482 GETUPVAL                         R34 9
      483 GETTABLEKS                       R34 R34 K19 ["createElement"]
      485 GETUPVAL                         R35 15
      486 DUPTABLE                         R36 K107 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      487 GETIMPORT                        R37 K109 [UDim2.fromScale]
      489 LOADN                            R38 2
      490 LOADN                            R39 2
      491 CALL                             R37 2 1
      492 SETTABLEKS                       R37 R36 K5 ["Size"]
      494 GETIMPORT                        R37 K109 [UDim2.fromScale]
      496 LOADK                            R38 K110 [-0.5]
      497 LOADK                            R39 K110 [-0.5]
      498 CALL                             R37 2 1
      499 SETTABLEKS                       R37 R36 K32 ["Position"]
      501 DUPTABLE                         R37 K57 [{"affordance"}]
      502 GETUPVAL                         R38 16
      503 GETTABLEKS                       R38 R38 K58 ["None"]
      505 SETTABLEKS                       R38 R37 K56 ["affordance"]
      507 SETTABLEKS                       R37 R36 K48 ["stateLayer"]
      509 NEWCLOSURE                       R39 P16
      510 CAPTURE                          VAL R4
      511 NAMECALL                         R37 R15 K9 ["map"]
      513 CALL                             R37 2 1
      514 SETTABLEKS                       R37 R36 K106 ["backgroundStyle"]
      516 SETTABLEKS                       R27 R36 K49 ["onActivated"]
      518 LOADK                            R38 K111 ["%*--backdrop"]
      519 GETTABLEKS                       R40 R2 K17 ["testId"]
      521 NAMECALL                         R38 R38 K26 ["format"]
      523 CALL                             R38 2 1
      524 MOVE                             R37 R38
      525 SETTABLEKS                       R37 R36 K17 ["testId"]
      527 CALL                             R34 2 1
      528 SETTABLEKS                       R34 R33 K28 ["Backdrop"]
      530 CALL                             R30 3 1
      531 MOVE                             R31 R3
      532 CALL                             R29 2 1
      533 CLOSEUPVALS                      R10
      534 RETURN                           R29 1

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
       45 GETTABLEKS                       R10 R0 K13 ["Enums"]
       47 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K16 ["Providers"]
       54 GETTABLEKS                       R11 R11 K17 ["Overlay"]
       56 GETTABLEKS                       R11 R11 K18 ["useOverlay"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K19 ["Utility"]
       63 GETTABLEKS                       R12 R12 K20 ["useScaledValue"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K16 ["Providers"]
       70 GETTABLEKS                       R13 R13 K21 ["Style"]
       72 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K19 ["Utility"]
       79 GETTABLEKS                       R14 R14 K23 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K24 ["Components"]
       86 GETTABLEKS                       R15 R15 K25 ["Dialog"]
       88 GETTABLEKS                       R15 R15 K26 ["useDialogVariants"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K27 ["DIALOG_SIZES"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K28 ["Constants"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K13 ["Enums"]
      102 GETTABLEKS                       R17 R17 K29 ["DialogSize"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K13 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["ElevationLayer"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K16 ["Providers"]
      116 GETTABLEKS                       R19 R19 K31 ["Elevation"]
      118 GETTABLEKS                       R19 R19 K32 ["useElevation"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R0 K16 ["Providers"]
      125 GETTABLEKS                       R20 R20 K31 ["Elevation"]
      127 GETTABLEKS                       R20 R20 K33 ["ElevationProvider"]
      129 CALL                             R19 1 1
      130 GETTABLEKS                       R19 R19 K34 ["ElevationOwnerScope"]
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R21 R0 K19 ["Utility"]
      136 GETTABLEKS                       R21 R21 K35 ["Flags"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETIMPORT                        R22 K1 [script]
      143 GETTABLEKS                       R22 R22 K4 ["Parent"]
      145 GETTABLEKS                       R22 R22 K36 ["SheetContext"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K4 ["Parent"]
      154 GETTABLEKS                       R23 R23 K37 ["Types"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K38 ["SheetType"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K24 ["Components"]
      170 GETTABLEKS                       R25 R25 K39 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K24 ["Components"]
      177 GETTABLEKS                       R26 R26 K40 ["Image"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K24 ["Components"]
      184 GETTABLEKS                       R27 R27 K41 ["View"]
      186 CALL                             R26 1 1
      187 DUPTABLE                         R27 K45 [{["size"], ["testId"] = "--foundation-sheet"}]
      188 GETTABLEKS                       R28 R16 K46 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 GETTABLEKS                       R28 R15 K47 ["SHADOW_IMAGE"]
      194 GETTABLEKS                       R29 R15 K48 ["SHADOW_SIZE"]
      196 DUPCLOSURE                       R30 K49 [PROTO_17]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R29
      222 GETTABLEKS                       R31 R4 K50 ["memo"]
      224 GETTABLEKS                       R32 R4 K51 ["forwardRef"]
      226 MOVE                             R33 R30
      227 CALL                             R32 1 -1
      228 CALL                             R31 -1 -1
      229 RETURN                           R31 -1
