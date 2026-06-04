PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Shift"]
        6 GETTABLEKS                       R2 R2 K5 ["Shift_300"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["Color"]
       16 GETTABLEKS                       R3 R3 K6 ["Extended"]
       18 GETTABLEKS                       R3 R3 K7 ["White"]
       20 GETTABLEKS                       R3 R3 K8 ["White_10"]
       22 GETTABLEKS                       R3 R3 K1 ["Transparency"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["Color"]
       27 GETTABLEKS                       R5 R5 K6 ["Extended"]
       29 GETTABLEKS                       R5 R5 K7 ["White"]
       31 GETTABLEKS                       R5 R5 K8 ["White_10"]
       33 GETTABLEKS                       R5 R5 K1 ["Transparency"]
       35 SUBK                             R4 R5 K9 [0.1]
       36 MOVE                             R5 R0
       37 CALL                             R2 3 1
       38 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       40 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MULK                             R4 R0 K5 [2]
        3 MODK                             R3 R4 K4 [3]
        4 SUBK                             R2 R3 K3 [1.5]
        5 LOADN                            R3 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 LOADN                            R5 2
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 4
       10 CALL                             R5 0 1
       11 GETUPVAL                         R6 5
       12 CALL                             R6 0 1
       13 GETTABLEKS                       R8 R2 K0 ["radius"]
       15 GETUPVAL                         R9 6
       16 GETTABLEKS                       R9 R9 K1 ["None"]
       18 JUMPIFEQ                         R8 R9 ; [+11]
       20 GETIMPORT                        R7 K4 [UDim.new]
       22 LOADN                            R8 0
       23 GETTABLEKS                       R10 R5 K5 ["Radius"]
       25 GETTABLEKS                       R11 R2 K0 ["radius"]
       27 GETTABLE                         R9 R10 R11
       28 CALL                             R7 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K6 ["createElement"]
       34 GETUPVAL                         R9 8
       35 GETUPVAL                         R10 9
       36 MOVE                             R11 R2
       37 DUPTABLE                         R12 K11 [{"cornerRadius", "backgroundStyle", "Size", "ref"}]
       38 SETTABLEKS                       R7 R12 K7 ["cornerRadius"]
       40 GETTABLEKS                       R14 R6 K12 ["reducedMotion"]
       42 JUMPIFNOT                        R14 ; [+7]
       43 NEWCLOSURE                       R15 P0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U10
       46 NAMECALL                         R13 R4 K13 ["map"]
       48 CALL                             R13 2 1
       49 JUMP                             ; [+8]
       50 GETTABLEKS                       R13 R5 K14 ["Color"]
       52 GETTABLEKS                       R13 R13 K15 ["Extended"]
       54 GETTABLEKS                       R13 R13 K16 ["White"]
       56 GETTABLEKS                       R13 R13 K17 ["White_100"]
       58 SETTABLEKS                       R13 R12 K8 ["backgroundStyle"]
       60 GETTABLEKS                       R13 R2 K9 ["Size"]
       62 SETTABLEKS                       R13 R12 K9 ["Size"]
       64 SETTABLEKS                       R1 R12 K10 ["ref"]
       66 CALL                             R10 2 1
       67 DUPTABLE                         R11 K19 [{"Gradient"}]
       68 GETTABLEKS                       R13 R6 K12 ["reducedMotion"]
       70 JUMPIF                           R13 ; [+110]
       71 GETUPVAL                         R12 7
       72 GETTABLEKS                       R12 R12 K6 ["createElement"]
       74 LOADK                            R13 K20 ["UIGradient"]
       75 DUPTABLE                         R14 K24 [{"Color", "Transparency", "Offset", "Rotation"}]
       76 GETIMPORT                        R15 K26 [ColorSequence.new]
       78 NEWTABLE                         R16 0 3
       80 GETIMPORT                        R17 K28 [ColorSequenceKeypoint.new]
       82 LOADN                            R18 0
       83 GETTABLEKS                       R19 R5 K14 ["Color"]
       85 GETTABLEKS                       R19 R19 K29 ["Shift"]
       87 GETTABLEKS                       R19 R19 K30 ["Shift_300"]
       89 GETTABLEKS                       R19 R19 K31 ["Color3"]
       91 CALL                             R17 2 1
       92 GETIMPORT                        R18 K28 [ColorSequenceKeypoint.new]
       94 LOADK                            R19 K32 [0.5]
       95 GETTABLEKS                       R20 R5 K14 ["Color"]
       97 GETTABLEKS                       R20 R20 K15 ["Extended"]
       99 GETTABLEKS                       R20 R20 K16 ["White"]
      101 GETTABLEKS                       R20 R20 K33 ["White_30"]
      103 GETTABLEKS                       R20 R20 K31 ["Color3"]
      105 CALL                             R18 2 1
      106 GETIMPORT                        R19 K28 [ColorSequenceKeypoint.new]
      108 LOADN                            R20 1
      109 GETTABLEKS                       R21 R5 K14 ["Color"]
      111 GETTABLEKS                       R21 R21 K29 ["Shift"]
      113 GETTABLEKS                       R21 R21 K30 ["Shift_300"]
      115 GETTABLEKS                       R21 R21 K31 ["Color3"]
      117 CALL                             R19 2 -1
      118 SETLIST                          R16 R17 -1 [1]
      120 CALL                             R15 1 1
      121 SETTABLEKS                       R15 R14 K14 ["Color"]
      123 GETIMPORT                        R15 K35 [NumberSequence.new]
      125 NEWTABLE                         R16 0 3
      127 GETIMPORT                        R17 K37 [NumberSequenceKeypoint.new]
      129 LOADN                            R18 0
      130 GETTABLEKS                       R19 R5 K14 ["Color"]
      132 GETTABLEKS                       R19 R19 K29 ["Shift"]
      134 GETTABLEKS                       R19 R19 K30 ["Shift_300"]
      136 GETTABLEKS                       R19 R19 K21 ["Transparency"]
      138 CALL                             R17 2 1
      139 GETIMPORT                        R18 K37 [NumberSequenceKeypoint.new]
      141 LOADK                            R19 K32 [0.5]
      142 GETTABLEKS                       R20 R5 K14 ["Color"]
      144 GETTABLEKS                       R20 R20 K15 ["Extended"]
      146 GETTABLEKS                       R20 R20 K16 ["White"]
      148 GETTABLEKS                       R20 R20 K33 ["White_30"]
      150 GETTABLEKS                       R20 R20 K21 ["Transparency"]
      152 CALL                             R18 2 1
      153 GETIMPORT                        R19 K37 [NumberSequenceKeypoint.new]
      155 LOADN                            R20 1
      156 GETTABLEKS                       R21 R5 K14 ["Color"]
      158 GETTABLEKS                       R21 R21 K29 ["Shift"]
      160 GETTABLEKS                       R21 R21 K30 ["Shift_300"]
      162 GETTABLEKS                       R21 R21 K21 ["Transparency"]
      164 CALL                             R19 2 -1
      165 SETLIST                          R16 R17 -1 [1]
      167 CALL                             R15 1 1
      168 SETTABLEKS                       R15 R14 K21 ["Transparency"]
      170 DUPCLOSURE                       R17 K38 [PROTO_1]
      171 NAMECALL                         R15 R3 K13 ["map"]
      173 CALL                             R15 2 1
      174 SETTABLEKS                       R15 R14 K22 ["Offset"]
      176 LOADN                            R15 15
      177 SETTABLEKS                       R15 R14 K23 ["Rotation"]
      179 CALL                             R12 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R12
      182 SETTABLEKS                       R12 R11 K18 ["Gradient"]
      184 CALL                             R8 3 -1
      185 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useClock"]
       21 GETTABLEKS                       R5 R0 K10 ["Components"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R5 K11 ["View"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K6 [require]
       30 GETTABLEKS                       R8 R5 K12 ["Types"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K6 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Enums"]
       37 GETTABLEKS                       R9 R9 K14 ["Radius"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R0 K15 ["Providers"]
       44 GETTABLEKS                       R10 R10 K16 ["Style"]
       46 GETTABLEKS                       R10 R10 K17 ["useTokens"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K6 [require]
       51 GETTABLEKS                       R11 R0 K15 ["Providers"]
       53 GETTABLEKS                       R11 R11 K18 ["Preferences"]
       55 GETTABLEKS                       R11 R11 K19 ["usePreferences"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K6 [require]
       60 GETTABLEKS                       R12 R0 K20 ["Utility"]
       62 GETTABLEKS                       R12 R12 K21 ["usePulseBinding"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K6 [require]
       67 GETTABLEKS                       R13 R0 K20 ["Utility"]
       69 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K6 [require]
       74 GETTABLEKS                       R14 R0 K20 ["Utility"]
       76 GETTABLEKS                       R14 R14 K23 ["withCommonProps"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K6 [require]
       81 GETTABLEKS                       R15 R0 K20 ["Utility"]
       83 GETTABLEKS                       R15 R15 K24 ["lerp"]
       85 CALL                             R14 1 1
       86 DUPTABLE                         R15 K28 [{"radius", "Size", "testId"}]
       87 GETTABLEKS                       R16 R8 K29 ["None"]
       89 SETTABLEKS                       R16 R15 K25 ["radius"]
       91 GETIMPORT                        R16 K32 [UDim2.fromScale]
       93 LOADN                            R17 1
       94 LOADN                            R18 1
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K26 ["Size"]
       98 LOADK                            R16 K33 ["--foundation-skeleton"]
       99 SETTABLEKS                       R16 R15 K27 ["testId"]
      101 DUPCLOSURE                       R16 K34 [PROTO_2]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 GETTABLEKS                       R17 R2 K35 ["memo"]
      115 GETTABLEKS                       R18 R2 K36 ["forwardRef"]
      117 MOVE                             R19 R16
      118 CALL                             R18 1 -1
      119 CALL                             R17 -1 -1
      120 RETURN                           R17 -1
