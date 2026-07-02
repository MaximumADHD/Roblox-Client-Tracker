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
        1 GETTABLEKS                       R0 R0 K0 ["FoundationSheetReducedMotion"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["instant"]
       10 LOADN                            R2 0
       11 CALL                             R1 1 1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["ease"]
       25 LOADN                            R2 0
       26 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K6 ["Ease"]
       30 GETTABLEKS                       R4 R4 K7 ["StandardOut"]
       32 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K8 ["Time"]
       37 GETTABLEKS                       R4 R4 K9 ["Time_300"]
       39 SETTABLEKS                       R4 R3 K4 ["duration"]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 0
       43 GETUPVAL                         R0 4
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K2 ["ease"]
       47 LOADN                            R2 0
       48 DUPTABLE                         R3 K10 [{"duration"}]
       49 GETUPVAL                         R4 5
       50 GETTABLEKS                       R4 R4 K8 ["Time"]
       52 GETTABLEKS                       R4 R4 K11 ["Time_100"]
       54 SETTABLEKS                       R4 R3 K4 ["duration"]
       56 CALL                             R1 2 -1
       57 CALL                             R0 -1 0
       58 RETURN                           R0 0

PROTO_8:
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
       67 GETUPVAL                         R0 8
       68 LOADB                            R1 1
       69 CALL                             R0 1 0
       70 GETUPVAL                         R0 0
       71 LOADB                            R1 1
       72 SETTABLEKS                       R1 R0 K0 ["current"]
       74 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R0 K23 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetContentHeight"], ["setSheetContentHeight"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K24 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K5 ["sheetContentHeight"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K24 ["noop"]
       18 SETTABLEKS                       R1 R0 K6 ["setSheetContentHeight"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K24 ["noop"]
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
       41 GETTABLEKS                       R1 R1 K25 ["Center"]
       43 SETTABLEKS                       R1 R0 K18 ["sheetType"]
       45 GETUPVAL                         R1 10
       46 GETTABLEKS                       R1 R1 K19 ["testId"]
       48 SETTABLEKS                       R1 R0 K19 ["testId"]
       50 GETUPVAL                         R1 11
       51 SETTABLEKS                       R1 R0 K20 ["closeAffordanceRef"]
       53 GETUPVAL                         R1 12
       54 SETTABLEKS                       R1 R0 K21 ["contentStartRef"]
       56 GETUPVAL                         R1 13
       57 SETTABLEKS                       R1 R0 K22 ["setContentStartRef"]
       59 RETURN                           R0 1

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
       14 LOADB                            R6 0
       15 GETUPVAL                         R7 6
       16 GETTABLEKS                       R7 R7 K4 ["FoundationSheetReducedMotion"]
       18 JUMPIFNOT                        R7 ; [+4]
       19 GETUPVAL                         R7 7
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R6 R7 K5 ["reducedMotion"]
       23 GETUPVAL                         R7 8
       24 GETUPVAL                         R9 9
       25 GETTABLEKS                       R10 R2 K6 ["size"]
       27 GETTABLE                         R8 R9 R10
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 8
       30 LOADN                            R9 600
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R9 R4 K7 ["Size"]
       34 GETTABLEKS                       R9 R9 K8 ["Size_800"]
       36 LOADNIL                          R10
       37 LOADNIL                          R11
       38 GETUPVAL                         R12 6
       39 GETTABLEKS                       R12 R12 K9 ["FoundationAddHeightPropToCenterSheet"]
       41 JUMPIFNOT                        R12 ; [+7]
       42 GETUPVAL                         R12 10
       43 GETTABLEKS                       R12 R12 K10 ["useBinding"]
       45 MOVE                             R13 R8
       46 CALL                             R12 1 2
       47 MOVE                             R10 R12
       48 MOVE                             R11 R13
       49 GETUPVAL                         R13 6
       50 GETTABLEKS                       R13 R13 K9 ["FoundationAddHeightPropToCenterSheet"]
       52 JUMPIFNOT                        R13 ; [+7]
       53 JUMPIFNOT                        R10 ; [+6]
       54 NEWCLOSURE                       R14 P0
       55 CAPTURE                          VAL R2
       56 NAMECALL                         R12 R10 K11 ["map"]
       58 CALL                             R12 2 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R12
       61 GETUPVAL                         R13 10
       62 GETTABLEKS                       R13 R13 K12 ["useState"]
       64 LOADB                            R14 1
       65 CALL                             R13 1 2
       66 GETUPVAL                         R15 10
       67 GETTABLEKS                       R15 R15 K13 ["useRef"]
       69 LOADB                            R16 0
       70 CALL                             R15 1 1
       71 GETUPVAL                         R16 11
       72 LOADN                            R17 1
       73 NEWCLOSURE                       R18 P1
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R2
       76 CALL                             R16 2 2
       77 GETUPVAL                         R18 11
       78 MOVE                             R19 R9
       79 NEWCLOSURE                       R20 P2
       80 CAPTURE                          VAL R14
       81 CALL                             R18 2 2
       82 GETUPVAL                         R20 10
       83 GETTABLEKS                       R20 R20 K10 ["useBinding"]
       85 LOADB                            R21 0
       86 CALL                             R20 1 2
       87 GETUPVAL                         R22 10
       88 GETTABLEKS                       R22 R22 K10 ["useBinding"]
       90 LOADB                            R23 0
       91 CALL                             R22 1 2
       92 GETUPVAL                         R24 10
       93 GETTABLEKS                       R24 R24 K10 ["useBinding"]
       95 LOADN                            R25 0
       96 CALL                             R24 1 2
       97 GETUPVAL                         R26 10
       98 GETTABLEKS                       R26 R26 K10 ["useBinding"]
      100 LOADN                            R27 0
      101 CALL                             R26 1 2
      102 GETUPVAL                         R28 10
      103 GETTABLEKS                       R28 R28 K13 ["useRef"]
      105 LOADNIL                          R29
      106 CALL                             R28 1 1
      107 GETUPVAL                         R29 10
      108 GETTABLEKS                       R29 R29 K12 ["useState"]
      110 LOADNIL                          R30
      111 CALL                             R29 1 2
      112 GETUPVAL                         R32 6
      113 GETTABLEKS                       R32 R32 K14 ["FoundationCenterSheetUseStableContainer"]
      115 JUMPIFNOT                        R32 ; [+8]
      116 GETUPVAL                         R31 10
      117 GETTABLEKS                       R31 R31 K15 ["useMemo"]
      119 DUPCLOSURE                       R32 K16 [PROTO_3]
      120 NEWTABLE                         R33 0 0
      122 CALL                             R31 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R31
      125 GETUPVAL                         R32 6
      126 GETTABLEKS                       R32 R32 K14 ["FoundationCenterSheetUseStableContainer"]
      128 JUMPIFNOT                        R32 ; [+8]
      129 GETUPVAL                         R32 10
      130 GETTABLEKS                       R32 R32 K17 ["useEffect"]
      132 NEWCLOSURE                       R33 P4
      133 CAPTURE                          VAL R31
      134 NEWTABLE                         R34 0 0
      136 CALL                             R32 2 0
      137 GETUPVAL                         R33 6
      138 GETTABLEKS                       R33 R33 K14 ["FoundationCenterSheetUseStableContainer"]
      140 JUMPIFNOT                        R33 ; [+9]
      141 GETUPVAL                         R32 10
      142 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      144 NEWCLOSURE                       R33 P5
      145 CAPTURE                          VAL R31
      146 NEWTABLE                         R34 0 0
      148 CALL                             R32 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R32
      151 GETUPVAL                         R33 10
      152 GETTABLEKS                       R33 R33 K17 ["useEffect"]
      154 NEWCLOSURE                       R34 P6
      155 CAPTURE                          UPVAL U6
      156 CAPTURE                          REF R6
      157 CAPTURE                          VAL R19
      158 CAPTURE                          UPVAL U12
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R4
      161 NEWTABLE                         R35 0 0
      163 CALL                             R33 2 0
      164 GETUPVAL                         R33 10
      165 GETTABLEKS                       R33 R33 K18 ["useCallback"]
      167 NEWCLOSURE                       R34 P7
      168 CAPTURE                          VAL R15
      169 CAPTURE                          UPVAL U6
      170 CAPTURE                          REF R6
      171 CAPTURE                          VAL R19
      172 CAPTURE                          UPVAL U12
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R14
      177 NEWTABLE                         R35 0 2
      179 MOVE                             R36 R9
      180 GETUPVAL                         R38 6
      181 GETTABLEKS                       R38 R38 K4 ["FoundationSheetReducedMotion"]
      183 JUMPIFNOT                        R38 ; [+2]
      184 MOVE                             R37 R6
      185 JUMP                             ; [+1]
      186 LOADNIL                          R37
      187 SETLIST                          R35 R36 2 [1]
      189 CALL                             R33 2 1
      190 GETUPVAL                         R34 10
      191 GETTABLEKS                       R34 R34 K19 ["useImperativeHandle"]
      193 GETTABLEKS                       R35 R2 K20 ["sheetRef"]
      195 NEWCLOSURE                       R36 P8
      196 CAPTURE                          VAL R33
      197 NEWTABLE                         R37 0 0
      199 CALL                             R34 3 0
      200 GETUPVAL                         R34 10
      201 GETTABLEKS                       R34 R34 K15 ["useMemo"]
      203 NEWCLOSURE                       R35 P9
      204 CAPTURE                          UPVAL U13
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R33
      213 CAPTURE                          UPVAL U14
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R30
      218 NEWTABLE                         R36 0 5
      220 GETTABLEKS                       R37 R2 K21 ["testId"]
      222 MOVE                             R38 R33
      223 MOVE                             R39 R29
      224 MOVE                             R40 R28
      225 MOVE                             R41 R12
      226 SETLIST                          R36 R37 5 [1]
      228 CALL                             R34 2 1
      229 GETUPVAL                         R35 10
      230 GETTABLEKS                       R35 R35 K22 ["createElement"]
      232 GETUPVAL                         R36 15
      233 DUPTABLE                         R37 K35 [{["ClipsDescendants"] = True, ["Size"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 2, ["onActivated"], ["onAbsoluteSizeChanged"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      234 GETUPVAL                         R39 6
      235 GETTABLEKS                       R39 R39 K9 ["FoundationAddHeightPropToCenterSheet"]
      237 JUMPIFNOT                        R39 ; [+9]
      238 GETTABLEKS                       R39 R2 K36 ["centerSheetHeight"]
      240 JUMPIFNOT                        R39 ; [+6]
      241 JUMPIFNOT                        R12 ; [+5]
      242 DUPCLOSURE                       R40 K37 [PROTO_11]
      243 NAMECALL                         R38 R12 K11 ["map"]
      245 CALL                             R38 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R38
      248 SETTABLEKS                       R38 R37 K7 ["Size"]
      250 GETUPVAL                         R39 6
      251 GETTABLEKS                       R39 R39 K9 ["FoundationAddHeightPropToCenterSheet"]
      253 JUMPIFNOT                        R39 ; [+12]
      254 GETTABLEKS                       R39 R2 K36 ["centerSheetHeight"]
      256 JUMPIFNOT                        R39 ; [+9]
      257 JUMPIFNOT                        R10 ; [+8]
      258 DUPTABLE                         R38 K39 [{"MaxSize"}]
      259 DUPCLOSURE                       R41 K40 [PROTO_12]
      260 NAMECALL                         R39 R10 K11 ["map"]
      262 CALL                             R39 2 1
      263 SETTABLEKS                       R39 R38 K38 ["MaxSize"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R38
      267 SETTABLEKS                       R38 R37 K25 ["sizeConstraint"]
      269 DUPTABLE                         R38 K42 [{"affordance"}]
      270 GETUPVAL                         R39 16
      271 GETTABLEKS                       R39 R39 K43 ["None"]
      273 SETTABLEKS                       R39 R38 K41 ["affordance"]
      275 SETTABLEKS                       R38 R37 K26 ["stateLayer"]
      277 GETUPVAL                         R38 13
      278 GETTABLEKS                       R38 R38 K44 ["noop"]
      280 SETTABLEKS                       R38 R37 K29 ["onActivated"]
      282 NEWCLOSURE                       R38 P12
      283 CAPTURE                          VAL R27
      284 SETTABLEKS                       R38 R37 K30 ["onAbsoluteSizeChanged"]
      286 SETTABLEKS                       R1 R37 K31 ["ref"]
      288 GETUPVAL                         R38 17
      289 GETTABLEKS                       R38 R38 K45 ["nonSelectable"]
      291 SETTABLEKS                       R38 R37 K32 ["selection"]
      293 GETUPVAL                         R38 17
      294 GETTABLEKS                       R38 R38 K46 ["isolatedSelectionGroup"]
      296 SETTABLEKS                       R38 R37 K33 ["selectionGroup"]
      298 GETUPVAL                         R39 6
      299 GETTABLEKS                       R39 R39 K9 ["FoundationAddHeightPropToCenterSheet"]
      301 JUMPIFNOT                        R39 ; [+14]
      302 NEWTABLE                         R38 2 0
      304 LOADB                            R39 1
      305 SETTABLEKS                       R39 R38 K47 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      307 GETTABLEKS                       R40 R2 K36 ["centerSheetHeight"]
      309 JUMPIFEQKNIL                     R40 ; [+2]
      311 LOADB                            R39 0 +1
      312 LOADB                            R39 1
      313 SETTABLEKS                       R39 R38 K48 ["size-full-0 auto-y"]
      315 JUMP                             ; [+1]
      316 LOADK                            R38 K49 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      317 SETTABLEKS                       R38 R37 K34 ["tag"]
      319 GETTABLEKS                       R38 R2 K21 ["testId"]
      321 SETTABLEKS                       R38 R37 K21 ["testId"]
      323 DUPTABLE                         R38 K52 [{"Content", "CloseAffordance"}]
      324 GETUPVAL                         R39 10
      325 GETTABLEKS                       R39 R39 K22 ["createElement"]
      327 GETUPVAL                         R40 15
      328 DUPTABLE                         R41 K54 [{["Size"], ["tag"] = "size-full-0 auto-y col items-center clip"}]
      329 GETUPVAL                         R43 6
      330 GETTABLEKS                       R43 R43 K9 ["FoundationAddHeightPropToCenterSheet"]
      332 JUMPIFNOT                        R43 ; [+9]
      333 GETTABLEKS                       R43 R2 K36 ["centerSheetHeight"]
      335 JUMPIFNOT                        R43 ; [+6]
      336 JUMPIFNOT                        R12 ; [+5]
      337 DUPCLOSURE                       R44 K55 [PROTO_14]
      338 NAMECALL                         R42 R12 K11 ["map"]
      340 CALL                             R42 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R42
      343 SETTABLEKS                       R42 R41 K7 ["Size"]
      345 GETUPVAL                         R42 10
      346 GETTABLEKS                       R42 R42 K22 ["createElement"]
      348 GETUPVAL                         R43 18
      349 GETTABLEKS                       R43 R43 K56 ["Provider"]
      351 DUPTABLE                         R44 K58 [{"value"}]
      352 SETTABLEKS                       R34 R44 K57 ["value"]
      354 GETUPVAL                         R45 10
      355 GETTABLEKS                       R45 R45 K22 ["createElement"]
      357 GETUPVAL                         R46 19
      358 DUPTABLE                         R47 K60 [{"owner"}]
      359 SETTABLEKS                       R5 R47 K59 ["owner"]
      361 GETTABLEKS                       R48 R2 K61 ["children"]
      363 CALL                             R45 3 -1
      364 CALL                             R42 -1 -1
      365 CALL                             R39 -1 1
      366 SETTABLEKS                       R39 R38 K50 ["Content"]
      368 GETUPVAL                         R39 10
      369 GETTABLEKS                       R39 R39 K22 ["createElement"]
      371 GETUPVAL                         R40 20
      372 DUPTABLE                         R41 K67 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      373 SETTABLEKS                       R33 R41 K29 ["onActivated"]
      375 SETTABLEKS                       R28 R41 K31 ["ref"]
      377 SETTABLEKS                       R29 R41 K62 ["NextSelectionDown"]
      379 GETUPVAL                         R42 21
      380 GETTABLEKS                       R42 R42 K68 ["Utility"]
      382 SETTABLEKS                       R42 R41 K63 ["variant"]
      384 GETIMPORT                        R42 K71 [UDim2.new]
      386 LOADN                            R43 1
      387 GETTABLEKS                       R45 R4 K72 ["Margin"]
      389 GETTABLEKS                       R45 R45 K73 ["Small"]
      391 MINUS                            R44 R45
      392 LOADN                            R45 0
      393 GETTABLEKS                       R46 R4 K72 ["Margin"]
      395 GETTABLEKS                       R46 R46 K73 ["Small"]
      397 CALL                             R42 4 1
      398 SETTABLEKS                       R42 R41 K64 ["Position"]
      400 GETIMPORT                        R42 K75 [Vector2.new]
      402 LOADN                            R43 1
      403 LOADN                            R44 0
      404 CALL                             R42 2 1
      405 SETTABLEKS                       R42 R41 K65 ["AnchorPoint"]
      407 DUPCLOSURE                       R44 K76 [PROTO_15]
      408 NAMECALL                         R42 R22 K11 ["map"]
      410 CALL                             R42 2 1
      411 SETTABLEKS                       R42 R41 K66 ["Visible"]
      413 LOADK                            R43 K77 ["%*--close-affordance"]
      414 GETTABLEKS                       R45 R2 K21 ["testId"]
      416 NAMECALL                         R43 R43 K78 ["format"]
      418 CALL                             R43 2 1
      419 MOVE                             R42 R43
      420 SETTABLEKS                       R42 R41 K21 ["testId"]
      422 CALL                             R39 2 1
      423 SETTABLEKS                       R39 R38 K51 ["CloseAffordance"]
      425 CALL                             R35 3 1
      426 GETUPVAL                         R36 10
      427 GETTABLEKS                       R36 R36 K22 ["createElement"]
      429 GETUPVAL                         R37 22
      430 DUPTABLE                         R38 K84 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 1, ["slice"], ["imageStyle"], ["tag"] = "anchor-center-left"}]
      431 GETUPVAL                         R39 23
      432 SETTABLEKS                       R39 R38 K79 ["Image"]
      434 DUPCLOSURE                       R41 K85 [PROTO_16]
      435 CAPTURE                          UPVAL U24
      436 NAMECALL                         R39 R26 K11 ["map"]
      438 CALL                             R39 2 1
      439 SETTABLEKS                       R39 R38 K7 ["Size"]
      441 GETIMPORT                        R39 K71 [UDim2.new]
      443 LOADN                            R40 0
      444 GETUPVAL                         R42 24
      445 MINUS                            R41 R42
      446 LOADK                            R42 K86 [0.5]
      447 LOADN                            R43 0
      448 CALL                             R39 4 1
      449 SETTABLEKS                       R39 R38 K64 ["Position"]
      451 DUPTABLE                         R39 K89 [{["center"], ["scale"] = 2}]
      452 GETIMPORT                        R40 K91 [Rect.new]
      454 GETUPVAL                         R41 24
      455 GETUPVAL                         R42 24
      456 GETUPVAL                         R44 24
      457 ADDK                             R43 R44 K80 [1]
      458 GETUPVAL                         R45 24
      459 ADDK                             R44 R45 K80 [1]
      460 CALL                             R40 4 1
      461 SETTABLEKS                       R40 R39 K87 ["center"]
      463 SETTABLEKS                       R39 R38 K81 ["slice"]
      465 GETTABLEKS                       R39 R4 K92 ["Color"]
      467 GETTABLEKS                       R39 R39 K93 ["Extended"]
      469 GETTABLEKS                       R39 R39 K94 ["Black"]
      471 GETTABLEKS                       R39 R39 K95 ["Black_10"]
      473 SETTABLEKS                       R39 R38 K82 ["imageStyle"]
      475 CALL                             R36 2 1
      476 MOVE                             R37 R3
      477 JUMPIFNOT                        R37 ; [+181]
      478 GETUPVAL                         R37 10
      479 GETTABLEKS                       R37 R37 K22 ["createElement"]
      481 GETUPVAL                         R38 10
      482 GETTABLEKS                       R38 R38 K96 ["Fragment"]
      484 LOADNIL                          R39
      485 DUPTABLE                         R40 K99 [{"OverlayPortal", "SheetContent"}]
      486 GETUPVAL                         R41 25
      487 GETTABLEKS                       R41 R41 K100 ["createPortal"]
      489 GETUPVAL                         R42 10
      490 GETTABLEKS                       R42 R42 K22 ["createElement"]
      492 GETUPVAL                         R43 15
      493 DUPTABLE                         R44 K102 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      494 GETTABLEKS                       R45 R5 K103 ["zIndex"]
      496 SETTABLEKS                       R45 R44 K27 ["ZIndex"]
      498 LOADK                            R46 K104 ["%*--surface"]
      499 GETTABLEKS                       R48 R2 K21 ["testId"]
      501 NAMECALL                         R46 R46 K78 ["format"]
      503 CALL                             R46 2 1
      504 MOVE                             R45 R46
      505 SETTABLEKS                       R45 R44 K21 ["testId"]
      507 DUPTABLE                         R45 K107 [{"SheetContainer", "Backdrop"}]
      508 GETUPVAL                         R46 10
      509 GETTABLEKS                       R46 R46 K22 ["createElement"]
      511 GETUPVAL                         R47 15
      512 DUPTABLE                         R48 K110 [{["ref"], ["ZIndex"] = 2, ["sizeConstraint"], ["Position"], ["tag"] = "size-full col align-y-center padding-medium anchor-center-center", ["testId"], ["GroupTransparency"], ["onAbsoluteSizeChanged"]}]
      513 SETTABLEKS                       R32 R48 K31 ["ref"]
      515 DUPTABLE                         R49 K39 [{"MaxSize"}]
      516 GETIMPORT                        R50 K75 [Vector2.new]
      518 MOVE                             R51 R7
      519 MOVE                             R52 R8
      520 CALL                             R50 2 1
      521 SETTABLEKS                       R50 R49 K38 ["MaxSize"]
      523 SETTABLEKS                       R49 R48 K25 ["sizeConstraint"]
      525 DUPCLOSURE                       R51 K111 [PROTO_17]
      526 NAMECALL                         R49 R18 K11 ["map"]
      528 CALL                             R49 2 1
      529 SETTABLEKS                       R49 R48 K64 ["Position"]
      531 LOADK                            R50 K112 ["%*--center-sheet-container"]
      532 GETTABLEKS                       R52 R2 K21 ["testId"]
      534 NAMECALL                         R50 R50 K78 ["format"]
      536 CALL                             R50 2 1
      537 MOVE                             R49 R50
      538 SETTABLEKS                       R49 R48 K21 ["testId"]
      540 JUMPIFNOT                        R13 ; [+6]
      541 NEWCLOSURE                       R51 P17
      542 CAPTURE                          VAL R9
      543 NAMECALL                         R49 R18 K11 ["map"]
      545 CALL                             R49 2 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R49
      548 SETTABLEKS                       R49 R48 K109 ["GroupTransparency"]
      550 GETUPVAL                         R50 6
      551 GETTABLEKS                       R50 R50 K9 ["FoundationAddHeightPropToCenterSheet"]
      553 JUMPIFNOT                        R50 ; [+9]
      554 GETTABLEKS                       R50 R2 K36 ["centerSheetHeight"]
      556 JUMPIFNOT                        R50 ; [+6]
      557 JUMPIFNOT                        R11 ; [+5]
      558 NEWCLOSURE                       R49 P18
      559 CAPTURE                          VAL R4
      560 CAPTURE                          REF R11
      561 CAPTURE                          VAL R8
      562 JUMP                             ; [+1]
      563 LOADNIL                          R49
      564 SETTABLEKS                       R49 R48 K30 ["onAbsoluteSizeChanged"]
      566 GETUPVAL                         R50 6
      567 GETTABLEKS                       R50 R50 K14 ["FoundationCenterSheetUseStableContainer"]
      569 JUMPIF                           R50 ; [+13]
      570 DUPTABLE                         R49 K114 [{"Sheet", "Shadow"}]
      571 SETTABLEKS                       R35 R49 K0 ["Sheet"]
      573 GETUPVAL                         R50 10
      574 GETTABLEKS                       R50 R50 K22 ["createElement"]
      576 LOADK                            R51 K115 ["Folder"]
      577 LOADNIL                          R52
      578 MOVE                             R53 R36
      579 CALL                             R50 3 1
      580 SETTABLEKS                       R50 R49 K113 ["Shadow"]
      582 JUMP                             ; [+1]
      583 LOADNIL                          R49
      584 CALL                             R46 3 1
      585 SETTABLEKS                       R46 R45 K105 ["SheetContainer"]
      587 GETUPVAL                         R46 10
      588 GETTABLEKS                       R46 R46 K22 ["createElement"]
      590 GETUPVAL                         R47 15
      591 DUPTABLE                         R48 K117 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      592 GETIMPORT                        R49 K119 [UDim2.fromScale]
      594 LOADN                            R50 2
      595 LOADN                            R51 2
      596 CALL                             R49 2 1
      597 SETTABLEKS                       R49 R48 K7 ["Size"]
      599 GETIMPORT                        R49 K119 [UDim2.fromScale]
      601 LOADK                            R50 K120 [-0.5]
      602 LOADK                            R51 K120 [-0.5]
      603 CALL                             R49 2 1
      604 SETTABLEKS                       R49 R48 K64 ["Position"]
      606 DUPTABLE                         R49 K42 [{"affordance"}]
      607 GETUPVAL                         R50 16
      608 GETTABLEKS                       R50 R50 K43 ["None"]
      610 SETTABLEKS                       R50 R49 K41 ["affordance"]
      612 SETTABLEKS                       R49 R48 K26 ["stateLayer"]
      614 NEWCLOSURE                       R51 P19
      615 CAPTURE                          VAL R4
      616 NAMECALL                         R49 R16 K11 ["map"]
      618 CALL                             R49 2 1
      619 SETTABLEKS                       R49 R48 K116 ["backgroundStyle"]
      621 SETTABLEKS                       R33 R48 K29 ["onActivated"]
      623 LOADK                            R50 K121 ["%*--backdrop"]
      624 GETTABLEKS                       R52 R2 K21 ["testId"]
      626 NAMECALL                         R50 R50 K78 ["format"]
      628 CALL                             R50 2 1
      629 MOVE                             R49 R50
      630 SETTABLEKS                       R49 R48 K21 ["testId"]
      632 CALL                             R46 2 1
      633 SETTABLEKS                       R46 R45 K106 ["Backdrop"]
      635 CALL                             R42 3 1
      636 MOVE                             R43 R3
      637 CALL                             R41 2 1
      638 SETTABLEKS                       R41 R40 K97 ["OverlayPortal"]
      640 GETUPVAL                         R42 6
      641 GETTABLEKS                       R42 R42 K14 ["FoundationCenterSheetUseStableContainer"]
      643 JUMPIFNOT                        R42 ; [+11]
      644 GETUPVAL                         R41 25
      645 GETTABLEKS                       R41 R41 K100 ["createPortal"]
      647 DUPTABLE                         R42 K114 [{"Sheet", "Shadow"}]
      648 SETTABLEKS                       R35 R42 K0 ["Sheet"]
      650 SETTABLEKS                       R36 R42 K113 ["Shadow"]
      652 MOVE                             R43 R31
      653 CALL                             R41 2 1
      654 JUMP                             ; [+1]
      655 LOADNIL                          R41
      656 SETTABLEKS                       R41 R40 K98 ["SheetContent"]
      658 CALL                             R37 3 1
      659 CLOSEUPVALS                      R6
      660 RETURN                           R37 1

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
      177 GETTABLEKS                       R26 R0 K24 ["Components"]
      179 GETTABLEKS                       R26 R26 K41 ["CloseAffordance"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K6 [require]
      184 GETTABLEKS                       R27 R0 K24 ["Components"]
      186 GETTABLEKS                       R27 R27 K42 ["Image"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K6 [require]
      191 GETTABLEKS                       R28 R0 K24 ["Components"]
      193 GETTABLEKS                       R28 R28 K43 ["View"]
      195 CALL                             R27 1 1
      196 DUPTABLE                         R28 K47 [{["size"], ["testId"] = "--foundation-sheet"}]
      197 GETTABLEKS                       R29 R16 K48 ["Medium"]
      199 SETTABLEKS                       R29 R28 K44 ["size"]
      201 GETTABLEKS                       R29 R15 K49 ["SHADOW_IMAGE"]
      203 GETTABLEKS                       R30 R15 K50 ["SHADOW_SIZE"]
      205 DUPCLOSURE                       R31 K51 [PROTO_21]
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R27
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R30
      231 CAPTURE                          VAL R6
      232 GETTABLEKS                       R32 R4 K52 ["memo"]
      234 GETTABLEKS                       R33 R4 K53 ["forwardRef"]
      236 MOVE                             R34 R31
      237 CALL                             R33 1 -1
      238 CALL                             R32 -1 -1
      239 RETURN                           R32 -1
