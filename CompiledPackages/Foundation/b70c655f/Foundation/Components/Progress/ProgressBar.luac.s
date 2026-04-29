PROTO_0:
        0 ORK                              R1 R0 K0 [0]
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+6]
        3 GETIMPORT                        R2 K3 [NumberSequence.new]
        5 LOADN                            R3 1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 JUMPIFNOTEQKN                    R1 K4 [1] ; [+6]
       10 GETIMPORT                        R2 K3 [NumberSequence.new]
       12 LOADN                            R3 0
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 NEWTABLE                         R2 0 3
       17 GETIMPORT                        R3 K6 [NumberSequenceKeypoint.new]
       19 LOADN                            R4 0
       20 LOADN                            R5 0
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K6 [NumberSequenceKeypoint.new]
       24 MOVE                             R5 R1
       25 LOADN                            R6 0
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K6 [NumberSequenceKeypoint.new]
       29 ADDK                             R7 R1 K7 [0.001]
       30 FASTCALL2K                       MATH_MIN R7 K4 ; [+4]
       32 LOADK                            R8 K4 [1]
       33 GETIMPORT                        R6 K10 [math.min]
       35 CALL                             R6 2 1
       36 LOADN                            R7 1
       37 CALL                             R5 2 -1
       38 SETLIST                          R2 R3 -1 [1]
       40 LOADK                            R3 K11 [0.999]
       41 JUMPIFNOTLT                      R1 R3 ; [+11]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R5 K6 [NumberSequenceKeypoint.new]
       46 LOADN                            R6 1
       47 LOADN                            R7 1
       48 CALL                             R5 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R3 K14 [table.insert]
       52 CALL                             R3 -1 0
       53 GETIMPORT                        R3 K3 [NumberSequence.new]
       55 MOVE                             R4 R2
       56 CALL                             R3 1 -1
       57 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reducedMotion"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R1 K3 [NumberSequence.new]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K3 [NumberSequence.new]
       11 NEWTABLE                         R2 0 5
       13 GETIMPORT                        R3 K5 [NumberSequenceKeypoint.new]
       15 LOADN                            R4 0
       16 LOADN                            R5 1
       17 CALL                             R3 2 1
       18 GETIMPORT                        R4 K5 [NumberSequenceKeypoint.new]
       20 LOADK                            R5 K6 [0.2]
       21 LOADN                            R6 1
       22 CALL                             R4 2 1
       23 GETIMPORT                        R5 K5 [NumberSequenceKeypoint.new]
       25 LOADK                            R6 K7 [0.5]
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R10 R11 K8 ["Color"]
       29 GETTABLEKS                       R9 R10 K9 ["Content"]
       31 GETTABLEKS                       R8 R9 K10 ["Emphasis"]
       33 GETTABLEKS                       R7 R8 K11 ["Transparency"]
       35 CALL                             R5 2 1
       36 GETIMPORT                        R6 K5 [NumberSequenceKeypoint.new]
       38 LOADK                            R7 K12 [0.8]
       39 LOADN                            R8 1
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K5 [NumberSequenceKeypoint.new]
       43 LOADN                            R8 1
       44 LOADN                            R9 1
       45 CALL                             R7 2 -1
       46 SETLIST                          R2 R3 -1 [1]
       48 CALL                             R1 1 -1
       49 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reducedMotion"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R3 0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K3 [Vector2.new]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K7 ["INDETERMINATE_SHIMMER_SPEED"]
       15 MUL                              R6 R0 R7
       16 MODK                             R5 R6 K6 [360]
       17 DIVK                             R4 R5 K6 [360]
       18 MULK                             R3 R4 K5 [2]
       19 SUBK                             R2 R3 K4 [1]
       20 LOADN                            R3 0
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R2
       10 GETTABLEKS                       R6 R1 K0 ["size"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 5
       14 GETTABLEKS                       R6 R1 K1 ["value"]
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 6
       18 LOADN                            R8 1
       19 CALL                             R7 1 1
       20 GETUPVAL                         R8 7
       21 GETUPVAL                         R11 8
       22 GETTABLEKS                       R10 R11 K3 ["INDETERMINATE_SHIMMER_SPEED"]
       24 DIVRK                            R9 R2 K10 ["ref"]
       25 CALL                             R8 1 1
       26 GETUPVAL                         R11 9
       27 GETTABLEKS                       R10 R11 K4 ["isBinding"]
       29 MOVE                             R11 R5
       30 CALL                             R10 1 1
       31 JUMPIF                           R10 ; [+4]
       32 GETUPVAL                         R11 10
       33 GETTABLEKS                       R10 R11 K5 ["FoundationProgressBindableValue"]
       35 JUMPIF                           R10 ; [+5]
       36 GETUPVAL                         R11 11
       37 NAMECALL                         R9 R5 K6 ["map"]
       39 CALL                             R9 2 1
       40 JUMP                             ; [+3]
       41 GETUPVAL                         R9 11
       42 MOVE                             R10 R5
       43 CALL                             R9 1 1
       44 GETUPVAL                         R11 12
       45 GETTABLEKS                       R10 R11 K7 ["createElement"]
       47 GETUPVAL                         R11 13
       48 GETUPVAL                         R12 14
       49 MOVE                             R13 R1
       50 DUPTABLE                         R14 K11 [{"Size", "tag", "ref"}]
       51 GETIMPORT                        R15 K14 [UDim2.new]
       53 GETTABLEKS                       R16 R1 K15 ["width"]
       55 GETIMPORT                        R17 K17 [UDim.new]
       57 LOADN                            R18 0
       58 GETTABLEKS                       R20 R4 K18 ["bar"]
       60 GETTABLEKS                       R19 R20 K19 ["height"]
       62 CALL                             R17 2 -1
       63 CALL                             R15 -1 1
       64 SETTABLEKS                       R15 R14 K8 ["Size"]
       66 LOADK                            R15 K20 ["radius-small bg-shift-400"]
       67 SETTABLEKS                       R15 R14 K9 ["tag"]
       69 GETTABLEKS                       R15 R1 K10 ["ref"]
       71 SETTABLEKS                       R15 R14 K10 ["ref"]
       73 CALL                             R12 2 1
       74 DUPTABLE                         R13 K22 [{"Fill"}]
       75 GETUPVAL                         R15 12
       76 GETTABLEKS                       R14 R15 K7 ["createElement"]
       78 GETUPVAL                         R15 13
       79 DUPTABLE                         R16 K25 [{"backgroundStyle", "tag", "ref", "testId"}]
       80 GETTABLEKS                       R19 R2 K26 ["Color"]
       82 GETTABLEKS                       R18 R19 K27 ["Content"]
       84 GETTABLEKS                       R17 R18 K28 ["Emphasis"]
       86 SETTABLEKS                       R17 R16 K23 ["backgroundStyle"]
       88 LOADK                            R17 K29 ["size-full radius-small"]
       89 SETTABLEKS                       R17 R16 K9 ["tag"]
       91 GETTABLEKS                       R17 R1 K10 ["ref"]
       93 SETTABLEKS                       R17 R16 K10 ["ref"]
       95 LOADK                            R18 K30 ["%*--fill"]
       96 GETTABLEKS                       R20 R1 K24 ["testId"]
       98 NAMECALL                         R18 R18 K31 ["format"]
      100 CALL                             R18 2 1
      101 MOVE                             R17 R18
      102 SETTABLEKS                       R17 R16 K24 ["testId"]
      104 DUPTABLE                         R17 K33 [{"Gradient"}]
      105 GETUPVAL                         R19 12
      106 GETTABLEKS                       R18 R19 K7 ["createElement"]
      108 LOADK                            R19 K34 ["UIGradient"]
      109 DUPTABLE                         R20 K37 [{"Color", "Transparency", "Offset"}]
      110 GETIMPORT                        R21 K39 [ColorSequence.new]
      112 GETTABLEKS                       R25 R2 K26 ["Color"]
      114 GETTABLEKS                       R24 R25 K27 ["Content"]
      116 GETTABLEKS                       R23 R24 K28 ["Emphasis"]
      118 GETTABLEKS                       R22 R23 K40 ["Color3"]
      120 CALL                             R21 1 1
      121 SETTABLEKS                       R21 R20 K26 ["Color"]
      123 JUMPIFNOT                        R6 ; [+7]
      124 NEWCLOSURE                       R23 P0
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R2
      127 NAMECALL                         R21 R8 K6 ["map"]
      129 CALL                             R21 2 1
      130 JUMP                             ; [+1]
      131 MOVE                             R21 R9
      132 SETTABLEKS                       R21 R20 K35 ["Transparency"]
      134 JUMPIFNOT                        R6 ; [+7]
      135 NEWCLOSURE                       R23 P1
      136 CAPTURE                          VAL R3
      137 CAPTURE                          UPVAL U8
      138 NAMECALL                         R21 R7 K6 ["map"]
      140 CALL                             R21 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R21
      143 SETTABLEKS                       R21 R20 K36 ["Offset"]
      145 CALL                             R18 2 1
      146 SETTABLEKS                       R18 R17 K32 ["Gradient"]
      148 CALL                             R14 3 1
      149 SETTABLEKS                       R14 R13 K21 ["Fill"]
      151 CALL                             R10 3 -1
      152 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R7 K1 [script]
       23 GETTABLEKS                       R6 R7 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K9 ["constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Utility"]
       32 GETTABLEKS                       R6 R7 K11 ["Flags"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R11 R0 K15 ["Providers"]
       53 GETTABLEKS                       R10 R11 K16 ["Preferences"]
       55 GETTABLEKS                       R9 R10 K17 ["usePreferences"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R12 K1 [script]
       62 GETTABLEKS                       R11 R12 K4 ["Parent"]
       64 GETTABLEKS                       R10 R11 K18 ["useProgressBinding"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R13 K1 [script]
       71 GETTABLEKS                       R12 R13 K4 ["Parent"]
       73 GETTABLEKS                       R11 R12 K19 ["useProgressVariants"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R13 R0 K10 ["Utility"]
       80 GETTABLEKS                       R12 R13 K20 ["usePulseBinding"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R14 R0 K10 ["Utility"]
       87 GETTABLEKS                       R13 R14 K21 ["useRotation"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R16 R0 K15 ["Providers"]
       94 GETTABLEKS                       R15 R16 K22 ["Style"]
       96 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R16 R0 K10 ["Utility"]
      103 GETTABLEKS                       R15 R16 K24 ["withCommonProps"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R17 R0 K10 ["Utility"]
      110 GETTABLEKS                       R16 R17 K25 ["withDefaults"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R18 R0 K26 ["Enums"]
      117 GETTABLEKS                       R17 R18 K27 ["ProgressShape"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R19 R0 K26 ["Enums"]
      124 GETTABLEKS                       R18 R19 K28 ["ProgressSize"]
      126 CALL                             R17 1 1
      127 DUPCLOSURE                       R18 K29 [PROTO_0]
      128 DUPTABLE                         R19 K32 [{"size", "width"}]
      129 GETTABLEKS                       R20 R17 K33 ["Medium"]
      131 SETTABLEKS                       R20 R19 K30 ["size"]
      133 GETIMPORT                        R20 K36 [UDim.new]
      135 LOADN                            R21 1
      136 LOADN                            R22 0
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K31 ["width"]
      140 DUPCLOSURE                       R20 K37 [PROTO_3]
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R14
      156 RETURN                           R20 1
