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
       31 JUMPIFNOT                        R10 ; [+5]
       32 GETUPVAL                         R11 10
       33 NAMECALL                         R9 R5 K5 ["map"]
       35 CALL                             R9 2 1
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R9 10
       38 MOVE                             R10 R5
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 11
       41 GETTABLEKS                       R10 R10 K6 ["createElement"]
       43 GETUPVAL                         R11 12
       44 GETUPVAL                         R12 13
       45 MOVE                             R13 R1
       46 DUPTABLE                         R14 K11 [{["Size"], ["tag"] = "radius-small bg-shift-400", ["ref"]}]
       47 GETIMPORT                        R15 K14 [UDim2.new]
       49 GETTABLEKS                       R16 R1 K15 ["width"]
       51 GETIMPORT                        R17 K17 [UDim.new]
       53 LOADN                            R18 0
       54 GETTABLEKS                       R19 R4 K18 ["bar"]
       56 GETTABLEKS                       R19 R19 K19 ["height"]
       58 CALL                             R17 2 -1
       59 CALL                             R15 -1 1
       60 SETTABLEKS                       R15 R14 K7 ["Size"]
       62 GETTABLEKS                       R15 R1 K10 ["ref"]
       64 SETTABLEKS                       R15 R14 K10 ["ref"]
       66 CALL                             R12 2 1
       67 DUPTABLE                         R13 K21 [{"Fill"}]
       68 GETUPVAL                         R14 11
       69 GETTABLEKS                       R14 R14 K6 ["createElement"]
       71 GETUPVAL                         R15 12
       72 DUPTABLE                         R16 K25 [{["backgroundStyle"], ["tag"] = "size-full radius-small", ["ref"], ["testId"]}]
       73 GETTABLEKS                       R17 R2 K26 ["Color"]
       75 GETTABLEKS                       R17 R17 K27 ["Content"]
       77 GETTABLEKS                       R17 R17 K28 ["Emphasis"]
       79 SETTABLEKS                       R17 R16 K22 ["backgroundStyle"]
       81 GETTABLEKS                       R17 R1 K10 ["ref"]
       83 SETTABLEKS                       R17 R16 K10 ["ref"]
       85 LOADK                            R18 K29 ["%*--fill"]
       86 GETTABLEKS                       R20 R1 K24 ["testId"]
       88 NAMECALL                         R18 R18 K30 ["format"]
       90 CALL                             R18 2 1
       91 MOVE                             R17 R18
       92 SETTABLEKS                       R17 R16 K24 ["testId"]
       94 DUPTABLE                         R17 K32 [{"Gradient"}]
       95 GETUPVAL                         R18 11
       96 GETTABLEKS                       R18 R18 K6 ["createElement"]
       98 LOADK                            R19 K33 ["UIGradient"]
       99 DUPTABLE                         R20 K36 [{"Color", "Transparency", "Offset"}]
      100 GETIMPORT                        R21 K38 [ColorSequence.new]
      102 GETTABLEKS                       R22 R2 K26 ["Color"]
      104 GETTABLEKS                       R22 R22 K27 ["Content"]
      106 GETTABLEKS                       R22 R22 K28 ["Emphasis"]
      108 GETTABLEKS                       R22 R22 K39 ["Color3"]
      110 CALL                             R21 1 1
      111 SETTABLEKS                       R21 R20 K26 ["Color"]
      113 JUMPIFNOT                        R6 ; [+7]
      114 NEWCLOSURE                       R23 P0
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 NAMECALL                         R21 R8 K5 ["map"]
      119 CALL                             R21 2 1
      120 JUMP                             ; [+1]
      121 MOVE                             R21 R9
      122 SETTABLEKS                       R21 R20 K34 ["Transparency"]
      124 JUMPIFNOT                        R6 ; [+7]
      125 NEWCLOSURE                       R23 P1
      126 CAPTURE                          VAL R3
      127 CAPTURE                          UPVAL U8
      128 NAMECALL                         R21 R7 K5 ["map"]
      130 CALL                             R21 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R21
      133 SETTABLEKS                       R21 R20 K35 ["Offset"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K31 ["Gradient"]
      138 CALL                             R14 3 1
      139 SETTABLEKS                       R14 R13 K20 ["Fill"]
      141 CALL                             R10 3 -1
      142 RETURN                           R10 -1

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
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Providers"]
       46 GETTABLEKS                       R8 R8 K14 ["Preferences"]
       48 GETTABLEKS                       R8 R8 K15 ["usePreferences"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K16 ["useProgressBinding"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K17 ["useProgressVariants"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K18 ["Utility"]
       73 GETTABLEKS                       R11 R11 K19 ["usePulseBinding"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K18 ["Utility"]
       80 GETTABLEKS                       R12 R12 K20 ["useRotation"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K13 ["Providers"]
       87 GETTABLEKS                       R13 R13 K21 ["Style"]
       89 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R14 R0 K18 ["Utility"]
       96 GETTABLEKS                       R14 R14 K23 ["withCommonProps"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K18 ["Utility"]
      103 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K25 ["Enums"]
      110 GETTABLEKS                       R16 R16 K26 ["ProgressShape"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K25 ["Enums"]
      117 GETTABLEKS                       R17 R17 K27 ["ProgressSize"]
      119 CALL                             R16 1 1
      120 DUPCLOSURE                       R17 K28 [PROTO_0]
      121 DUPTABLE                         R18 K31 [{"size", "width"}]
      122 GETTABLEKS                       R19 R16 K32 ["Medium"]
      124 SETTABLEKS                       R19 R18 K29 ["size"]
      126 GETIMPORT                        R19 K35 [UDim.new]
      128 LOADN                            R20 1
      129 LOADN                            R21 0
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K30 ["width"]
      133 DUPCLOSURE                       R19 K36 [PROTO_3]
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R13
      148 RETURN                           R19 1
