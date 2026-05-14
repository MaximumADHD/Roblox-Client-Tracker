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
       23 DUPTABLE                         R9 K18 [{"id", "size", "text", "isActive", "onActivated", "LayoutOrder", "testId", "ref"}]
       24 GETTABLEKS                       R10 R0 K6 ["id"]
       26 SETTABLEKS                       R10 R9 K6 ["id"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K11 ["size"]
       31 SETTABLEKS                       R10 R9 K11 ["size"]
       33 GETTABLEKS                       R10 R0 K12 ["text"]
       35 SETTABLEKS                       R10 R9 K12 ["text"]
       37 GETTABLEKS                       R11 R0 K6 ["id"]
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R12 R12 K19 ["value"]
       42 JUMPIFEQ                         R11 R12 ; [+2]
       44 LOADB                            R10 0 +1
       45 LOADB                            R10 1
       46 SETTABLEKS                       R10 R9 K13 ["isActive"]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K14 ["onActivated"]
       51 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       53 SETTABLEKS                       R2 R9 K15 ["LayoutOrder"]
       55 LOADK                            R11 K20 ["%*--segment-%*"]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K16 ["testId"]
       59 GETTABLEKS                       R14 R0 K6 ["id"]
       61 NAMECALL                         R11 R11 K21 ["format"]
       63 CALL                             R11 3 1
       64 MOVE                             R10 R11
       65 SETTABLEKS                       R10 R9 K16 ["testId"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R12 R0 K6 ["id"]
       70 GETTABLE                         R10 R11 R12
       71 SETTABLEKS                       R10 R9 K17 ["ref"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K9 ["Segment"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
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
      112 DUPTABLE                         R18 K19 [{"Size", "testId"}]
      113 DUPCLOSURE                       R21 K20 [PROTO_4]
      114 NAMECALL                         R19 R10 K21 ["map"]
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K17 ["Size"]
      119 LOADK                            R19 K22 ["--foundation-segmented-control-container"]
      120 SETTABLEKS                       R19 R18 K18 ["testId"]
      122 DUPTABLE                         R19 K25 [{"SegmentsContainer", "Overlay"}]
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R20 R20 K16 ["createElement"]
      126 GETUPVAL                         R21 6
      127 GETUPVAL                         R22 0
      128 GETUPVAL                         R23 7
      129 MOVE                             R24 R2
      130 DUPTABLE                         R25 K27 [{"tag", "ref", "testId"}]
      131 GETTABLEKS                       R26 R4 K13 ["container"]
      133 GETTABLEKS                       R26 R26 K14 ["tag"]
      135 SETTABLEKS                       R26 R25 K14 ["tag"]
      137 OR                               R26 R1 R5
      138 SETTABLEKS                       R26 R25 K26 ["ref"]
      140 LOADK                            R26 K28 ["--foundation-segmented-control"]
      141 SETTABLEKS                       R26 R25 K18 ["testId"]
      143 CALL                             R23 2 1
      144 DUPTABLE                         R24 K29 [{"onAbsoluteSizeChanged"}]
      145 SETTABLEKS                       R14 R24 K15 ["onAbsoluteSizeChanged"]
      147 CALL                             R22 2 1
      148 GETUPVAL                         R23 8
      149 GETTABLEKS                       R23 R23 K21 ["map"]
      151 GETTABLEKS                       R24 R2 K3 ["segments"]
      153 NEWCLOSURE                       R25 P5
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          UPVAL U9
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R15
      158 CALL                             R23 2 -1
      159 CALL                             R20 -1 1
      160 SETTABLEKS                       R20 R19 K23 ["SegmentsContainer"]
      162 GETUPVAL                         R20 4
      163 GETTABLEKS                       R20 R20 K16 ["createElement"]
      165 GETUPVAL                         R21 6
      166 DUPTABLE                         R22 K33 [{"backgroundStyle", "tag", "Size", "Position", "ZIndex", "testId"}]
      167 GETTABLEKS                       R23 R3 K34 ["Color"]
      169 GETTABLEKS                       R23 R23 K35 ["Shift"]
      171 GETTABLEKS                       R23 R23 K36 ["Shift_400"]
      173 SETTABLEKS                       R23 R22 K30 ["backgroundStyle"]
      175 GETTABLEKS                       R23 R4 K37 ["segment"]
      177 GETTABLEKS                       R23 R23 K14 ["tag"]
      179 SETTABLEKS                       R23 R22 K14 ["tag"]
      181 GETUPVAL                         R23 4
      182 GETTABLEKS                       R23 R23 K38 ["joinBindings"]
      184 NEWTABLE                         R24 0 2
      186 MOVE                             R25 R9
      187 MOVE                             R26 R7
      188 SETLIST                          R24 R25 2 [1]
      190 CALL                             R23 1 1
      191 DUPCLOSURE                       R25 K39 [PROTO_6]
      192 NAMECALL                         R23 R23 K21 ["map"]
      194 CALL                             R23 2 1
      195 SETTABLEKS                       R23 R22 K17 ["Size"]
      197 NEWCLOSURE                       R25 P7
      198 CAPTURE                          REF R13
      199 CAPTURE                          VAL R1
      200 CAPTURE                          REF R5
      201 NAMECALL                         R23 R8 K21 ["map"]
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K31 ["Position"]
      206 GETTABLEKS                       R24 R2 K32 ["ZIndex"]
      208 ADDK                             R23 R24 K40 [1]
      209 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      211 LOADK                            R23 K41 ["--foundation-segmented-control--animated-overlay"]
      212 SETTABLEKS                       R23 R22 K18 ["testId"]
      214 CALL                             R20 2 1
      215 SETTABLEKS                       R20 R19 K24 ["Overlay"]
      217 CALL                             R16 3 -1
      218 CLOSEUPVALS                      R5
      219 RETURN                           R16 -1

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
       95 DUPTABLE                         R14 K27 [{"size", "testId", "ZIndex"}]
       96 GETTABLEKS                       R15 R7 K28 ["Medium"]
       98 SETTABLEKS                       R15 R14 K24 ["size"]
      100 LOADK                            R15 K29 ["--foundation-segmented-control"]
      101 SETTABLEKS                       R15 R14 K25 ["testId"]
      103 LOADN                            R15 1
      104 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      106 DUPCLOSURE                       R15 K30 [PROTO_8]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 GETTABLEKS                       R16 R3 K31 ["memo"]
      119 GETTABLEKS                       R17 R3 K32 ["forwardRef"]
      121 MOVE                             R18 R15
      122 CALL                             R17 1 -1
      123 CALL                             R16 -1 -1
      124 RETURN                           R16 -1
