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
       23 DUPTABLE                         R9 K20 [{"id", "size", "isCircular", "text", "icon", "isActive", "onActivated", "LayoutOrder", "testId", "ref"}]
       24 GETTABLEKS                       R10 R0 K6 ["id"]
       26 SETTABLEKS                       R10 R9 K6 ["id"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K11 ["size"]
       31 SETTABLEKS                       R10 R9 K11 ["size"]
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R11 R11 K21 ["FoundationSegmentedControlCircular"]
       36 JUMPIFNOT                        R11 ; [+4]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K12 ["isCircular"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R10
       42 SETTABLEKS                       R10 R9 K12 ["isCircular"]
       44 GETTABLEKS                       R10 R0 K13 ["text"]
       46 SETTABLEKS                       R10 R9 K13 ["text"]
       48 GETTABLEKS                       R10 R0 K14 ["icon"]
       50 SETTABLEKS                       R10 R9 K14 ["icon"]
       52 GETTABLEKS                       R11 R0 K6 ["id"]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K22 ["value"]
       57 JUMPIFEQ                         R11 R12 ; [+2]
       59 LOADB                            R10 0 +1
       60 LOADB                            R10 1
       61 SETTABLEKS                       R10 R9 K15 ["isActive"]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K16 ["onActivated"]
       66 SETTABLEKS                       R10 R9 K16 ["onActivated"]
       68 SETTABLEKS                       R2 R9 K17 ["LayoutOrder"]
       70 LOADK                            R11 K23 ["%*--segment-%*"]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R13 R13 K18 ["testId"]
       74 GETTABLEKS                       R14 R0 K6 ["id"]
       76 NAMECALL                         R11 R11 K24 ["format"]
       78 CALL                             R11 3 1
       79 MOVE                             R10 R11
       80 SETTABLEKS                       R10 R9 K18 ["testId"]
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R12 R0 K6 ["id"]
       85 GETTABLE                         R10 R11 R12
       86 SETTABLEKS                       R10 R9 K19 ["ref"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K9 ["Segment"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

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
       10 GETUPVAL                         R8 4
       11 GETTABLEKS                       R8 R8 K1 ["FoundationSegmentedControlCircular"]
       13 JUMPIFNOT                        R8 ; [+3]
       14 GETTABLEKS                       R7 R2 K2 ["isCircular"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 CALL                             R4 3 1
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 LOADNIL                          R13
       28 LOADNIL                          R14
       29 GETUPVAL                         R15 5
       30 GETTABLEKS                       R15 R15 K3 ["useRef"]
       32 LOADNIL                          R16
       33 CALL                             R15 1 1
       34 MOVE                             R5 R15
       35 LOADNIL                          R15
       36 GETUPVAL                         R16 4
       37 GETTABLEKS                       R16 R16 K4 ["FoundationFixStaleAnimatedHighlightRefs"]
       39 JUMPIFNOT                        R16 ; [+22]
       40 GETUPVAL                         R16 5
       41 GETTABLEKS                       R16 R16 K3 ["useRef"]
       43 NEWTABLE                         R17 0 0
       45 CALL                             R16 1 1
       46 GETUPVAL                         R17 5
       47 GETTABLEKS                       R17 R17 K5 ["useMemo"]
       49 NEWCLOSURE                       R18 P0
       50 CAPTURE                          VAL R16
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R19 0 1
       55 GETTABLEKS                       R20 R2 K6 ["segments"]
       57 SETLIST                          R19 R20 1 [1]
       59 CALL                             R17 2 1
       60 MOVE                             R15 R17
       61 JUMP                             ; [+14]
       62 GETUPVAL                         R16 5
       63 GETTABLEKS                       R16 R16 K5 ["useMemo"]
       65 NEWCLOSURE                       R17 P1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U5
       68 NEWTABLE                         R18 0 1
       70 GETTABLEKS                       R19 R2 K6 ["segments"]
       72 SETLIST                          R18 R19 1 [1]
       74 CALL                             R16 2 1
       75 MOVE                             R15 R16
       76 GETUPVAL                         R16 6
       77 GETTABLEKS                       R17 R2 K7 ["value"]
       79 OR                               R18 R1 R5
       80 MOVE                             R19 R15
       81 CALL                             R16 3 1
       82 MOVE                             R6 R16
       83 GETTABLEKS                       R7 R6 K8 ["activeItemHeight"]
       85 GETTABLEKS                       R8 R6 K9 ["highlightPosition"]
       87 GETTABLEKS                       R9 R6 K10 ["highlightWidth"]
       89 GETUPVAL                         R16 5
       90 GETTABLEKS                       R16 R16 K11 ["useBinding"]
       92 GETIMPORT                        R17 K14 [Vector2.new]
       94 LOADN                            R18 0
       95 LOADN                            R19 0
       96 CALL                             R17 2 -1
       97 CALL                             R16 -1 2
       98 MOVE                             R10 R16
       99 MOVE                             R11 R17
      100 GETUPVAL                         R16 5
      101 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      103 NEWCLOSURE                       R17 P2
      104 CAPTURE                          REF R11
      105 NEWTABLE                         R18 0 1
      107 GETTABLEKS                       R19 R4 K16 ["container"]
      109 GETTABLEKS                       R19 R19 K17 ["tag"]
      111 SETLIST                          R18 R19 1 [1]
      113 CALL                             R16 2 1
      114 MOVE                             R12 R16
      115 GETUPVAL                         R16 5
      116 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      118 NEWCLOSURE                       R17 P3
      119 CAPTURE                          VAL R2
      120 CAPTURE                          REF R12
      121 NEWTABLE                         R18 0 2
      123 GETTABLEKS                       R19 R2 K18 ["onAbsoluteSizeChanged"]
      125 MOVE                             R20 R12
      126 SETLIST                          R18 R19 2 [1]
      128 CALL                             R16 2 1
      129 MOVE                             R14 R16
      130 GETUPVAL                         R16 5
      131 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      133 NEWCLOSURE                       R17 P4
      134 CAPTURE                          REF R15
      135 CAPTURE                          VAL R2
      136 NEWTABLE                         R18 0 1
      138 GETTABLEKS                       R19 R2 K7 ["value"]
      140 SETLIST                          R18 R19 1 [1]
      142 CALL                             R16 2 1
      143 MOVE                             R13 R16
      144 GETUPVAL                         R16 5
      145 GETTABLEKS                       R16 R16 K19 ["createElement"]
      147 GETUPVAL                         R17 7
      148 GETUPVAL                         R18 8
      149 MOVE                             R19 R2
      150 DUPTABLE                         R20 K21 [{"Size"}]
      151 DUPCLOSURE                       R23 K22 [PROTO_5]
      152 NAMECALL                         R21 R10 K23 ["map"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K20 ["Size"]
      157 CALL                             R18 2 1
      158 DUPTABLE                         R19 K26 [{"SegmentsContainer", "Overlay"}]
      159 GETUPVAL                         R20 5
      160 GETTABLEKS                       R20 R20 K19 ["createElement"]
      162 GETUPVAL                         R21 7
      163 GETUPVAL                         R22 0
      164 DUPTABLE                         R23 K28 [{"tag", "ref"}]
      165 GETTABLEKS                       R24 R4 K16 ["container"]
      167 GETTABLEKS                       R24 R24 K17 ["tag"]
      169 SETTABLEKS                       R24 R23 K17 ["tag"]
      171 OR                               R24 R1 R5
      172 SETTABLEKS                       R24 R23 K27 ["ref"]
      174 DUPTABLE                         R24 K29 [{"onAbsoluteSizeChanged"}]
      175 SETTABLEKS                       R14 R24 K18 ["onAbsoluteSizeChanged"]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 9
      179 GETTABLEKS                       R23 R23 K23 ["map"]
      181 GETTABLEKS                       R24 R2 K6 ["segments"]
      183 NEWCLOSURE                       R25 P6
      184 CAPTURE                          UPVAL U5
      185 CAPTURE                          UPVAL U10
      186 CAPTURE                          VAL R2
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          REF R15
      189 CALL                             R23 2 -1
      190 CALL                             R20 -1 1
      191 SETTABLEKS                       R20 R19 K24 ["SegmentsContainer"]
      193 GETUPVAL                         R20 5
      194 GETTABLEKS                       R20 R20 K19 ["createElement"]
      196 GETUPVAL                         R21 7
      197 DUPTABLE                         R22 K34 [{"backgroundStyle", "tag", "Size", "Position", "ZIndex", "testId"}]
      198 GETTABLEKS                       R23 R3 K35 ["Color"]
      200 GETTABLEKS                       R23 R23 K36 ["Shift"]
      202 GETTABLEKS                       R23 R23 K37 ["Shift_400"]
      204 SETTABLEKS                       R23 R22 K30 ["backgroundStyle"]
      206 GETTABLEKS                       R23 R4 K38 ["segment"]
      208 GETTABLEKS                       R23 R23 K17 ["tag"]
      210 SETTABLEKS                       R23 R22 K17 ["tag"]
      212 GETUPVAL                         R23 5
      213 GETTABLEKS                       R23 R23 K39 ["joinBindings"]
      215 NEWTABLE                         R24 0 2
      217 MOVE                             R25 R9
      218 MOVE                             R26 R7
      219 SETLIST                          R24 R25 2 [1]
      221 CALL                             R23 1 1
      222 DUPCLOSURE                       R25 K40 [PROTO_7]
      223 NAMECALL                         R23 R23 K23 ["map"]
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K20 ["Size"]
      228 NEWCLOSURE                       R25 P8
      229 CAPTURE                          REF R13
      230 CAPTURE                          VAL R1
      231 CAPTURE                          REF R5
      232 NAMECALL                         R23 R8 K23 ["map"]
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K31 ["Position"]
      237 GETTABLEKS                       R24 R2 K32 ["ZIndex"]
      239 ADDK                             R23 R24 K41 [1]
      240 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      242 LOADK                            R23 K42 ["--foundation-segmented-control--animated-overlay"]
      243 SETTABLEKS                       R23 R22 K33 ["testId"]
      245 CALL                             R20 2 1
      246 SETTABLEKS                       R20 R19 K25 ["Overlay"]
      248 CALL                             R16 3 -1
      249 CLOSEUPVALS                      R5
      250 RETURN                           R16 -1

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
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R3
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
