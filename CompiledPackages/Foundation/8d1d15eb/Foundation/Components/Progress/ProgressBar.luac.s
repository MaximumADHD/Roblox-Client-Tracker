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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reducedMotion"]
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
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K8 ["Color"]
       29 GETTABLEKS                       R7 R7 K9 ["Content"]
       31 GETTABLEKS                       R7 R7 K10 ["Emphasis"]
       33 GETTABLEKS                       R7 R7 K11 ["Transparency"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reducedMotion"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R3 0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K3 [Vector2.new]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K7 ["INDETERMINATE_SHIMMER_SPEED"]
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
       21 GETUPVAL                         R10 8
       22 GETTABLEKS                       R10 R10 K3 ["INDETERMINATE_SHIMMER_SPEED"]
       24 DIVRK                            R9 K2 [1] R10
       25 CALL                             R8 1 1
       26 GETUPVAL                         R10 9
       27 GETTABLEKS                       R10 R10 K4 ["isBinding"]
       29 MOVE                             R11 R5
       30 CALL                             R10 1 1
       31 JUMPIF                           R10 ; [+4]
       32 GETUPVAL                         R10 10
       33 GETTABLEKS                       R10 R10 K5 ["FoundationProgressBindableValue"]
       35 JUMPIF                           R10 ; [+5]
       36 GETUPVAL                         R11 11
       37 NAMECALL                         R9 R5 K6 ["map"]
       39 CALL                             R9 2 1
       40 JUMP                             ; [+3]
       41 GETUPVAL                         R9 11
       42 MOVE                             R10 R5
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 12
       45 GETTABLEKS                       R10 R10 K7 ["createElement"]
       47 GETUPVAL                         R11 13
       48 GETUPVAL                         R12 14
       49 MOVE                             R13 R1
       50 DUPTABLE                         R14 K12 [{["Size"], ["tag"] = "radius-small bg-shift-400", ["ref"]}]
       51 GETIMPORT                        R15 K15 [UDim2.new]
       53 GETTABLEKS                       R16 R1 K16 ["width"]
       55 GETIMPORT                        R17 K18 [UDim.new]
       57 LOADN                            R18 0
       58 GETTABLEKS                       R19 R4 K19 ["bar"]
       60 GETTABLEKS                       R19 R19 K20 ["height"]
       62 CALL                             R17 2 -1
       63 CALL                             R15 -1 1
       64 SETTABLEKS                       R15 R14 K8 ["Size"]
       66 GETTABLEKS                       R15 R1 K11 ["ref"]
       68 SETTABLEKS                       R15 R14 K11 ["ref"]
       70 CALL                             R12 2 1
       71 DUPTABLE                         R13 K22 [{"Fill"}]
       72 GETUPVAL                         R14 12
       73 GETTABLEKS                       R14 R14 K7 ["createElement"]
       75 GETUPVAL                         R15 13
       76 DUPTABLE                         R16 K26 [{["backgroundStyle"], ["tag"] = "size-full radius-small", ["ref"], ["testId"]}]
       77 GETTABLEKS                       R17 R2 K27 ["Color"]
       79 GETTABLEKS                       R17 R17 K28 ["Content"]
       81 GETTABLEKS                       R17 R17 K29 ["Emphasis"]
       83 SETTABLEKS                       R17 R16 K23 ["backgroundStyle"]
       85 GETTABLEKS                       R17 R1 K11 ["ref"]
       87 SETTABLEKS                       R17 R16 K11 ["ref"]
       89 LOADK                            R18 K30 ["%*--fill"]
       90 GETTABLEKS                       R20 R1 K25 ["testId"]
       92 NAMECALL                         R18 R18 K31 ["format"]
       94 CALL                             R18 2 1
       95 MOVE                             R17 R18
       96 SETTABLEKS                       R17 R16 K25 ["testId"]
       98 DUPTABLE                         R17 K33 [{"Gradient"}]
       99 GETUPVAL                         R18 12
      100 GETTABLEKS                       R18 R18 K7 ["createElement"]
      102 LOADK                            R19 K34 ["UIGradient"]
      103 DUPTABLE                         R20 K37 [{"Color", "Transparency", "Offset"}]
      104 GETIMPORT                        R21 K39 [ColorSequence.new]
      106 GETTABLEKS                       R22 R2 K27 ["Color"]
      108 GETTABLEKS                       R22 R22 K28 ["Content"]
      110 GETTABLEKS                       R22 R22 K29 ["Emphasis"]
      112 GETTABLEKS                       R22 R22 K40 ["Color3"]
      114 CALL                             R21 1 1
      115 SETTABLEKS                       R21 R20 K27 ["Color"]
      117 JUMPIFNOT                        R6 ; [+7]
      118 NEWCLOSURE                       R23 P0
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 NAMECALL                         R21 R8 K6 ["map"]
      123 CALL                             R21 2 1
      124 JUMP                             ; [+1]
      125 MOVE                             R21 R9
      126 SETTABLEKS                       R21 R20 K35 ["Transparency"]
      128 JUMPIFNOT                        R6 ; [+7]
      129 NEWCLOSURE                       R23 P1
      130 CAPTURE                          VAL R3
      131 CAPTURE                          UPVAL U8
      132 NAMECALL                         R21 R7 K6 ["map"]
      134 CALL                             R21 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R21
      137 SETTABLEKS                       R21 R20 K36 ["Offset"]
      139 CALL                             R18 2 1
      140 SETTABLEKS                       R18 R17 K32 ["Gradient"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K21 ["Fill"]
      145 CALL                             R10 3 -1
      146 RETURN                           R10 -1

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
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Utility"]
       32 GETTABLEKS                       R6 R6 K11 ["Flags"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Providers"]
       53 GETTABLEKS                       R9 R9 K16 ["Preferences"]
       55 GETTABLEKS                       R9 R9 K17 ["usePreferences"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R10 R10 K4 ["Parent"]
       64 GETTABLEKS                       R10 R10 K18 ["useProgressBinding"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R11 K1 [script]
       71 GETTABLEKS                       R11 R11 K4 ["Parent"]
       73 GETTABLEKS                       R11 R11 K19 ["useProgressVariants"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K10 ["Utility"]
       80 GETTABLEKS                       R12 R12 K20 ["usePulseBinding"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Utility"]
       87 GETTABLEKS                       R13 R13 K21 ["useRotation"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K15 ["Providers"]
       94 GETTABLEKS                       R14 R14 K22 ["Style"]
       96 GETTABLEKS                       R14 R14 K23 ["useTokens"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K10 ["Utility"]
      103 GETTABLEKS                       R15 R15 K24 ["withCommonProps"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K10 ["Utility"]
      110 GETTABLEKS                       R16 R16 K25 ["withDefaults"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K26 ["Enums"]
      117 GETTABLEKS                       R17 R17 K27 ["ProgressShape"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K26 ["Enums"]
      124 GETTABLEKS                       R18 R18 K28 ["ProgressSize"]
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
