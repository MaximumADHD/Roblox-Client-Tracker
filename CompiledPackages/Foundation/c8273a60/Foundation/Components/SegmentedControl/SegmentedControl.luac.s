PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["segments"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETTABLEKS                       R7 R5 K2 ["ref"]
       12 JUMPIF                           R7 ; [+4]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["createRef"]
       16 CALL                             R7 0 1
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onAbsoluteSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onAbsoluteSizeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+19]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["value"]
        8 GETTABLE                         R2 R3 R4
        9 GETTABLEKS                       R2 R2 K0 ["current"]
       11 JUMPIFNOT                        R2 ; [+11]
       12 GETTABLEKS                       R3 R2 K2 ["AbsolutePosition"]
       14 GETTABLEKS                       R3 R3 K3 ["Y"]
       16 GETTABLEKS                       R4 R0 K0 ["current"]
       18 GETTABLEKS                       R4 R4 K2 ["AbsolutePosition"]
       20 GETTABLEKS                       R4 R4 K3 ["Y"]
       22 SUB                              R1 R3 R4
       23 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 SUBK                             R4 R1 K0 [1]
        1 MULK                             R3 R4 K1 [2]
        2 ADDK                             R2 R3 K0 [1]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["createElement"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["Fragment"]
        9 DUPTABLE                         R5 K5 [{"key"}]
       10 GETTABLEKS                       R7 R0 K6 ["id"]
       12 FASTCALL1                        TOSTRING R7 ; [+2]
       13 GETIMPORT                        R6 K8 [tostring]
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R6 R5 K4 ["key"]
       18 DUPTABLE                         R6 K10 [{"Segment"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K2 ["createElement"]
       22 GETUPVAL                         R8 1
       23 DUPTABLE                         R9 K19 [{"id", "size", "text", "icon", "isActive", "onActivated", "LayoutOrder", "testId", "ref"}]
       24 GETTABLEKS                       R10 R0 K6 ["id"]
       26 SETTABLEKS                       R10 R9 K6 ["id"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K11 ["size"]
       31 SETTABLEKS                       R10 R9 K11 ["size"]
       33 GETTABLEKS                       R10 R0 K12 ["text"]
       35 SETTABLEKS                       R10 R9 K12 ["text"]
       37 GETTABLEKS                       R10 R0 K13 ["icon"]
       39 SETTABLEKS                       R10 R9 K13 ["icon"]
       41 GETTABLEKS                       R11 R0 K6 ["id"]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K20 ["value"]
       46 JUMPIFEQ                         R11 R12 ; [+2]
       48 LOADB                            R10 0 +1
       49 LOADB                            R10 1
       50 SETTABLEKS                       R10 R9 K14 ["isActive"]
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K15 ["onActivated"]
       55 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       57 SETTABLEKS                       R2 R9 K16 ["LayoutOrder"]
       59 LOADK                            R11 K21 ["%*--segment-%*"]
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R13 R13 K17 ["testId"]
       63 GETTABLEKS                       R14 R0 K6 ["id"]
       65 NAMECALL                         R11 R11 K22 ["format"]
       67 CALL                             R11 3 1
       68 MOVE                             R10 R11
       69 SETTABLEKS                       R10 R9 K17 ["testId"]
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R12 R0 K6 ["id"]
       74 GETTABLE                         R10 R11 R12
       75 SETTABLEKS                       R10 R9 K18 ["ref"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K9 ["Segment"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 2
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 CALL                             R4 2 1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 LOADNIL                          R11
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 LOADNIL                          R14
       21 GETUPVAL                         R15 4
       22 GETTABLEKS                       R15 R15 K1 ["useRef"]
       24 LOADNIL                          R16
       25 CALL                             R15 1 1
       26 MOVE                             R5 R15
       27 GETUPVAL                         R15 4
       28 GETTABLEKS                       R15 R15 K2 ["useMemo"]
       30 NEWCLOSURE                       R16 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R17 0 1
       35 GETTABLEKS                       R18 R2 K3 ["segments"]
       37 SETLIST                          R17 R18 1 [1]
       39 CALL                             R15 2 1
       40 GETUPVAL                         R16 5
       41 GETTABLEKS                       R17 R2 K4 ["value"]
       43 OR                               R18 R1 R5
       44 MOVE                             R19 R15
       45 CALL                             R16 3 1
       46 MOVE                             R6 R16
       47 GETTABLEKS                       R7 R6 K5 ["activeItemHeight"]
       49 GETTABLEKS                       R8 R6 K6 ["highlightPosition"]
       51 GETTABLEKS                       R9 R6 K7 ["highlightWidth"]
       53 GETUPVAL                         R16 4
       54 GETTABLEKS                       R16 R16 K8 ["useBinding"]
       56 GETIMPORT                        R17 K11 [Vector2.new]
       58 LOADN                            R18 0
       59 LOADN                            R19 0
       60 CALL                             R17 2 -1
       61 CALL                             R16 -1 2
       62 MOVE                             R10 R16
       63 MOVE                             R11 R17
       64 GETUPVAL                         R16 4
       65 GETTABLEKS                       R16 R16 K12 ["useCallback"]
       67 NEWCLOSURE                       R17 P1
       68 CAPTURE                          REF R11
       69 NEWTABLE                         R18 0 1
       71 GETTABLEKS                       R19 R4 K13 ["container"]
       73 GETTABLEKS                       R19 R19 K14 ["tag"]
       75 SETLIST                          R18 R19 1 [1]
       77 CALL                             R16 2 1
       78 MOVE                             R12 R16
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R16 R16 K12 ["useCallback"]
       82 NEWCLOSURE                       R17 P2
       83 CAPTURE                          VAL R2
       84 CAPTURE                          REF R12
       85 NEWTABLE                         R18 0 2
       87 GETTABLEKS                       R19 R2 K15 ["onAbsoluteSizeChanged"]
       89 MOVE                             R20 R12
       90 SETLIST                          R18 R19 2 [1]
       92 CALL                             R16 2 1
       93 MOVE                             R14 R16
       94 GETUPVAL                         R16 4
       95 GETTABLEKS                       R16 R16 K12 ["useCallback"]
       97 NEWCLOSURE                       R17 P3
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R2
      100 NEWTABLE                         R18 0 1
      102 GETTABLEKS                       R19 R2 K4 ["value"]
      104 SETLIST                          R18 R19 1 [1]
      106 CALL                             R16 2 1
      107 MOVE                             R13 R16
      108 GETUPVAL                         R16 4
      109 GETTABLEKS                       R16 R16 K16 ["createElement"]
      111 GETUPVAL                         R17 6
      112 GETUPVAL                         R19 7
      113 GETTABLEKS                       R19 R19 K17 ["FoundationFixNoCommonPropsOnComponentParents"]
      115 JUMPIFNOT                        R19 ; [+11]
      116 GETUPVAL                         R18 8
      117 MOVE                             R19 R2
      118 DUPTABLE                         R20 K19 [{"Size"}]
      119 DUPCLOSURE                       R23 K20 [PROTO_4]
      120 NAMECALL                         R21 R10 K21 ["map"]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R20 K18 ["Size"]
      125 CALL                             R18 2 1
      126 JUMP                             ; [+10]
      127 DUPTABLE                         R18 K23 [{"Size", "testId"}]
      128 DUPCLOSURE                       R21 K24 [PROTO_5]
      129 NAMECALL                         R19 R10 K21 ["map"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K18 ["Size"]
      134 LOADK                            R19 K25 ["--foundation-segmented-control-container"]
      135 SETTABLEKS                       R19 R18 K22 ["testId"]
      137 DUPTABLE                         R19 K28 [{"SegmentsContainer", "Overlay"}]
      138 GETUPVAL                         R20 4
      139 GETTABLEKS                       R20 R20 K16 ["createElement"]
      141 GETUPVAL                         R21 6
      142 GETUPVAL                         R22 0
      143 GETUPVAL                         R24 7
      144 GETTABLEKS                       R24 R24 K17 ["FoundationFixNoCommonPropsOnComponentParents"]
      146 JUMPIFNOT                        R24 ; [+11]
      147 DUPTABLE                         R23 K30 [{"tag", "ref"}]
      148 GETTABLEKS                       R24 R4 K13 ["container"]
      150 GETTABLEKS                       R24 R24 K14 ["tag"]
      152 SETTABLEKS                       R24 R23 K14 ["tag"]
      154 OR                               R24 R1 R5
      155 SETTABLEKS                       R24 R23 K29 ["ref"]
      157 JUMP                             ; [+16]
      158 GETUPVAL                         R23 8
      159 MOVE                             R24 R2
      160 DUPTABLE                         R25 K31 [{"tag", "ref", "testId"}]
      161 GETTABLEKS                       R26 R4 K13 ["container"]
      163 GETTABLEKS                       R26 R26 K14 ["tag"]
      165 SETTABLEKS                       R26 R25 K14 ["tag"]
      167 OR                               R26 R1 R5
      168 SETTABLEKS                       R26 R25 K29 ["ref"]
      170 LOADK                            R26 K32 ["--foundation-segmented-control"]
      171 SETTABLEKS                       R26 R25 K22 ["testId"]
      173 CALL                             R23 2 1
      174 DUPTABLE                         R24 K33 [{"onAbsoluteSizeChanged"}]
      175 SETTABLEKS                       R14 R24 K15 ["onAbsoluteSizeChanged"]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 9
      179 GETTABLEKS                       R23 R23 K21 ["map"]
      181 GETTABLEKS                       R24 R2 K3 ["segments"]
      183 NEWCLOSURE                       R25 P6
      184 CAPTURE                          UPVAL U4
      185 CAPTURE                          UPVAL U10
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R15
      188 CALL                             R23 2 -1
      189 CALL                             R20 -1 1
      190 SETTABLEKS                       R20 R19 K26 ["SegmentsContainer"]
      192 GETUPVAL                         R20 4
      193 GETTABLEKS                       R20 R20 K16 ["createElement"]
      195 GETUPVAL                         R21 6
      196 DUPTABLE                         R22 K37 [{"backgroundStyle", "tag", "Size", "Position", "ZIndex", "testId"}]
      197 GETTABLEKS                       R23 R3 K38 ["Color"]
      199 GETTABLEKS                       R23 R23 K39 ["Shift"]
      201 GETTABLEKS                       R23 R23 K40 ["Shift_400"]
      203 SETTABLEKS                       R23 R22 K34 ["backgroundStyle"]
      205 GETTABLEKS                       R23 R4 K41 ["segment"]
      207 GETTABLEKS                       R23 R23 K14 ["tag"]
      209 SETTABLEKS                       R23 R22 K14 ["tag"]
      211 GETUPVAL                         R23 4
      212 GETTABLEKS                       R23 R23 K42 ["joinBindings"]
      214 NEWTABLE                         R24 0 2
      216 MOVE                             R25 R9
      217 MOVE                             R26 R7
      218 SETLIST                          R24 R25 2 [1]
      220 CALL                             R23 1 1
      221 DUPCLOSURE                       R25 K43 [PROTO_7]
      222 NAMECALL                         R23 R23 K21 ["map"]
      224 CALL                             R23 2 1
      225 SETTABLEKS                       R23 R22 K18 ["Size"]
      227 NEWCLOSURE                       R25 P8
      228 CAPTURE                          REF R13
      229 CAPTURE                          VAL R1
      230 CAPTURE                          REF R5
      231 NAMECALL                         R23 R8 K21 ["map"]
      233 CALL                             R23 2 1
      234 SETTABLEKS                       R23 R22 K35 ["Position"]
      236 GETTABLEKS                       R24 R2 K36 ["ZIndex"]
      238 ADDK                             R23 R24 K44 [1]
      239 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      241 LOADK                            R23 K45 ["--foundation-segmented-control--animated-overlay"]
      242 SETTABLEKS                       R23 R22 K22 ["testId"]
      244 CALL                             R20 2 1
      245 SETTABLEKS                       R20 R19 K27 ["Overlay"]
      247 CALL                             R16 3 -1
      248 CLOSEUPVALS                      R5
      249 RETURN                           R16 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["ControlState"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Providers"]
       51 GETTABLEKS                       R9 R9 K16 ["Style"]
       53 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Utility"]
       60 GETTABLEKS                       R10 R10 K19 ["withCommonProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Utility"]
       67 GETTABLEKS                       R11 R11 K20 ["useAnimatedHighlight"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Utility"]
       74 GETTABLEKS                       R12 R12 K21 ["withDefaults"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETIMPORT                        R13 K1 [script]
       81 GETTABLEKS                       R13 R13 K4 ["Parent"]
       83 GETTABLEKS                       R13 R13 K22 ["Segment"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R14 R14 K4 ["Parent"]
       92 GETTABLEKS                       R14 R14 K23 ["useSegmentedControlVariants"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K18 ["Utility"]
       99 GETTABLEKS                       R15 R15 K24 ["Flags"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K28 [{"size", "testId", "ZIndex"}]
      103 GETTABLEKS                       R16 R7 K29 ["Medium"]
      105 SETTABLEKS                       R16 R15 K25 ["size"]
      107 LOADK                            R16 K30 ["--foundation-segmented-control"]
      108 SETTABLEKS                       R16 R15 K26 ["testId"]
      110 LOADN                            R16 1
      111 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
      113 DUPCLOSURE                       R16 K31 [PROTO_9]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R12
      125 GETTABLEKS                       R17 R3 K32 ["memo"]
      127 GETTABLEKS                       R18 R3 K33 ["forwardRef"]
      129 MOVE                             R19 R16
      130 CALL                             R18 1 -1
      131 CALL                             R17 -1 -1
      132 RETURN                           R17 -1
