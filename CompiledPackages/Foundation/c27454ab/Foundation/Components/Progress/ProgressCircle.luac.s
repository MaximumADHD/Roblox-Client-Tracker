PROTO_0:
        0 GETIMPORT                        R3 K3 [Enum.HorizontalAlignment.Left]
        2 JUMPIFNOTEQ                      R1 R3 ; [+3]
        4 LOADN                            R2 180
        5 JUMP                             ; [+1]
        6 LOADN                            R2 0
        7 GETIMPORT                        R4 K3 [Enum.HorizontalAlignment.Left]
        9 JUMPIFNOTEQ                      R1 R4 ; [+3]
       11 LOADN                            R3 104
       12 JUMP                             ; [+1]
       13 LOADN                            R3 180
       14 JUMPIFNOTEQKNIL                  R0 ; [+3]
       16 LOADN                            R4 0
       17 RETURN                           R4 1
       18 MULK                             R5 R0 K4 [360]
       19 FASTCALL3                        MATH_CLAMP R5 R2 R3
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 GETIMPORT                        R4 K7 [math.clamp]
       25 CALL                             R4 3 1
       26 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["0%"]
        3 RETURN                           R1 1
        4 LOADK                            R2 K1 ["%*%%"]
        5 MULK                             R5 R0 K2 [100]
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K5 [math.floor]
        9 CALL                             R4 1 1
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Color"]
        3 GETTABLEKS                       R0 R0 K1 ["Content"]
        5 GETTABLEKS                       R0 R0 K2 ["Emphasis"]
        7 GETTABLEKS                       R0 R0 K3 ["Transparency"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADN                            R1 1
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Color"]
       16 GETTABLEKS                       R1 R1 K4 ["Shift"]
       18 GETTABLEKS                       R1 R1 K5 ["Shift_200"]
       20 GETTABLEKS                       R1 R1 K3 ["Transparency"]
       22 GETIMPORT                        R2 K8 [NumberSequence.new]
       24 NEWTABLE                         R3 0 4
       26 GETIMPORT                        R4 K10 [NumberSequenceKeypoint.new]
       28 LOADN                            R5 0
       29 MOVE                             R6 R0
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K10 [NumberSequenceKeypoint.new]
       33 LOADK                            R6 K11 [0.4999]
       34 MOVE                             R7 R0
       35 CALL                             R5 2 1
       36 GETIMPORT                        R6 K10 [NumberSequenceKeypoint.new]
       38 LOADK                            R7 K12 [0.5]
       39 MOVE                             R8 R1
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K10 [NumberSequenceKeypoint.new]
       43 LOADN                            R8 1
       44 MOVE                             R9 R1
       45 CALL                             R7 2 -1
       46 SETLIST                          R3 R4 -1 [1]
       48 CALL                             R2 1 -1
       49 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [ColorSequence.new]
        2 NEWTABLE                         R1 0 4
        4 GETIMPORT                        R2 K4 [ColorSequenceKeypoint.new]
        6 LOADN                            R3 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["Color"]
       10 GETTABLEKS                       R4 R4 K6 ["Content"]
       12 GETTABLEKS                       R4 R4 K7 ["Emphasis"]
       14 GETTABLEKS                       R4 R4 K8 ["Color3"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K4 [ColorSequenceKeypoint.new]
       19 LOADK                            R4 K9 [0.4999]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["Color"]
       23 GETTABLEKS                       R5 R5 K6 ["Content"]
       25 GETTABLEKS                       R5 R5 K7 ["Emphasis"]
       27 GETTABLEKS                       R5 R5 K8 ["Color3"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K4 [ColorSequenceKeypoint.new]
       32 LOADK                            R5 K10 [0.5]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K5 ["Color"]
       36 GETTABLEKS                       R6 R6 K11 ["Shift"]
       38 GETTABLEKS                       R6 R6 K12 ["Shift_200"]
       40 GETTABLEKS                       R6 R6 K8 ["Color3"]
       42 CALL                             R4 2 1
       43 GETIMPORT                        R5 K4 [ColorSequenceKeypoint.new]
       45 LOADN                            R6 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K5 ["Color"]
       49 GETTABLEKS                       R7 R7 K11 ["Shift"]
       51 GETTABLEKS                       R7 R7 K12 ["Shift_200"]
       53 GETTABLEKS                       R7 R7 K8 ["Color3"]
       55 CALL                             R5 2 -1
       56 SETLIST                          R1 R2 -1 [1]
       58 CALL                             R0 1 -1
       59 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [NumberSequence.new]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["Color"]
        5 GETTABLEKS                       R3 R3 K4 ["Content"]
        7 GETTABLEKS                       R3 R3 K5 ["Emphasis"]
        9 GETTABLEKS                       R3 R3 K6 ["Transparency"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Color"]
       14 GETTABLEKS                       R4 R4 K7 ["Shift"]
       16 GETTABLEKS                       R4 R4 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R4 K6 ["Transparency"]
       20 FASTCALL3                        MATH_LERP R3 R4 R0
       22 MOVE                             R5 R0
       23 GETIMPORT                        R2 K11 [math.lerp]
       25 CALL                             R2 3 1
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [ColorSequence.new]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Color"]
        5 GETTABLEKS                       R2 R2 K4 ["Content"]
        7 GETTABLEKS                       R2 R2 K5 ["Emphasis"]
        9 GETTABLEKS                       R2 R2 K6 ["Color3"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Color"]
       14 GETTABLEKS                       R4 R4 K7 ["Shift"]
       16 GETTABLEKS                       R4 R4 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R4 K6 ["Color3"]
       20 MOVE                             R5 R0
       21 NAMECALL                         R2 R2 K9 ["Lerp"]
       23 CALL                             R2 3 -1
       24 CALL                             R1 -1 -1
       25 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K3 [Enum.HorizontalAlignment.Left]
        3 JUMPIFNOTEQ                      R2 R4 ; [+3]
        5 LOADN                            R3 180
        6 JUMP                             ; [+1]
        7 LOADN                            R3 0
        8 GETIMPORT                        R5 K3 [Enum.HorizontalAlignment.Left]
       10 JUMPIFNOTEQ                      R2 R5 ; [+3]
       12 LOADN                            R4 104
       13 JUMP                             ; [+1]
       14 LOADN                            R4 180
       15 JUMPIFNOTEQKNIL                  R0 ; [+3]
       17 LOADN                            R1 0
       18 RETURN                           R1 1
       19 MULK                             R6 R0 K4 [360]
       20 FASTCALL3                        MATH_CLAMP R6 R3 R4
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 GETIMPORT                        R5 K7 [math.clamp]
       26 CALL                             R5 3 1
       27 MOVE                             R1 R5
       28 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["side"]
        2 GETTABLEKS                       R2 R0 K1 ["isIndeterminate"]
        4 GETTABLEKS                       R3 R0 K2 ["progress"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R8 0 2
       18 MOVE                             R9 R4
       19 MOVE                             R10 R2
       20 SETLIST                          R8 R9 2 [1]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R9 0 1
       30 MOVE                             R10 R4
       31 SETLIST                          R9 R10 1 [1]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R2 ; [+42]
       35 GETTABLEKS                       R8 R5 K4 ["reducedMotion"]
       37 JUMPIFNOT                        R8 ; [+39]
       38 LOADNIL                          R8
       39 JUMPIF                           R2 ; [+3]
       40 GETTABLEKS                       R8 R0 K5 ["rotation"]
       42 JUMP                             ; [+7]
       43 GETIMPORT                        R9 K9 [Enum.HorizontalAlignment.Left]
       45 JUMPIFNOTEQ                      R1 R9 ; [+3]
       47 LOADN                            R8 0
       48 JUMP                             ; [+1]
       49 LOADN                            R8 180
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K10 ["createElement"]
       53 LOADK                            R10 K11 ["UIGradient"]
       54 DUPTABLE                         R11 K15 [{"Transparency", "Color", "Rotation"}]
       55 GETTABLEKS                       R12 R0 K16 ["pulse"]
       57 NEWCLOSURE                       R14 P2
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R12 R12 K17 ["map"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K12 ["Transparency"]
       64 GETTABLEKS                       R12 R0 K16 ["pulse"]
       66 NEWCLOSURE                       R14 P3
       67 CAPTURE                          VAL R4
       68 NAMECALL                         R12 R12 K17 ["map"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K13 ["Color"]
       73 SETTABLEKS                       R8 R11 K14 ["Rotation"]
       75 CALL                             R9 2 -1
       76 RETURN                           R9 -1
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K10 ["createElement"]
       80 LOADK                            R9 K11 ["UIGradient"]
       81 DUPTABLE                         R10 K15 [{"Transparency", "Color", "Rotation"}]
       82 SETTABLEKS                       R6 R10 K12 ["Transparency"]
       84 SETTABLEKS                       R7 R10 K13 ["Color"]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K18 ["isBinding"]
       89 MOVE                             R13 R3
       90 CALL                             R12 1 1
       91 JUMPIF                           R12 ; [+4]
       92 GETUPVAL                         R12 4
       93 GETTABLEKS                       R12 R12 K19 ["FoundationProgressBindableValue"]
       95 JUMPIF                           R12 ; [+6]
       96 NEWCLOSURE                       R13 P4
       97 CAPTURE                          VAL R1
       98 NAMECALL                         R11 R3 K17 ["map"]
      100 CALL                             R11 2 1
      101 JUMP                             ; [+27]
      102 GETIMPORT                        R13 K9 [Enum.HorizontalAlignment.Left]
      104 JUMPIFNOTEQ                      R1 R13 ; [+3]
      106 LOADN                            R12 180
      107 JUMP                             ; [+1]
      108 LOADN                            R12 0
      109 GETIMPORT                        R14 K9 [Enum.HorizontalAlignment.Left]
      111 JUMPIFNOTEQ                      R1 R14 ; [+3]
      113 LOADN                            R13 104
      114 JUMP                             ; [+1]
      115 LOADN                            R13 180
      116 JUMPIFNOTEQKNIL                  R3 ; [+3]
      118 LOADN                            R11 0
      119 JUMP                             ; [+9]
      120 MULK                             R15 R3 K20 [360]
      121 FASTCALL3                        MATH_CLAMP R15 R12 R13
      123 MOVE                             R16 R12
      124 MOVE                             R17 R13
      125 GETIMPORT                        R14 K23 [math.clamp]
      127 CALL                             R14 3 1
      128 MOVE                             R11 R14
      129 SETTABLEKS                       R11 R10 K14 ["Rotation"]
      131 CALL                             R8 2 1
      132 RETURN                           R8 1

PROTO_8:
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
       18 GETTABLEKS                       R7 R7 K2 ["useBinding"]
       20 LOADK                            R8 K3 [0.8]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 7
       23 LOADN                            R9 1
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 8
       26 GETUPVAL                         R11 9
       27 GETTABLEKS                       R11 R11 K5 ["INDETERMINATE_SHIMMER_SPEED"]
       29 DIVRK                            R10 R4 K11 ["createElement"]
       30 CALL                             R9 1 1
       31 GETIMPORT                        R10 K8 [UDim2.fromOffset]
       33 GETTABLEKS                       R11 R4 K9 ["circle"]
       35 GETTABLEKS                       R11 R11 K0 ["size"]
       37 GETTABLEKS                       R12 R4 K9 ["circle"]
       39 GETTABLEKS                       R12 R12 K0 ["size"]
       41 CALL                             R10 2 1
       42 JUMPIFNOT                        R6 ; [+190]
       43 GETTABLEKS                       R11 R3 K10 ["reducedMotion"]
       45 JUMPIF                           R11 ; [+187]
       46 GETUPVAL                         R11 6
       47 GETTABLEKS                       R11 R11 K11 ["createElement"]
       49 GETUPVAL                         R12 10
       50 GETUPVAL                         R13 11
       51 MOVE                             R14 R1
       52 DUPTABLE                         R15 K14 [{"tag", "ref"}]
       53 LOADK                            R16 K15 ["auto-xy"]
       54 SETTABLEKS                       R16 R15 K12 ["tag"]
       56 GETTABLEKS                       R16 R1 K13 ["ref"]
       58 SETTABLEKS                       R16 R15 K13 ["ref"]
       60 CALL                             R13 2 1
       61 DUPTABLE                         R14 K17 [{"IndeterminateContainer"}]
       62 GETUPVAL                         R15 6
       63 GETTABLEKS                       R15 R15 K11 ["createElement"]
       65 GETUPVAL                         R16 10
       66 DUPTABLE                         R17 K21 [{"Size", "Rotation", "testId"}]
       67 SETTABLEKS                       R10 R17 K18 ["Size"]
       69 SETTABLEKS                       R8 R17 K19 ["Rotation"]
       71 LOADK                            R19 K22 ["%*--indeterminate-container"]
       72 GETTABLEKS                       R21 R1 K20 ["testId"]
       74 NAMECALL                         R19 R19 K23 ["format"]
       76 CALL                             R19 2 1
       77 MOVE                             R18 R19
       78 SETTABLEKS                       R18 R17 K20 ["testId"]
       80 DUPTABLE                         R18 K26 [{"LeftGradient", "RightGradient"}]
       81 GETUPVAL                         R19 6
       82 GETTABLEKS                       R19 R19 K11 ["createElement"]
       84 GETUPVAL                         R20 10
       85 DUPTABLE                         R21 K27 [{"Size", "tag", "testId"}]
       86 GETIMPORT                        R22 K29 [UDim2.fromScale]
       88 LOADK                            R23 K30 [0.5]
       89 LOADN                            R24 1
       90 CALL                             R22 2 1
       91 SETTABLEKS                       R22 R21 K18 ["Size"]
       93 LOADK                            R22 K31 ["position-top-left clip"]
       94 SETTABLEKS                       R22 R21 K12 ["tag"]
       96 LOADK                            R23 K32 ["%*--left-gradient"]
       97 GETTABLEKS                       R25 R1 K20 ["testId"]
       99 NAMECALL                         R23 R23 K23 ["format"]
      101 CALL                             R23 2 1
      102 MOVE                             R22 R23
      103 SETTABLEKS                       R22 R21 K20 ["testId"]
      105 DUPTABLE                         R22 K34 [{"Image"}]
      106 GETUPVAL                         R23 6
      107 GETTABLEKS                       R23 R23 K11 ["createElement"]
      109 GETUPVAL                         R24 12
      110 DUPTABLE                         R25 K35 [{"Image", "Size", "tag"}]
      111 LOADK                            R26 K36 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      112 SETTABLEKS                       R26 R25 K33 ["Image"]
      114 GETIMPORT                        R26 K29 [UDim2.fromScale]
      116 LOADN                            R27 2
      117 LOADN                            R28 1
      118 CALL                             R26 2 1
      119 SETTABLEKS                       R26 R25 K18 ["Size"]
      121 LOADK                            R26 K37 ["content-emphasis position-top-left"]
      122 SETTABLEKS                       R26 R25 K12 ["tag"]
      124 DUPTABLE                         R26 K39 [{"Gradient"}]
      125 GETUPVAL                         R27 6
      126 GETTABLEKS                       R27 R27 K11 ["createElement"]
      128 GETUPVAL                         R28 13
      129 DUPTABLE                         R29 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      130 GETIMPORT                        R30 K49 [Enum.HorizontalAlignment.Left]
      132 SETTABLEKS                       R30 R29 K40 ["side"]
      134 SETTABLEKS                       R6 R29 K41 ["isIndeterminate"]
      136 SETTABLEKS                       R8 R29 K42 ["rotation"]
      138 SETTABLEKS                       R7 R29 K43 ["progress"]
      140 SETTABLEKS                       R9 R29 K44 ["pulse"]
      142 CALL                             R27 2 1
      143 SETTABLEKS                       R27 R26 K38 ["Gradient"]
      145 CALL                             R23 3 1
      146 SETTABLEKS                       R23 R22 K33 ["Image"]
      148 CALL                             R19 3 1
      149 SETTABLEKS                       R19 R18 K24 ["LeftGradient"]
      151 GETUPVAL                         R19 6
      152 GETTABLEKS                       R19 R19 K11 ["createElement"]
      154 GETUPVAL                         R20 10
      155 DUPTABLE                         R21 K27 [{"Size", "tag", "testId"}]
      156 GETIMPORT                        R22 K29 [UDim2.fromScale]
      158 LOADK                            R23 K30 [0.5]
      159 LOADN                            R24 1
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K18 ["Size"]
      163 LOADK                            R22 K50 ["clip position-top-center"]
      164 SETTABLEKS                       R22 R21 K12 ["tag"]
      166 LOADK                            R23 K51 ["%*--right-gradient"]
      167 GETTABLEKS                       R25 R1 K20 ["testId"]
      169 NAMECALL                         R23 R23 K23 ["format"]
      171 CALL                             R23 2 1
      172 MOVE                             R22 R23
      173 SETTABLEKS                       R22 R21 K20 ["testId"]
      175 DUPTABLE                         R22 K34 [{"Image"}]
      176 GETUPVAL                         R23 6
      177 GETTABLEKS                       R23 R23 K11 ["createElement"]
      179 GETUPVAL                         R24 12
      180 DUPTABLE                         R25 K53 [{"Image", "Size", "Position", "tag"}]
      181 LOADK                            R26 K36 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      182 SETTABLEKS                       R26 R25 K33 ["Image"]
      184 GETIMPORT                        R26 K29 [UDim2.fromScale]
      186 LOADN                            R27 2
      187 LOADN                            R28 1
      188 CALL                             R26 2 1
      189 SETTABLEKS                       R26 R25 K18 ["Size"]
      191 GETIMPORT                        R26 K29 [UDim2.fromScale]
      193 LOADN                            R27 255
      194 LOADN                            R28 0
      195 CALL                             R26 2 1
      196 SETTABLEKS                       R26 R25 K52 ["Position"]
      198 LOADK                            R26 K54 ["content-emphasis"]
      199 SETTABLEKS                       R26 R25 K12 ["tag"]
      201 DUPTABLE                         R26 K39 [{"Gradient"}]
      202 GETUPVAL                         R27 6
      203 GETTABLEKS                       R27 R27 K11 ["createElement"]
      205 GETUPVAL                         R28 13
      206 DUPTABLE                         R29 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      207 GETIMPORT                        R30 K56 [Enum.HorizontalAlignment.Right]
      209 SETTABLEKS                       R30 R29 K40 ["side"]
      211 SETTABLEKS                       R6 R29 K41 ["isIndeterminate"]
      213 SETTABLEKS                       R8 R29 K42 ["rotation"]
      215 SETTABLEKS                       R7 R29 K43 ["progress"]
      217 SETTABLEKS                       R9 R29 K44 ["pulse"]
      219 CALL                             R27 2 1
      220 SETTABLEKS                       R27 R26 K38 ["Gradient"]
      222 CALL                             R23 3 1
      223 SETTABLEKS                       R23 R22 K33 ["Image"]
      225 CALL                             R19 3 1
      226 SETTABLEKS                       R19 R18 K25 ["RightGradient"]
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K16 ["IndeterminateContainer"]
      231 CALL                             R11 3 -1
      232 RETURN                           R11 -1
      233 GETUPVAL                         R11 6
      234 GETTABLEKS                       R11 R11 K11 ["createElement"]
      236 GETUPVAL                         R12 10
      237 GETUPVAL                         R13 11
      238 MOVE                             R14 R1
      239 DUPTABLE                         R15 K57 [{"Size", "ref"}]
      240 SETTABLEKS                       R10 R15 K18 ["Size"]
      242 GETTABLEKS                       R16 R1 K13 ["ref"]
      244 SETTABLEKS                       R16 R15 K13 ["ref"]
      246 CALL                             R13 2 1
      247 DUPTABLE                         R14 K59 [{"LeftGradient", "RightGradient", "ProgressLabel"}]
      248 GETUPVAL                         R15 6
      249 GETTABLEKS                       R15 R15 K11 ["createElement"]
      251 GETUPVAL                         R16 10
      252 DUPTABLE                         R17 K27 [{"Size", "tag", "testId"}]
      253 GETIMPORT                        R18 K29 [UDim2.fromScale]
      255 LOADK                            R19 K30 [0.5]
      256 LOADN                            R20 1
      257 CALL                             R18 2 1
      258 SETTABLEKS                       R18 R17 K18 ["Size"]
      260 LOADK                            R18 K31 ["position-top-left clip"]
      261 SETTABLEKS                       R18 R17 K12 ["tag"]
      263 LOADK                            R19 K32 ["%*--left-gradient"]
      264 GETTABLEKS                       R21 R1 K20 ["testId"]
      266 NAMECALL                         R19 R19 K23 ["format"]
      268 CALL                             R19 2 1
      269 MOVE                             R18 R19
      270 SETTABLEKS                       R18 R17 K20 ["testId"]
      272 DUPTABLE                         R18 K34 [{"Image"}]
      273 GETUPVAL                         R19 6
      274 GETTABLEKS                       R19 R19 K11 ["createElement"]
      276 GETUPVAL                         R20 12
      277 DUPTABLE                         R21 K35 [{"Image", "Size", "tag"}]
      278 LOADK                            R22 K36 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      279 SETTABLEKS                       R22 R21 K33 ["Image"]
      281 GETIMPORT                        R22 K29 [UDim2.fromScale]
      283 LOADN                            R23 2
      284 LOADN                            R24 1
      285 CALL                             R22 2 1
      286 SETTABLEKS                       R22 R21 K18 ["Size"]
      288 LOADK                            R22 K37 ["content-emphasis position-top-left"]
      289 SETTABLEKS                       R22 R21 K12 ["tag"]
      291 DUPTABLE                         R22 K39 [{"Gradient"}]
      292 GETUPVAL                         R23 6
      293 GETTABLEKS                       R23 R23 K11 ["createElement"]
      295 GETUPVAL                         R24 13
      296 DUPTABLE                         R25 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      297 GETIMPORT                        R26 K49 [Enum.HorizontalAlignment.Left]
      299 SETTABLEKS                       R26 R25 K40 ["side"]
      301 SETTABLEKS                       R6 R25 K41 ["isIndeterminate"]
      303 SETTABLEKS                       R8 R25 K42 ["rotation"]
      305 SETTABLEKS                       R5 R25 K43 ["progress"]
      307 SETTABLEKS                       R9 R25 K44 ["pulse"]
      309 CALL                             R23 2 1
      310 SETTABLEKS                       R23 R22 K38 ["Gradient"]
      312 CALL                             R19 3 1
      313 SETTABLEKS                       R19 R18 K33 ["Image"]
      315 CALL                             R15 3 1
      316 SETTABLEKS                       R15 R14 K24 ["LeftGradient"]
      318 GETUPVAL                         R15 6
      319 GETTABLEKS                       R15 R15 K11 ["createElement"]
      321 GETUPVAL                         R16 10
      322 DUPTABLE                         R17 K27 [{"Size", "tag", "testId"}]
      323 GETIMPORT                        R18 K29 [UDim2.fromScale]
      325 LOADK                            R19 K30 [0.5]
      326 LOADN                            R20 1
      327 CALL                             R18 2 1
      328 SETTABLEKS                       R18 R17 K18 ["Size"]
      330 LOADK                            R18 K50 ["clip position-top-center"]
      331 SETTABLEKS                       R18 R17 K12 ["tag"]
      333 LOADK                            R19 K51 ["%*--right-gradient"]
      334 GETTABLEKS                       R21 R1 K20 ["testId"]
      336 NAMECALL                         R19 R19 K23 ["format"]
      338 CALL                             R19 2 1
      339 MOVE                             R18 R19
      340 SETTABLEKS                       R18 R17 K20 ["testId"]
      342 DUPTABLE                         R18 K34 [{"Image"}]
      343 GETUPVAL                         R19 6
      344 GETTABLEKS                       R19 R19 K11 ["createElement"]
      346 GETUPVAL                         R20 12
      347 DUPTABLE                         R21 K53 [{"Image", "Size", "Position", "tag"}]
      348 LOADK                            R22 K36 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      349 SETTABLEKS                       R22 R21 K33 ["Image"]
      351 GETIMPORT                        R22 K29 [UDim2.fromScale]
      353 LOADN                            R23 2
      354 LOADN                            R24 1
      355 CALL                             R22 2 1
      356 SETTABLEKS                       R22 R21 K18 ["Size"]
      358 GETIMPORT                        R22 K29 [UDim2.fromScale]
      360 LOADN                            R23 255
      361 LOADN                            R24 0
      362 CALL                             R22 2 1
      363 SETTABLEKS                       R22 R21 K52 ["Position"]
      365 LOADK                            R22 K54 ["content-emphasis"]
      366 SETTABLEKS                       R22 R21 K12 ["tag"]
      368 DUPTABLE                         R22 K39 [{"Gradient"}]
      369 GETUPVAL                         R23 6
      370 GETTABLEKS                       R23 R23 K11 ["createElement"]
      372 GETUPVAL                         R24 13
      373 DUPTABLE                         R25 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      374 GETIMPORT                        R26 K56 [Enum.HorizontalAlignment.Right]
      376 SETTABLEKS                       R26 R25 K40 ["side"]
      378 SETTABLEKS                       R6 R25 K41 ["isIndeterminate"]
      380 SETTABLEKS                       R8 R25 K42 ["rotation"]
      382 SETTABLEKS                       R5 R25 K43 ["progress"]
      384 SETTABLEKS                       R9 R25 K44 ["pulse"]
      386 CALL                             R23 2 1
      387 SETTABLEKS                       R23 R22 K38 ["Gradient"]
      389 CALL                             R19 3 1
      390 SETTABLEKS                       R19 R18 K33 ["Image"]
      392 CALL                             R15 3 1
      393 SETTABLEKS                       R15 R14 K25 ["RightGradient"]
      395 GETTABLEKS                       R16 R4 K9 ["circle"]
      397 GETTABLEKS                       R16 R16 K60 ["labelFont"]
      399 JUMPIFNOT                        R16 ; [+57]
      400 JUMPIF                           R6 ; [+56]
      401 GETUPVAL                         R15 6
      402 GETTABLEKS                       R15 R15 K11 ["createElement"]
      404 GETUPVAL                         R16 14
      405 DUPTABLE                         R17 K63 [{"Text", "fontStyle", "tag", "testId"}]
      406 GETUPVAL                         R19 15
      407 GETTABLEKS                       R19 R19 K64 ["isBinding"]
      409 MOVE                             R20 R5
      410 CALL                             R19 1 1
      411 JUMPIF                           R19 ; [+4]
      412 GETUPVAL                         R19 16
      413 GETTABLEKS                       R19 R19 K65 ["FoundationProgressBindableValue"]
      415 JUMPIF                           R19 ; [+5]
      416 GETUPVAL                         R20 17
      417 NAMECALL                         R18 R5 K66 ["map"]
      419 CALL                             R18 2 1
      420 JUMP                             ; [+14]
      421 JUMPIFNOTEQKNIL                  R5 ; [+3]
      423 LOADK                            R18 K67 ["0%"]
      424 JUMP                             ; [+10]
      425 LOADK                            R19 K68 ["%*%%"]
      426 MULK                             R22 R5 K69 [100]
      427 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      428 GETIMPORT                        R21 K72 [math.floor]
      430 CALL                             R21 1 1
      431 NAMECALL                         R19 R19 K23 ["format"]
      433 CALL                             R19 2 1
      434 MOVE                             R18 R19
      435 SETTABLEKS                       R18 R17 K61 ["Text"]
      437 GETTABLEKS                       R18 R4 K9 ["circle"]
      439 GETTABLEKS                       R18 R18 K60 ["labelFont"]
      441 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      443 LOADK                            R18 K73 ["anchor-center-center position-center-center"]
      444 SETTABLEKS                       R18 R17 K12 ["tag"]
      446 LOADK                            R19 K74 ["%*--label"]
      447 GETTABLEKS                       R21 R1 K20 ["testId"]
      449 NAMECALL                         R19 R19 K23 ["format"]
      451 CALL                             R19 2 1
      452 MOVE                             R18 R19
      453 SETTABLEKS                       R18 R17 K20 ["testId"]
      455 CALL                             R15 2 1
      456 JUMP                             ; [+1]
      457 LOADNIL                          R15
      458 SETTABLEKS                       R15 R14 K58 ["ProgressLabel"]
      460 CALL                             R11 3 -1
      461 RETURN                           R11 -1

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
       39 GETTABLEKS                       R7 R7 K13 ["Image"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["Text"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K12 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Providers"]
       67 GETTABLEKS                       R11 R11 K18 ["Preferences"]
       69 GETTABLEKS                       R11 R11 K19 ["usePreferences"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K4 ["Parent"]
       78 GETTABLEKS                       R12 R12 K20 ["useProgressBinding"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETIMPORT                        R13 K1 [script]
       85 GETTABLEKS                       R13 R13 K4 ["Parent"]
       87 GETTABLEKS                       R13 R13 K21 ["useProgressVariants"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Utility"]
       94 GETTABLEKS                       R14 R14 K22 ["usePulseBinding"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K10 ["Utility"]
      101 GETTABLEKS                       R15 R15 K23 ["useRotation"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K6 [require]
      106 GETTABLEKS                       R16 R0 K17 ["Providers"]
      108 GETTABLEKS                       R16 R16 K24 ["Style"]
      110 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K10 ["Utility"]
      117 GETTABLEKS                       R17 R17 K26 ["withCommonProps"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K10 ["Utility"]
      124 GETTABLEKS                       R18 R18 K27 ["withDefaults"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K28 ["Enums"]
      131 GETTABLEKS                       R19 R19 K29 ["ProgressShape"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R20 R0 K28 ["Enums"]
      138 GETTABLEKS                       R20 R20 K30 ["ProgressSize"]
      140 CALL                             R19 1 1
      141 DUPTABLE                         R20 K32 [{"size"}]
      142 GETTABLEKS                       R21 R19 K33 ["Medium"]
      144 SETTABLEKS                       R21 R20 K31 ["size"]
      146 DUPCLOSURE                       R21 K34 [PROTO_0]
      147 DUPCLOSURE                       R22 K35 [PROTO_1]
      148 DUPCLOSURE                       R23 K36 [PROTO_7]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R5
      154 DUPCLOSURE                       R24 K37 [PROTO_8]
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R22
      173 RETURN                           R24 1
