PROTO_0:
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

PROTO_1:
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
       14 MOVE                             R6 R1
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 6
       17 LOADN                            R8 1
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 7
       20 GETUPVAL                         R10 8
       21 GETTABLEKS                       R10 R10 K2 ["INDETERMINATE_SHIMMER_SPEED"]
       23 DIVRK                            R9 R1 K10 [UDim2.new]
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 9
       26 GETTABLEKS                       R9 R9 K3 ["createElement"]
       28 GETUPVAL                         R10 10
       29 GETUPVAL                         R11 11
       30 MOVE                             R12 R1
       31 DUPTABLE                         R13 K7 [{"Size", "tag", "ref"}]
       32 GETIMPORT                        R14 K10 [UDim2.new]
       34 GETTABLEKS                       R15 R1 K11 ["width"]
       36 GETIMPORT                        R16 K13 [UDim.new]
       38 LOADN                            R17 0
       39 GETTABLEKS                       R18 R4 K14 ["bar"]
       41 GETTABLEKS                       R18 R18 K15 ["height"]
       43 CALL                             R16 2 -1
       44 CALL                             R14 -1 1
       45 SETTABLEKS                       R14 R13 K4 ["Size"]
       47 LOADK                            R14 K16 ["radius-small bg-shift-400"]
       48 SETTABLEKS                       R14 R13 K5 ["tag"]
       50 GETTABLEKS                       R14 R1 K6 ["ref"]
       52 SETTABLEKS                       R14 R13 K6 ["ref"]
       54 CALL                             R11 2 1
       55 DUPTABLE                         R12 K18 [{"Fill"}]
       56 GETUPVAL                         R13 9
       57 GETTABLEKS                       R13 R13 K3 ["createElement"]
       59 GETUPVAL                         R14 10
       60 DUPTABLE                         R15 K21 [{"backgroundStyle", "tag", "ref", "testId"}]
       61 GETTABLEKS                       R16 R2 K22 ["Color"]
       63 GETTABLEKS                       R16 R16 K23 ["Content"]
       65 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
       67 SETTABLEKS                       R16 R15 K19 ["backgroundStyle"]
       69 LOADK                            R16 K25 ["size-full radius-small"]
       70 SETTABLEKS                       R16 R15 K5 ["tag"]
       72 GETTABLEKS                       R16 R1 K6 ["ref"]
       74 SETTABLEKS                       R16 R15 K6 ["ref"]
       76 LOADK                            R17 K26 ["%*--fill"]
       77 GETTABLEKS                       R19 R1 K20 ["testId"]
       79 NAMECALL                         R17 R17 K27 ["format"]
       81 CALL                             R17 2 1
       82 MOVE                             R16 R17
       83 SETTABLEKS                       R16 R15 K20 ["testId"]
       85 DUPTABLE                         R16 K29 [{"Gradient"}]
       86 GETUPVAL                         R17 9
       87 GETTABLEKS                       R17 R17 K3 ["createElement"]
       89 LOADK                            R18 K30 ["UIGradient"]
       90 DUPTABLE                         R19 K33 [{"Color", "Transparency", "Offset"}]
       91 GETIMPORT                        R20 K35 [ColorSequence.new]
       93 GETTABLEKS                       R21 R2 K22 ["Color"]
       95 GETTABLEKS                       R21 R21 K23 ["Content"]
       97 GETTABLEKS                       R21 R21 K24 ["Emphasis"]
       99 GETTABLEKS                       R21 R21 K36 ["Color3"]
      101 CALL                             R20 1 1
      102 SETTABLEKS                       R20 R19 K22 ["Color"]
      104 JUMPIFNOT                        R6 ; [+7]
      105 NEWCLOSURE                       R22 P0
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 NAMECALL                         R20 R8 K37 ["map"]
      110 CALL                             R20 2 1
      111 JUMP                             ; [+4]
      112 DUPCLOSURE                       R22 K38 [PROTO_1]
      113 NAMECALL                         R20 R5 K37 ["map"]
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K31 ["Transparency"]
      118 JUMPIFNOT                        R6 ; [+7]
      119 NEWCLOSURE                       R22 P2
      120 CAPTURE                          VAL R3
      121 CAPTURE                          UPVAL U8
      122 NAMECALL                         R20 R7 K37 ["map"]
      124 CALL                             R20 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R20
      127 SETTABLEKS                       R20 R19 K32 ["Offset"]
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K28 ["Gradient"]
      132 CALL                             R13 3 1
      133 SETTABLEKS                       R13 R12 K17 ["Fill"]
      135 CALL                             R9 3 -1
      136 RETURN                           R9 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R6 K12 ["Style"]
       34 GETTABLEKS                       R6 R6 K13 ["useTokens"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Providers"]
       41 GETTABLEKS                       R7 R7 K14 ["Preferences"]
       43 GETTABLEKS                       R7 R7 K15 ["usePreferences"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K16 ["Utility"]
       50 GETTABLEKS                       R8 R8 K17 ["usePulseBinding"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K16 ["Utility"]
       57 GETTABLEKS                       R9 R9 K18 ["useRotation"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K16 ["Utility"]
       64 GETTABLEKS                       R10 R10 K19 ["withCommonProps"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K16 ["Utility"]
       71 GETTABLEKS                       R11 R11 K20 ["withDefaults"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R12 R12 K4 ["Parent"]
       80 GETTABLEKS                       R12 R12 K21 ["useProgressBinding"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R13 R13 K4 ["Parent"]
       89 GETTABLEKS                       R13 R13 K22 ["useProgressVariants"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R14 K1 [script]
       96 GETTABLEKS                       R14 R14 K4 ["Parent"]
       98 GETTABLEKS                       R14 R14 K23 ["constants"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K24 ["Enums"]
      105 GETTABLEKS                       R15 R15 K25 ["ProgressShape"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K24 ["Enums"]
      112 GETTABLEKS                       R16 R16 K26 ["ProgressSize"]
      114 CALL                             R15 1 1
      115 DUPTABLE                         R16 K29 [{"size", "width"}]
      116 GETTABLEKS                       R17 R15 K30 ["Medium"]
      118 SETTABLEKS                       R17 R16 K27 ["size"]
      120 GETIMPORT                        R17 K33 [UDim.new]
      122 LOADN                            R18 1
      123 LOADN                            R19 0
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K28 ["width"]
      127 DUPCLOSURE                       R17 K34 [PROTO_3]
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R9
      140 RETURN                           R17 1
