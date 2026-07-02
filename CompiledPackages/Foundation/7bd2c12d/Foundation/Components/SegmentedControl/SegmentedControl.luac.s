PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
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

PROTO_7:
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
       21 LOADNIL                          R15
       22 GETUPVAL                         R16 4
       23 GETTABLEKS                       R16 R16 K1 ["useRef"]
       25 LOADNIL                          R17
       26 CALL                             R16 1 1
       27 MOVE                             R5 R16
       28 GETUPVAL                         R16 5
       29 GETTABLEKS                       R17 R2 K2 ["value"]
       31 OR                               R18 R1 R5
       32 CALL                             R16 2 1
       33 MOVE                             R6 R16
       34 GETTABLEKS                       R7 R6 K3 ["activeItemHeight"]
       36 GETTABLEKS                       R8 R6 K4 ["itemRefs"]
       38 GETTABLEKS                       R9 R6 K5 ["highlightPosition"]
       40 GETTABLEKS                       R10 R6 K6 ["highlightWidth"]
       42 GETUPVAL                         R16 4
       43 GETTABLEKS                       R16 R16 K7 ["useBinding"]
       45 GETIMPORT                        R17 K10 [Vector2.new]
       47 LOADN                            R18 0
       48 LOADN                            R19 0
       49 CALL                             R17 2 -1
       50 CALL                             R16 -1 2
       51 MOVE                             R11 R16
       52 MOVE                             R12 R17
       53 GETUPVAL                         R16 4
       54 GETTABLEKS                       R16 R16 K11 ["useCallback"]
       56 NEWCLOSURE                       R17 P0
       57 CAPTURE                          REF R12
       58 NEWTABLE                         R18 0 1
       60 GETTABLEKS                       R19 R4 K12 ["container"]
       62 GETTABLEKS                       R19 R19 K13 ["tag"]
       64 SETLIST                          R18 R19 1 [1]
       66 CALL                             R16 2 1
       67 MOVE                             R13 R16
       68 GETUPVAL                         R16 4
       69 GETTABLEKS                       R16 R16 K11 ["useCallback"]
       71 NEWCLOSURE                       R17 P1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          REF R13
       74 NEWTABLE                         R18 0 2
       76 GETTABLEKS                       R19 R2 K14 ["onAbsoluteSizeChanged"]
       78 MOVE                             R20 R13
       79 SETLIST                          R18 R19 2 [1]
       81 CALL                             R16 2 1
       82 MOVE                             R15 R16
       83 GETUPVAL                         R16 4
       84 GETTABLEKS                       R16 R16 K11 ["useCallback"]
       86 NEWCLOSURE                       R17 P2
       87 CAPTURE                          REF R8
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R18 0 1
       91 GETTABLEKS                       R19 R2 K2 ["value"]
       93 SETLIST                          R18 R19 1 [1]
       95 CALL                             R16 2 1
       96 MOVE                             R14 R16
       97 GETUPVAL                         R16 4
       98 GETTABLEKS                       R16 R16 K15 ["createElement"]
      100 GETUPVAL                         R17 6
      101 DUPTABLE                         R18 K19 [{["Size"], ["testId"] = "--foundation-segmented-control-container"}]
      102 DUPCLOSURE                       R21 K20 [PROTO_3]
      103 NAMECALL                         R19 R11 K21 ["map"]
      105 CALL                             R19 2 1
      106 SETTABLEKS                       R19 R18 K16 ["Size"]
      108 DUPTABLE                         R19 K24 [{"SegmentsContainer", "Overlay"}]
      109 GETUPVAL                         R20 4
      110 GETTABLEKS                       R20 R20 K15 ["createElement"]
      112 GETUPVAL                         R21 6
      113 GETUPVAL                         R22 0
      114 GETUPVAL                         R23 7
      115 MOVE                             R24 R2
      116 DUPTABLE                         R25 K27 [{["tag"], ["ref"], ["testId"] = "--foundation-segmented-control"}]
      117 GETTABLEKS                       R26 R4 K12 ["container"]
      119 GETTABLEKS                       R26 R26 K13 ["tag"]
      121 SETTABLEKS                       R26 R25 K13 ["tag"]
      123 OR                               R26 R1 R5
      124 SETTABLEKS                       R26 R25 K25 ["ref"]
      126 CALL                             R23 2 1
      127 DUPTABLE                         R24 K28 [{"onAbsoluteSizeChanged"}]
      128 SETTABLEKS                       R15 R24 K14 ["onAbsoluteSizeChanged"]
      130 CALL                             R22 2 1
      131 GETUPVAL                         R23 8
      132 GETTABLEKS                       R23 R23 K21 ["map"]
      134 GETTABLEKS                       R24 R2 K29 ["segments"]
      136 NEWCLOSURE                       R25 P4
      137 CAPTURE                          UPVAL U4
      138 CAPTURE                          UPVAL U9
      139 CAPTURE                          VAL R2
      140 CAPTURE                          REF R8
      141 CALL                             R23 2 -1
      142 CALL                             R20 -1 1
      143 SETTABLEKS                       R20 R19 K22 ["SegmentsContainer"]
      145 GETUPVAL                         R20 4
      146 GETTABLEKS                       R20 R20 K15 ["createElement"]
      148 GETUPVAL                         R21 6
      149 DUPTABLE                         R22 K34 [{["backgroundStyle"], ["tag"], ["Size"], ["Position"], ["ZIndex"], ["testId"] = "--foundation-segmented-control--animated-overlay"}]
      150 GETTABLEKS                       R23 R3 K35 ["Color"]
      152 GETTABLEKS                       R23 R23 K36 ["Shift"]
      154 GETTABLEKS                       R23 R23 K37 ["Shift_400"]
      156 SETTABLEKS                       R23 R22 K30 ["backgroundStyle"]
      158 GETTABLEKS                       R23 R4 K38 ["segment"]
      160 GETTABLEKS                       R23 R23 K13 ["tag"]
      162 SETTABLEKS                       R23 R22 K13 ["tag"]
      164 GETUPVAL                         R23 4
      165 GETTABLEKS                       R23 R23 K39 ["joinBindings"]
      167 NEWTABLE                         R24 0 2
      169 MOVE                             R25 R10
      170 MOVE                             R26 R7
      171 SETLIST                          R24 R25 2 [1]
      173 CALL                             R23 1 1
      174 DUPCLOSURE                       R25 K40 [PROTO_5]
      175 NAMECALL                         R23 R23 K21 ["map"]
      177 CALL                             R23 2 1
      178 SETTABLEKS                       R23 R22 K16 ["Size"]
      180 NEWCLOSURE                       R25 P6
      181 CAPTURE                          REF R14
      182 CAPTURE                          VAL R1
      183 CAPTURE                          REF R5
      184 NAMECALL                         R23 R9 K21 ["map"]
      186 CALL                             R23 2 1
      187 SETTABLEKS                       R23 R22 K31 ["Position"]
      189 GETTABLEKS                       R24 R2 K32 ["ZIndex"]
      191 ADDK                             R23 R24 K41 [1]
      192 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      194 CALL                             R20 2 1
      195 SETTABLEKS                       R20 R19 K23 ["Overlay"]
      197 CALL                             R16 3 -1
      198 CLOSEUPVALS                      R5
      199 RETURN                           R16 -1

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
       95 DUPTABLE                         R14 K29 [{["size"], ["testId"] = "--foundation-segmented-control", ["ZIndex"] = 1}]
       96 GETTABLEKS                       R15 R7 K30 ["Medium"]
       98 SETTABLEKS                       R15 R14 K24 ["size"]
      100 DUPCLOSURE                       R15 K31 [PROTO_7]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R12
      111 GETTABLEKS                       R16 R3 K32 ["memo"]
      113 GETTABLEKS                       R17 R3 K33 ["forwardRef"]
      115 MOVE                             R18 R15
      116 CALL                             R17 1 -1
      117 CALL                             R16 -1 -1
      118 RETURN                           R16 -1
