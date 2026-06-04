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
        0 DUPTABLE                         R0 K21 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetContentHeight", "setSheetContentHeight", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K22 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K4 ["sheetContentHeight"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K22 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetContentHeight"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["sheetHeightAvailable"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K22 ["noop"]
       29 SETTABLEKS                       R1 R0 K7 ["setSheetHeightAvailable"]
       31 LOADN                            R1 0
       32 SETTABLEKS                       R1 R0 K8 ["safeAreaPadding"]
       34 LOADN                            R1 0
       35 SETTABLEKS                       R1 R0 K9 ["bottomPadding"]
       37 LOADB                            R1 1
       38 SETTABLEKS                       R1 R0 K10 ["innerScrollingEnabled"]
       40 GETUPVAL                         R1 4
       41 SETTABLEKS                       R1 R0 K11 ["innerScrollY"]
       43 GETUPVAL                         R1 5
       44 SETTABLEKS                       R1 R0 K12 ["setInnerScrollY"]
       46 GETUPVAL                         R1 6
       47 SETTABLEKS                       R1 R0 K13 ["hasHeader"]
       49 GETUPVAL                         R1 7
       50 SETTABLEKS                       R1 R0 K14 ["setHasHeader"]
       52 GETUPVAL                         R1 8
       53 SETTABLEKS                       R1 R0 K15 ["closeSheet"]
       55 GETUPVAL                         R1 9
       56 GETTABLEKS                       R1 R1 K23 ["Center"]
       58 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       60 GETUPVAL                         R1 10
       61 GETTABLEKS                       R1 R1 K17 ["testId"]
       63 SETTABLEKS                       R1 R0 K17 ["testId"]
       65 GETUPVAL                         R1 11
       66 SETTABLEKS                       R1 R0 K18 ["closeAffordanceRef"]
       68 GETUPVAL                         R1 12
       69 SETTABLEKS                       R1 R0 K19 ["contentStartRef"]
       71 GETUPVAL                         R1 13
       72 SETTABLEKS                       R1 R0 K20 ["setContentStartRef"]
       74 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 LOADB                            R6 0
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R7 R7 K3 ["FoundationSheetReducedMotion"]
       21 JUMPIFNOT                        R7 ; [+4]
       22 GETUPVAL                         R7 7
       23 CALL                             R7 0 1
       24 GETTABLEKS                       R6 R7 K4 ["reducedMotion"]
       26 GETUPVAL                         R7 8
       27 GETUPVAL                         R9 9
       28 GETTABLEKS                       R10 R2 K5 ["size"]
       30 GETTABLE                         R8 R9 R10
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 8
       33 LOADN                            R9 88
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R9 R4 K6 ["Size"]
       37 GETTABLEKS                       R9 R9 K7 ["Size_800"]
       39 LOADNIL                          R10
       40 LOADNIL                          R11
       41 GETUPVAL                         R12 6
       42 GETTABLEKS                       R12 R12 K8 ["FoundationAddHeightPropToCenterSheet"]
       44 JUMPIFNOT                        R12 ; [+7]
       45 GETUPVAL                         R12 10
       46 GETTABLEKS                       R12 R12 K9 ["useBinding"]
       48 MOVE                             R13 R8
       49 CALL                             R12 1 2
       50 MOVE                             R10 R12
       51 MOVE                             R11 R13
       52 GETUPVAL                         R13 6
       53 GETTABLEKS                       R13 R13 K8 ["FoundationAddHeightPropToCenterSheet"]
       55 JUMPIFNOT                        R13 ; [+7]
       56 JUMPIFNOT                        R10 ; [+6]
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          VAL R2
       59 NAMECALL                         R12 R10 K10 ["map"]
       61 CALL                             R12 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R12
       64 GETUPVAL                         R13 10
       65 GETTABLEKS                       R13 R13 K11 ["useState"]
       67 LOADB                            R14 1
       68 CALL                             R13 1 2
       69 GETUPVAL                         R15 10
       70 GETTABLEKS                       R15 R15 K12 ["useRef"]
       72 LOADB                            R16 0
       73 CALL                             R15 1 1
       74 GETUPVAL                         R16 11
       75 LOADN                            R17 1
       76 NEWCLOSURE                       R18 P1
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R2
       79 CALL                             R16 2 2
       80 GETUPVAL                         R18 11
       81 MOVE                             R19 R9
       82 NEWCLOSURE                       R20 P2
       83 CAPTURE                          VAL R14
       84 CALL                             R18 2 2
       85 GETUPVAL                         R20 10
       86 GETTABLEKS                       R20 R20 K9 ["useBinding"]
       88 LOADB                            R21 0
       89 CALL                             R20 1 2
       90 GETUPVAL                         R22 10
       91 GETTABLEKS                       R22 R22 K9 ["useBinding"]
       93 LOADB                            R23 0
       94 CALL                             R22 1 2
       95 GETUPVAL                         R24 10
       96 GETTABLEKS                       R24 R24 K9 ["useBinding"]
       98 LOADN                            R25 0
       99 CALL                             R24 1 2
      100 GETUPVAL                         R26 10
      101 GETTABLEKS                       R26 R26 K9 ["useBinding"]
      103 LOADN                            R27 0
      104 CALL                             R26 1 2
      105 GETUPVAL                         R28 10
      106 GETTABLEKS                       R28 R28 K12 ["useRef"]
      108 LOADNIL                          R29
      109 CALL                             R28 1 1
      110 GETUPVAL                         R29 10
      111 GETTABLEKS                       R29 R29 K11 ["useState"]
      113 LOADNIL                          R30
      114 CALL                             R29 1 2
      115 GETUPVAL                         R32 6
      116 GETTABLEKS                       R32 R32 K13 ["FoundationCenterSheetUseStableContainer"]
      118 JUMPIFNOT                        R32 ; [+8]
      119 GETUPVAL                         R31 10
      120 GETTABLEKS                       R31 R31 K14 ["useMemo"]
      122 DUPCLOSURE                       R32 K15 [PROTO_3]
      123 NEWTABLE                         R33 0 0
      125 CALL                             R31 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R31
      128 GETUPVAL                         R32 6
      129 GETTABLEKS                       R32 R32 K13 ["FoundationCenterSheetUseStableContainer"]
      131 JUMPIFNOT                        R32 ; [+8]
      132 GETUPVAL                         R32 10
      133 GETTABLEKS                       R32 R32 K16 ["useEffect"]
      135 NEWCLOSURE                       R33 P4
      136 CAPTURE                          VAL R31
      137 NEWTABLE                         R34 0 0
      139 CALL                             R32 2 0
      140 GETUPVAL                         R33 6
      141 GETTABLEKS                       R33 R33 K13 ["FoundationCenterSheetUseStableContainer"]
      143 JUMPIFNOT                        R33 ; [+9]
      144 GETUPVAL                         R32 10
      145 GETTABLEKS                       R32 R32 K17 ["useCallback"]
      147 NEWCLOSURE                       R33 P5
      148 CAPTURE                          VAL R31
      149 NEWTABLE                         R34 0 0
      151 CALL                             R32 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R32
      154 GETUPVAL                         R33 10
      155 GETTABLEKS                       R33 R33 K16 ["useEffect"]
      157 NEWCLOSURE                       R34 P6
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          REF R6
      160 CAPTURE                          VAL R19
      161 CAPTURE                          UPVAL U12
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R4
      164 NEWTABLE                         R35 0 0
      166 CALL                             R33 2 0
      167 GETUPVAL                         R33 10
      168 GETTABLEKS                       R33 R33 K17 ["useCallback"]
      170 NEWCLOSURE                       R34 P7
      171 CAPTURE                          VAL R15
      172 CAPTURE                          UPVAL U6
      173 CAPTURE                          REF R6
      174 CAPTURE                          VAL R19
      175 CAPTURE                          UPVAL U12
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R14
      180 NEWTABLE                         R35 0 2
      182 MOVE                             R36 R9
      183 GETUPVAL                         R38 6
      184 GETTABLEKS                       R38 R38 K3 ["FoundationSheetReducedMotion"]
      186 JUMPIFNOT                        R38 ; [+2]
      187 MOVE                             R37 R6
      188 JUMP                             ; [+1]
      189 LOADNIL                          R37
      190 SETLIST                          R35 R36 2 [1]
      192 CALL                             R33 2 1
      193 GETUPVAL                         R34 10
      194 GETTABLEKS                       R34 R34 K18 ["useImperativeHandle"]
      196 GETTABLEKS                       R35 R2 K19 ["sheetRef"]
      198 NEWCLOSURE                       R36 P8
      199 CAPTURE                          VAL R33
      200 NEWTABLE                         R37 0 0
      202 CALL                             R34 3 0
      203 GETUPVAL                         R34 10
      204 GETTABLEKS                       R34 R34 K14 ["useMemo"]
      206 NEWCLOSURE                       R35 P9
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R33
      216 CAPTURE                          UPVAL U14
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R29
      220 CAPTURE                          VAL R30
      221 NEWTABLE                         R36 0 5
      223 GETTABLEKS                       R37 R2 K20 ["testId"]
      225 MOVE                             R38 R33
      226 MOVE                             R39 R29
      227 MOVE                             R40 R28
      228 MOVE                             R41 R12
      229 SETLIST                          R36 R37 5 [1]
      231 CALL                             R34 2 1
      232 GETUPVAL                         R35 10
      233 GETTABLEKS                       R35 R35 K21 ["createElement"]
      235 GETUPVAL                         R36 15
      236 DUPTABLE                         R37 K32 [{"ClipsDescendants", "Size", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      237 LOADB                            R38 1
      238 SETTABLEKS                       R38 R37 K22 ["ClipsDescendants"]
      240 GETUPVAL                         R39 6
      241 GETTABLEKS                       R39 R39 K8 ["FoundationAddHeightPropToCenterSheet"]
      243 JUMPIFNOT                        R39 ; [+9]
      244 GETTABLEKS                       R39 R2 K33 ["centerSheetHeight"]
      246 JUMPIFNOT                        R39 ; [+6]
      247 JUMPIFNOT                        R12 ; [+5]
      248 DUPCLOSURE                       R40 K34 [PROTO_11]
      249 NAMECALL                         R38 R12 K10 ["map"]
      251 CALL                             R38 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R38
      254 SETTABLEKS                       R38 R37 K6 ["Size"]
      256 GETUPVAL                         R39 6
      257 GETTABLEKS                       R39 R39 K8 ["FoundationAddHeightPropToCenterSheet"]
      259 JUMPIFNOT                        R39 ; [+12]
      260 GETTABLEKS                       R39 R2 K33 ["centerSheetHeight"]
      262 JUMPIFNOT                        R39 ; [+9]
      263 JUMPIFNOT                        R10 ; [+8]
      264 DUPTABLE                         R38 K36 [{"MaxSize"}]
      265 DUPCLOSURE                       R41 K37 [PROTO_12]
      266 NAMECALL                         R39 R10 K10 ["map"]
      268 CALL                             R39 2 1
      269 SETTABLEKS                       R39 R38 K35 ["MaxSize"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R38
      273 SETTABLEKS                       R38 R37 K23 ["sizeConstraint"]
      275 DUPTABLE                         R38 K39 [{"affordance"}]
      276 GETUPVAL                         R39 16
      277 GETTABLEKS                       R39 R39 K40 ["None"]
      279 SETTABLEKS                       R39 R38 K38 ["affordance"]
      281 SETTABLEKS                       R38 R37 K24 ["stateLayer"]
      283 LOADN                            R38 2
      284 SETTABLEKS                       R38 R37 K25 ["ZIndex"]
      286 GETUPVAL                         R38 13
      287 GETTABLEKS                       R38 R38 K41 ["noop"]
      289 SETTABLEKS                       R38 R37 K26 ["onActivated"]
      291 NEWCLOSURE                       R38 P12
      292 CAPTURE                          VAL R27
      293 SETTABLEKS                       R38 R37 K27 ["onAbsoluteSizeChanged"]
      295 SETTABLEKS                       R1 R37 K28 ["ref"]
      297 GETUPVAL                         R38 17
      298 GETTABLEKS                       R38 R38 K42 ["nonSelectable"]
      300 SETTABLEKS                       R38 R37 K29 ["selection"]
      302 GETUPVAL                         R38 17
      303 GETTABLEKS                       R38 R38 K43 ["isolatedSelectionGroup"]
      305 SETTABLEKS                       R38 R37 K30 ["selectionGroup"]
      307 GETUPVAL                         R39 6
      308 GETTABLEKS                       R39 R39 K8 ["FoundationAddHeightPropToCenterSheet"]
      310 JUMPIFNOT                        R39 ; [+14]
      311 NEWTABLE                         R38 2 0
      313 LOADB                            R39 1
      314 SETTABLEKS                       R39 R38 K44 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      316 GETTABLEKS                       R40 R2 K33 ["centerSheetHeight"]
      318 JUMPIFEQKNIL                     R40 ; [+2]
      320 LOADB                            R39 0 +1
      321 LOADB                            R39 1
      322 SETTABLEKS                       R39 R38 K45 ["size-full-0 auto-y"]
      324 JUMP                             ; [+1]
      325 LOADK                            R38 K46 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      326 SETTABLEKS                       R38 R37 K31 ["tag"]
      328 GETTABLEKS                       R38 R2 K20 ["testId"]
      330 SETTABLEKS                       R38 R37 K20 ["testId"]
      332 DUPTABLE                         R38 K49 [{"Content", "CloseAffordance"}]
      333 GETUPVAL                         R39 10
      334 GETTABLEKS                       R39 R39 K21 ["createElement"]
      336 GETUPVAL                         R40 15
      337 DUPTABLE                         R41 K50 [{"Size", "tag"}]
      338 GETUPVAL                         R43 6
      339 GETTABLEKS                       R43 R43 K8 ["FoundationAddHeightPropToCenterSheet"]
      341 JUMPIFNOT                        R43 ; [+9]
      342 GETTABLEKS                       R43 R2 K33 ["centerSheetHeight"]
      344 JUMPIFNOT                        R43 ; [+6]
      345 JUMPIFNOT                        R12 ; [+5]
      346 DUPCLOSURE                       R44 K51 [PROTO_14]
      347 NAMECALL                         R42 R12 K10 ["map"]
      349 CALL                             R42 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R42
      352 SETTABLEKS                       R42 R41 K6 ["Size"]
      354 LOADK                            R42 K52 ["size-full-0 auto-y col items-center clip"]
      355 SETTABLEKS                       R42 R41 K31 ["tag"]
      357 GETUPVAL                         R42 10
      358 GETTABLEKS                       R42 R42 K21 ["createElement"]
      360 GETUPVAL                         R43 18
      361 GETTABLEKS                       R43 R43 K53 ["Provider"]
      363 DUPTABLE                         R44 K55 [{"value"}]
      364 SETTABLEKS                       R34 R44 K54 ["value"]
      366 GETUPVAL                         R45 10
      367 GETTABLEKS                       R45 R45 K21 ["createElement"]
      369 GETUPVAL                         R46 19
      370 DUPTABLE                         R47 K57 [{"owner"}]
      371 SETTABLEKS                       R5 R47 K56 ["owner"]
      373 GETTABLEKS                       R48 R2 K58 ["children"]
      375 CALL                             R45 3 -1
      376 CALL                             R42 -1 -1
      377 CALL                             R39 -1 1
      378 SETTABLEKS                       R39 R38 K47 ["Content"]
      380 GETUPVAL                         R39 10
      381 GETTABLEKS                       R39 R39 K21 ["createElement"]
      383 GETUPVAL                         R40 20
      384 DUPTABLE                         R41 K64 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      385 SETTABLEKS                       R33 R41 K26 ["onActivated"]
      387 SETTABLEKS                       R28 R41 K28 ["ref"]
      389 SETTABLEKS                       R29 R41 K59 ["NextSelectionDown"]
      391 GETUPVAL                         R42 21
      392 GETTABLEKS                       R42 R42 K65 ["Utility"]
      394 SETTABLEKS                       R42 R41 K60 ["variant"]
      396 GETIMPORT                        R42 K68 [UDim2.new]
      398 LOADN                            R43 1
      399 GETTABLEKS                       R45 R4 K69 ["Margin"]
      401 GETTABLEKS                       R45 R45 K70 ["Small"]
      403 MINUS                            R44 R45
      404 LOADN                            R45 0
      405 GETTABLEKS                       R46 R4 K69 ["Margin"]
      407 GETTABLEKS                       R46 R46 K70 ["Small"]
      409 CALL                             R42 4 1
      410 SETTABLEKS                       R42 R41 K61 ["Position"]
      412 GETIMPORT                        R42 K72 [Vector2.new]
      414 LOADN                            R43 1
      415 LOADN                            R44 0
      416 CALL                             R42 2 1
      417 SETTABLEKS                       R42 R41 K62 ["AnchorPoint"]
      419 DUPCLOSURE                       R44 K73 [PROTO_15]
      420 NAMECALL                         R42 R22 K10 ["map"]
      422 CALL                             R42 2 1
      423 SETTABLEKS                       R42 R41 K63 ["Visible"]
      425 LOADK                            R43 K74 ["%*--close-affordance"]
      426 GETTABLEKS                       R45 R2 K20 ["testId"]
      428 NAMECALL                         R43 R43 K75 ["format"]
      430 CALL                             R43 2 1
      431 MOVE                             R42 R43
      432 SETTABLEKS                       R42 R41 K20 ["testId"]
      434 CALL                             R39 2 1
      435 SETTABLEKS                       R39 R38 K48 ["CloseAffordance"]
      437 CALL                             R35 3 1
      438 GETUPVAL                         R36 10
      439 GETTABLEKS                       R36 R36 K21 ["createElement"]
      441 GETUPVAL                         R37 22
      442 DUPTABLE                         R38 K79 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      443 GETUPVAL                         R39 23
      444 SETTABLEKS                       R39 R38 K76 ["Image"]
      446 DUPCLOSURE                       R41 K80 [PROTO_16]
      447 CAPTURE                          UPVAL U24
      448 NAMECALL                         R39 R26 K10 ["map"]
      450 CALL                             R39 2 1
      451 SETTABLEKS                       R39 R38 K6 ["Size"]
      453 GETIMPORT                        R39 K68 [UDim2.new]
      455 LOADN                            R40 0
      456 GETUPVAL                         R42 24
      457 MINUS                            R41 R42
      458 LOADK                            R42 K81 [0.5]
      459 LOADN                            R43 0
      460 CALL                             R39 4 1
      461 SETTABLEKS                       R39 R38 K61 ["Position"]
      463 LOADN                            R39 1
      464 SETTABLEKS                       R39 R38 K25 ["ZIndex"]
      466 DUPTABLE                         R39 K84 [{"center", "scale"}]
      467 GETIMPORT                        R40 K86 [Rect.new]
      469 GETUPVAL                         R41 24
      470 GETUPVAL                         R42 24
      471 GETUPVAL                         R44 24
      472 ADDK                             R43 R44 K87 [1]
      473 GETUPVAL                         R45 24
      474 ADDK                             R44 R45 K87 [1]
      475 CALL                             R40 4 1
      476 SETTABLEKS                       R40 R39 K82 ["center"]
      478 LOADN                            R40 2
      479 SETTABLEKS                       R40 R39 K83 ["scale"]
      481 SETTABLEKS                       R39 R38 K77 ["slice"]
      483 GETTABLEKS                       R39 R4 K88 ["Color"]
      485 GETTABLEKS                       R39 R39 K89 ["Extended"]
      487 GETTABLEKS                       R39 R39 K90 ["Black"]
      489 GETTABLEKS                       R39 R39 K91 ["Black_10"]
      491 SETTABLEKS                       R39 R38 K78 ["imageStyle"]
      493 LOADK                            R39 K92 ["anchor-center-left"]
      494 SETTABLEKS                       R39 R38 K31 ["tag"]
      496 CALL                             R36 2 1
      497 MOVE                             R37 R3
      498 JUMPIFNOT                        R37 ; [+193]
      499 GETUPVAL                         R37 10
      500 GETTABLEKS                       R37 R37 K21 ["createElement"]
      502 GETUPVAL                         R38 10
      503 GETTABLEKS                       R38 R38 K93 ["Fragment"]
      505 LOADNIL                          R39
      506 DUPTABLE                         R40 K96 [{"OverlayPortal", "SheetContent"}]
      507 GETUPVAL                         R41 25
      508 GETTABLEKS                       R41 R41 K97 ["createPortal"]
      510 GETUPVAL                         R42 10
      511 GETTABLEKS                       R42 R42 K21 ["createElement"]
      513 GETUPVAL                         R43 15
      514 DUPTABLE                         R44 K98 [{"ZIndex", "tag", "testId"}]
      515 GETTABLEKS                       R45 R5 K99 ["zIndex"]
      517 SETTABLEKS                       R45 R44 K25 ["ZIndex"]
      519 LOADK                            R45 K100 ["size-full"]
      520 SETTABLEKS                       R45 R44 K31 ["tag"]
      522 LOADK                            R46 K101 ["%*--surface"]
      523 GETTABLEKS                       R48 R2 K20 ["testId"]
      525 NAMECALL                         R46 R46 K75 ["format"]
      527 CALL                             R46 2 1
      528 MOVE                             R45 R46
      529 SETTABLEKS                       R45 R44 K20 ["testId"]
      531 DUPTABLE                         R45 K104 [{"SheetContainer", "Backdrop"}]
      532 GETUPVAL                         R46 10
      533 GETTABLEKS                       R46 R46 K21 ["createElement"]
      535 GETUPVAL                         R47 15
      536 DUPTABLE                         R48 K106 [{"ref", "ZIndex", "sizeConstraint", "Position", "tag", "testId", "GroupTransparency", "onAbsoluteSizeChanged"}]
      537 SETTABLEKS                       R32 R48 K28 ["ref"]
      539 LOADN                            R49 2
      540 SETTABLEKS                       R49 R48 K25 ["ZIndex"]
      542 DUPTABLE                         R49 K36 [{"MaxSize"}]
      543 GETIMPORT                        R50 K72 [Vector2.new]
      545 MOVE                             R51 R7
      546 MOVE                             R52 R8
      547 CALL                             R50 2 1
      548 SETTABLEKS                       R50 R49 K35 ["MaxSize"]
      550 SETTABLEKS                       R49 R48 K23 ["sizeConstraint"]
      552 DUPCLOSURE                       R51 K107 [PROTO_17]
      553 NAMECALL                         R49 R18 K10 ["map"]
      555 CALL                             R49 2 1
      556 SETTABLEKS                       R49 R48 K61 ["Position"]
      558 LOADK                            R49 K108 ["size-full col align-y-center padding-medium anchor-center-center"]
      559 SETTABLEKS                       R49 R48 K31 ["tag"]
      561 LOADK                            R50 K109 ["%*--center-sheet-container"]
      562 GETTABLEKS                       R52 R2 K20 ["testId"]
      564 NAMECALL                         R50 R50 K75 ["format"]
      566 CALL                             R50 2 1
      567 MOVE                             R49 R50
      568 SETTABLEKS                       R49 R48 K20 ["testId"]
      570 JUMPIFNOT                        R13 ; [+6]
      571 NEWCLOSURE                       R51 P17
      572 CAPTURE                          VAL R9
      573 NAMECALL                         R49 R18 K10 ["map"]
      575 CALL                             R49 2 1
      576 JUMP                             ; [+1]
      577 LOADNIL                          R49
      578 SETTABLEKS                       R49 R48 K105 ["GroupTransparency"]
      580 GETUPVAL                         R50 6
      581 GETTABLEKS                       R50 R50 K8 ["FoundationAddHeightPropToCenterSheet"]
      583 JUMPIFNOT                        R50 ; [+9]
      584 GETTABLEKS                       R50 R2 K33 ["centerSheetHeight"]
      586 JUMPIFNOT                        R50 ; [+6]
      587 JUMPIFNOT                        R11 ; [+5]
      588 NEWCLOSURE                       R49 P18
      589 CAPTURE                          VAL R4
      590 CAPTURE                          REF R11
      591 CAPTURE                          VAL R8
      592 JUMP                             ; [+1]
      593 LOADNIL                          R49
      594 SETTABLEKS                       R49 R48 K27 ["onAbsoluteSizeChanged"]
      596 GETUPVAL                         R50 6
      597 GETTABLEKS                       R50 R50 K13 ["FoundationCenterSheetUseStableContainer"]
      599 JUMPIF                           R50 ; [+13]
      600 DUPTABLE                         R49 K111 [{"Sheet", "Shadow"}]
      601 SETTABLEKS                       R35 R49 K0 ["Sheet"]
      603 GETUPVAL                         R50 10
      604 GETTABLEKS                       R50 R50 K21 ["createElement"]
      606 LOADK                            R51 K112 ["Folder"]
      607 LOADNIL                          R52
      608 MOVE                             R53 R36
      609 CALL                             R50 3 1
      610 SETTABLEKS                       R50 R49 K110 ["Shadow"]
      612 JUMP                             ; [+1]
      613 LOADNIL                          R49
      614 CALL                             R46 3 1
      615 SETTABLEKS                       R46 R45 K102 ["SheetContainer"]
      617 GETUPVAL                         R46 10
      618 GETTABLEKS                       R46 R46 K21 ["createElement"]
      620 GETUPVAL                         R47 15
      621 DUPTABLE                         R48 K114 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      622 GETIMPORT                        R49 K116 [UDim2.fromScale]
      624 LOADN                            R50 2
      625 LOADN                            R51 2
      626 CALL                             R49 2 1
      627 SETTABLEKS                       R49 R48 K6 ["Size"]
      629 GETIMPORT                        R49 K116 [UDim2.fromScale]
      631 LOADK                            R50 K117 [-0.5]
      632 LOADK                            R51 K117 [-0.5]
      633 CALL                             R49 2 1
      634 SETTABLEKS                       R49 R48 K61 ["Position"]
      636 LOADN                            R49 1
      637 SETTABLEKS                       R49 R48 K25 ["ZIndex"]
      639 DUPTABLE                         R49 K39 [{"affordance"}]
      640 GETUPVAL                         R50 16
      641 GETTABLEKS                       R50 R50 K40 ["None"]
      643 SETTABLEKS                       R50 R49 K38 ["affordance"]
      645 SETTABLEKS                       R49 R48 K24 ["stateLayer"]
      647 NEWCLOSURE                       R51 P19
      648 CAPTURE                          VAL R4
      649 NAMECALL                         R49 R16 K10 ["map"]
      651 CALL                             R49 2 1
      652 SETTABLEKS                       R49 R48 K113 ["backgroundStyle"]
      654 SETTABLEKS                       R33 R48 K26 ["onActivated"]
      656 LOADK                            R50 K118 ["%*--backdrop"]
      657 GETTABLEKS                       R52 R2 K20 ["testId"]
      659 NAMECALL                         R50 R50 K75 ["format"]
      661 CALL                             R50 2 1
      662 MOVE                             R49 R50
      663 SETTABLEKS                       R49 R48 K20 ["testId"]
      665 CALL                             R46 2 1
      666 SETTABLEKS                       R46 R45 K103 ["Backdrop"]
      668 CALL                             R42 3 1
      669 MOVE                             R43 R3
      670 CALL                             R41 2 1
      671 SETTABLEKS                       R41 R40 K94 ["OverlayPortal"]
      673 GETUPVAL                         R42 6
      674 GETTABLEKS                       R42 R42 K13 ["FoundationCenterSheetUseStableContainer"]
      676 JUMPIFNOT                        R42 ; [+11]
      677 GETUPVAL                         R41 25
      678 GETTABLEKS                       R41 R41 K97 ["createPortal"]
      680 DUPTABLE                         R42 K111 [{"Sheet", "Shadow"}]
      681 SETTABLEKS                       R35 R42 K0 ["Sheet"]
      683 SETTABLEKS                       R36 R42 K110 ["Shadow"]
      685 MOVE                             R43 R31
      686 CALL                             R41 2 1
      687 JUMP                             ; [+1]
      688 LOADNIL                          R41
      689 SETTABLEKS                       R41 R40 K95 ["SheetContent"]
      691 CALL                             R37 3 1
      692 CLOSEUPVALS                      R6
      693 RETURN                           R37 1

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
      196 DUPTABLE                         R28 K46 [{"size", "testId"}]
      197 GETTABLEKS                       R29 R16 K47 ["Medium"]
      199 SETTABLEKS                       R29 R28 K44 ["size"]
      201 LOADK                            R29 K48 ["--foundation-sheet"]
      202 SETTABLEKS                       R29 R28 K45 ["testId"]
      204 GETTABLEKS                       R29 R15 K49 ["SHADOW_IMAGE"]
      206 GETTABLEKS                       R30 R15 K50 ["SHADOW_SIZE"]
      208 DUPCLOSURE                       R31 K51 [PROTO_21]
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R6
      235 GETTABLEKS                       R32 R4 K52 ["memo"]
      237 GETTABLEKS                       R33 R4 K53 ["forwardRef"]
      239 MOVE                             R34 R31
      240 CALL                             R33 1 -1
      241 CALL                             R32 -1 -1
      242 RETURN                           R32 -1
