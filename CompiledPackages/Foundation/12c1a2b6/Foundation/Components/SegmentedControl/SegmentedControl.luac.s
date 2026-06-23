PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["segments"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K2 ["ref"]
       11 JUMPIFNOT                        R6 ; [+6]
       12 GETTABLEKS                       R6 R5 K3 ["id"]
       14 GETTABLEKS                       R7 R5 K2 ["ref"]
       16 SETTABLE                         R7 R0 R6
       17 JUMP                             ; [+11]
       18 GETTABLEKS                       R7 R5 K3 ["id"]
       20 GETTABLE                         R6 R0 R7
       21 JUMPIF                           R6 ; [+7]
       22 GETTABLEKS                       R6 R5 K3 ["id"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K4 ["createRef"]
       27 CALL                             R7 0 1
       28 SETTABLE                         R7 R0 R6
       29 FORGLOOP                         R1 2 ; [-21]
       31 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
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

PROTO_10:
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
       27 LOADNIL                          R15
       28 GETUPVAL                         R16 5
       29 GETTABLEKS                       R16 R16 K2 ["FoundationFixStaleAnimatedHighlightRefs"]
       31 JUMPIFNOT                        R16 ; [+22]
       32 GETUPVAL                         R16 4
       33 GETTABLEKS                       R16 R16 K1 ["useRef"]
       35 NEWTABLE                         R17 0 0
       37 CALL                             R16 1 1
       38 GETUPVAL                         R17 4
       39 GETTABLEKS                       R17 R17 K3 ["useMemo"]
       41 NEWCLOSURE                       R18 P0
       42 CAPTURE                          VAL R16
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U4
       45 NEWTABLE                         R19 0 1
       47 GETTABLEKS                       R20 R2 K4 ["segments"]
       49 SETLIST                          R19 R20 1 [1]
       51 CALL                             R17 2 1
       52 MOVE                             R15 R17
       53 JUMP                             ; [+14]
       54 GETUPVAL                         R16 4
       55 GETTABLEKS                       R16 R16 K3 ["useMemo"]
       57 NEWCLOSURE                       R17 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U4
       60 NEWTABLE                         R18 0 1
       62 GETTABLEKS                       R19 R2 K4 ["segments"]
       64 SETLIST                          R18 R19 1 [1]
       66 CALL                             R16 2 1
       67 MOVE                             R15 R16
       68 GETUPVAL                         R16 6
       69 GETTABLEKS                       R17 R2 K5 ["value"]
       71 OR                               R18 R1 R5
       72 MOVE                             R19 R15
       73 CALL                             R16 3 1
       74 MOVE                             R6 R16
       75 GETTABLEKS                       R7 R6 K6 ["activeItemHeight"]
       77 GETTABLEKS                       R8 R6 K7 ["highlightPosition"]
       79 GETTABLEKS                       R9 R6 K8 ["highlightWidth"]
       81 GETUPVAL                         R16 4
       82 GETTABLEKS                       R16 R16 K9 ["useBinding"]
       84 GETIMPORT                        R17 K12 [Vector2.new]
       86 LOADN                            R18 0
       87 LOADN                            R19 0
       88 CALL                             R17 2 -1
       89 CALL                             R16 -1 2
       90 MOVE                             R10 R16
       91 MOVE                             R11 R17
       92 GETUPVAL                         R16 4
       93 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       95 NEWCLOSURE                       R17 P2
       96 CAPTURE                          REF R11
       97 NEWTABLE                         R18 0 1
       99 GETTABLEKS                       R19 R4 K14 ["container"]
      101 GETTABLEKS                       R19 R19 K15 ["tag"]
      103 SETLIST                          R18 R19 1 [1]
      105 CALL                             R16 2 1
      106 MOVE                             R12 R16
      107 GETUPVAL                         R16 4
      108 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      110 NEWCLOSURE                       R17 P3
      111 CAPTURE                          VAL R2
      112 CAPTURE                          REF R12
      113 NEWTABLE                         R18 0 2
      115 GETTABLEKS                       R19 R2 K16 ["onAbsoluteSizeChanged"]
      117 MOVE                             R20 R12
      118 SETLIST                          R18 R19 2 [1]
      120 CALL                             R16 2 1
      121 MOVE                             R14 R16
      122 GETUPVAL                         R16 4
      123 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      125 NEWCLOSURE                       R17 P4
      126 CAPTURE                          REF R15
      127 CAPTURE                          VAL R2
      128 NEWTABLE                         R18 0 1
      130 GETTABLEKS                       R19 R2 K5 ["value"]
      132 SETLIST                          R18 R19 1 [1]
      134 CALL                             R16 2 1
      135 MOVE                             R13 R16
      136 GETUPVAL                         R16 4
      137 GETTABLEKS                       R16 R16 K17 ["createElement"]
      139 GETUPVAL                         R17 7
      140 GETUPVAL                         R19 5
      141 GETTABLEKS                       R19 R19 K18 ["FoundationFixNoCommonPropsOnComponentParents"]
      143 JUMPIFNOT                        R19 ; [+11]
      144 GETUPVAL                         R18 8
      145 MOVE                             R19 R2
      146 DUPTABLE                         R20 K20 [{"Size"}]
      147 DUPCLOSURE                       R23 K21 [PROTO_5]
      148 NAMECALL                         R21 R10 K22 ["map"]
      150 CALL                             R21 2 1
      151 SETTABLEKS                       R21 R20 K19 ["Size"]
      153 CALL                             R18 2 1
      154 JUMP                             ; [+10]
      155 DUPTABLE                         R18 K24 [{"Size", "testId"}]
      156 DUPCLOSURE                       R21 K25 [PROTO_6]
      157 NAMECALL                         R19 R10 K22 ["map"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K19 ["Size"]
      162 LOADK                            R19 K26 ["--foundation-segmented-control-container"]
      163 SETTABLEKS                       R19 R18 K23 ["testId"]
      165 DUPTABLE                         R19 K29 [{"SegmentsContainer", "Overlay"}]
      166 GETUPVAL                         R20 4
      167 GETTABLEKS                       R20 R20 K17 ["createElement"]
      169 GETUPVAL                         R21 7
      170 GETUPVAL                         R22 0
      171 GETUPVAL                         R24 5
      172 GETTABLEKS                       R24 R24 K18 ["FoundationFixNoCommonPropsOnComponentParents"]
      174 JUMPIFNOT                        R24 ; [+11]
      175 DUPTABLE                         R23 K31 [{"tag", "ref"}]
      176 GETTABLEKS                       R24 R4 K14 ["container"]
      178 GETTABLEKS                       R24 R24 K15 ["tag"]
      180 SETTABLEKS                       R24 R23 K15 ["tag"]
      182 OR                               R24 R1 R5
      183 SETTABLEKS                       R24 R23 K30 ["ref"]
      185 JUMP                             ; [+16]
      186 GETUPVAL                         R23 8
      187 MOVE                             R24 R2
      188 DUPTABLE                         R25 K32 [{"tag", "ref", "testId"}]
      189 GETTABLEKS                       R26 R4 K14 ["container"]
      191 GETTABLEKS                       R26 R26 K15 ["tag"]
      193 SETTABLEKS                       R26 R25 K15 ["tag"]
      195 OR                               R26 R1 R5
      196 SETTABLEKS                       R26 R25 K30 ["ref"]
      198 LOADK                            R26 K33 ["--foundation-segmented-control"]
      199 SETTABLEKS                       R26 R25 K23 ["testId"]
      201 CALL                             R23 2 1
      202 DUPTABLE                         R24 K34 [{"onAbsoluteSizeChanged"}]
      203 SETTABLEKS                       R14 R24 K16 ["onAbsoluteSizeChanged"]
      205 CALL                             R22 2 1
      206 GETUPVAL                         R23 9
      207 GETTABLEKS                       R23 R23 K22 ["map"]
      209 GETTABLEKS                       R24 R2 K4 ["segments"]
      211 NEWCLOSURE                       R25 P7
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          UPVAL U10
      214 CAPTURE                          VAL R2
      215 CAPTURE                          REF R15
      216 CALL                             R23 2 -1
      217 CALL                             R20 -1 1
      218 SETTABLEKS                       R20 R19 K27 ["SegmentsContainer"]
      220 GETUPVAL                         R20 4
      221 GETTABLEKS                       R20 R20 K17 ["createElement"]
      223 GETUPVAL                         R21 7
      224 DUPTABLE                         R22 K38 [{"backgroundStyle", "tag", "Size", "Position", "ZIndex", "testId"}]
      225 GETTABLEKS                       R23 R3 K39 ["Color"]
      227 GETTABLEKS                       R23 R23 K40 ["Shift"]
      229 GETTABLEKS                       R23 R23 K41 ["Shift_400"]
      231 SETTABLEKS                       R23 R22 K35 ["backgroundStyle"]
      233 GETTABLEKS                       R23 R4 K42 ["segment"]
      235 GETTABLEKS                       R23 R23 K15 ["tag"]
      237 SETTABLEKS                       R23 R22 K15 ["tag"]
      239 GETUPVAL                         R23 4
      240 GETTABLEKS                       R23 R23 K43 ["joinBindings"]
      242 NEWTABLE                         R24 0 2
      244 MOVE                             R25 R9
      245 MOVE                             R26 R7
      246 SETLIST                          R24 R25 2 [1]
      248 CALL                             R23 1 1
      249 DUPCLOSURE                       R25 K44 [PROTO_8]
      250 NAMECALL                         R23 R23 K22 ["map"]
      252 CALL                             R23 2 1
      253 SETTABLEKS                       R23 R22 K19 ["Size"]
      255 NEWCLOSURE                       R25 P9
      256 CAPTURE                          REF R13
      257 CAPTURE                          VAL R1
      258 CAPTURE                          REF R5
      259 NAMECALL                         R23 R8 K22 ["map"]
      261 CALL                             R23 2 1
      262 SETTABLEKS                       R23 R22 K36 ["Position"]
      264 GETTABLEKS                       R24 R2 K37 ["ZIndex"]
      266 ADDK                             R23 R24 K45 [1]
      267 SETTABLEKS                       R23 R22 K37 ["ZIndex"]
      269 LOADK                            R23 K46 ["--foundation-segmented-control--animated-overlay"]
      270 SETTABLEKS                       R23 R22 K23 ["testId"]
      272 CALL                             R20 2 1
      273 SETTABLEKS                       R20 R19 K28 ["Overlay"]
      275 CALL                             R16 3 -1
      276 CLOSEUPVALS                      R5
      277 RETURN                           R16 -1

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
      113 DUPCLOSURE                       R16 K31 [PROTO_10]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R12
      125 GETTABLEKS                       R17 R3 K32 ["memo"]
      127 GETTABLEKS                       R18 R3 K33 ["forwardRef"]
      129 MOVE                             R19 R16
      130 CALL                             R18 1 -1
      131 CALL                             R17 -1 -1
      132 RETURN                           R17 -1
