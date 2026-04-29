PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["centerSheetHeight"]
        3 JUMPIFNOT                        R1 ; [+33]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["centerSheetHeight"]
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["centerSheetHeight"]
       13 LOADN                            R2 1
       14 JUMPIFNOTLE                      R1 R2 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["centerSheetHeight"]
       19 MUL                              R1 R0 R2
       20 RETURN                           R1 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["centerSheetHeight"]
       24 LOADN                            R2 1
       25 JUMPIFNOTLT                      R2 R1 ; [+11]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["centerSheetHeight"]
       30 FASTCALL2                        MATH_MIN R2 R0 ; [+4]
       32 MOVE                             R3 R0
       33 GETIMPORT                        R1 K3 [math.min]
       35 CALL                             R1 2 1
       36 RETURN                           R1 1
       37 LOADNIL                          R1
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
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
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["instant"]
        6 LOADN                            R2 0
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K1 ["ease"]
       21 LOADN                            R2 0
       22 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K5 ["Ease"]
       26 GETTABLEKS                       R4 R5 K6 ["StandardOut"]
       28 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R5 R6 K7 ["Time"]
       33 GETTABLEKS                       R4 R5 K8 ["Time_300"]
       35 SETTABLEKS                       R4 R3 K3 ["duration"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 3
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R1 R2 K1 ["ease"]
       43 LOADN                            R2 0
       44 DUPTABLE                         R3 K9 [{"duration"}]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R5 R6 K7 ["Time"]
       48 GETTABLEKS                       R4 R5 K10 ["Time_100"]
       50 SETTABLEKS                       R4 R3 K3 ["duration"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+19]
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K1 ["instant"]
       15 GETUPVAL                         R2 4
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K1 ["instant"]
       22 LOADN                            R2 1
       23 CALL                             R1 1 -1
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R1 R2 K2 ["ease"]
       30 GETUPVAL                         R2 4
       31 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       32 GETUPVAL                         R6 6
       33 GETTABLEKS                       R5 R6 K6 ["Ease"]
       35 GETTABLEKS                       R4 R5 K7 ["StandardIn"]
       37 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R5 R6 K8 ["Time"]
       42 GETTABLEKS                       R4 R5 K9 ["Time_100"]
       44 SETTABLEKS                       R4 R3 K4 ["duration"]
       46 CALL                             R1 2 -1
       47 CALL                             R0 -1 0
       48 GETUPVAL                         R0 5
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R1 R2 K2 ["ease"]
       52 LOADN                            R2 1
       53 DUPTABLE                         R3 K10 [{"duration"}]
       54 GETUPVAL                         R6 6
       55 GETTABLEKS                       R5 R6 K8 ["Time"]
       57 GETTABLEKS                       R4 R5 K9 ["Time_100"]
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
        0 DUPTABLE                         R0 K25 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetContentHeight", "setSheetContentHeight", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "hasFullBleed", "fullBleedHeight", "setFullBleedHeight", "closeSheet", "hasRadius", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K26 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K4 ["sheetContentHeight"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K26 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetContentHeight"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["sheetHeightAvailable"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K26 ["noop"]
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
       52 GETUPVAL                         R3 8
       53 GETTABLEKS                       R2 R3 K27 ["FoundationSheetFullBleed"]
       55 JUMPIFNOT                        R2 ; [+2]
       56 GETUPVAL                         R1 9
       57 JUMP                             ; [+1]
       58 LOADNIL                          R1
       59 SETTABLEKS                       R1 R0 K15 ["hasFullBleed"]
       61 GETUPVAL                         R3 8
       62 GETTABLEKS                       R2 R3 K27 ["FoundationSheetFullBleed"]
       64 JUMPIFNOT                        R2 ; [+2]
       65 GETUPVAL                         R1 10
       66 JUMP                             ; [+1]
       67 LOADNIL                          R1
       68 SETTABLEKS                       R1 R0 K16 ["fullBleedHeight"]
       70 GETUPVAL                         R3 8
       71 GETTABLEKS                       R2 R3 K27 ["FoundationSheetFullBleed"]
       73 JUMPIFNOT                        R2 ; [+2]
       74 GETUPVAL                         R1 11
       75 JUMP                             ; [+1]
       76 LOADNIL                          R1
       77 SETTABLEKS                       R1 R0 K17 ["setFullBleedHeight"]
       79 GETUPVAL                         R1 12
       80 SETTABLEKS                       R1 R0 K18 ["closeSheet"]
       82 GETUPVAL                         R3 8
       83 GETTABLEKS                       R2 R3 K27 ["FoundationSheetFullBleed"]
       85 JUMPIFNOT                        R2 ; [+2]
       86 LOADB                            R1 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R1
       89 SETTABLEKS                       R1 R0 K19 ["hasRadius"]
       91 GETUPVAL                         R2 13
       92 GETTABLEKS                       R1 R2 K28 ["Center"]
       94 SETTABLEKS                       R1 R0 K20 ["sheetType"]
       96 GETUPVAL                         R2 14
       97 GETTABLEKS                       R1 R2 K21 ["testId"]
       99 SETTABLEKS                       R1 R0 K21 ["testId"]
      101 GETUPVAL                         R1 15
      102 SETTABLEKS                       R1 R0 K22 ["closeAffordanceRef"]
      104 GETUPVAL                         R1 16
      105 SETTABLEKS                       R1 R0 K23 ["contentStartRef"]
      107 GETUPVAL                         R1 17
      108 SETTABLEKS                       R1 R0 K24 ["setContentStartRef"]
      110 RETURN                           R0 1

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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["Margin"]
        3 GETTABLEKS                       R2 R3 K2 ["Medium"]
        5 MULK                             R1 R2 K0 [2]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R5 R6 K4 ["Y"]
       11 SUB                              R4 R5 R1
       12 GETUPVAL                         R5 2
       13 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       15 GETIMPORT                        R3 K7 [math.min]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_20:
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
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
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
       30 GETTABLEKS                       R11 R4 K5 ["Size"]
       32 GETTABLEKS                       R10 R11 K6 ["Size_800"]
       34 GETUPVAL                         R12 9
       35 GETTABLEKS                       R11 R12 K7 ["useBinding"]
       37 MOVE                             R12 R9
       38 CALL                             R11 1 2
       39 JUMPIFNOT                        R11 ; [+6]
       40 NEWCLOSURE                       R15 P0
       41 CAPTURE                          VAL R2
       42 NAMECALL                         R13 R11 K8 ["map"]
       44 CALL                             R13 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R13
       47 GETUPVAL                         R15 9
       48 GETTABLEKS                       R14 R15 K9 ["useState"]
       50 LOADB                            R15 1
       51 CALL                             R14 1 2
       52 GETUPVAL                         R17 9
       53 GETTABLEKS                       R16 R17 K10 ["useRef"]
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
       68 GETUPVAL                         R22 9
       69 GETTABLEKS                       R21 R22 K7 ["useBinding"]
       71 LOADB                            R22 0
       72 CALL                             R21 1 2
       73 GETUPVAL                         R24 9
       74 GETTABLEKS                       R23 R24 K7 ["useBinding"]
       76 LOADB                            R24 0
       77 CALL                             R23 1 2
       78 LOADNIL                          R25
       79 LOADNIL                          R26
       80 LOADNIL                          R27
       81 GETUPVAL                         R29 11
       82 GETTABLEKS                       R28 R29 K11 ["FoundationSheetFullBleed"]
       84 JUMPIFNOT                        R28 ; [+12]
       85 GETUPVAL                         R28 12
       86 GETTABLEKS                       R29 R2 K12 ["children"]
       88 CALL                             R28 1 1
       89 MOVE                             R25 R28
       90 GETUPVAL                         R29 9
       91 GETTABLEKS                       R28 R29 K7 ["useBinding"]
       93 LOADN                            R29 0
       94 CALL                             R28 1 2
       95 MOVE                             R26 R28
       96 MOVE                             R27 R29
       97 GETUPVAL                         R29 9
       98 GETTABLEKS                       R28 R29 K7 ["useBinding"]
      100 LOADN                            R29 0
      101 CALL                             R28 1 2
      102 GETUPVAL                         R31 9
      103 GETTABLEKS                       R30 R31 K7 ["useBinding"]
      105 LOADN                            R31 0
      106 CALL                             R30 1 2
      107 GETUPVAL                         R33 9
      108 GETTABLEKS                       R32 R33 K10 ["useRef"]
      110 LOADNIL                          R33
      111 CALL                             R32 1 1
      112 GETUPVAL                         R34 9
      113 GETTABLEKS                       R33 R34 K9 ["useState"]
      115 LOADNIL                          R34
      116 CALL                             R33 1 2
      117 GETUPVAL                         R37 11
      118 GETTABLEKS                       R36 R37 K13 ["FoundationCenterSheetUseStableContainer"]
      120 JUMPIFNOT                        R36 ; [+8]
      121 GETUPVAL                         R36 9
      122 GETTABLEKS                       R35 R36 K14 ["useMemo"]
      124 DUPCLOSURE                       R36 K15 [PROTO_3]
      125 NEWTABLE                         R37 0 0
      127 CALL                             R35 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R35
      130 GETUPVAL                         R37 11
      131 GETTABLEKS                       R36 R37 K13 ["FoundationCenterSheetUseStableContainer"]
      133 JUMPIFNOT                        R36 ; [+8]
      134 GETUPVAL                         R37 9
      135 GETTABLEKS                       R36 R37 K16 ["useEffect"]
      137 NEWCLOSURE                       R37 P4
      138 CAPTURE                          VAL R35
      139 NEWTABLE                         R38 0 0
      141 CALL                             R36 2 0
      142 GETUPVAL                         R38 11
      143 GETTABLEKS                       R37 R38 K13 ["FoundationCenterSheetUseStableContainer"]
      145 JUMPIFNOT                        R37 ; [+9]
      146 GETUPVAL                         R37 9
      147 GETTABLEKS                       R36 R37 K17 ["useCallback"]
      149 NEWCLOSURE                       R37 P5
      150 CAPTURE                          VAL R35
      151 NEWTABLE                         R38 0 0
      153 CALL                             R36 2 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R36
      156 GETUPVAL                         R38 9
      157 GETTABLEKS                       R37 R38 K16 ["useEffect"]
      159 NEWCLOSURE                       R38 P6
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R20
      162 CAPTURE                          UPVAL U13
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R4
      165 NEWTABLE                         R39 0 0
      167 CALL                             R37 2 0
      168 GETUPVAL                         R38 9
      169 GETTABLEKS                       R37 R38 K17 ["useCallback"]
      171 NEWCLOSURE                       R38 P7
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R20
      175 CAPTURE                          UPVAL U13
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R15
      180 NEWTABLE                         R39 0 2
      182 MOVE                             R40 R10
      183 MOVE                             R41 R7
      184 SETLIST                          R39 R40 2 [1]
      186 CALL                             R37 2 1
      187 GETUPVAL                         R39 9
      188 GETTABLEKS                       R38 R39 K18 ["useImperativeHandle"]
      190 GETTABLEKS                       R39 R2 K19 ["sheetRef"]
      192 NEWCLOSURE                       R40 P8
      193 CAPTURE                          VAL R37
      194 NEWTABLE                         R41 0 0
      196 CALL                             R38 3 0
      197 GETUPVAL                         R39 9
      198 GETTABLEKS                       R38 R39 K14 ["useMemo"]
      200 NEWCLOSURE                       R39 P9
      201 CAPTURE                          UPVAL U14
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R28
      206 CAPTURE                          VAL R29
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R24
      209 CAPTURE                          UPVAL U11
      210 CAPTURE                          REF R25
      211 CAPTURE                          REF R26
      212 CAPTURE                          REF R27
      213 CAPTURE                          VAL R37
      214 CAPTURE                          UPVAL U15
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R34
      219 NEWTABLE                         R40 0 6
      221 GETTABLEKS                       R41 R2 K20 ["testId"]
      223 MOVE                             R42 R37
      224 MOVE                             R43 R33
      225 MOVE                             R44 R32
      226 MOVE                             R45 R13
      227 MOVE                             R46 R25
      228 SETLIST                          R40 R41 6 [1]
      230 CALL                             R38 2 1
      231 GETUPVAL                         R40 9
      232 GETTABLEKS                       R39 R40 K21 ["createElement"]
      234 GETUPVAL                         R40 16
      235 DUPTABLE                         R41 K32 [{"ClipsDescendants", "Size", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      236 LOADB                            R42 1
      237 SETTABLEKS                       R42 R41 K22 ["ClipsDescendants"]
      239 GETTABLEKS                       R43 R2 K33 ["centerSheetHeight"]
      241 JUMPIFNOT                        R43 ; [+6]
      242 JUMPIFNOT                        R13 ; [+5]
      243 DUPCLOSURE                       R44 K34 [PROTO_11]
      244 NAMECALL                         R42 R13 K8 ["map"]
      246 CALL                             R42 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R42
      249 SETTABLEKS                       R42 R41 K5 ["Size"]
      251 GETTABLEKS                       R43 R2 K33 ["centerSheetHeight"]
      253 JUMPIFNOT                        R43 ; [+9]
      254 JUMPIFNOT                        R11 ; [+8]
      255 DUPTABLE                         R42 K36 [{"MaxSize"}]
      256 DUPCLOSURE                       R45 K37 [PROTO_12]
      257 NAMECALL                         R43 R11 K8 ["map"]
      259 CALL                             R43 2 1
      260 SETTABLEKS                       R43 R42 K35 ["MaxSize"]
      262 JUMP                             ; [+1]
      263 LOADNIL                          R42
      264 SETTABLEKS                       R42 R41 K23 ["sizeConstraint"]
      266 DUPTABLE                         R42 K39 [{"affordance"}]
      267 GETUPVAL                         R44 17
      268 GETTABLEKS                       R43 R44 K40 ["None"]
      270 SETTABLEKS                       R43 R42 K38 ["affordance"]
      272 SETTABLEKS                       R42 R41 K24 ["stateLayer"]
      274 LOADN                            R42 2
      275 SETTABLEKS                       R42 R41 K25 ["ZIndex"]
      277 GETUPVAL                         R43 14
      278 GETTABLEKS                       R42 R43 K41 ["noop"]
      280 SETTABLEKS                       R42 R41 K26 ["onActivated"]
      282 NEWCLOSURE                       R42 P12
      283 CAPTURE                          VAL R31
      284 SETTABLEKS                       R42 R41 K27 ["onAbsoluteSizeChanged"]
      286 SETTABLEKS                       R1 R41 K28 ["ref"]
      288 GETUPVAL                         R43 18
      289 GETTABLEKS                       R42 R43 K42 ["nonSelectable"]
      291 SETTABLEKS                       R42 R41 K29 ["selection"]
      293 GETUPVAL                         R43 18
      294 GETTABLEKS                       R42 R43 K43 ["isolatedSelectionGroup"]
      296 SETTABLEKS                       R42 R41 K30 ["selectionGroup"]
      298 NEWTABLE                         R42 2 0
      300 LOADB                            R43 1
      301 SETTABLEKS                       R43 R42 K44 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      303 GETTABLEKS                       R44 R2 K33 ["centerSheetHeight"]
      305 JUMPIFEQKNIL                     R44 ; [+2]
      307 LOADB                            R43 0 +1
      308 LOADB                            R43 1
      309 SETTABLEKS                       R43 R42 K45 ["size-full-0 auto-y"]
      311 SETTABLEKS                       R42 R41 K31 ["tag"]
      313 GETTABLEKS                       R42 R2 K20 ["testId"]
      315 SETTABLEKS                       R42 R41 K20 ["testId"]
      317 DUPTABLE                         R42 K48 [{"Content", "CloseAffordance"}]
      318 GETUPVAL                         R44 9
      319 GETTABLEKS                       R43 R44 K21 ["createElement"]
      321 GETUPVAL                         R44 16
      322 DUPTABLE                         R45 K49 [{"Size", "tag"}]
      323 GETTABLEKS                       R47 R2 K33 ["centerSheetHeight"]
      325 JUMPIFNOT                        R47 ; [+6]
      326 JUMPIFNOT                        R13 ; [+5]
      327 DUPCLOSURE                       R48 K50 [PROTO_14]
      328 NAMECALL                         R46 R13 K8 ["map"]
      330 CALL                             R46 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R46
      333 SETTABLEKS                       R46 R45 K5 ["Size"]
      335 LOADK                            R46 K51 ["col items-center size-full-0 auto-y clip"]
      336 SETTABLEKS                       R46 R45 K31 ["tag"]
      338 GETUPVAL                         R47 9
      339 GETTABLEKS                       R46 R47 K21 ["createElement"]
      341 GETUPVAL                         R48 19
      342 GETTABLEKS                       R47 R48 K52 ["Provider"]
      344 DUPTABLE                         R48 K54 [{"value"}]
      345 SETTABLEKS                       R38 R48 K53 ["value"]
      347 GETUPVAL                         R50 9
      348 GETTABLEKS                       R49 R50 K21 ["createElement"]
      350 GETUPVAL                         R50 20
      351 DUPTABLE                         R51 K56 [{"owner"}]
      352 SETTABLEKS                       R5 R51 K55 ["owner"]
      354 GETTABLEKS                       R52 R2 K12 ["children"]
      356 CALL                             R49 3 -1
      357 CALL                             R46 -1 -1
      358 CALL                             R43 -1 1
      359 SETTABLEKS                       R43 R42 K46 ["Content"]
      361 GETUPVAL                         R44 9
      362 GETTABLEKS                       R43 R44 K21 ["createElement"]
      364 GETUPVAL                         R44 21
      365 DUPTABLE                         R45 K62 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      366 SETTABLEKS                       R37 R45 K26 ["onActivated"]
      368 SETTABLEKS                       R32 R45 K28 ["ref"]
      370 SETTABLEKS                       R33 R45 K57 ["NextSelectionDown"]
      372 GETUPVAL                         R48 11
      373 GETTABLEKS                       R47 R48 K11 ["FoundationSheetFullBleed"]
      375 JUMPIFNOT                        R47 ; [+5]
      376 JUMPIFNOT                        R25 ; [+4]
      377 GETUPVAL                         R47 22
      378 GETTABLEKS                       R46 R47 K63 ["OverMedia"]
      380 JUMP                             ; [+3]
      381 GETUPVAL                         R47 22
      382 GETTABLEKS                       R46 R47 K64 ["Utility"]
      384 SETTABLEKS                       R46 R45 K58 ["variant"]
      386 GETIMPORT                        R46 K67 [UDim2.new]
      388 LOADN                            R47 1
      389 GETTABLEKS                       R50 R4 K68 ["Margin"]
      391 GETTABLEKS                       R49 R50 K69 ["Small"]
      393 MINUS                            R48 R49
      394 LOADN                            R49 0
      395 GETTABLEKS                       R51 R4 K68 ["Margin"]
      397 GETTABLEKS                       R50 R51 K69 ["Small"]
      399 CALL                             R46 4 1
      400 SETTABLEKS                       R46 R45 K59 ["Position"]
      402 GETIMPORT                        R46 K71 [Vector2.new]
      404 LOADN                            R47 1
      405 LOADN                            R48 0
      406 CALL                             R46 2 1
      407 SETTABLEKS                       R46 R45 K60 ["AnchorPoint"]
      409 DUPCLOSURE                       R48 K72 [PROTO_15]
      410 NAMECALL                         R46 R23 K8 ["map"]
      412 CALL                             R46 2 1
      413 SETTABLEKS                       R46 R45 K61 ["Visible"]
      415 LOADK                            R47 K73 ["%*--close-affordance"]
      416 GETTABLEKS                       R49 R2 K20 ["testId"]
      418 NAMECALL                         R47 R47 K74 ["format"]
      420 CALL                             R47 2 1
      421 MOVE                             R46 R47
      422 SETTABLEKS                       R46 R45 K20 ["testId"]
      424 CALL                             R43 2 1
      425 SETTABLEKS                       R43 R42 K47 ["CloseAffordance"]
      427 CALL                             R39 3 1
      428 GETUPVAL                         R41 9
      429 GETTABLEKS                       R40 R41 K21 ["createElement"]
      431 GETUPVAL                         R41 23
      432 DUPTABLE                         R42 K78 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      433 GETUPVAL                         R43 24
      434 SETTABLEKS                       R43 R42 K75 ["Image"]
      436 DUPCLOSURE                       R45 K79 [PROTO_16]
      437 CAPTURE                          UPVAL U25
      438 NAMECALL                         R43 R30 K8 ["map"]
      440 CALL                             R43 2 1
      441 SETTABLEKS                       R43 R42 K5 ["Size"]
      443 GETIMPORT                        R43 K67 [UDim2.new]
      445 LOADN                            R44 0
      446 GETUPVAL                         R46 25
      447 MINUS                            R45 R46
      448 LOADK                            R46 K80 [0.5]
      449 LOADN                            R47 0
      450 CALL                             R43 4 1
      451 SETTABLEKS                       R43 R42 K59 ["Position"]
      453 LOADN                            R43 1
      454 SETTABLEKS                       R43 R42 K25 ["ZIndex"]
      456 DUPTABLE                         R43 K83 [{"center", "scale"}]
      457 GETIMPORT                        R44 K85 [Rect.new]
      459 GETUPVAL                         R45 25
      460 GETUPVAL                         R46 25
      461 GETUPVAL                         R48 25
      462 ADDK                             R47 R48 K86 [1]
      463 GETUPVAL                         R49 25
      464 ADDK                             R48 R49 K86 [1]
      465 CALL                             R44 4 1
      466 SETTABLEKS                       R44 R43 K81 ["center"]
      468 LOADN                            R44 2
      469 SETTABLEKS                       R44 R43 K82 ["scale"]
      471 SETTABLEKS                       R43 R42 K76 ["slice"]
      473 GETTABLEKS                       R46 R4 K87 ["Color"]
      475 GETTABLEKS                       R45 R46 K88 ["Extended"]
      477 GETTABLEKS                       R44 R45 K89 ["Black"]
      479 GETTABLEKS                       R43 R44 K90 ["Black_10"]
      481 SETTABLEKS                       R43 R42 K77 ["imageStyle"]
      483 LOADK                            R43 K91 ["anchor-center-left"]
      484 SETTABLEKS                       R43 R42 K31 ["tag"]
      486 CALL                             R40 2 1
      487 MOVE                             R41 R3
      488 JUMPIFNOT                        R41 ; [+189]
      489 GETUPVAL                         R42 9
      490 GETTABLEKS                       R41 R42 K21 ["createElement"]
      492 GETUPVAL                         R43 9
      493 GETTABLEKS                       R42 R43 K92 ["Fragment"]
      495 LOADNIL                          R43
      496 DUPTABLE                         R44 K95 [{"OverlayPortal", "SheetContent"}]
      497 GETUPVAL                         R46 26
      498 GETTABLEKS                       R45 R46 K96 ["createPortal"]
      500 GETUPVAL                         R47 9
      501 GETTABLEKS                       R46 R47 K21 ["createElement"]
      503 GETUPVAL                         R47 16
      504 DUPTABLE                         R48 K97 [{"ZIndex", "tag", "testId"}]
      505 GETTABLEKS                       R49 R5 K98 ["zIndex"]
      507 SETTABLEKS                       R49 R48 K25 ["ZIndex"]
      509 LOADK                            R49 K99 ["size-full"]
      510 SETTABLEKS                       R49 R48 K31 ["tag"]
      512 LOADK                            R50 K100 ["%*--surface"]
      513 GETTABLEKS                       R52 R2 K20 ["testId"]
      515 NAMECALL                         R50 R50 K74 ["format"]
      517 CALL                             R50 2 1
      518 MOVE                             R49 R50
      519 SETTABLEKS                       R49 R48 K20 ["testId"]
      521 DUPTABLE                         R49 K103 [{"SheetContainer", "Backdrop"}]
      522 GETUPVAL                         R51 9
      523 GETTABLEKS                       R50 R51 K21 ["createElement"]
      525 GETUPVAL                         R51 16
      526 DUPTABLE                         R52 K105 [{"ref", "ZIndex", "sizeConstraint", "Position", "tag", "testId", "GroupTransparency", "onAbsoluteSizeChanged"}]
      527 SETTABLEKS                       R36 R52 K28 ["ref"]
      529 LOADN                            R53 2
      530 SETTABLEKS                       R53 R52 K25 ["ZIndex"]
      532 DUPTABLE                         R53 K36 [{"MaxSize"}]
      533 GETIMPORT                        R54 K71 [Vector2.new]
      535 MOVE                             R55 R8
      536 MOVE                             R56 R9
      537 CALL                             R54 2 1
      538 SETTABLEKS                       R54 R53 K35 ["MaxSize"]
      540 SETTABLEKS                       R53 R52 K23 ["sizeConstraint"]
      542 DUPCLOSURE                       R55 K106 [PROTO_17]
      543 NAMECALL                         R53 R19 K8 ["map"]
      545 CALL                             R53 2 1
      546 SETTABLEKS                       R53 R52 K59 ["Position"]
      548 LOADK                            R53 K107 ["col align-y-center anchor-center-center size-full padding-medium"]
      549 SETTABLEKS                       R53 R52 K31 ["tag"]
      551 LOADK                            R54 K108 ["%*--center-sheet-container"]
      552 GETTABLEKS                       R56 R2 K20 ["testId"]
      554 NAMECALL                         R54 R54 K74 ["format"]
      556 CALL                             R54 2 1
      557 MOVE                             R53 R54
      558 SETTABLEKS                       R53 R52 K20 ["testId"]
      560 JUMPIFNOT                        R14 ; [+6]
      561 NEWCLOSURE                       R55 P17
      562 CAPTURE                          VAL R10
      563 NAMECALL                         R53 R19 K8 ["map"]
      565 CALL                             R53 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R53
      568 SETTABLEKS                       R53 R52 K104 ["GroupTransparency"]
      570 GETTABLEKS                       R54 R2 K33 ["centerSheetHeight"]
      572 JUMPIFNOT                        R54 ; [+6]
      573 JUMPIFNOT                        R12 ; [+5]
      574 NEWCLOSURE                       R53 P18
      575 CAPTURE                          VAL R4
      576 CAPTURE                          VAL R12
      577 CAPTURE                          VAL R9
      578 JUMP                             ; [+1]
      579 LOADNIL                          R53
      580 SETTABLEKS                       R53 R52 K27 ["onAbsoluteSizeChanged"]
      582 GETUPVAL                         R55 11
      583 GETTABLEKS                       R54 R55 K13 ["FoundationCenterSheetUseStableContainer"]
      585 JUMPIF                           R54 ; [+13]
      586 DUPTABLE                         R53 K110 [{"Sheet", "Shadow"}]
      587 SETTABLEKS                       R39 R53 K0 ["Sheet"]
      589 GETUPVAL                         R55 9
      590 GETTABLEKS                       R54 R55 K21 ["createElement"]
      592 LOADK                            R55 K111 ["Folder"]
      593 LOADNIL                          R56
      594 MOVE                             R57 R40
      595 CALL                             R54 3 1
      596 SETTABLEKS                       R54 R53 K109 ["Shadow"]
      598 JUMP                             ; [+1]
      599 LOADNIL                          R53
      600 CALL                             R50 3 1
      601 SETTABLEKS                       R50 R49 K101 ["SheetContainer"]
      603 GETUPVAL                         R51 9
      604 GETTABLEKS                       R50 R51 K21 ["createElement"]
      606 GETUPVAL                         R51 16
      607 DUPTABLE                         R52 K113 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      608 GETIMPORT                        R53 K115 [UDim2.fromScale]
      610 LOADN                            R54 2
      611 LOADN                            R55 2
      612 CALL                             R53 2 1
      613 SETTABLEKS                       R53 R52 K5 ["Size"]
      615 GETIMPORT                        R53 K115 [UDim2.fromScale]
      617 LOADK                            R54 K116 [-0.5]
      618 LOADK                            R55 K116 [-0.5]
      619 CALL                             R53 2 1
      620 SETTABLEKS                       R53 R52 K59 ["Position"]
      622 LOADN                            R53 1
      623 SETTABLEKS                       R53 R52 K25 ["ZIndex"]
      625 DUPTABLE                         R53 K39 [{"affordance"}]
      626 GETUPVAL                         R55 17
      627 GETTABLEKS                       R54 R55 K40 ["None"]
      629 SETTABLEKS                       R54 R53 K38 ["affordance"]
      631 SETTABLEKS                       R53 R52 K24 ["stateLayer"]
      633 NEWCLOSURE                       R55 P19
      634 CAPTURE                          VAL R4
      635 NAMECALL                         R53 R17 K8 ["map"]
      637 CALL                             R53 2 1
      638 SETTABLEKS                       R53 R52 K112 ["backgroundStyle"]
      640 SETTABLEKS                       R37 R52 K26 ["onActivated"]
      642 LOADK                            R54 K117 ["%*--backdrop"]
      643 GETTABLEKS                       R56 R2 K20 ["testId"]
      645 NAMECALL                         R54 R54 K74 ["format"]
      647 CALL                             R54 2 1
      648 MOVE                             R53 R54
      649 SETTABLEKS                       R53 R52 K20 ["testId"]
      651 CALL                             R50 2 1
      652 SETTABLEKS                       R50 R49 K102 ["Backdrop"]
      654 CALL                             R46 3 1
      655 MOVE                             R47 R3
      656 CALL                             R45 2 1
      657 SETTABLEKS                       R45 R44 K93 ["OverlayPortal"]
      659 GETUPVAL                         R47 11
      660 GETTABLEKS                       R46 R47 K13 ["FoundationCenterSheetUseStableContainer"]
      662 JUMPIFNOT                        R46 ; [+11]
      663 GETUPVAL                         R46 26
      664 GETTABLEKS                       R45 R46 K96 ["createPortal"]
      666 DUPTABLE                         R46 K110 [{"Sheet", "Shadow"}]
      667 SETTABLEKS                       R39 R46 K0 ["Sheet"]
      669 SETTABLEKS                       R40 R46 K109 ["Shadow"]
      671 MOVE                             R47 R35
      672 CALL                             R45 2 1
      673 JUMP                             ; [+1]
      674 LOADNIL                          R45
      675 SETTABLEKS                       R45 R44 K94 ["SheetContent"]
      677 CALL                             R41 3 1
      678 CLOSEUPVALS                      R25
      679 RETURN                           R41 1

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
       45 GETTABLEKS                       R11 R0 K13 ["Enums"]
       47 GETTABLEKS                       R10 R11 K15 ["StateLayerAffordance"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R13 R0 K16 ["Providers"]
       54 GETTABLEKS                       R12 R13 K17 ["Overlay"]
       56 GETTABLEKS                       R11 R12 K18 ["useOverlay"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R13 R0 K19 ["Utility"]
       63 GETTABLEKS                       R12 R13 K20 ["useScaledValue"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R15 R0 K16 ["Providers"]
       70 GETTABLEKS                       R14 R15 K21 ["Style"]
       72 GETTABLEKS                       R13 R14 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K19 ["Utility"]
       79 GETTABLEKS                       R14 R15 K23 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R18 R0 K24 ["Components"]
       86 GETTABLEKS                       R17 R18 K25 ["Dialog"]
       88 GETTABLEKS                       R16 R17 K26 ["useDialogVariants"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R14 R15 K27 ["DIALOG_SIZES"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K28 ["Constants"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R18 R0 K13 ["Enums"]
      102 GETTABLEKS                       R17 R18 K29 ["DialogSize"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R19 R0 K13 ["Enums"]
      109 GETTABLEKS                       R18 R19 K30 ["ElevationLayer"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R21 R0 K16 ["Providers"]
      116 GETTABLEKS                       R20 R21 K31 ["Elevation"]
      118 GETTABLEKS                       R19 R20 K32 ["useElevation"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R20 K6 [require]
      123 GETTABLEKS                       R23 R0 K16 ["Providers"]
      125 GETTABLEKS                       R22 R23 K31 ["Elevation"]
      127 GETTABLEKS                       R21 R22 K33 ["ElevationProvider"]
      129 CALL                             R20 1 1
      130 GETTABLEKS                       R19 R20 K34 ["ElevationOwnerScope"]
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R22 R0 K19 ["Utility"]
      136 GETTABLEKS                       R21 R22 K35 ["Flags"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R24 R0 K16 ["Providers"]
      143 GETTABLEKS                       R23 R24 K36 ["Preferences"]
      145 GETTABLEKS                       R22 R23 K37 ["usePreferences"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R25 K1 [script]
      152 GETTABLEKS                       R24 R25 K4 ["Parent"]
      154 GETTABLEKS                       R23 R24 K38 ["SheetContext"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K4 ["Parent"]
      163 GETTABLEKS                       R24 R25 K39 ["Types"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETIMPORT                        R27 K1 [script]
      170 GETTABLEKS                       R26 R27 K4 ["Parent"]
      172 GETTABLEKS                       R25 R26 K40 ["SheetType"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K6 [require]
      177 GETIMPORT                        R28 K1 [script]
      179 GETTABLEKS                       R27 R28 K4 ["Parent"]
      181 GETTABLEKS                       R26 R27 K41 ["childrenHasFullBleed"]
      183 CALL                             R25 1 1
      184 GETIMPORT                        R26 K6 [require]
      186 GETTABLEKS                       R28 R0 K24 ["Components"]
      188 GETTABLEKS                       R27 R28 K42 ["CloseAffordance"]
      190 CALL                             R26 1 1
      191 GETIMPORT                        R27 K6 [require]
      193 GETTABLEKS                       R29 R0 K24 ["Components"]
      195 GETTABLEKS                       R28 R29 K43 ["Image"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K6 [require]
      200 GETTABLEKS                       R30 R0 K24 ["Components"]
      202 GETTABLEKS                       R29 R30 K44 ["View"]
      204 CALL                             R28 1 1
      205 DUPTABLE                         R29 K47 [{"size", "testId"}]
      206 GETTABLEKS                       R30 R16 K48 ["Medium"]
      208 SETTABLEKS                       R30 R29 K45 ["size"]
      210 LOADK                            R30 K49 ["--foundation-sheet"]
      211 SETTABLEKS                       R30 R29 K46 ["testId"]
      213 GETTABLEKS                       R30 R15 K50 ["SHADOW_IMAGE"]
      215 GETTABLEKS                       R31 R15 K51 ["SHADOW_SIZE"]
      217 DUPCLOSURE                       R32 K52 [PROTO_21]
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R29
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R28
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R30
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R6
      245 GETTABLEKS                       R33 R4 K53 ["memo"]
      247 GETTABLEKS                       R34 R4 K54 ["forwardRef"]
      249 MOVE                             R35 R32
      250 CALL                             R34 1 -1
      251 CALL                             R33 -1 -1
      252 RETURN                           R33 -1
