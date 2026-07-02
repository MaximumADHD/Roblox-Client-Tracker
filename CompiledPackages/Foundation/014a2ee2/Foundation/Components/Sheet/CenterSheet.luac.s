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
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 1
        5 SETTABLEKS                       R1 R0 K4 ["BackgroundTransparency"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K5 ["BorderSizePixel"]
       10 GETIMPORT                        R1 K9 [Enum.AutomaticSize.XY]
       12 SETTABLEKS                       R1 R0 K7 ["AutomaticSize"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R0 R1 K0 ["Parent"]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K0 ["Parent"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["instant"]
        6 LOADN                            R2 0
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["ease"]
       21 LOADN                            R2 0
       22 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K5 ["Ease"]
       26 GETTABLEKS                       R4 R4 K6 ["StandardOut"]
       28 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K7 ["Time"]
       33 GETTABLEKS                       R4 R4 K8 ["Time_300"]
       35 SETTABLEKS                       R4 R3 K3 ["duration"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 3
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K1 ["ease"]
       43 LOADN                            R2 0
       44 DUPTABLE                         R3 K9 [{"duration"}]
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K7 ["Time"]
       48 GETTABLEKS                       R4 R4 K10 ["Time_100"]
       50 SETTABLEKS                       R4 R3 K3 ["duration"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 RETURN                           R0 0

PROTO_8:
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
       63 GETUPVAL                         R0 7
       64 LOADB                            R1 1
       65 CALL                             R0 1 0
       66 GETUPVAL                         R0 0
       67 LOADB                            R1 1
       68 SETTABLEKS                       R1 R0 K0 ["current"]
       70 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R0 K27 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetContentHeight"], ["setSheetContentHeight"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["hasFullBleed"], ["fullBleedHeight"], ["setFullBleedHeight"], ["closeSheet"], ["hasRadius"], ["sheetType"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K28 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K5 ["sheetContentHeight"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K28 ["noop"]
       18 SETTABLEKS                       R1 R0 K6 ["setSheetContentHeight"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K28 ["noop"]
       23 SETTABLEKS                       R1 R0 K8 ["setSheetHeightAvailable"]
       25 GETUPVAL                         R1 4
       26 SETTABLEKS                       R1 R0 K13 ["innerScrollY"]
       28 GETUPVAL                         R1 5
       29 SETTABLEKS                       R1 R0 K14 ["setInnerScrollY"]
       31 GETUPVAL                         R1 6
       32 SETTABLEKS                       R1 R0 K15 ["hasHeader"]
       34 GETUPVAL                         R1 7
       35 SETTABLEKS                       R1 R0 K16 ["setHasHeader"]
       37 GETUPVAL                         R2 8
       38 GETTABLEKS                       R2 R2 K29 ["FoundationSheetFullBleed"]
       40 JUMPIFNOT                        R2 ; [+2]
       41 GETUPVAL                         R1 9
       42 JUMP                             ; [+1]
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K17 ["hasFullBleed"]
       46 GETUPVAL                         R2 8
       47 GETTABLEKS                       R2 R2 K29 ["FoundationSheetFullBleed"]
       49 JUMPIFNOT                        R2 ; [+2]
       50 GETUPVAL                         R1 10
       51 JUMP                             ; [+1]
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K18 ["fullBleedHeight"]
       55 GETUPVAL                         R2 8
       56 GETTABLEKS                       R2 R2 K29 ["FoundationSheetFullBleed"]
       58 JUMPIFNOT                        R2 ; [+2]
       59 GETUPVAL                         R1 11
       60 JUMP                             ; [+1]
       61 LOADNIL                          R1
       62 SETTABLEKS                       R1 R0 K19 ["setFullBleedHeight"]
       64 GETUPVAL                         R1 12
       65 SETTABLEKS                       R1 R0 K20 ["closeSheet"]
       67 GETUPVAL                         R2 8
       68 GETTABLEKS                       R2 R2 K29 ["FoundationSheetFullBleed"]
       70 JUMPIFNOT                        R2 ; [+2]
       71 LOADB                            R1 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R1
       74 SETTABLEKS                       R1 R0 K21 ["hasRadius"]
       76 GETUPVAL                         R1 13
       77 GETTABLEKS                       R1 R1 K30 ["Center"]
       79 SETTABLEKS                       R1 R0 K22 ["sheetType"]
       81 GETUPVAL                         R1 14
       82 GETTABLEKS                       R1 R1 K23 ["testId"]
       84 SETTABLEKS                       R1 R0 K23 ["testId"]
       86 GETUPVAL                         R1 15
       87 SETTABLEKS                       R1 R0 K24 ["closeAffordanceRef"]
       89 GETUPVAL                         R1 16
       90 SETTABLEKS                       R1 R0 K25 ["contentStartRef"]
       92 GETUPVAL                         R1 17
       93 SETTABLEKS                       R1 R0 K26 ["setContentStartRef"]
       95 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADK                            R2 K3 [∞]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADK                            R4 K3 [0.5]
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       19 GETUPVAL                         R10 8
       20 GETTABLEKS                       R11 R2 K5 ["size"]
       22 GETTABLE                         R9 R10 R11
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 7
       25 LOADN                            R10 600
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R10 R4 K6 ["Size"]
       29 GETTABLEKS                       R10 R10 K7 ["Size_800"]
       31 GETUPVAL                         R11 9
       32 GETTABLEKS                       R11 R11 K8 ["useBinding"]
       34 MOVE                             R12 R9
       35 CALL                             R11 1 2
       36 JUMPIFNOT                        R11 ; [+6]
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          VAL R2
       39 NAMECALL                         R13 R11 K9 ["map"]
       41 CALL                             R13 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R13
       44 GETUPVAL                         R14 9
       45 GETTABLEKS                       R14 R14 K10 ["useState"]
       47 LOADB                            R15 1
       48 CALL                             R14 1 2
       49 GETUPVAL                         R16 9
       50 GETTABLEKS                       R16 R16 K11 ["useRef"]
       52 LOADB                            R17 0
       53 CALL                             R16 1 1
       54 GETUPVAL                         R17 10
       55 LOADN                            R18 1
       56 NEWCLOSURE                       R19 P1
       57 CAPTURE                          VAL R16
       58 CAPTURE                          VAL R2
       59 CALL                             R17 2 2
       60 GETUPVAL                         R19 10
       61 MOVE                             R20 R10
       62 NEWCLOSURE                       R21 P2
       63 CAPTURE                          VAL R15
       64 CALL                             R19 2 2
       65 GETUPVAL                         R21 9
       66 GETTABLEKS                       R21 R21 K8 ["useBinding"]
       68 LOADB                            R22 0
       69 CALL                             R21 1 2
       70 GETUPVAL                         R23 9
       71 GETTABLEKS                       R23 R23 K8 ["useBinding"]
       73 LOADB                            R24 0
       74 CALL                             R23 1 2
       75 LOADNIL                          R25
       76 LOADNIL                          R26
       77 LOADNIL                          R27
       78 GETUPVAL                         R28 11
       79 GETTABLEKS                       R28 R28 K12 ["FoundationSheetFullBleed"]
       81 JUMPIFNOT                        R28 ; [+12]
       82 GETUPVAL                         R28 12
       83 GETTABLEKS                       R29 R2 K13 ["children"]
       85 CALL                             R28 1 1
       86 MOVE                             R25 R28
       87 GETUPVAL                         R28 9
       88 GETTABLEKS                       R28 R28 K8 ["useBinding"]
       90 LOADN                            R29 0
       91 CALL                             R28 1 2
       92 MOVE                             R26 R28
       93 MOVE                             R27 R29
       94 GETUPVAL                         R28 9
       95 GETTABLEKS                       R28 R28 K8 ["useBinding"]
       97 LOADN                            R29 0
       98 CALL                             R28 1 2
       99 GETUPVAL                         R30 9
      100 GETTABLEKS                       R30 R30 K8 ["useBinding"]
      102 LOADN                            R31 0
      103 CALL                             R30 1 2
      104 GETUPVAL                         R32 9
      105 GETTABLEKS                       R32 R32 K11 ["useRef"]
      107 LOADNIL                          R33
      108 CALL                             R32 1 1
      109 GETUPVAL                         R33 9
      110 GETTABLEKS                       R33 R33 K10 ["useState"]
      112 LOADNIL                          R34
      113 CALL                             R33 1 2
      114 GETUPVAL                         R36 11
      115 GETTABLEKS                       R36 R36 K14 ["FoundationCenterSheetUseStableContainer"]
      117 JUMPIFNOT                        R36 ; [+8]
      118 GETUPVAL                         R35 9
      119 GETTABLEKS                       R35 R35 K15 ["useMemo"]
      121 DUPCLOSURE                       R36 K16 [PROTO_3]
      122 NEWTABLE                         R37 0 0
      124 CALL                             R35 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R35
      127 GETUPVAL                         R36 11
      128 GETTABLEKS                       R36 R36 K14 ["FoundationCenterSheetUseStableContainer"]
      130 JUMPIFNOT                        R36 ; [+8]
      131 GETUPVAL                         R36 9
      132 GETTABLEKS                       R36 R36 K17 ["useEffect"]
      134 NEWCLOSURE                       R37 P4
      135 CAPTURE                          VAL R35
      136 NEWTABLE                         R38 0 0
      138 CALL                             R36 2 0
      139 GETUPVAL                         R37 11
      140 GETTABLEKS                       R37 R37 K14 ["FoundationCenterSheetUseStableContainer"]
      142 JUMPIFNOT                        R37 ; [+9]
      143 GETUPVAL                         R36 9
      144 GETTABLEKS                       R36 R36 K18 ["useCallback"]
      146 NEWCLOSURE                       R37 P5
      147 CAPTURE                          VAL R35
      148 NEWTABLE                         R38 0 0
      150 CALL                             R36 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R36
      153 GETUPVAL                         R37 9
      154 GETTABLEKS                       R37 R37 K17 ["useEffect"]
      156 NEWCLOSURE                       R38 P6
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R20
      159 CAPTURE                          UPVAL U13
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R4
      162 NEWTABLE                         R39 0 0
      164 CALL                             R37 2 0
      165 GETUPVAL                         R37 9
      166 GETTABLEKS                       R37 R37 K18 ["useCallback"]
      168 NEWCLOSURE                       R38 P7
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R20
      172 CAPTURE                          UPVAL U13
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R15
      177 NEWTABLE                         R39 0 2
      179 MOVE                             R40 R10
      180 MOVE                             R41 R7
      181 SETLIST                          R39 R40 2 [1]
      183 CALL                             R37 2 1
      184 GETUPVAL                         R38 9
      185 GETTABLEKS                       R38 R38 K19 ["useImperativeHandle"]
      187 GETTABLEKS                       R39 R2 K20 ["sheetRef"]
      189 NEWCLOSURE                       R40 P8
      190 CAPTURE                          VAL R37
      191 NEWTABLE                         R41 0 0
      193 CALL                             R38 3 0
      194 GETUPVAL                         R38 9
      195 GETTABLEKS                       R38 R38 K15 ["useMemo"]
      197 NEWCLOSURE                       R39 P9
      198 CAPTURE                          UPVAL U14
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R28
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R24
      206 CAPTURE                          UPVAL U11
      207 CAPTURE                          REF R25
      208 CAPTURE                          REF R26
      209 CAPTURE                          REF R27
      210 CAPTURE                          VAL R37
      211 CAPTURE                          UPVAL U15
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R32
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R34
      216 NEWTABLE                         R40 0 6
      218 GETTABLEKS                       R41 R2 K21 ["testId"]
      220 MOVE                             R42 R37
      221 MOVE                             R43 R33
      222 MOVE                             R44 R32
      223 MOVE                             R45 R13
      224 MOVE                             R46 R25
      225 SETLIST                          R40 R41 6 [1]
      227 CALL                             R38 2 1
      228 GETUPVAL                         R39 9
      229 GETTABLEKS                       R39 R39 K22 ["createElement"]
      231 GETUPVAL                         R40 16
      232 DUPTABLE                         R41 K35 [{["ClipsDescendants"] = True, ["Size"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 2, ["onActivated"], ["onAbsoluteSizeChanged"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      233 GETTABLEKS                       R43 R2 K36 ["centerSheetHeight"]
      235 JUMPIFNOT                        R43 ; [+6]
      236 JUMPIFNOT                        R13 ; [+5]
      237 DUPCLOSURE                       R44 K37 [PROTO_11]
      238 NAMECALL                         R42 R13 K9 ["map"]
      240 CALL                             R42 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R42
      243 SETTABLEKS                       R42 R41 K6 ["Size"]
      245 GETTABLEKS                       R43 R2 K36 ["centerSheetHeight"]
      247 JUMPIFNOT                        R43 ; [+9]
      248 JUMPIFNOT                        R11 ; [+8]
      249 DUPTABLE                         R42 K39 [{"MaxSize"}]
      250 DUPCLOSURE                       R45 K40 [PROTO_12]
      251 NAMECALL                         R43 R11 K9 ["map"]
      253 CALL                             R43 2 1
      254 SETTABLEKS                       R43 R42 K38 ["MaxSize"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R42
      258 SETTABLEKS                       R42 R41 K25 ["sizeConstraint"]
      260 DUPTABLE                         R42 K42 [{"affordance"}]
      261 GETUPVAL                         R43 17
      262 GETTABLEKS                       R43 R43 K43 ["None"]
      264 SETTABLEKS                       R43 R42 K41 ["affordance"]
      266 SETTABLEKS                       R42 R41 K26 ["stateLayer"]
      268 GETUPVAL                         R42 14
      269 GETTABLEKS                       R42 R42 K44 ["noop"]
      271 SETTABLEKS                       R42 R41 K29 ["onActivated"]
      273 NEWCLOSURE                       R42 P12
      274 CAPTURE                          VAL R31
      275 SETTABLEKS                       R42 R41 K30 ["onAbsoluteSizeChanged"]
      277 SETTABLEKS                       R1 R41 K31 ["ref"]
      279 GETUPVAL                         R42 18
      280 GETTABLEKS                       R42 R42 K45 ["nonSelectable"]
      282 SETTABLEKS                       R42 R41 K32 ["selection"]
      284 GETUPVAL                         R42 18
      285 GETTABLEKS                       R42 R42 K46 ["isolatedSelectionGroup"]
      287 SETTABLEKS                       R42 R41 K33 ["selectionGroup"]
      289 NEWTABLE                         R42 2 0
      291 LOADB                            R43 1
      292 SETTABLEKS                       R43 R42 K47 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      294 GETTABLEKS                       R44 R2 K36 ["centerSheetHeight"]
      296 JUMPIFEQKNIL                     R44 ; [+2]
      298 LOADB                            R43 0 +1
      299 LOADB                            R43 1
      300 SETTABLEKS                       R43 R42 K48 ["size-full-0 auto-y"]
      302 SETTABLEKS                       R42 R41 K34 ["tag"]
      304 GETTABLEKS                       R42 R2 K21 ["testId"]
      306 SETTABLEKS                       R42 R41 K21 ["testId"]
      308 DUPTABLE                         R42 K51 [{"Content", "CloseAffordance"}]
      309 GETUPVAL                         R43 9
      310 GETTABLEKS                       R43 R43 K22 ["createElement"]
      312 GETUPVAL                         R44 16
      313 DUPTABLE                         R45 K53 [{["Size"], ["tag"] = "col items-center size-full-0 auto-y clip"}]
      314 GETTABLEKS                       R47 R2 K36 ["centerSheetHeight"]
      316 JUMPIFNOT                        R47 ; [+6]
      317 JUMPIFNOT                        R13 ; [+5]
      318 DUPCLOSURE                       R48 K54 [PROTO_14]
      319 NAMECALL                         R46 R13 K9 ["map"]
      321 CALL                             R46 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R46
      324 SETTABLEKS                       R46 R45 K6 ["Size"]
      326 GETUPVAL                         R46 9
      327 GETTABLEKS                       R46 R46 K22 ["createElement"]
      329 GETUPVAL                         R47 19
      330 GETTABLEKS                       R47 R47 K55 ["Provider"]
      332 DUPTABLE                         R48 K57 [{"value"}]
      333 SETTABLEKS                       R38 R48 K56 ["value"]
      335 GETUPVAL                         R49 9
      336 GETTABLEKS                       R49 R49 K22 ["createElement"]
      338 GETUPVAL                         R50 20
      339 DUPTABLE                         R51 K59 [{"owner"}]
      340 SETTABLEKS                       R5 R51 K58 ["owner"]
      342 GETTABLEKS                       R52 R2 K13 ["children"]
      344 CALL                             R49 3 -1
      345 CALL                             R46 -1 -1
      346 CALL                             R43 -1 1
      347 SETTABLEKS                       R43 R42 K49 ["Content"]
      349 GETUPVAL                         R43 9
      350 GETTABLEKS                       R43 R43 K22 ["createElement"]
      352 GETUPVAL                         R44 21
      353 DUPTABLE                         R45 K65 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      354 SETTABLEKS                       R37 R45 K29 ["onActivated"]
      356 SETTABLEKS                       R32 R45 K31 ["ref"]
      358 SETTABLEKS                       R33 R45 K60 ["NextSelectionDown"]
      360 GETUPVAL                         R47 11
      361 GETTABLEKS                       R47 R47 K12 ["FoundationSheetFullBleed"]
      363 JUMPIFNOT                        R47 ; [+5]
      364 JUMPIFNOT                        R25 ; [+4]
      365 GETUPVAL                         R46 22
      366 GETTABLEKS                       R46 R46 K66 ["OverMedia"]
      368 JUMP                             ; [+3]
      369 GETUPVAL                         R46 22
      370 GETTABLEKS                       R46 R46 K67 ["Utility"]
      372 SETTABLEKS                       R46 R45 K61 ["variant"]
      374 GETIMPORT                        R46 K70 [UDim2.new]
      376 LOADN                            R47 1
      377 GETTABLEKS                       R49 R4 K71 ["Margin"]
      379 GETTABLEKS                       R49 R49 K72 ["Small"]
      381 MINUS                            R48 R49
      382 LOADN                            R49 0
      383 GETTABLEKS                       R50 R4 K71 ["Margin"]
      385 GETTABLEKS                       R50 R50 K72 ["Small"]
      387 CALL                             R46 4 1
      388 SETTABLEKS                       R46 R45 K62 ["Position"]
      390 GETIMPORT                        R46 K74 [Vector2.new]
      392 LOADN                            R47 1
      393 LOADN                            R48 0
      394 CALL                             R46 2 1
      395 SETTABLEKS                       R46 R45 K63 ["AnchorPoint"]
      397 DUPCLOSURE                       R48 K75 [PROTO_15]
      398 NAMECALL                         R46 R23 K9 ["map"]
      400 CALL                             R46 2 1
      401 SETTABLEKS                       R46 R45 K64 ["Visible"]
      403 LOADK                            R47 K76 ["%*--close-affordance"]
      404 GETTABLEKS                       R49 R2 K21 ["testId"]
      406 NAMECALL                         R47 R47 K77 ["format"]
      408 CALL                             R47 2 1
      409 MOVE                             R46 R47
      410 SETTABLEKS                       R46 R45 K21 ["testId"]
      412 CALL                             R43 2 1
      413 SETTABLEKS                       R43 R42 K50 ["CloseAffordance"]
      415 CALL                             R39 3 1
      416 GETUPVAL                         R40 9
      417 GETTABLEKS                       R40 R40 K22 ["createElement"]
      419 GETUPVAL                         R41 23
      420 DUPTABLE                         R42 K83 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 1, ["slice"], ["imageStyle"], ["tag"] = "anchor-center-left"}]
      421 GETUPVAL                         R43 24
      422 SETTABLEKS                       R43 R42 K78 ["Image"]
      424 DUPCLOSURE                       R45 K84 [PROTO_16]
      425 CAPTURE                          UPVAL U25
      426 NAMECALL                         R43 R30 K9 ["map"]
      428 CALL                             R43 2 1
      429 SETTABLEKS                       R43 R42 K6 ["Size"]
      431 GETIMPORT                        R43 K70 [UDim2.new]
      433 LOADN                            R44 0
      434 GETUPVAL                         R46 25
      435 MINUS                            R45 R46
      436 LOADK                            R46 K85 [0.5]
      437 LOADN                            R47 0
      438 CALL                             R43 4 1
      439 SETTABLEKS                       R43 R42 K62 ["Position"]
      441 DUPTABLE                         R43 K88 [{["center"], ["scale"] = 2}]
      442 GETIMPORT                        R44 K90 [Rect.new]
      444 GETUPVAL                         R45 25
      445 GETUPVAL                         R46 25
      446 GETUPVAL                         R48 25
      447 ADDK                             R47 R48 K79 [1]
      448 GETUPVAL                         R49 25
      449 ADDK                             R48 R49 K79 [1]
      450 CALL                             R44 4 1
      451 SETTABLEKS                       R44 R43 K86 ["center"]
      453 SETTABLEKS                       R43 R42 K80 ["slice"]
      455 GETTABLEKS                       R43 R4 K91 ["Color"]
      457 GETTABLEKS                       R43 R43 K92 ["Extended"]
      459 GETTABLEKS                       R43 R43 K93 ["Black"]
      461 GETTABLEKS                       R43 R43 K94 ["Black_10"]
      463 SETTABLEKS                       R43 R42 K81 ["imageStyle"]
      465 CALL                             R40 2 1
      466 MOVE                             R41 R3
      467 JUMPIFNOT                        R41 ; [+177]
      468 GETUPVAL                         R41 9
      469 GETTABLEKS                       R41 R41 K22 ["createElement"]
      471 GETUPVAL                         R42 9
      472 GETTABLEKS                       R42 R42 K95 ["Fragment"]
      474 LOADNIL                          R43
      475 DUPTABLE                         R44 K98 [{"OverlayPortal", "SheetContent"}]
      476 GETUPVAL                         R45 26
      477 GETTABLEKS                       R45 R45 K99 ["createPortal"]
      479 GETUPVAL                         R46 9
      480 GETTABLEKS                       R46 R46 K22 ["createElement"]
      482 GETUPVAL                         R47 16
      483 DUPTABLE                         R48 K101 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      484 GETTABLEKS                       R49 R5 K102 ["zIndex"]
      486 SETTABLEKS                       R49 R48 K27 ["ZIndex"]
      488 LOADK                            R50 K103 ["%*--surface"]
      489 GETTABLEKS                       R52 R2 K21 ["testId"]
      491 NAMECALL                         R50 R50 K77 ["format"]
      493 CALL                             R50 2 1
      494 MOVE                             R49 R50
      495 SETTABLEKS                       R49 R48 K21 ["testId"]
      497 DUPTABLE                         R49 K106 [{"SheetContainer", "Backdrop"}]
      498 GETUPVAL                         R50 9
      499 GETTABLEKS                       R50 R50 K22 ["createElement"]
      501 GETUPVAL                         R51 16
      502 DUPTABLE                         R52 K109 [{["ref"], ["ZIndex"] = 2, ["sizeConstraint"], ["Position"], ["tag"] = "col align-y-center anchor-center-center size-full padding-medium", ["testId"], ["GroupTransparency"], ["onAbsoluteSizeChanged"]}]
      503 SETTABLEKS                       R36 R52 K31 ["ref"]
      505 DUPTABLE                         R53 K39 [{"MaxSize"}]
      506 GETIMPORT                        R54 K74 [Vector2.new]
      508 MOVE                             R55 R8
      509 MOVE                             R56 R9
      510 CALL                             R54 2 1
      511 SETTABLEKS                       R54 R53 K38 ["MaxSize"]
      513 SETTABLEKS                       R53 R52 K25 ["sizeConstraint"]
      515 DUPCLOSURE                       R55 K110 [PROTO_17]
      516 NAMECALL                         R53 R19 K9 ["map"]
      518 CALL                             R53 2 1
      519 SETTABLEKS                       R53 R52 K62 ["Position"]
      521 LOADK                            R54 K111 ["%*--center-sheet-container"]
      522 GETTABLEKS                       R56 R2 K21 ["testId"]
      524 NAMECALL                         R54 R54 K77 ["format"]
      526 CALL                             R54 2 1
      527 MOVE                             R53 R54
      528 SETTABLEKS                       R53 R52 K21 ["testId"]
      530 JUMPIFNOT                        R14 ; [+6]
      531 NEWCLOSURE                       R55 P17
      532 CAPTURE                          VAL R10
      533 NAMECALL                         R53 R19 K9 ["map"]
      535 CALL                             R53 2 1
      536 JUMP                             ; [+1]
      537 LOADNIL                          R53
      538 SETTABLEKS                       R53 R52 K108 ["GroupTransparency"]
      540 GETTABLEKS                       R54 R2 K36 ["centerSheetHeight"]
      542 JUMPIFNOT                        R54 ; [+6]
      543 JUMPIFNOT                        R12 ; [+5]
      544 NEWCLOSURE                       R53 P18
      545 CAPTURE                          VAL R4
      546 CAPTURE                          VAL R12
      547 CAPTURE                          VAL R9
      548 JUMP                             ; [+1]
      549 LOADNIL                          R53
      550 SETTABLEKS                       R53 R52 K30 ["onAbsoluteSizeChanged"]
      552 GETUPVAL                         R54 11
      553 GETTABLEKS                       R54 R54 K14 ["FoundationCenterSheetUseStableContainer"]
      555 JUMPIF                           R54 ; [+13]
      556 DUPTABLE                         R53 K113 [{"Sheet", "Shadow"}]
      557 SETTABLEKS                       R39 R53 K0 ["Sheet"]
      559 GETUPVAL                         R54 9
      560 GETTABLEKS                       R54 R54 K22 ["createElement"]
      562 LOADK                            R55 K114 ["Folder"]
      563 LOADNIL                          R56
      564 MOVE                             R57 R40
      565 CALL                             R54 3 1
      566 SETTABLEKS                       R54 R53 K112 ["Shadow"]
      568 JUMP                             ; [+1]
      569 LOADNIL                          R53
      570 CALL                             R50 3 1
      571 SETTABLEKS                       R50 R49 K104 ["SheetContainer"]
      573 GETUPVAL                         R50 9
      574 GETTABLEKS                       R50 R50 K22 ["createElement"]
      576 GETUPVAL                         R51 16
      577 DUPTABLE                         R52 K116 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      578 GETIMPORT                        R53 K118 [UDim2.fromScale]
      580 LOADN                            R54 2
      581 LOADN                            R55 2
      582 CALL                             R53 2 1
      583 SETTABLEKS                       R53 R52 K6 ["Size"]
      585 GETIMPORT                        R53 K118 [UDim2.fromScale]
      587 LOADK                            R54 K119 [-0.5]
      588 LOADK                            R55 K119 [-0.5]
      589 CALL                             R53 2 1
      590 SETTABLEKS                       R53 R52 K62 ["Position"]
      592 DUPTABLE                         R53 K42 [{"affordance"}]
      593 GETUPVAL                         R54 17
      594 GETTABLEKS                       R54 R54 K43 ["None"]
      596 SETTABLEKS                       R54 R53 K41 ["affordance"]
      598 SETTABLEKS                       R53 R52 K26 ["stateLayer"]
      600 NEWCLOSURE                       R55 P19
      601 CAPTURE                          VAL R4
      602 NAMECALL                         R53 R17 K9 ["map"]
      604 CALL                             R53 2 1
      605 SETTABLEKS                       R53 R52 K115 ["backgroundStyle"]
      607 SETTABLEKS                       R37 R52 K29 ["onActivated"]
      609 LOADK                            R54 K120 ["%*--backdrop"]
      610 GETTABLEKS                       R56 R2 K21 ["testId"]
      612 NAMECALL                         R54 R54 K77 ["format"]
      614 CALL                             R54 2 1
      615 MOVE                             R53 R54
      616 SETTABLEKS                       R53 R52 K21 ["testId"]
      618 CALL                             R50 2 1
      619 SETTABLEKS                       R50 R49 K105 ["Backdrop"]
      621 CALL                             R46 3 1
      622 MOVE                             R47 R3
      623 CALL                             R45 2 1
      624 SETTABLEKS                       R45 R44 K96 ["OverlayPortal"]
      626 GETUPVAL                         R46 11
      627 GETTABLEKS                       R46 R46 K14 ["FoundationCenterSheetUseStableContainer"]
      629 JUMPIFNOT                        R46 ; [+11]
      630 GETUPVAL                         R45 26
      631 GETTABLEKS                       R45 R45 K99 ["createPortal"]
      633 DUPTABLE                         R46 K113 [{"Sheet", "Shadow"}]
      634 SETTABLEKS                       R39 R46 K0 ["Sheet"]
      636 SETTABLEKS                       R40 R46 K112 ["Shadow"]
      638 MOVE                             R47 R35
      639 CALL                             R45 2 1
      640 JUMP                             ; [+1]
      641 LOADNIL                          R45
      642 SETTABLEKS                       R45 R44 K97 ["SheetContent"]
      644 CALL                             R41 3 1
      645 CLOSEUPVALS                      R25
      646 RETURN                           R41 1

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
      141 GETTABLEKS                       R22 R0 K16 ["Providers"]
      143 GETTABLEKS                       R22 R22 K36 ["Preferences"]
      145 GETTABLEKS                       R22 R22 K37 ["usePreferences"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K4 ["Parent"]
      154 GETTABLEKS                       R23 R23 K38 ["SheetContext"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K39 ["Types"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETIMPORT                        R25 K1 [script]
      170 GETTABLEKS                       R25 R25 K4 ["Parent"]
      172 GETTABLEKS                       R25 R25 K40 ["SheetType"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K6 [require]
      177 GETIMPORT                        R26 K1 [script]
      179 GETTABLEKS                       R26 R26 K4 ["Parent"]
      181 GETTABLEKS                       R26 R26 K41 ["childrenHasFullBleed"]
      183 CALL                             R25 1 1
      184 GETIMPORT                        R26 K6 [require]
      186 GETTABLEKS                       R27 R0 K24 ["Components"]
      188 GETTABLEKS                       R27 R27 K42 ["CloseAffordance"]
      190 CALL                             R26 1 1
      191 GETIMPORT                        R27 K6 [require]
      193 GETTABLEKS                       R28 R0 K24 ["Components"]
      195 GETTABLEKS                       R28 R28 K43 ["Image"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K6 [require]
      200 GETTABLEKS                       R29 R0 K24 ["Components"]
      202 GETTABLEKS                       R29 R29 K44 ["View"]
      204 CALL                             R28 1 1
      205 DUPTABLE                         R29 K48 [{["size"], ["testId"] = "--foundation-sheet"}]
      206 GETTABLEKS                       R30 R16 K49 ["Medium"]
      208 SETTABLEKS                       R30 R29 K45 ["size"]
      210 GETTABLEKS                       R30 R15 K50 ["SHADOW_IMAGE"]
      212 GETTABLEKS                       R31 R15 K51 ["SHADOW_SIZE"]
      214 DUPCLOSURE                       R32 K52 [PROTO_21]
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R6
      242 GETTABLEKS                       R33 R4 K53 ["memo"]
      244 GETTABLEKS                       R34 R4 K54 ["forwardRef"]
      246 MOVE                             R35 R32
      247 CALL                             R34 1 -1
      248 CALL                             R33 -1 -1
      249 RETURN                           R33 -1
