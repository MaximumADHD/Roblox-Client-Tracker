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
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 GETTABLEKS                       R7 R6 K3 ["reducedMotion"]
       21 GETUPVAL                         R8 7
       22 GETUPVAL                         R10 8
       23 GETTABLEKS                       R11 R2 K4 ["size"]
       25 GETTABLE                         R9 R10 R11
       26 CALL                             R8 1 1
       27 GETUPVAL                         R9 7
       28 LOADN                            R10 88
       29 CALL                             R9 1 1
       30 GETTABLEKS                       R10 R4 K5 ["Size"]
       32 GETTABLEKS                       R10 R10 K6 ["Size_800"]
       34 GETUPVAL                         R11 9
       35 GETTABLEKS                       R11 R11 K7 ["useBinding"]
       37 MOVE                             R12 R9
       38 CALL                             R11 1 2
       39 JUMPIFNOT                        R11 ; [+6]
       40 NEWCLOSURE                       R15 P0
       41 CAPTURE                          VAL R2
       42 NAMECALL                         R13 R11 K8 ["map"]
       44 CALL                             R13 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R13
       47 GETUPVAL                         R14 9
       48 GETTABLEKS                       R14 R14 K9 ["useState"]
       50 LOADB                            R15 1
       51 CALL                             R14 1 2
       52 GETUPVAL                         R16 9
       53 GETTABLEKS                       R16 R16 K10 ["useRef"]
       55 LOADB                            R17 0
       56 CALL                             R16 1 1
       57 GETUPVAL                         R17 10
       58 LOADN                            R18 1
       59 NEWCLOSURE                       R19 P1
       60 CAPTURE                          VAL R16
       61 CAPTURE                          VAL R2
       62 CALL                             R17 2 2
       63 GETUPVAL                         R19 10
       64 MOVE                             R20 R10
       65 NEWCLOSURE                       R21 P2
       66 CAPTURE                          VAL R15
       67 CALL                             R19 2 2
       68 GETUPVAL                         R21 9
       69 GETTABLEKS                       R21 R21 K7 ["useBinding"]
       71 LOADB                            R22 0
       72 CALL                             R21 1 2
       73 GETUPVAL                         R23 9
       74 GETTABLEKS                       R23 R23 K7 ["useBinding"]
       76 LOADB                            R24 0
       77 CALL                             R23 1 2
       78 GETUPVAL                         R25 9
       79 GETTABLEKS                       R25 R25 K7 ["useBinding"]
       81 LOADN                            R26 0
       82 CALL                             R25 1 2
       83 GETUPVAL                         R27 9
       84 GETTABLEKS                       R27 R27 K7 ["useBinding"]
       86 LOADN                            R28 0
       87 CALL                             R27 1 2
       88 GETUPVAL                         R29 9
       89 GETTABLEKS                       R29 R29 K10 ["useRef"]
       91 LOADNIL                          R30
       92 CALL                             R29 1 1
       93 GETUPVAL                         R30 9
       94 GETTABLEKS                       R30 R30 K9 ["useState"]
       96 LOADNIL                          R31
       97 CALL                             R30 1 2
       98 GETUPVAL                         R33 11
       99 GETTABLEKS                       R33 R33 K11 ["FoundationCenterSheetUseStableContainer"]
      101 JUMPIFNOT                        R33 ; [+8]
      102 GETUPVAL                         R32 9
      103 GETTABLEKS                       R32 R32 K12 ["useMemo"]
      105 DUPCLOSURE                       R33 K13 [PROTO_3]
      106 NEWTABLE                         R34 0 0
      108 CALL                             R32 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R32
      111 GETUPVAL                         R33 11
      112 GETTABLEKS                       R33 R33 K11 ["FoundationCenterSheetUseStableContainer"]
      114 JUMPIFNOT                        R33 ; [+8]
      115 GETUPVAL                         R33 9
      116 GETTABLEKS                       R33 R33 K14 ["useEffect"]
      118 NEWCLOSURE                       R34 P4
      119 CAPTURE                          VAL R32
      120 NEWTABLE                         R35 0 0
      122 CALL                             R33 2 0
      123 GETUPVAL                         R34 11
      124 GETTABLEKS                       R34 R34 K11 ["FoundationCenterSheetUseStableContainer"]
      126 JUMPIFNOT                        R34 ; [+9]
      127 GETUPVAL                         R33 9
      128 GETTABLEKS                       R33 R33 K15 ["useCallback"]
      130 NEWCLOSURE                       R34 P5
      131 CAPTURE                          VAL R32
      132 NEWTABLE                         R35 0 0
      134 CALL                             R33 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R33
      137 GETUPVAL                         R34 9
      138 GETTABLEKS                       R34 R34 K14 ["useEffect"]
      140 NEWCLOSURE                       R35 P6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R20
      143 CAPTURE                          UPVAL U12
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R4
      146 NEWTABLE                         R36 0 0
      148 CALL                             R34 2 0
      149 GETUPVAL                         R34 9
      150 GETTABLEKS                       R34 R34 K15 ["useCallback"]
      152 NEWCLOSURE                       R35 P7
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R20
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R15
      161 NEWTABLE                         R36 0 2
      163 MOVE                             R37 R10
      164 MOVE                             R38 R7
      165 SETLIST                          R36 R37 2 [1]
      167 CALL                             R34 2 1
      168 GETUPVAL                         R35 9
      169 GETTABLEKS                       R35 R35 K16 ["useImperativeHandle"]
      171 GETTABLEKS                       R36 R2 K17 ["sheetRef"]
      173 NEWCLOSURE                       R37 P8
      174 CAPTURE                          VAL R34
      175 NEWTABLE                         R38 0 0
      177 CALL                             R35 3 0
      178 GETUPVAL                         R35 9
      179 GETTABLEKS                       R35 R35 K12 ["useMemo"]
      181 NEWCLOSURE                       R36 P9
      182 CAPTURE                          UPVAL U13
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R34
      191 CAPTURE                          UPVAL U14
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R29
      194 CAPTURE                          VAL R30
      195 CAPTURE                          VAL R31
      196 NEWTABLE                         R37 0 5
      198 GETTABLEKS                       R38 R2 K18 ["testId"]
      200 MOVE                             R39 R34
      201 MOVE                             R40 R30
      202 MOVE                             R41 R29
      203 MOVE                             R42 R13
      204 SETLIST                          R37 R38 5 [1]
      206 CALL                             R35 2 1
      207 GETUPVAL                         R36 9
      208 GETTABLEKS                       R36 R36 K19 ["createElement"]
      210 GETUPVAL                         R37 15
      211 DUPTABLE                         R38 K30 [{"ClipsDescendants", "Size", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      212 LOADB                            R39 1
      213 SETTABLEKS                       R39 R38 K20 ["ClipsDescendants"]
      215 GETTABLEKS                       R40 R2 K31 ["centerSheetHeight"]
      217 JUMPIFNOT                        R40 ; [+6]
      218 JUMPIFNOT                        R13 ; [+5]
      219 DUPCLOSURE                       R41 K32 [PROTO_11]
      220 NAMECALL                         R39 R13 K8 ["map"]
      222 CALL                             R39 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R39
      225 SETTABLEKS                       R39 R38 K5 ["Size"]
      227 GETTABLEKS                       R40 R2 K31 ["centerSheetHeight"]
      229 JUMPIFNOT                        R40 ; [+9]
      230 JUMPIFNOT                        R11 ; [+8]
      231 DUPTABLE                         R39 K34 [{"MaxSize"}]
      232 DUPCLOSURE                       R42 K35 [PROTO_12]
      233 NAMECALL                         R40 R11 K8 ["map"]
      235 CALL                             R40 2 1
      236 SETTABLEKS                       R40 R39 K33 ["MaxSize"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R39
      240 SETTABLEKS                       R39 R38 K21 ["sizeConstraint"]
      242 DUPTABLE                         R39 K37 [{"affordance"}]
      243 GETUPVAL                         R40 16
      244 GETTABLEKS                       R40 R40 K38 ["None"]
      246 SETTABLEKS                       R40 R39 K36 ["affordance"]
      248 SETTABLEKS                       R39 R38 K22 ["stateLayer"]
      250 LOADN                            R39 2
      251 SETTABLEKS                       R39 R38 K23 ["ZIndex"]
      253 GETUPVAL                         R39 13
      254 GETTABLEKS                       R39 R39 K39 ["noop"]
      256 SETTABLEKS                       R39 R38 K24 ["onActivated"]
      258 NEWCLOSURE                       R39 P12
      259 CAPTURE                          VAL R28
      260 SETTABLEKS                       R39 R38 K25 ["onAbsoluteSizeChanged"]
      262 SETTABLEKS                       R1 R38 K26 ["ref"]
      264 GETUPVAL                         R39 17
      265 GETTABLEKS                       R39 R39 K40 ["nonSelectable"]
      267 SETTABLEKS                       R39 R38 K27 ["selection"]
      269 GETUPVAL                         R39 17
      270 GETTABLEKS                       R39 R39 K41 ["isolatedSelectionGroup"]
      272 SETTABLEKS                       R39 R38 K28 ["selectionGroup"]
      274 NEWTABLE                         R39 2 0
      276 LOADB                            R40 1
      277 SETTABLEKS                       R40 R39 K42 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      279 GETTABLEKS                       R41 R2 K31 ["centerSheetHeight"]
      281 JUMPIFEQKNIL                     R41 ; [+2]
      283 LOADB                            R40 0 +1
      284 LOADB                            R40 1
      285 SETTABLEKS                       R40 R39 K43 ["size-full-0 auto-y"]
      287 SETTABLEKS                       R39 R38 K29 ["tag"]
      289 GETTABLEKS                       R39 R2 K18 ["testId"]
      291 SETTABLEKS                       R39 R38 K18 ["testId"]
      293 DUPTABLE                         R39 K46 [{"Content", "CloseAffordance"}]
      294 GETUPVAL                         R40 9
      295 GETTABLEKS                       R40 R40 K19 ["createElement"]
      297 GETUPVAL                         R41 15
      298 DUPTABLE                         R42 K47 [{"Size", "tag"}]
      299 GETTABLEKS                       R44 R2 K31 ["centerSheetHeight"]
      301 JUMPIFNOT                        R44 ; [+6]
      302 JUMPIFNOT                        R13 ; [+5]
      303 DUPCLOSURE                       R45 K48 [PROTO_14]
      304 NAMECALL                         R43 R13 K8 ["map"]
      306 CALL                             R43 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R43
      309 SETTABLEKS                       R43 R42 K5 ["Size"]
      311 LOADK                            R43 K49 ["col items-center size-full-0 auto-y clip"]
      312 SETTABLEKS                       R43 R42 K29 ["tag"]
      314 GETUPVAL                         R43 9
      315 GETTABLEKS                       R43 R43 K19 ["createElement"]
      317 GETUPVAL                         R44 18
      318 GETTABLEKS                       R44 R44 K50 ["Provider"]
      320 DUPTABLE                         R45 K52 [{"value"}]
      321 SETTABLEKS                       R35 R45 K51 ["value"]
      323 GETUPVAL                         R46 9
      324 GETTABLEKS                       R46 R46 K19 ["createElement"]
      326 GETUPVAL                         R47 19
      327 DUPTABLE                         R48 K54 [{"owner"}]
      328 SETTABLEKS                       R5 R48 K53 ["owner"]
      330 GETTABLEKS                       R49 R2 K55 ["children"]
      332 CALL                             R46 3 -1
      333 CALL                             R43 -1 -1
      334 CALL                             R40 -1 1
      335 SETTABLEKS                       R40 R39 K44 ["Content"]
      337 GETUPVAL                         R40 9
      338 GETTABLEKS                       R40 R40 K19 ["createElement"]
      340 GETUPVAL                         R41 20
      341 DUPTABLE                         R42 K61 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      342 SETTABLEKS                       R34 R42 K24 ["onActivated"]
      344 SETTABLEKS                       R29 R42 K26 ["ref"]
      346 SETTABLEKS                       R30 R42 K56 ["NextSelectionDown"]
      348 GETUPVAL                         R43 21
      349 GETTABLEKS                       R43 R43 K62 ["Utility"]
      351 SETTABLEKS                       R43 R42 K57 ["variant"]
      353 GETIMPORT                        R43 K65 [UDim2.new]
      355 LOADN                            R44 1
      356 GETTABLEKS                       R46 R4 K66 ["Margin"]
      358 GETTABLEKS                       R46 R46 K67 ["Small"]
      360 MINUS                            R45 R46
      361 LOADN                            R46 0
      362 GETTABLEKS                       R47 R4 K66 ["Margin"]
      364 GETTABLEKS                       R47 R47 K67 ["Small"]
      366 CALL                             R43 4 1
      367 SETTABLEKS                       R43 R42 K58 ["Position"]
      369 GETIMPORT                        R43 K69 [Vector2.new]
      371 LOADN                            R44 1
      372 LOADN                            R45 0
      373 CALL                             R43 2 1
      374 SETTABLEKS                       R43 R42 K59 ["AnchorPoint"]
      376 DUPCLOSURE                       R45 K70 [PROTO_15]
      377 NAMECALL                         R43 R23 K8 ["map"]
      379 CALL                             R43 2 1
      380 SETTABLEKS                       R43 R42 K60 ["Visible"]
      382 LOADK                            R44 K71 ["%*--close-affordance"]
      383 GETTABLEKS                       R46 R2 K18 ["testId"]
      385 NAMECALL                         R44 R44 K72 ["format"]
      387 CALL                             R44 2 1
      388 MOVE                             R43 R44
      389 SETTABLEKS                       R43 R42 K18 ["testId"]
      391 CALL                             R40 2 1
      392 SETTABLEKS                       R40 R39 K45 ["CloseAffordance"]
      394 CALL                             R36 3 1
      395 GETUPVAL                         R37 9
      396 GETTABLEKS                       R37 R37 K19 ["createElement"]
      398 GETUPVAL                         R38 22
      399 DUPTABLE                         R39 K76 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      400 GETUPVAL                         R40 23
      401 SETTABLEKS                       R40 R39 K73 ["Image"]
      403 DUPCLOSURE                       R42 K77 [PROTO_16]
      404 CAPTURE                          UPVAL U24
      405 NAMECALL                         R40 R27 K8 ["map"]
      407 CALL                             R40 2 1
      408 SETTABLEKS                       R40 R39 K5 ["Size"]
      410 GETIMPORT                        R40 K65 [UDim2.new]
      412 LOADN                            R41 0
      413 GETUPVAL                         R43 24
      414 MINUS                            R42 R43
      415 LOADK                            R43 K78 [0.5]
      416 LOADN                            R44 0
      417 CALL                             R40 4 1
      418 SETTABLEKS                       R40 R39 K58 ["Position"]
      420 LOADN                            R40 1
      421 SETTABLEKS                       R40 R39 K23 ["ZIndex"]
      423 DUPTABLE                         R40 K81 [{"center", "scale"}]
      424 GETIMPORT                        R41 K83 [Rect.new]
      426 GETUPVAL                         R42 24
      427 GETUPVAL                         R43 24
      428 GETUPVAL                         R45 24
      429 ADDK                             R44 R45 K84 [1]
      430 GETUPVAL                         R46 24
      431 ADDK                             R45 R46 K84 [1]
      432 CALL                             R41 4 1
      433 SETTABLEKS                       R41 R40 K79 ["center"]
      435 LOADN                            R41 2
      436 SETTABLEKS                       R41 R40 K80 ["scale"]
      438 SETTABLEKS                       R40 R39 K74 ["slice"]
      440 GETTABLEKS                       R40 R4 K85 ["Color"]
      442 GETTABLEKS                       R40 R40 K86 ["Extended"]
      444 GETTABLEKS                       R40 R40 K87 ["Black"]
      446 GETTABLEKS                       R40 R40 K88 ["Black_10"]
      448 SETTABLEKS                       R40 R39 K75 ["imageStyle"]
      450 LOADK                            R40 K89 ["anchor-center-left"]
      451 SETTABLEKS                       R40 R39 K29 ["tag"]
      453 CALL                             R37 2 1
      454 MOVE                             R38 R3
      455 JUMPIFNOT                        R38 ; [+189]
      456 GETUPVAL                         R38 9
      457 GETTABLEKS                       R38 R38 K19 ["createElement"]
      459 GETUPVAL                         R39 9
      460 GETTABLEKS                       R39 R39 K90 ["Fragment"]
      462 LOADNIL                          R40
      463 DUPTABLE                         R41 K93 [{"OverlayPortal", "SheetContent"}]
      464 GETUPVAL                         R42 25
      465 GETTABLEKS                       R42 R42 K94 ["createPortal"]
      467 GETUPVAL                         R43 9
      468 GETTABLEKS                       R43 R43 K19 ["createElement"]
      470 GETUPVAL                         R44 15
      471 DUPTABLE                         R45 K95 [{"ZIndex", "tag", "testId"}]
      472 GETTABLEKS                       R46 R5 K96 ["zIndex"]
      474 SETTABLEKS                       R46 R45 K23 ["ZIndex"]
      476 LOADK                            R46 K97 ["size-full"]
      477 SETTABLEKS                       R46 R45 K29 ["tag"]
      479 LOADK                            R47 K98 ["%*--surface"]
      480 GETTABLEKS                       R49 R2 K18 ["testId"]
      482 NAMECALL                         R47 R47 K72 ["format"]
      484 CALL                             R47 2 1
      485 MOVE                             R46 R47
      486 SETTABLEKS                       R46 R45 K18 ["testId"]
      488 DUPTABLE                         R46 K101 [{"SheetContainer", "Backdrop"}]
      489 GETUPVAL                         R47 9
      490 GETTABLEKS                       R47 R47 K19 ["createElement"]
      492 GETUPVAL                         R48 15
      493 DUPTABLE                         R49 K103 [{"ref", "ZIndex", "sizeConstraint", "Position", "tag", "testId", "GroupTransparency", "onAbsoluteSizeChanged"}]
      494 SETTABLEKS                       R33 R49 K26 ["ref"]
      496 LOADN                            R50 2
      497 SETTABLEKS                       R50 R49 K23 ["ZIndex"]
      499 DUPTABLE                         R50 K34 [{"MaxSize"}]
      500 GETIMPORT                        R51 K69 [Vector2.new]
      502 MOVE                             R52 R8
      503 MOVE                             R53 R9
      504 CALL                             R51 2 1
      505 SETTABLEKS                       R51 R50 K33 ["MaxSize"]
      507 SETTABLEKS                       R50 R49 K21 ["sizeConstraint"]
      509 DUPCLOSURE                       R52 K104 [PROTO_17]
      510 NAMECALL                         R50 R19 K8 ["map"]
      512 CALL                             R50 2 1
      513 SETTABLEKS                       R50 R49 K58 ["Position"]
      515 LOADK                            R50 K105 ["col align-y-center anchor-center-center size-full padding-medium"]
      516 SETTABLEKS                       R50 R49 K29 ["tag"]
      518 LOADK                            R51 K106 ["%*--center-sheet-container"]
      519 GETTABLEKS                       R53 R2 K18 ["testId"]
      521 NAMECALL                         R51 R51 K72 ["format"]
      523 CALL                             R51 2 1
      524 MOVE                             R50 R51
      525 SETTABLEKS                       R50 R49 K18 ["testId"]
      527 JUMPIFNOT                        R14 ; [+6]
      528 NEWCLOSURE                       R52 P17
      529 CAPTURE                          VAL R10
      530 NAMECALL                         R50 R19 K8 ["map"]
      532 CALL                             R50 2 1
      533 JUMP                             ; [+1]
      534 LOADNIL                          R50
      535 SETTABLEKS                       R50 R49 K102 ["GroupTransparency"]
      537 GETTABLEKS                       R51 R2 K31 ["centerSheetHeight"]
      539 JUMPIFNOT                        R51 ; [+6]
      540 JUMPIFNOT                        R12 ; [+5]
      541 NEWCLOSURE                       R50 P18
      542 CAPTURE                          VAL R4
      543 CAPTURE                          VAL R12
      544 CAPTURE                          VAL R9
      545 JUMP                             ; [+1]
      546 LOADNIL                          R50
      547 SETTABLEKS                       R50 R49 K25 ["onAbsoluteSizeChanged"]
      549 GETUPVAL                         R51 11
      550 GETTABLEKS                       R51 R51 K11 ["FoundationCenterSheetUseStableContainer"]
      552 JUMPIF                           R51 ; [+13]
      553 DUPTABLE                         R50 K108 [{"Sheet", "Shadow"}]
      554 SETTABLEKS                       R36 R50 K0 ["Sheet"]
      556 GETUPVAL                         R51 9
      557 GETTABLEKS                       R51 R51 K19 ["createElement"]
      559 LOADK                            R52 K109 ["Folder"]
      560 LOADNIL                          R53
      561 MOVE                             R54 R37
      562 CALL                             R51 3 1
      563 SETTABLEKS                       R51 R50 K107 ["Shadow"]
      565 JUMP                             ; [+1]
      566 LOADNIL                          R50
      567 CALL                             R47 3 1
      568 SETTABLEKS                       R47 R46 K99 ["SheetContainer"]
      570 GETUPVAL                         R47 9
      571 GETTABLEKS                       R47 R47 K19 ["createElement"]
      573 GETUPVAL                         R48 15
      574 DUPTABLE                         R49 K111 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      575 GETIMPORT                        R50 K113 [UDim2.fromScale]
      577 LOADN                            R51 2
      578 LOADN                            R52 2
      579 CALL                             R50 2 1
      580 SETTABLEKS                       R50 R49 K5 ["Size"]
      582 GETIMPORT                        R50 K113 [UDim2.fromScale]
      584 LOADK                            R51 K114 [-0.5]
      585 LOADK                            R52 K114 [-0.5]
      586 CALL                             R50 2 1
      587 SETTABLEKS                       R50 R49 K58 ["Position"]
      589 LOADN                            R50 1
      590 SETTABLEKS                       R50 R49 K23 ["ZIndex"]
      592 DUPTABLE                         R50 K37 [{"affordance"}]
      593 GETUPVAL                         R51 16
      594 GETTABLEKS                       R51 R51 K38 ["None"]
      596 SETTABLEKS                       R51 R50 K36 ["affordance"]
      598 SETTABLEKS                       R50 R49 K22 ["stateLayer"]
      600 NEWCLOSURE                       R52 P19
      601 CAPTURE                          VAL R4
      602 NAMECALL                         R50 R17 K8 ["map"]
      604 CALL                             R50 2 1
      605 SETTABLEKS                       R50 R49 K110 ["backgroundStyle"]
      607 SETTABLEKS                       R34 R49 K24 ["onActivated"]
      609 LOADK                            R51 K115 ["%*--backdrop"]
      610 GETTABLEKS                       R53 R2 K18 ["testId"]
      612 NAMECALL                         R51 R51 K72 ["format"]
      614 CALL                             R51 2 1
      615 MOVE                             R50 R51
      616 SETTABLEKS                       R50 R49 K18 ["testId"]
      618 CALL                             R47 2 1
      619 SETTABLEKS                       R47 R46 K100 ["Backdrop"]
      621 CALL                             R43 3 1
      622 MOVE                             R44 R3
      623 CALL                             R42 2 1
      624 SETTABLEKS                       R42 R41 K91 ["OverlayPortal"]
      626 GETUPVAL                         R43 11
      627 GETTABLEKS                       R43 R43 K11 ["FoundationCenterSheetUseStableContainer"]
      629 JUMPIFNOT                        R43 ; [+11]
      630 GETUPVAL                         R42 25
      631 GETTABLEKS                       R42 R42 K94 ["createPortal"]
      633 DUPTABLE                         R43 K108 [{"Sheet", "Shadow"}]
      634 SETTABLEKS                       R36 R43 K0 ["Sheet"]
      636 SETTABLEKS                       R37 R43 K107 ["Shadow"]
      638 MOVE                             R44 R32
      639 CALL                             R42 2 1
      640 JUMP                             ; [+1]
      641 LOADNIL                          R42
      642 SETTABLEKS                       R42 R41 K92 ["SheetContent"]
      644 CALL                             R38 3 1
      645 RETURN                           R38 1

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
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R20
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
