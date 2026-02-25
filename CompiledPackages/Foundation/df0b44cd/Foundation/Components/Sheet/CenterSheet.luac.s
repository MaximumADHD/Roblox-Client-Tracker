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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ease"]
        4 LOADN                            R2 0
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K4 ["Ease"]
        9 GETTABLEKS                       R4 R5 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K6 ["Time"]
       16 GETTABLEKS                       R4 R5 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K6 ["Time"]
       31 GETTABLEKS                       R4 R5 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["ease"]
        9 GETUPVAL                         R2 3
       10 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K5 ["Ease"]
       14 GETTABLEKS                       R4 R5 K6 ["StandardIn"]
       16 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K7 ["Time"]
       21 GETTABLEKS                       R4 R5 K8 ["Time_100"]
       23 SETTABLEKS                       R4 R3 K3 ["duration"]
       25 CALL                             R1 2 -1
       26 CALL                             R0 -1 0
       27 GETUPVAL                         R0 5
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K1 ["ease"]
       31 LOADN                            R2 1
       32 DUPTABLE                         R3 K9 [{"duration"}]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K7 ["Time"]
       36 GETTABLEKS                       R4 R5 K8 ["Time_100"]
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
        0 DUPTABLE                         R0 K18 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetContentHeight", "setSheetContentHeight", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K19 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K4 ["sheetContentHeight"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K19 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetContentHeight"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["sheetHeightAvailable"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K19 ["noop"]
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
       56 GETTABLEKS                       R1 R2 K20 ["Center"]
       58 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       60 GETUPVAL                         R2 10
       61 GETTABLEKS                       R1 R2 K17 ["testId"]
       63 SETTABLEKS                       R1 R0 K17 ["testId"]
       65 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 GETUPVAL                         R8 7
       19 GETTABLEKS                       R9 R2 K3 ["size"]
       21 GETTABLE                         R7 R8 R9
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 6
       24 LOADN                            R8 88
       25 CALL                             R7 1 1
       26 GETTABLEKS                       R9 R4 K4 ["Size"]
       28 GETTABLEKS                       R8 R9 K5 ["Size_800"]
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 GETUPVAL                         R12 8
       33 GETTABLEKS                       R11 R12 K6 ["FoundationAddHeightPropToCenterSheet"]
       35 JUMPIFNOT                        R11 ; [+7]
       36 GETUPVAL                         R12 9
       37 GETTABLEKS                       R11 R12 K7 ["useBinding"]
       39 MOVE                             R12 R7
       40 CALL                             R11 1 2
       41 MOVE                             R9 R11
       42 MOVE                             R10 R12
       43 GETUPVAL                         R13 8
       44 GETTABLEKS                       R12 R13 K6 ["FoundationAddHeightPropToCenterSheet"]
       46 JUMPIFNOT                        R12 ; [+7]
       47 JUMPIFNOT                        R9 ; [+6]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R11 R9 K8 ["map"]
       52 CALL                             R11 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R11
       55 GETUPVAL                         R13 9
       56 GETTABLEKS                       R12 R13 K9 ["useState"]
       58 LOADB                            R13 1
       59 CALL                             R12 1 2
       60 GETUPVAL                         R15 9
       61 GETTABLEKS                       R14 R15 K10 ["useRef"]
       63 LOADB                            R15 0
       64 CALL                             R14 1 1
       65 GETUPVAL                         R15 10
       66 LOADN                            R16 1
       67 NEWCLOSURE                       R17 P1
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R2
       70 CALL                             R15 2 2
       71 GETUPVAL                         R17 10
       72 MOVE                             R18 R8
       73 NEWCLOSURE                       R19 P2
       74 CAPTURE                          VAL R13
       75 CALL                             R17 2 2
       76 GETUPVAL                         R20 9
       77 GETTABLEKS                       R19 R20 K7 ["useBinding"]
       79 LOADB                            R20 0
       80 CALL                             R19 1 2
       81 GETUPVAL                         R22 9
       82 GETTABLEKS                       R21 R22 K7 ["useBinding"]
       84 LOADB                            R22 0
       85 CALL                             R21 1 2
       86 GETUPVAL                         R24 9
       87 GETTABLEKS                       R23 R24 K7 ["useBinding"]
       89 LOADN                            R24 0
       90 CALL                             R23 1 2
       91 GETUPVAL                         R26 9
       92 GETTABLEKS                       R25 R26 K7 ["useBinding"]
       94 LOADN                            R26 0
       95 CALL                             R25 1 2
       96 GETUPVAL                         R28 9
       97 GETTABLEKS                       R27 R28 K11 ["useEffect"]
       99 NEWCLOSURE                       R28 P3
      100 CAPTURE                          VAL R18
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R16
      104 NEWTABLE                         R29 0 0
      106 CALL                             R27 2 0
      107 GETUPVAL                         R28 9
      108 GETTABLEKS                       R27 R28 K12 ["useCallback"]
      110 NEWCLOSURE                       R28 P4
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R18
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R13
      118 NEWTABLE                         R29 0 1
      120 MOVE                             R30 R8
      121 SETLIST                          R29 R30 1 [1]
      123 CALL                             R27 2 1
      124 GETUPVAL                         R29 9
      125 GETTABLEKS                       R28 R29 K13 ["useImperativeHandle"]
      127 GETTABLEKS                       R29 R2 K14 ["sheetRef"]
      129 NEWCLOSURE                       R30 P5
      130 CAPTURE                          VAL R27
      131 NEWTABLE                         R31 0 0
      133 CALL                             R28 3 0
      134 GETUPVAL                         R29 9
      135 GETTABLEKS                       R28 R29 K15 ["useMemo"]
      137 NEWCLOSURE                       R29 P6
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R27
      147 CAPTURE                          UPVAL U13
      148 CAPTURE                          VAL R2
      149 NEWTABLE                         R30 0 2
      151 GETTABLEKS                       R31 R2 K16 ["testId"]
      153 MOVE                             R32 R27
      154 SETLIST                          R30 R31 2 [1]
      156 CALL                             R28 2 1
      157 MOVE                             R29 R3
      158 JUMPIFNOT                        R29 ; [+407]
      159 GETUPVAL                         R30 14
      160 GETTABLEKS                       R29 R30 K17 ["createPortal"]
      162 GETUPVAL                         R31 9
      163 GETTABLEKS                       R30 R31 K18 ["createElement"]
      165 GETUPVAL                         R31 15
      166 DUPTABLE                         R32 K21 [{"ZIndex", "tag", "testId"}]
      167 GETTABLEKS                       R33 R5 K22 ["zIndex"]
      169 SETTABLEKS                       R33 R32 K19 ["ZIndex"]
      171 LOADK                            R33 K23 ["size-full"]
      172 SETTABLEKS                       R33 R32 K20 ["tag"]
      174 LOADK                            R34 K24 ["%*--surface"]
      175 GETTABLEKS                       R36 R2 K16 ["testId"]
      177 NAMECALL                         R34 R34 K25 ["format"]
      179 CALL                             R34 2 1
      180 MOVE                             R33 R34
      181 SETTABLEKS                       R33 R32 K16 ["testId"]
      183 DUPTABLE                         R33 K28 [{"SheetContainer", "Backdrop"}]
      184 GETUPVAL                         R35 9
      185 GETTABLEKS                       R34 R35 K18 ["createElement"]
      187 GETUPVAL                         R35 15
      188 DUPTABLE                         R36 K33 [{"ZIndex", "sizeConstraint", "Position", "tag", "GroupTransparency", "onAbsoluteSizeChanged"}]
      189 LOADN                            R37 2
      190 SETTABLEKS                       R37 R36 K19 ["ZIndex"]
      192 DUPTABLE                         R37 K35 [{"MaxSize"}]
      193 GETIMPORT                        R38 K38 [Vector2.new]
      195 MOVE                             R39 R6
      196 MOVE                             R40 R7
      197 CALL                             R38 2 1
      198 SETTABLEKS                       R38 R37 K34 ["MaxSize"]
      200 SETTABLEKS                       R37 R36 K29 ["sizeConstraint"]
      202 DUPCLOSURE                       R39 K39 [PROTO_7]
      203 NAMECALL                         R37 R17 K8 ["map"]
      205 CALL                             R37 2 1
      206 SETTABLEKS                       R37 R36 K30 ["Position"]
      208 LOADK                            R37 K40 ["size-full col align-y-center padding-medium anchor-center-center"]
      209 SETTABLEKS                       R37 R36 K20 ["tag"]
      211 JUMPIFNOT                        R12 ; [+6]
      212 NEWCLOSURE                       R39 P8
      213 CAPTURE                          VAL R8
      214 NAMECALL                         R37 R17 K8 ["map"]
      216 CALL                             R37 2 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R37
      219 SETTABLEKS                       R37 R36 K31 ["GroupTransparency"]
      221 GETUPVAL                         R39 8
      222 GETTABLEKS                       R38 R39 K6 ["FoundationAddHeightPropToCenterSheet"]
      224 JUMPIFNOT                        R38 ; [+9]
      225 GETTABLEKS                       R38 R2 K41 ["centerSheetHeight"]
      227 JUMPIFNOT                        R38 ; [+6]
      228 JUMPIFNOT                        R10 ; [+5]
      229 NEWCLOSURE                       R37 P9
      230 CAPTURE                          VAL R4
      231 CAPTURE                          REF R10
      232 CAPTURE                          VAL R7
      233 JUMP                             ; [+1]
      234 LOADNIL                          R37
      235 SETTABLEKS                       R37 R36 K32 ["onAbsoluteSizeChanged"]
      237 DUPTABLE                         R37 K43 [{"Sheet", "Shadow"}]
      238 GETUPVAL                         R39 9
      239 GETTABLEKS                       R38 R39 K18 ["createElement"]
      241 GETUPVAL                         R39 15
      242 DUPTABLE                         R40 K50 [{"ClipsDescendants", "Size", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      243 LOADB                            R41 1
      244 SETTABLEKS                       R41 R40 K44 ["ClipsDescendants"]
      246 GETUPVAL                         R43 8
      247 GETTABLEKS                       R42 R43 K6 ["FoundationAddHeightPropToCenterSheet"]
      249 JUMPIFNOT                        R42 ; [+9]
      250 GETTABLEKS                       R42 R2 K41 ["centerSheetHeight"]
      252 JUMPIFNOT                        R42 ; [+6]
      253 JUMPIFNOT                        R11 ; [+5]
      254 DUPCLOSURE                       R43 K51 [PROTO_10]
      255 NAMECALL                         R41 R11 K8 ["map"]
      257 CALL                             R41 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R41
      260 SETTABLEKS                       R41 R40 K4 ["Size"]
      262 GETUPVAL                         R43 8
      263 GETTABLEKS                       R42 R43 K6 ["FoundationAddHeightPropToCenterSheet"]
      265 JUMPIFNOT                        R42 ; [+12]
      266 GETTABLEKS                       R42 R2 K41 ["centerSheetHeight"]
      268 JUMPIFNOT                        R42 ; [+9]
      269 JUMPIFNOT                        R9 ; [+8]
      270 DUPTABLE                         R41 K35 [{"MaxSize"}]
      271 DUPCLOSURE                       R44 K52 [PROTO_11]
      272 NAMECALL                         R42 R9 K8 ["map"]
      274 CALL                             R42 2 1
      275 SETTABLEKS                       R42 R41 K34 ["MaxSize"]
      277 JUMP                             ; [+1]
      278 LOADNIL                          R41
      279 SETTABLEKS                       R41 R40 K29 ["sizeConstraint"]
      281 DUPTABLE                         R41 K54 [{"affordance"}]
      282 GETUPVAL                         R43 16
      283 GETTABLEKS                       R42 R43 K55 ["None"]
      285 SETTABLEKS                       R42 R41 K53 ["affordance"]
      287 SETTABLEKS                       R41 R40 K45 ["stateLayer"]
      289 LOADN                            R41 2
      290 SETTABLEKS                       R41 R40 K19 ["ZIndex"]
      292 GETUPVAL                         R42 12
      293 GETTABLEKS                       R41 R42 K56 ["noop"]
      295 SETTABLEKS                       R41 R40 K46 ["onActivated"]
      297 NEWCLOSURE                       R41 P12
      298 CAPTURE                          VAL R26
      299 SETTABLEKS                       R41 R40 K32 ["onAbsoluteSizeChanged"]
      301 SETTABLEKS                       R1 R40 K47 ["ref"]
      303 GETUPVAL                         R42 17
      304 GETTABLEKS                       R41 R42 K57 ["nonSelectable"]
      306 SETTABLEKS                       R41 R40 K48 ["selection"]
      308 GETUPVAL                         R42 17
      309 GETTABLEKS                       R41 R42 K58 ["isolatedSelectionGroup"]
      311 SETTABLEKS                       R41 R40 K49 ["selectionGroup"]
      313 GETUPVAL                         R43 8
      314 GETTABLEKS                       R42 R43 K6 ["FoundationAddHeightPropToCenterSheet"]
      316 JUMPIFNOT                        R42 ; [+14]
      317 NEWTABLE                         R41 2 0
      319 LOADB                            R42 1
      320 SETTABLEKS                       R42 R41 K59 ["bg-surface-100 stroke-default stroke-standard radius-large"]
      322 GETTABLEKS                       R43 R2 K41 ["centerSheetHeight"]
      324 JUMPIFEQKNIL                     R43 ; [+2]
      326 LOADB                            R42 0 +1
      327 LOADB                            R42 1
      328 SETTABLEKS                       R42 R41 K60 ["size-full-0 auto-y"]
      330 JUMP                             ; [+1]
      331 LOADK                            R41 K61 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      332 SETTABLEKS                       R41 R40 K20 ["tag"]
      334 GETTABLEKS                       R41 R2 K16 ["testId"]
      336 SETTABLEKS                       R41 R40 K16 ["testId"]
      338 DUPTABLE                         R41 K64 [{"Content", "CloseAffordance"}]
      339 GETUPVAL                         R43 9
      340 GETTABLEKS                       R42 R43 K18 ["createElement"]
      342 GETUPVAL                         R43 15
      343 DUPTABLE                         R44 K65 [{"Size", "tag"}]
      344 GETUPVAL                         R47 8
      345 GETTABLEKS                       R46 R47 K6 ["FoundationAddHeightPropToCenterSheet"]
      347 JUMPIFNOT                        R46 ; [+9]
      348 GETTABLEKS                       R46 R2 K41 ["centerSheetHeight"]
      350 JUMPIFNOT                        R46 ; [+6]
      351 JUMPIFNOT                        R11 ; [+5]
      352 DUPCLOSURE                       R47 K66 [PROTO_13]
      353 NAMECALL                         R45 R11 K8 ["map"]
      355 CALL                             R45 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R45
      358 SETTABLEKS                       R45 R44 K4 ["Size"]
      360 LOADK                            R45 K67 ["size-full-0 auto-y col items-center clip"]
      361 SETTABLEKS                       R45 R44 K20 ["tag"]
      363 GETUPVAL                         R46 9
      364 GETTABLEKS                       R45 R46 K18 ["createElement"]
      366 GETUPVAL                         R47 18
      367 GETTABLEKS                       R46 R47 K68 ["Provider"]
      369 DUPTABLE                         R47 K70 [{"value"}]
      370 SETTABLEKS                       R28 R47 K69 ["value"]
      372 GETUPVAL                         R49 9
      373 GETTABLEKS                       R48 R49 K18 ["createElement"]
      375 GETUPVAL                         R49 19
      376 DUPTABLE                         R50 K72 [{"owner"}]
      377 SETTABLEKS                       R5 R50 K71 ["owner"]
      379 GETTABLEKS                       R51 R2 K73 ["children"]
      381 CALL                             R48 3 -1
      382 CALL                             R45 -1 -1
      383 CALL                             R42 -1 1
      384 SETTABLEKS                       R42 R41 K62 ["Content"]
      386 GETUPVAL                         R43 9
      387 GETTABLEKS                       R42 R43 K18 ["createElement"]
      389 GETUPVAL                         R43 20
      390 DUPTABLE                         R44 K77 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      391 SETTABLEKS                       R27 R44 K46 ["onActivated"]
      393 GETUPVAL                         R46 21
      394 GETTABLEKS                       R45 R46 K78 ["Utility"]
      396 SETTABLEKS                       R45 R44 K74 ["variant"]
      398 GETIMPORT                        R45 K80 [UDim2.new]
      400 LOADN                            R46 1
      401 GETTABLEKS                       R49 R4 K81 ["Margin"]
      403 GETTABLEKS                       R48 R49 K82 ["Small"]
      405 MINUS                            R47 R48
      406 LOADN                            R48 0
      407 GETTABLEKS                       R50 R4 K81 ["Margin"]
      409 GETTABLEKS                       R49 R50 K82 ["Small"]
      411 CALL                             R45 4 1
      412 SETTABLEKS                       R45 R44 K30 ["Position"]
      414 GETIMPORT                        R45 K38 [Vector2.new]
      416 LOADN                            R46 1
      417 LOADN                            R47 0
      418 CALL                             R45 2 1
      419 SETTABLEKS                       R45 R44 K75 ["AnchorPoint"]
      421 DUPCLOSURE                       R47 K83 [PROTO_14]
      422 NAMECALL                         R45 R21 K8 ["map"]
      424 CALL                             R45 2 1
      425 SETTABLEKS                       R45 R44 K76 ["Visible"]
      427 LOADK                            R46 K84 ["%*--close-affordance"]
      428 GETTABLEKS                       R48 R2 K16 ["testId"]
      430 NAMECALL                         R46 R46 K25 ["format"]
      432 CALL                             R46 2 1
      433 MOVE                             R45 R46
      434 SETTABLEKS                       R45 R44 K16 ["testId"]
      436 CALL                             R42 2 1
      437 SETTABLEKS                       R42 R41 K63 ["CloseAffordance"]
      439 CALL                             R38 3 1
      440 SETTABLEKS                       R38 R37 K0 ["Sheet"]
      442 GETUPVAL                         R39 9
      443 GETTABLEKS                       R38 R39 K18 ["createElement"]
      445 LOADK                            R39 K85 ["Folder"]
      446 LOADNIL                          R40
      447 GETUPVAL                         R42 9
      448 GETTABLEKS                       R41 R42 K18 ["createElement"]
      450 GETUPVAL                         R42 22
      451 DUPTABLE                         R43 K89 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      452 GETUPVAL                         R44 23
      453 SETTABLEKS                       R44 R43 K86 ["Image"]
      455 DUPCLOSURE                       R46 K90 [PROTO_15]
      456 CAPTURE                          UPVAL U24
      457 NAMECALL                         R44 R25 K8 ["map"]
      459 CALL                             R44 2 1
      460 SETTABLEKS                       R44 R43 K4 ["Size"]
      462 GETIMPORT                        R44 K80 [UDim2.new]
      464 LOADN                            R45 0
      465 GETUPVAL                         R47 24
      466 MINUS                            R46 R47
      467 LOADK                            R47 K91 [0.5]
      468 LOADN                            R48 0
      469 CALL                             R44 4 1
      470 SETTABLEKS                       R44 R43 K30 ["Position"]
      472 LOADN                            R44 1
      473 SETTABLEKS                       R44 R43 K19 ["ZIndex"]
      475 DUPTABLE                         R44 K94 [{"center", "scale"}]
      476 GETIMPORT                        R45 K96 [Rect.new]
      478 GETUPVAL                         R46 24
      479 GETUPVAL                         R47 24
      480 GETUPVAL                         R49 24
      481 ADDK                             R48 R49 K97 [1]
      482 GETUPVAL                         R50 24
      483 ADDK                             R49 R50 K97 [1]
      484 CALL                             R45 4 1
      485 SETTABLEKS                       R45 R44 K92 ["center"]
      487 LOADN                            R45 2
      488 SETTABLEKS                       R45 R44 K93 ["scale"]
      490 SETTABLEKS                       R44 R43 K87 ["slice"]
      492 GETTABLEKS                       R47 R4 K98 ["Color"]
      494 GETTABLEKS                       R46 R47 K99 ["Extended"]
      496 GETTABLEKS                       R45 R46 K100 ["Black"]
      498 GETTABLEKS                       R44 R45 K101 ["Black_10"]
      500 SETTABLEKS                       R44 R43 K88 ["imageStyle"]
      502 LOADK                            R44 K102 ["anchor-center-left"]
      503 SETTABLEKS                       R44 R43 K20 ["tag"]
      505 CALL                             R41 2 -1
      506 CALL                             R38 -1 1
      507 SETTABLEKS                       R38 R37 K42 ["Shadow"]
      509 CALL                             R34 3 1
      510 SETTABLEKS                       R34 R33 K26 ["SheetContainer"]
      512 GETUPVAL                         R35 9
      513 GETTABLEKS                       R34 R35 K18 ["createElement"]
      515 GETUPVAL                         R35 15
      516 DUPTABLE                         R36 K104 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      517 GETIMPORT                        R37 K106 [UDim2.fromScale]
      519 LOADN                            R38 2
      520 LOADN                            R39 2
      521 CALL                             R37 2 1
      522 SETTABLEKS                       R37 R36 K4 ["Size"]
      524 GETIMPORT                        R37 K106 [UDim2.fromScale]
      526 LOADK                            R38 K107 [-0.5]
      527 LOADK                            R39 K107 [-0.5]
      528 CALL                             R37 2 1
      529 SETTABLEKS                       R37 R36 K30 ["Position"]
      531 LOADN                            R37 1
      532 SETTABLEKS                       R37 R36 K19 ["ZIndex"]
      534 DUPTABLE                         R37 K54 [{"affordance"}]
      535 GETUPVAL                         R39 16
      536 GETTABLEKS                       R38 R39 K55 ["None"]
      538 SETTABLEKS                       R38 R37 K53 ["affordance"]
      540 SETTABLEKS                       R37 R36 K45 ["stateLayer"]
      542 NEWCLOSURE                       R39 P16
      543 CAPTURE                          VAL R4
      544 NAMECALL                         R37 R15 K8 ["map"]
      546 CALL                             R37 2 1
      547 SETTABLEKS                       R37 R36 K103 ["backgroundStyle"]
      549 SETTABLEKS                       R27 R36 K46 ["onActivated"]
      551 LOADK                            R38 K108 ["%*--backdrop"]
      552 GETTABLEKS                       R40 R2 K16 ["testId"]
      554 NAMECALL                         R38 R38 K25 ["format"]
      556 CALL                             R38 2 1
      557 MOVE                             R37 R38
      558 SETTABLEKS                       R37 R36 K16 ["testId"]
      560 CALL                             R34 2 1
      561 SETTABLEKS                       R34 R33 K27 ["Backdrop"]
      563 CALL                             R30 3 1
      564 MOVE                             R31 R3
      565 CALL                             R29 2 1
      566 CLOSEUPVALS                      R10
      567 RETURN                           R29 1

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
      141 GETIMPORT                        R24 K1 [script]
      143 GETTABLEKS                       R23 R24 K4 ["Parent"]
      145 GETTABLEKS                       R22 R23 K36 ["SheetContext"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R25 K1 [script]
      152 GETTABLEKS                       R24 R25 K4 ["Parent"]
      154 GETTABLEKS                       R23 R24 K37 ["Types"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K4 ["Parent"]
      163 GETTABLEKS                       R24 R25 K38 ["SheetType"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R26 R0 K24 ["Components"]
      170 GETTABLEKS                       R25 R26 K39 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R27 R0 K24 ["Components"]
      177 GETTABLEKS                       R26 R27 K40 ["Image"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R28 R0 K24 ["Components"]
      184 GETTABLEKS                       R27 R28 K41 ["View"]
      186 CALL                             R26 1 1
      187 DUPTABLE                         R27 K44 [{"size", "testId"}]
      188 GETTABLEKS                       R28 R16 K45 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 LOADK                            R28 K46 ["--foundation-sheet"]
      193 SETTABLEKS                       R28 R27 K43 ["testId"]
      195 GETTABLEKS                       R28 R15 K47 ["SHADOW_IMAGE"]
      197 GETTABLEKS                       R29 R15 K48 ["SHADOW_SIZE"]
      199 DUPCLOSURE                       R30 K49 [PROTO_17]
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R28
      224 CAPTURE                          VAL R29
      225 GETTABLEKS                       R31 R4 K50 ["memo"]
      227 GETTABLEKS                       R32 R4 K51 ["forwardRef"]
      229 MOVE                             R33 R30
      230 CALL                             R32 1 -1
      231 CALL                             R31 -1 -1
      232 RETURN                           R31 -1
