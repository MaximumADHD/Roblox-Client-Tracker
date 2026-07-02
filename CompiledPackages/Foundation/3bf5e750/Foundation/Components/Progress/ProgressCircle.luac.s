PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 MULK                             R2 R0 K0 [360]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R1 K3 [math.clamp]
       10 CALL                             R1 3 1
       11 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["side"]
        2 GETTABLEKS                       R2 R0 K1 ["isIndeterminate"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 2
       16 MOVE                             R8 R3
       17 MOVE                             R9 R2
       18 SETLIST                          R7 R8 2 [1]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R8 0 1
       28 MOVE                             R9 R3
       29 SETLIST                          R8 R9 1 [1]
       31 CALL                             R6 2 1
       32 GETIMPORT                        R8 K6 [Enum.HorizontalAlignment.Left]
       34 JUMPIFNOTEQ                      R1 R8 ; [+3]
       36 LOADN                            R7 180
       37 JUMP                             ; [+1]
       38 LOADN                            R7 0
       39 GETIMPORT                        R9 K6 [Enum.HorizontalAlignment.Left]
       41 JUMPIFNOTEQ                      R1 R9 ; [+3]
       43 LOADN                            R8 360
       44 JUMP                             ; [+1]
       45 LOADN                            R8 180
       46 JUMPIFNOT                        R2 ; [+42]
       47 GETTABLEKS                       R9 R4 K7 ["reducedMotion"]
       49 JUMPIFNOT                        R9 ; [+39]
       50 LOADNIL                          R9
       51 JUMPIF                           R2 ; [+3]
       52 GETTABLEKS                       R9 R0 K8 ["rotation"]
       54 JUMP                             ; [+7]
       55 GETIMPORT                        R10 K6 [Enum.HorizontalAlignment.Left]
       57 JUMPIFNOTEQ                      R1 R10 ; [+3]
       59 LOADN                            R9 0
       60 JUMP                             ; [+1]
       61 LOADN                            R9 180
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K9 ["createElement"]
       65 LOADK                            R11 K10 ["UIGradient"]
       66 DUPTABLE                         R12 K14 [{"Transparency", "Color", "Rotation"}]
       67 GETTABLEKS                       R13 R0 K15 ["pulse"]
       69 NEWCLOSURE                       R15 P2
       70 CAPTURE                          VAL R3
       71 NAMECALL                         R13 R13 K16 ["map"]
       73 CALL                             R13 2 1
       74 SETTABLEKS                       R13 R12 K11 ["Transparency"]
       76 GETTABLEKS                       R13 R0 K15 ["pulse"]
       78 NEWCLOSURE                       R15 P3
       79 CAPTURE                          VAL R3
       80 NAMECALL                         R13 R13 K16 ["map"]
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K12 ["Color"]
       85 SETTABLEKS                       R9 R12 K13 ["Rotation"]
       87 CALL                             R10 2 -1
       88 RETURN                           R10 -1
       89 GETUPVAL                         R9 2
       90 GETTABLEKS                       R9 R9 K9 ["createElement"]
       92 LOADK                            R10 K10 ["UIGradient"]
       93 DUPTABLE                         R11 K14 [{"Transparency", "Color", "Rotation"}]
       94 SETTABLEKS                       R5 R11 K11 ["Transparency"]
       96 SETTABLEKS                       R6 R11 K12 ["Color"]
       98 GETTABLEKS                       R12 R0 K17 ["progress"]
      100 NEWCLOSURE                       R14 P4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 NAMECALL                         R12 R12 K16 ["map"]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K13 ["Rotation"]
      108 CALL                             R9 2 1
      109 RETURN                           R9 1

PROTO_6:
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

PROTO_7:
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
       17 GETTABLEKS                       R7 R7 K1 ["useBinding"]
       19 LOADK                            R8 K2 [0.8]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 7
       22 LOADN                            R9 1
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 8
       25 GETUPVAL                         R11 9
       26 GETTABLEKS                       R11 R11 K4 ["INDETERMINATE_SHIMMER_SPEED"]
       28 DIVRK                            R10 K3 [1] R11
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K7 [UDim2.fromOffset]
       32 GETTABLEKS                       R11 R4 K8 ["circle"]
       34 GETTABLEKS                       R11 R11 K0 ["size"]
       36 GETTABLEKS                       R12 R4 K8 ["circle"]
       38 GETTABLEKS                       R12 R12 K0 ["size"]
       40 CALL                             R10 2 1
       41 JUMPIFNOT                        R6 ; [+169]
       42 GETTABLEKS                       R11 R3 K9 ["reducedMotion"]
       44 JUMPIF                           R11 ; [+166]
       45 GETUPVAL                         R11 6
       46 GETTABLEKS                       R11 R11 K10 ["createElement"]
       48 GETUPVAL                         R12 10
       49 GETUPVAL                         R13 11
       50 MOVE                             R14 R1
       51 DUPTABLE                         R15 K14 [{["tag"] = "auto-xy", ["ref"]}]
       52 GETTABLEKS                       R16 R1 K13 ["ref"]
       54 SETTABLEKS                       R16 R15 K13 ["ref"]
       56 CALL                             R13 2 1
       57 DUPTABLE                         R14 K16 [{"IndeterminateContainer"}]
       58 GETUPVAL                         R15 6
       59 GETTABLEKS                       R15 R15 K10 ["createElement"]
       61 GETUPVAL                         R16 10
       62 DUPTABLE                         R17 K20 [{"Size", "Rotation", "testId"}]
       63 SETTABLEKS                       R10 R17 K17 ["Size"]
       65 SETTABLEKS                       R8 R17 K18 ["Rotation"]
       67 LOADK                            R19 K21 ["%*--indeterminate-container"]
       68 GETTABLEKS                       R21 R1 K19 ["testId"]
       70 NAMECALL                         R19 R19 K22 ["format"]
       72 CALL                             R19 2 1
       73 MOVE                             R18 R19
       74 SETTABLEKS                       R18 R17 K19 ["testId"]
       76 DUPTABLE                         R18 K25 [{"LeftGradient", "RightGradient"}]
       77 GETUPVAL                         R19 6
       78 GETTABLEKS                       R19 R19 K10 ["createElement"]
       80 GETUPVAL                         R20 10
       81 DUPTABLE                         R21 K27 [{["Size"], ["tag"] = "position-top-left clip", ["testId"]}]
       82 GETIMPORT                        R22 K29 [UDim2.fromScale]
       84 LOADK                            R23 K30 [0.5]
       85 LOADN                            R24 1
       86 CALL                             R22 2 1
       87 SETTABLEKS                       R22 R21 K17 ["Size"]
       89 LOADK                            R23 K31 ["%*--left-gradient"]
       90 GETTABLEKS                       R25 R1 K19 ["testId"]
       92 NAMECALL                         R23 R23 K22 ["format"]
       94 CALL                             R23 2 1
       95 MOVE                             R22 R23
       96 SETTABLEKS                       R22 R21 K19 ["testId"]
       98 DUPTABLE                         R22 K33 [{"Image"}]
       99 GETUPVAL                         R23 6
      100 GETTABLEKS                       R23 R23 K10 ["createElement"]
      102 GETUPVAL                         R24 12
      103 DUPTABLE                         R25 K36 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["tag"] = "content-emphasis position-top-left"}]
      104 GETIMPORT                        R26 K29 [UDim2.fromScale]
      106 LOADN                            R27 2
      107 LOADN                            R28 1
      108 CALL                             R26 2 1
      109 SETTABLEKS                       R26 R25 K17 ["Size"]
      111 DUPTABLE                         R26 K38 [{"Gradient"}]
      112 GETUPVAL                         R27 6
      113 GETTABLEKS                       R27 R27 K10 ["createElement"]
      115 GETUPVAL                         R28 13
      116 DUPTABLE                         R29 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      117 GETIMPORT                        R30 K48 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R30 R29 K39 ["side"]
      121 SETTABLEKS                       R6 R29 K40 ["isIndeterminate"]
      123 SETTABLEKS                       R8 R29 K41 ["rotation"]
      125 SETTABLEKS                       R7 R29 K42 ["progress"]
      127 SETTABLEKS                       R9 R29 K43 ["pulse"]
      129 CALL                             R27 2 1
      130 SETTABLEKS                       R27 R26 K37 ["Gradient"]
      132 CALL                             R23 3 1
      133 SETTABLEKS                       R23 R22 K32 ["Image"]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K23 ["LeftGradient"]
      138 GETUPVAL                         R19 6
      139 GETTABLEKS                       R19 R19 K10 ["createElement"]
      141 GETUPVAL                         R20 10
      142 DUPTABLE                         R21 K50 [{["Size"], ["tag"] = "clip position-top-center", ["testId"]}]
      143 GETIMPORT                        R22 K29 [UDim2.fromScale]
      145 LOADK                            R23 K30 [0.5]
      146 LOADN                            R24 1
      147 CALL                             R22 2 1
      148 SETTABLEKS                       R22 R21 K17 ["Size"]
      150 LOADK                            R23 K51 ["%*--right-gradient"]
      151 GETTABLEKS                       R25 R1 K19 ["testId"]
      153 NAMECALL                         R23 R23 K22 ["format"]
      155 CALL                             R23 2 1
      156 MOVE                             R22 R23
      157 SETTABLEKS                       R22 R21 K19 ["testId"]
      159 DUPTABLE                         R22 K33 [{"Image"}]
      160 GETUPVAL                         R23 6
      161 GETTABLEKS                       R23 R23 K10 ["createElement"]
      163 GETUPVAL                         R24 12
      164 DUPTABLE                         R25 K54 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["Position"], ["tag"] = "content-emphasis"}]
      165 GETIMPORT                        R26 K29 [UDim2.fromScale]
      167 LOADN                            R27 2
      168 LOADN                            R28 1
      169 CALL                             R26 2 1
      170 SETTABLEKS                       R26 R25 K17 ["Size"]
      172 GETIMPORT                        R26 K29 [UDim2.fromScale]
      174 LOADN                            R27 -1
      175 LOADN                            R28 0
      176 CALL                             R26 2 1
      177 SETTABLEKS                       R26 R25 K52 ["Position"]
      179 DUPTABLE                         R26 K38 [{"Gradient"}]
      180 GETUPVAL                         R27 6
      181 GETTABLEKS                       R27 R27 K10 ["createElement"]
      183 GETUPVAL                         R28 13
      184 DUPTABLE                         R29 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      185 GETIMPORT                        R30 K56 [Enum.HorizontalAlignment.Right]
      187 SETTABLEKS                       R30 R29 K39 ["side"]
      189 SETTABLEKS                       R6 R29 K40 ["isIndeterminate"]
      191 SETTABLEKS                       R8 R29 K41 ["rotation"]
      193 SETTABLEKS                       R7 R29 K42 ["progress"]
      195 SETTABLEKS                       R9 R29 K43 ["pulse"]
      197 CALL                             R27 2 1
      198 SETTABLEKS                       R27 R26 K37 ["Gradient"]
      200 CALL                             R23 3 1
      201 SETTABLEKS                       R23 R22 K32 ["Image"]
      203 CALL                             R19 3 1
      204 SETTABLEKS                       R19 R18 K24 ["RightGradient"]
      206 CALL                             R15 3 1
      207 SETTABLEKS                       R15 R14 K15 ["IndeterminateContainer"]
      209 CALL                             R11 3 -1
      210 RETURN                           R11 -1
      211 GETUPVAL                         R11 6
      212 GETTABLEKS                       R11 R11 K10 ["createElement"]
      214 GETUPVAL                         R12 10
      215 GETUPVAL                         R13 11
      216 MOVE                             R14 R1
      217 DUPTABLE                         R15 K57 [{"Size", "ref"}]
      218 SETTABLEKS                       R10 R15 K17 ["Size"]
      220 GETTABLEKS                       R16 R1 K13 ["ref"]
      222 SETTABLEKS                       R16 R15 K13 ["ref"]
      224 CALL                             R13 2 1
      225 DUPTABLE                         R14 K59 [{"LeftGradient", "RightGradient", "ProgressLabel"}]
      226 GETUPVAL                         R15 6
      227 GETTABLEKS                       R15 R15 K10 ["createElement"]
      229 GETUPVAL                         R16 10
      230 DUPTABLE                         R17 K27 [{["Size"], ["tag"] = "position-top-left clip", ["testId"]}]
      231 GETIMPORT                        R18 K29 [UDim2.fromScale]
      233 LOADK                            R19 K30 [0.5]
      234 LOADN                            R20 1
      235 CALL                             R18 2 1
      236 SETTABLEKS                       R18 R17 K17 ["Size"]
      238 LOADK                            R19 K31 ["%*--left-gradient"]
      239 GETTABLEKS                       R21 R1 K19 ["testId"]
      241 NAMECALL                         R19 R19 K22 ["format"]
      243 CALL                             R19 2 1
      244 MOVE                             R18 R19
      245 SETTABLEKS                       R18 R17 K19 ["testId"]
      247 DUPTABLE                         R18 K33 [{"Image"}]
      248 GETUPVAL                         R19 6
      249 GETTABLEKS                       R19 R19 K10 ["createElement"]
      251 GETUPVAL                         R20 12
      252 DUPTABLE                         R21 K36 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["tag"] = "content-emphasis position-top-left"}]
      253 GETIMPORT                        R22 K29 [UDim2.fromScale]
      255 LOADN                            R23 2
      256 LOADN                            R24 1
      257 CALL                             R22 2 1
      258 SETTABLEKS                       R22 R21 K17 ["Size"]
      260 DUPTABLE                         R22 K38 [{"Gradient"}]
      261 GETUPVAL                         R23 6
      262 GETTABLEKS                       R23 R23 K10 ["createElement"]
      264 GETUPVAL                         R24 13
      265 DUPTABLE                         R25 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      266 GETIMPORT                        R26 K48 [Enum.HorizontalAlignment.Left]
      268 SETTABLEKS                       R26 R25 K39 ["side"]
      270 SETTABLEKS                       R6 R25 K40 ["isIndeterminate"]
      272 SETTABLEKS                       R8 R25 K41 ["rotation"]
      274 SETTABLEKS                       R5 R25 K42 ["progress"]
      276 SETTABLEKS                       R9 R25 K43 ["pulse"]
      278 CALL                             R23 2 1
      279 SETTABLEKS                       R23 R22 K37 ["Gradient"]
      281 CALL                             R19 3 1
      282 SETTABLEKS                       R19 R18 K32 ["Image"]
      284 CALL                             R15 3 1
      285 SETTABLEKS                       R15 R14 K23 ["LeftGradient"]
      287 GETUPVAL                         R15 6
      288 GETTABLEKS                       R15 R15 K10 ["createElement"]
      290 GETUPVAL                         R16 10
      291 DUPTABLE                         R17 K50 [{["Size"], ["tag"] = "clip position-top-center", ["testId"]}]
      292 GETIMPORT                        R18 K29 [UDim2.fromScale]
      294 LOADK                            R19 K30 [0.5]
      295 LOADN                            R20 1
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R17 K17 ["Size"]
      299 LOADK                            R19 K51 ["%*--right-gradient"]
      300 GETTABLEKS                       R21 R1 K19 ["testId"]
      302 NAMECALL                         R19 R19 K22 ["format"]
      304 CALL                             R19 2 1
      305 MOVE                             R18 R19
      306 SETTABLEKS                       R18 R17 K19 ["testId"]
      308 DUPTABLE                         R18 K33 [{"Image"}]
      309 GETUPVAL                         R19 6
      310 GETTABLEKS                       R19 R19 K10 ["createElement"]
      312 GETUPVAL                         R20 12
      313 DUPTABLE                         R21 K54 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["Position"], ["tag"] = "content-emphasis"}]
      314 GETIMPORT                        R22 K29 [UDim2.fromScale]
      316 LOADN                            R23 2
      317 LOADN                            R24 1
      318 CALL                             R22 2 1
      319 SETTABLEKS                       R22 R21 K17 ["Size"]
      321 GETIMPORT                        R22 K29 [UDim2.fromScale]
      323 LOADN                            R23 -1
      324 LOADN                            R24 0
      325 CALL                             R22 2 1
      326 SETTABLEKS                       R22 R21 K52 ["Position"]
      328 DUPTABLE                         R22 K38 [{"Gradient"}]
      329 GETUPVAL                         R23 6
      330 GETTABLEKS                       R23 R23 K10 ["createElement"]
      332 GETUPVAL                         R24 13
      333 DUPTABLE                         R25 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      334 GETIMPORT                        R26 K56 [Enum.HorizontalAlignment.Right]
      336 SETTABLEKS                       R26 R25 K39 ["side"]
      338 SETTABLEKS                       R6 R25 K40 ["isIndeterminate"]
      340 SETTABLEKS                       R8 R25 K41 ["rotation"]
      342 SETTABLEKS                       R5 R25 K42 ["progress"]
      344 SETTABLEKS                       R9 R25 K43 ["pulse"]
      346 CALL                             R23 2 1
      347 SETTABLEKS                       R23 R22 K37 ["Gradient"]
      349 CALL                             R19 3 1
      350 SETTABLEKS                       R19 R18 K32 ["Image"]
      352 CALL                             R15 3 1
      353 SETTABLEKS                       R15 R14 K24 ["RightGradient"]
      355 GETTABLEKS                       R16 R4 K8 ["circle"]
      357 GETTABLEKS                       R16 R16 K60 ["labelFont"]
      359 JUMPIFNOT                        R16 ; [+29]
      360 JUMPIF                           R6 ; [+28]
      361 GETUPVAL                         R15 6
      362 GETTABLEKS                       R15 R15 K10 ["createElement"]
      364 GETUPVAL                         R16 14
      365 DUPTABLE                         R17 K64 [{["Text"], ["fontStyle"], ["tag"] = "anchor-center-center position-center-center", ["testId"]}]
      366 DUPCLOSURE                       R20 K65 [PROTO_6]
      367 NAMECALL                         R18 R5 K66 ["map"]
      369 CALL                             R18 2 1
      370 SETTABLEKS                       R18 R17 K61 ["Text"]
      372 GETTABLEKS                       R18 R4 K8 ["circle"]
      374 GETTABLEKS                       R18 R18 K60 ["labelFont"]
      376 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      378 LOADK                            R19 K67 ["%*--label"]
      379 GETTABLEKS                       R21 R1 K19 ["testId"]
      381 NAMECALL                         R19 R19 K22 ["format"]
      383 CALL                             R19 2 1
      384 MOVE                             R18 R19
      385 SETTABLEKS                       R18 R17 K19 ["testId"]
      387 CALL                             R15 2 1
      388 JUMP                             ; [+1]
      389 LOADNIL                          R15
      390 SETTABLEKS                       R15 R14 K58 ["ProgressLabel"]
      392 CALL                             R11 3 -1
      393 RETURN                           R11 -1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["constants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Components"]
       27 GETTABLEKS                       R5 R5 K10 ["Image"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Components"]
       34 GETTABLEKS                       R6 R6 K11 ["Text"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Components"]
       41 GETTABLEKS                       R7 R7 K12 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K9 ["Components"]
       48 GETTABLEKS                       R8 R8 K13 ["View"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Providers"]
       55 GETTABLEKS                       R9 R9 K15 ["Preferences"]
       57 GETTABLEKS                       R9 R9 K16 ["usePreferences"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K17 ["useProgressBinding"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETIMPORT                        R11 K1 [script]
       73 GETTABLEKS                       R11 R11 K4 ["Parent"]
       75 GETTABLEKS                       R11 R11 K18 ["useProgressVariants"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K19 ["Utility"]
       82 GETTABLEKS                       R12 R12 K20 ["usePulseBinding"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K19 ["Utility"]
       89 GETTABLEKS                       R13 R13 K21 ["useRotation"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R14 R0 K14 ["Providers"]
       96 GETTABLEKS                       R14 R14 K22 ["Style"]
       98 GETTABLEKS                       R14 R14 K23 ["useTokens"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K19 ["Utility"]
      105 GETTABLEKS                       R15 R15 K24 ["withCommonProps"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K19 ["Utility"]
      112 GETTABLEKS                       R16 R16 K25 ["withDefaults"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R17 R0 K26 ["Enums"]
      119 GETTABLEKS                       R17 R17 K27 ["ProgressShape"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R0 K26 ["Enums"]
      126 GETTABLEKS                       R18 R18 K28 ["ProgressSize"]
      128 CALL                             R17 1 1
      129 DUPTABLE                         R18 K30 [{"size"}]
      130 GETTABLEKS                       R19 R17 K31 ["Medium"]
      132 SETTABLEKS                       R19 R18 K29 ["size"]
      134 DUPCLOSURE                       R19 K32 [PROTO_5]
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 DUPCLOSURE                       R20 K33 [PROTO_7]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R5
      154 RETURN                           R20 1
