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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationSheetReducedMotion"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["instant"]
       10 LOADN                            R2 0
       11 CALL                             R1 1 1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K1 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K2 ["ease"]
       25 LOADN                            R2 0
       26 DUPTABLE                         R3 K5 [{"easingStyle", "duration"}]
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R5 R6 K6 ["Ease"]
       30 GETTABLEKS                       R4 R5 K7 ["StandardOut"]
       32 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       34 GETUPVAL                         R6 5
       35 GETTABLEKS                       R5 R6 K8 ["Time"]
       37 GETTABLEKS                       R4 R5 K9 ["Time_300"]
       39 SETTABLEKS                       R4 R3 K4 ["duration"]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 0
       43 GETUPVAL                         R0 4
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R1 R2 K2 ["ease"]
       47 LOADN                            R2 0
       48 DUPTABLE                         R3 K10 [{"duration"}]
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R5 R6 K8 ["Time"]
       52 GETTABLEKS                       R4 R5 K11 ["Time_100"]
       54 SETTABLEKS                       R4 R3 K4 ["duration"]
       56 CALL                             R1 2 -1
       57 CALL                             R0 -1 0
       58 RETURN                           R0 0

PROTO_4:
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
       67 GETUPVAL                         R0 8
       68 LOADB                            R1 1
       69 CALL                             R0 1 0
       70 GETUPVAL                         R0 0
       71 LOADB                            R1 1
       72 SETTABLEKS                       R1 R0 K0 ["current"]
       74 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K21 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetContentHeight", "setSheetContentHeight", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K22 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K4 ["sheetContentHeight"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K22 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetContentHeight"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["sheetHeightAvailable"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K22 ["noop"]
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
       55 GETUPVAL                         R2 9
       56 GETTABLEKS                       R1 R2 K23 ["Center"]
       58 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       60 GETUPVAL                         R2 10
       61 GETTABLEKS                       R1 R2 K17 ["testId"]
       63 SETTABLEKS                       R1 R0 K17 ["testId"]
       65 GETUPVAL                         R1 11
       66 SETTABLEKS                       R1 R0 K18 ["closeAffordanceRef"]
       68 GETUPVAL                         R1 12
       69 SETTABLEKS                       R1 R0 K19 ["contentStartRef"]
       71 GETUPVAL                         R1 13
       72 SETTABLEKS                       R1 R0 K20 ["setContentStartRef"]
       74 RETURN                           R0 1

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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
       27 GETUPVAL                         R9 9
       28 GETTABLEKS                       R10 R2 K5 ["size"]
       30 GETTABLE                         R8 R9 R10
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 8
       33 LOADN                            R9 88
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R10 R4 K6 ["Size"]
       37 GETTABLEKS                       R9 R10 K7 ["Size_800"]
       39 LOADNIL                          R10
       40 LOADNIL                          R11
       41 GETUPVAL                         R13 6
       42 GETTABLEKS                       R12 R13 K8 ["FoundationAddHeightPropToCenterSheet"]
       44 JUMPIFNOT                        R12 ; [+7]
       45 GETUPVAL                         R13 10
       46 GETTABLEKS                       R12 R13 K9 ["useBinding"]
       48 MOVE                             R13 R8
       49 CALL                             R12 1 2
       50 MOVE                             R10 R12
       51 MOVE                             R11 R13
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R13 R14 K8 ["FoundationAddHeightPropToCenterSheet"]
       55 JUMPIFNOT                        R13 ; [+7]
       56 JUMPIFNOT                        R10 ; [+6]
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          VAL R2
       59 NAMECALL                         R12 R10 K10 ["map"]
       61 CALL                             R12 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R12
       64 GETUPVAL                         R14 10
       65 GETTABLEKS                       R13 R14 K11 ["useState"]
       67 LOADB                            R14 1
       68 CALL                             R13 1 2
       69 GETUPVAL                         R16 10
       70 GETTABLEKS                       R15 R16 K12 ["useRef"]
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
       85 GETUPVAL                         R21 10
       86 GETTABLEKS                       R20 R21 K9 ["useBinding"]
       88 LOADB                            R21 0
       89 CALL                             R20 1 2
       90 GETUPVAL                         R23 10
       91 GETTABLEKS                       R22 R23 K9 ["useBinding"]
       93 LOADB                            R23 0
       94 CALL                             R22 1 2
       95 GETUPVAL                         R25 10
       96 GETTABLEKS                       R24 R25 K9 ["useBinding"]
       98 LOADN                            R25 0
       99 CALL                             R24 1 2
      100 GETUPVAL                         R27 10
      101 GETTABLEKS                       R26 R27 K9 ["useBinding"]
      103 LOADN                            R27 0
      104 CALL                             R26 1 2
      105 GETUPVAL                         R29 10
      106 GETTABLEKS                       R28 R29 K12 ["useRef"]
      108 LOADNIL                          R29
      109 CALL                             R28 1 1
      110 GETUPVAL                         R30 10
      111 GETTABLEKS                       R29 R30 K11 ["useState"]
      113 LOADNIL                          R30
      114 CALL                             R29 1 2
      115 GETUPVAL                         R32 10
      116 GETTABLEKS                       R31 R32 K13 ["useEffect"]
      118 NEWCLOSURE                       R32 P3
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          REF R6
      121 CAPTURE                          VAL R19
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R4
      125 NEWTABLE                         R33 0 0
      127 CALL                             R31 2 0
      128 GETUPVAL                         R32 10
      129 GETTABLEKS                       R31 R32 K14 ["useCallback"]
      131 NEWCLOSURE                       R32 P4
      132 CAPTURE                          VAL R15
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          REF R6
      135 CAPTURE                          VAL R19
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 NEWTABLE                         R33 0 2
      143 MOVE                             R34 R9
      144 GETUPVAL                         R37 6
      145 GETTABLEKS                       R36 R37 K3 ["FoundationSheetReducedMotion"]
      147 JUMPIFNOT                        R36 ; [+2]
      148 MOVE                             R35 R6
      149 JUMP                             ; [+1]
      150 LOADNIL                          R35
      151 SETLIST                          R33 R34 2 [1]
      153 CALL                             R31 2 1
      154 GETUPVAL                         R33 10
      155 GETTABLEKS                       R32 R33 K15 ["useImperativeHandle"]
      157 GETTABLEKS                       R33 R2 K16 ["sheetRef"]
      159 NEWCLOSURE                       R34 P5
      160 CAPTURE                          VAL R31
      161 NEWTABLE                         R35 0 0
      163 CALL                             R32 3 0
      164 GETUPVAL                         R33 10
      165 GETTABLEKS                       R32 R33 K17 ["useMemo"]
      167 NEWCLOSURE                       R33 P6
      168 CAPTURE                          UPVAL U13
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R31
      177 CAPTURE                          UPVAL U14
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R29
      181 CAPTURE                          VAL R30
      182 NEWTABLE                         R34 0 5
      184 GETTABLEKS                       R35 R2 K18 ["testId"]
      186 MOVE                             R36 R31
      187 MOVE                             R37 R29
      188 MOVE                             R38 R28
      189 MOVE                             R39 R12
      190 SETLIST                          R34 R35 5 [1]
      192 CALL                             R32 2 1
      193 MOVE                             R33 R3
      194 JUMPIFNOT                        R33 ; [+411]
      195 GETUPVAL                         R34 15
      196 GETTABLEKS                       R33 R34 K19 ["createPortal"]
      198 GETUPVAL                         R35 10
      199 GETTABLEKS                       R34 R35 K20 ["createElement"]
      201 GETUPVAL                         R35 16
      202 DUPTABLE                         R36 K23 [{"ZIndex", "tag", "testId"}]
      203 GETTABLEKS                       R37 R5 K24 ["zIndex"]
      205 SETTABLEKS                       R37 R36 K21 ["ZIndex"]
      207 LOADK                            R37 K25 ["size-full"]
      208 SETTABLEKS                       R37 R36 K22 ["tag"]
      210 LOADK                            R38 K26 ["%*--surface"]
      211 GETTABLEKS                       R40 R2 K18 ["testId"]
      213 NAMECALL                         R38 R38 K27 ["format"]
      215 CALL                             R38 2 1
      216 MOVE                             R37 R38
      217 SETTABLEKS                       R37 R36 K18 ["testId"]
      219 DUPTABLE                         R37 K30 [{"SheetContainer", "Backdrop"}]
      220 GETUPVAL                         R39 10
      221 GETTABLEKS                       R38 R39 K20 ["createElement"]
      223 GETUPVAL                         R39 16
      224 DUPTABLE                         R40 K35 [{"ZIndex", "sizeConstraint", "Position", "tag", "GroupTransparency", "onAbsoluteSizeChanged"}]
      225 LOADN                            R41 2
      226 SETTABLEKS                       R41 R40 K21 ["ZIndex"]
      228 DUPTABLE                         R41 K37 [{"MaxSize"}]
      229 GETIMPORT                        R42 K40 [Vector2.new]
      231 MOVE                             R43 R7
      232 MOVE                             R44 R8
      233 CALL                             R42 2 1
      234 SETTABLEKS                       R42 R41 K36 ["MaxSize"]
      236 SETTABLEKS                       R41 R40 K31 ["sizeConstraint"]
      238 DUPCLOSURE                       R43 K41 [PROTO_7]
      239 NAMECALL                         R41 R18 K10 ["map"]
      241 CALL                             R41 2 1
      242 SETTABLEKS                       R41 R40 K32 ["Position"]
      244 LOADK                            R41 K42 ["size-full col align-y-center padding-medium anchor-center-center"]
      245 SETTABLEKS                       R41 R40 K22 ["tag"]
      247 JUMPIFNOT                        R13 ; [+6]
      248 NEWCLOSURE                       R43 P8
      249 CAPTURE                          VAL R9
      250 NAMECALL                         R41 R18 K10 ["map"]
      252 CALL                             R41 2 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R41
      255 SETTABLEKS                       R41 R40 K33 ["GroupTransparency"]
      257 GETUPVAL                         R43 6
      258 GETTABLEKS                       R42 R43 K8 ["FoundationAddHeightPropToCenterSheet"]
      260 JUMPIFNOT                        R42 ; [+9]
      261 GETTABLEKS                       R42 R2 K43 ["centerSheetHeight"]
      263 JUMPIFNOT                        R42 ; [+6]
      264 JUMPIFNOT                        R11 ; [+5]
      265 NEWCLOSURE                       R41 P9
      266 CAPTURE                          VAL R4
      267 CAPTURE                          REF R11
      268 CAPTURE                          VAL R8
      269 JUMP                             ; [+1]
      270 LOADNIL                          R41
      271 SETTABLEKS                       R41 R40 K34 ["onAbsoluteSizeChanged"]
      273 DUPTABLE                         R41 K45 [{"Sheet", "Shadow"}]
      274 GETUPVAL                         R43 10
      275 GETTABLEKS                       R42 R43 K20 ["createElement"]
      277 GETUPVAL                         R43 16
      278 DUPTABLE                         R44 K52 [{"ClipsDescendants", "Size", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      279 LOADB                            R45 1
      280 SETTABLEKS                       R45 R44 K46 ["ClipsDescendants"]
      282 GETUPVAL                         R47 6
      283 GETTABLEKS                       R46 R47 K8 ["FoundationAddHeightPropToCenterSheet"]
      285 JUMPIFNOT                        R46 ; [+9]
      286 GETTABLEKS                       R46 R2 K43 ["centerSheetHeight"]
      288 JUMPIFNOT                        R46 ; [+6]
      289 JUMPIFNOT                        R12 ; [+5]
      290 DUPCLOSURE                       R47 K53 [PROTO_10]
      291 NAMECALL                         R45 R12 K10 ["map"]
      293 CALL                             R45 2 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R45
      296 SETTABLEKS                       R45 R44 K6 ["Size"]
      298 GETUPVAL                         R47 6
      299 GETTABLEKS                       R46 R47 K8 ["FoundationAddHeightPropToCenterSheet"]
      301 JUMPIFNOT                        R46 ; [+12]
      302 GETTABLEKS                       R46 R2 K43 ["centerSheetHeight"]
      304 JUMPIFNOT                        R46 ; [+9]
      305 JUMPIFNOT                        R10 ; [+8]
      306 DUPTABLE                         R45 K37 [{"MaxSize"}]
      307 DUPCLOSURE                       R48 K54 [PROTO_11]
      308 NAMECALL                         R46 R10 K10 ["map"]
      310 CALL                             R46 2 1
      311 SETTABLEKS                       R46 R45 K36 ["MaxSize"]
      313 JUMP                             ; [+1]
      314 LOADNIL                          R45
      315 SETTABLEKS                       R45 R44 K31 ["sizeConstraint"]
      317 DUPTABLE                         R45 K56 [{"affordance"}]
      318 GETUPVAL                         R47 17
      319 GETTABLEKS                       R46 R47 K57 ["None"]
      321 SETTABLEKS                       R46 R45 K55 ["affordance"]
      323 SETTABLEKS                       R45 R44 K47 ["stateLayer"]
      325 LOADN                            R45 2
      326 SETTABLEKS                       R45 R44 K21 ["ZIndex"]
      328 GETUPVAL                         R46 13
      329 GETTABLEKS                       R45 R46 K58 ["noop"]
      331 SETTABLEKS                       R45 R44 K48 ["onActivated"]
      333 NEWCLOSURE                       R45 P12
      334 CAPTURE                          VAL R27
      335 SETTABLEKS                       R45 R44 K34 ["onAbsoluteSizeChanged"]
      337 SETTABLEKS                       R1 R44 K49 ["ref"]
      339 GETUPVAL                         R46 18
      340 GETTABLEKS                       R45 R46 K59 ["nonSelectable"]
      342 SETTABLEKS                       R45 R44 K50 ["selection"]
      344 GETUPVAL                         R46 18
      345 GETTABLEKS                       R45 R46 K60 ["isolatedSelectionGroup"]
      347 SETTABLEKS                       R45 R44 K51 ["selectionGroup"]
      349 GETUPVAL                         R47 6
      350 GETTABLEKS                       R46 R47 K8 ["FoundationAddHeightPropToCenterSheet"]
      352 JUMPIFNOT                        R46 ; [+14]
      353 NEWTABLE                         R45 2 0
      355 LOADB                            R46 1
      356 SETTABLEKS                       R46 R45 K61 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      358 GETTABLEKS                       R47 R2 K43 ["centerSheetHeight"]
      360 JUMPIFEQKNIL                     R47 ; [+2]
      362 LOADB                            R46 0 +1
      363 LOADB                            R46 1
      364 SETTABLEKS                       R46 R45 K62 ["size-full-0 auto-y"]
      366 JUMP                             ; [+1]
      367 LOADK                            R45 K63 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      368 SETTABLEKS                       R45 R44 K22 ["tag"]
      370 GETTABLEKS                       R45 R2 K18 ["testId"]
      372 SETTABLEKS                       R45 R44 K18 ["testId"]
      374 DUPTABLE                         R45 K66 [{"Content", "CloseAffordance"}]
      375 GETUPVAL                         R47 10
      376 GETTABLEKS                       R46 R47 K20 ["createElement"]
      378 GETUPVAL                         R47 16
      379 DUPTABLE                         R48 K67 [{"Size", "tag"}]
      380 GETUPVAL                         R51 6
      381 GETTABLEKS                       R50 R51 K8 ["FoundationAddHeightPropToCenterSheet"]
      383 JUMPIFNOT                        R50 ; [+9]
      384 GETTABLEKS                       R50 R2 K43 ["centerSheetHeight"]
      386 JUMPIFNOT                        R50 ; [+6]
      387 JUMPIFNOT                        R12 ; [+5]
      388 DUPCLOSURE                       R51 K68 [PROTO_13]
      389 NAMECALL                         R49 R12 K10 ["map"]
      391 CALL                             R49 2 1
      392 JUMP                             ; [+1]
      393 LOADNIL                          R49
      394 SETTABLEKS                       R49 R48 K6 ["Size"]
      396 LOADK                            R49 K69 ["size-full-0 auto-y col items-center clip"]
      397 SETTABLEKS                       R49 R48 K22 ["tag"]
      399 GETUPVAL                         R50 10
      400 GETTABLEKS                       R49 R50 K20 ["createElement"]
      402 GETUPVAL                         R51 19
      403 GETTABLEKS                       R50 R51 K70 ["Provider"]
      405 DUPTABLE                         R51 K72 [{"value"}]
      406 SETTABLEKS                       R32 R51 K71 ["value"]
      408 GETUPVAL                         R53 10
      409 GETTABLEKS                       R52 R53 K20 ["createElement"]
      411 GETUPVAL                         R53 20
      412 DUPTABLE                         R54 K74 [{"owner"}]
      413 SETTABLEKS                       R5 R54 K73 ["owner"]
      415 GETTABLEKS                       R55 R2 K75 ["children"]
      417 CALL                             R52 3 -1
      418 CALL                             R49 -1 -1
      419 CALL                             R46 -1 1
      420 SETTABLEKS                       R46 R45 K64 ["Content"]
      422 GETUPVAL                         R47 10
      423 GETTABLEKS                       R46 R47 K20 ["createElement"]
      425 GETUPVAL                         R47 21
      426 DUPTABLE                         R48 K80 [{"onActivated", "ref", "NextSelectionDown", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      427 SETTABLEKS                       R31 R48 K48 ["onActivated"]
      429 SETTABLEKS                       R28 R48 K49 ["ref"]
      431 SETTABLEKS                       R29 R48 K76 ["NextSelectionDown"]
      433 GETUPVAL                         R50 22
      434 GETTABLEKS                       R49 R50 K81 ["Utility"]
      436 SETTABLEKS                       R49 R48 K77 ["variant"]
      438 GETIMPORT                        R49 K83 [UDim2.new]
      440 LOADN                            R50 1
      441 GETTABLEKS                       R53 R4 K84 ["Margin"]
      443 GETTABLEKS                       R52 R53 K85 ["Small"]
      445 MINUS                            R51 R52
      446 LOADN                            R52 0
      447 GETTABLEKS                       R54 R4 K84 ["Margin"]
      449 GETTABLEKS                       R53 R54 K85 ["Small"]
      451 CALL                             R49 4 1
      452 SETTABLEKS                       R49 R48 K32 ["Position"]
      454 GETIMPORT                        R49 K40 [Vector2.new]
      456 LOADN                            R50 1
      457 LOADN                            R51 0
      458 CALL                             R49 2 1
      459 SETTABLEKS                       R49 R48 K78 ["AnchorPoint"]
      461 DUPCLOSURE                       R51 K86 [PROTO_14]
      462 NAMECALL                         R49 R22 K10 ["map"]
      464 CALL                             R49 2 1
      465 SETTABLEKS                       R49 R48 K79 ["Visible"]
      467 LOADK                            R50 K87 ["%*--close-affordance"]
      468 GETTABLEKS                       R52 R2 K18 ["testId"]
      470 NAMECALL                         R50 R50 K27 ["format"]
      472 CALL                             R50 2 1
      473 MOVE                             R49 R50
      474 SETTABLEKS                       R49 R48 K18 ["testId"]
      476 CALL                             R46 2 1
      477 SETTABLEKS                       R46 R45 K65 ["CloseAffordance"]
      479 CALL                             R42 3 1
      480 SETTABLEKS                       R42 R41 K0 ["Sheet"]
      482 GETUPVAL                         R43 10
      483 GETTABLEKS                       R42 R43 K20 ["createElement"]
      485 LOADK                            R43 K88 ["Folder"]
      486 LOADNIL                          R44
      487 GETUPVAL                         R46 10
      488 GETTABLEKS                       R45 R46 K20 ["createElement"]
      490 GETUPVAL                         R46 23
      491 DUPTABLE                         R47 K92 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      492 GETUPVAL                         R48 24
      493 SETTABLEKS                       R48 R47 K89 ["Image"]
      495 DUPCLOSURE                       R50 K93 [PROTO_15]
      496 CAPTURE                          UPVAL U25
      497 NAMECALL                         R48 R26 K10 ["map"]
      499 CALL                             R48 2 1
      500 SETTABLEKS                       R48 R47 K6 ["Size"]
      502 GETIMPORT                        R48 K83 [UDim2.new]
      504 LOADN                            R49 0
      505 GETUPVAL                         R51 25
      506 MINUS                            R50 R51
      507 LOADK                            R51 K94 [0.5]
      508 LOADN                            R52 0
      509 CALL                             R48 4 1
      510 SETTABLEKS                       R48 R47 K32 ["Position"]
      512 LOADN                            R48 1
      513 SETTABLEKS                       R48 R47 K21 ["ZIndex"]
      515 DUPTABLE                         R48 K97 [{"center", "scale"}]
      516 GETIMPORT                        R49 K99 [Rect.new]
      518 GETUPVAL                         R50 25
      519 GETUPVAL                         R51 25
      520 GETUPVAL                         R53 25
      521 ADDK                             R52 R53 K100 [1]
      522 GETUPVAL                         R54 25
      523 ADDK                             R53 R54 K100 [1]
      524 CALL                             R49 4 1
      525 SETTABLEKS                       R49 R48 K95 ["center"]
      527 LOADN                            R49 2
      528 SETTABLEKS                       R49 R48 K96 ["scale"]
      530 SETTABLEKS                       R48 R47 K90 ["slice"]
      532 GETTABLEKS                       R51 R4 K101 ["Color"]
      534 GETTABLEKS                       R50 R51 K102 ["Extended"]
      536 GETTABLEKS                       R49 R50 K103 ["Black"]
      538 GETTABLEKS                       R48 R49 K104 ["Black_10"]
      540 SETTABLEKS                       R48 R47 K91 ["imageStyle"]
      542 LOADK                            R48 K105 ["anchor-center-left"]
      543 SETTABLEKS                       R48 R47 K22 ["tag"]
      545 CALL                             R45 2 -1
      546 CALL                             R42 -1 1
      547 SETTABLEKS                       R42 R41 K44 ["Shadow"]
      549 CALL                             R38 3 1
      550 SETTABLEKS                       R38 R37 K28 ["SheetContainer"]
      552 GETUPVAL                         R39 10
      553 GETTABLEKS                       R38 R39 K20 ["createElement"]
      555 GETUPVAL                         R39 16
      556 DUPTABLE                         R40 K107 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      557 GETIMPORT                        R41 K109 [UDim2.fromScale]
      559 LOADN                            R42 2
      560 LOADN                            R43 2
      561 CALL                             R41 2 1
      562 SETTABLEKS                       R41 R40 K6 ["Size"]
      564 GETIMPORT                        R41 K109 [UDim2.fromScale]
      566 LOADK                            R42 K110 [-0.5]
      567 LOADK                            R43 K110 [-0.5]
      568 CALL                             R41 2 1
      569 SETTABLEKS                       R41 R40 K32 ["Position"]
      571 LOADN                            R41 1
      572 SETTABLEKS                       R41 R40 K21 ["ZIndex"]
      574 DUPTABLE                         R41 K56 [{"affordance"}]
      575 GETUPVAL                         R43 17
      576 GETTABLEKS                       R42 R43 K57 ["None"]
      578 SETTABLEKS                       R42 R41 K55 ["affordance"]
      580 SETTABLEKS                       R41 R40 K47 ["stateLayer"]
      582 NEWCLOSURE                       R43 P16
      583 CAPTURE                          VAL R4
      584 NAMECALL                         R41 R16 K10 ["map"]
      586 CALL                             R41 2 1
      587 SETTABLEKS                       R41 R40 K106 ["backgroundStyle"]
      589 SETTABLEKS                       R31 R40 K48 ["onActivated"]
      591 LOADK                            R42 K111 ["%*--backdrop"]
      592 GETTABLEKS                       R44 R2 K18 ["testId"]
      594 NAMECALL                         R42 R42 K27 ["format"]
      596 CALL                             R42 2 1
      597 MOVE                             R41 R42
      598 SETTABLEKS                       R41 R40 K18 ["testId"]
      600 CALL                             R38 2 1
      601 SETTABLEKS                       R38 R37 K29 ["Backdrop"]
      603 CALL                             R34 3 1
      604 MOVE                             R35 R3
      605 CALL                             R33 2 1
      606 CLOSEUPVALS                      R6
      607 RETURN                           R33 1

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
      177 GETTABLEKS                       R27 R0 K24 ["Components"]
      179 GETTABLEKS                       R26 R27 K41 ["CloseAffordance"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K6 [require]
      184 GETTABLEKS                       R28 R0 K24 ["Components"]
      186 GETTABLEKS                       R27 R28 K42 ["Image"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K6 [require]
      191 GETTABLEKS                       R29 R0 K24 ["Components"]
      193 GETTABLEKS                       R28 R29 K43 ["View"]
      195 CALL                             R27 1 1
      196 DUPTABLE                         R28 K46 [{"size", "testId"}]
      197 GETTABLEKS                       R29 R16 K47 ["Medium"]
      199 SETTABLEKS                       R29 R28 K44 ["size"]
      201 LOADK                            R29 K48 ["--foundation-sheet"]
      202 SETTABLEKS                       R29 R28 K45 ["testId"]
      204 GETTABLEKS                       R29 R15 K49 ["SHADOW_IMAGE"]
      206 GETTABLEKS                       R30 R15 K50 ["SHADOW_SIZE"]
      208 DUPCLOSURE                       R31 K51 [PROTO_17]
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
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R27
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R26
      233 CAPTURE                          VAL R29
      234 CAPTURE                          VAL R30
      235 GETTABLEKS                       R32 R4 K52 ["memo"]
      237 GETTABLEKS                       R33 R4 K53 ["forwardRef"]
      239 MOVE                             R34 R31
      240 CALL                             R33 1 -1
      241 CALL                             R32 -1 -1
      242 RETURN                           R32 -1
