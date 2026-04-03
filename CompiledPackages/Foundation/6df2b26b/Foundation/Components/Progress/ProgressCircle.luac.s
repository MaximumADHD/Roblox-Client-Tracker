PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Color"]
        3 GETTABLEKS                       R2 R3 K1 ["Content"]
        5 GETTABLEKS                       R1 R2 K2 ["Emphasis"]
        7 GETTABLEKS                       R0 R1 K3 ["Transparency"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADN                            R1 1
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["Color"]
       16 GETTABLEKS                       R3 R4 K4 ["Shift"]
       18 GETTABLEKS                       R2 R3 K5 ["Shift_200"]
       20 GETTABLEKS                       R1 R2 K3 ["Transparency"]
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
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K5 ["Color"]
       10 GETTABLEKS                       R6 R7 K6 ["Content"]
       12 GETTABLEKS                       R5 R6 K7 ["Emphasis"]
       14 GETTABLEKS                       R4 R5 K8 ["Color3"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K4 [ColorSequenceKeypoint.new]
       19 LOADK                            R4 K9 [0.4999]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K5 ["Color"]
       23 GETTABLEKS                       R7 R8 K6 ["Content"]
       25 GETTABLEKS                       R6 R7 K7 ["Emphasis"]
       27 GETTABLEKS                       R5 R6 K8 ["Color3"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K4 [ColorSequenceKeypoint.new]
       32 LOADK                            R5 K10 [0.5]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K5 ["Color"]
       36 GETTABLEKS                       R8 R9 K11 ["Shift"]
       38 GETTABLEKS                       R7 R8 K12 ["Shift_200"]
       40 GETTABLEKS                       R6 R7 K8 ["Color3"]
       42 CALL                             R4 2 1
       43 GETIMPORT                        R5 K4 [ColorSequenceKeypoint.new]
       45 LOADN                            R6 1
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K5 ["Color"]
       49 GETTABLEKS                       R9 R10 K11 ["Shift"]
       51 GETTABLEKS                       R8 R9 K12 ["Shift_200"]
       53 GETTABLEKS                       R7 R8 K8 ["Color3"]
       55 CALL                             R5 2 -1
       56 SETLIST                          R1 R2 -1 [1]
       58 CALL                             R0 1 -1
       59 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [NumberSequence.new]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K3 ["Color"]
        5 GETTABLEKS                       R5 R6 K4 ["Content"]
        7 GETTABLEKS                       R4 R5 K5 ["Emphasis"]
        9 GETTABLEKS                       R3 R4 K6 ["Transparency"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["Color"]
       14 GETTABLEKS                       R6 R7 K7 ["Shift"]
       16 GETTABLEKS                       R5 R6 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R5 K6 ["Transparency"]
       20 FASTCALL3                        MATH_LERP R3 R4 R0
       22 MOVE                             R5 R0
       23 GETIMPORT                        R2 K11 [math.lerp]
       25 CALL                             R2 3 1
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [ColorSequence.new]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["Color"]
        5 GETTABLEKS                       R4 R5 K4 ["Content"]
        7 GETTABLEKS                       R3 R4 K5 ["Emphasis"]
        9 GETTABLEKS                       R2 R3 K6 ["Color3"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["Color"]
       14 GETTABLEKS                       R6 R7 K7 ["Shift"]
       16 GETTABLEKS                       R5 R6 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R5 K6 ["Color3"]
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
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 2
       16 MOVE                             R8 R3
       17 MOVE                             R9 R2
       18 SETLIST                          R7 R8 2 [1]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K2 ["useMemo"]
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
       43 LOADN                            R8 104
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
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R10 R11 K9 ["createElement"]
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
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R9 R10 K9 ["createElement"]
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
       16 GETUPVAL                         R8 6
       17 GETTABLEKS                       R7 R8 K1 ["useBinding"]
       19 LOADK                            R8 K2 [0.8]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 7
       22 LOADN                            R9 1
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 8
       25 GETUPVAL                         R12 9
       26 GETTABLEKS                       R11 R12 K4 ["INDETERMINATE_SHIMMER_SPEED"]
       28 DIVRK                            R10 R3 K11 ["tag"]
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K7 [UDim2.fromOffset]
       32 GETTABLEKS                       R12 R4 K8 ["circle"]
       34 GETTABLEKS                       R11 R12 K0 ["size"]
       36 GETTABLEKS                       R13 R4 K8 ["circle"]
       38 GETTABLEKS                       R12 R13 K0 ["size"]
       40 CALL                             R10 2 1
       41 JUMPIFNOT                        R6 ; [+190]
       42 GETTABLEKS                       R11 R3 K9 ["reducedMotion"]
       44 JUMPIF                           R11 ; [+187]
       45 GETUPVAL                         R12 6
       46 GETTABLEKS                       R11 R12 K10 ["createElement"]
       48 GETUPVAL                         R12 10
       49 GETUPVAL                         R13 11
       50 MOVE                             R14 R1
       51 DUPTABLE                         R15 K13 [{"tag", "ref"}]
       52 LOADK                            R16 K14 ["auto-xy"]
       53 SETTABLEKS                       R16 R15 K11 ["tag"]
       55 GETTABLEKS                       R16 R1 K12 ["ref"]
       57 SETTABLEKS                       R16 R15 K12 ["ref"]
       59 CALL                             R13 2 1
       60 DUPTABLE                         R14 K16 [{"IndeterminateContainer"}]
       61 GETUPVAL                         R16 6
       62 GETTABLEKS                       R15 R16 K10 ["createElement"]
       64 GETUPVAL                         R16 10
       65 DUPTABLE                         R17 K20 [{"Size", "Rotation", "testId"}]
       66 SETTABLEKS                       R10 R17 K17 ["Size"]
       68 SETTABLEKS                       R8 R17 K18 ["Rotation"]
       70 LOADK                            R19 K21 ["%*--indeterminate-container"]
       71 GETTABLEKS                       R21 R1 K19 ["testId"]
       73 NAMECALL                         R19 R19 K22 ["format"]
       75 CALL                             R19 2 1
       76 MOVE                             R18 R19
       77 SETTABLEKS                       R18 R17 K19 ["testId"]
       79 DUPTABLE                         R18 K25 [{"LeftGradient", "RightGradient"}]
       80 GETUPVAL                         R20 6
       81 GETTABLEKS                       R19 R20 K10 ["createElement"]
       83 GETUPVAL                         R20 10
       84 DUPTABLE                         R21 K26 [{"Size", "tag", "testId"}]
       85 GETIMPORT                        R22 K28 [UDim2.fromScale]
       87 LOADK                            R23 K29 [0.5]
       88 LOADN                            R24 1
       89 CALL                             R22 2 1
       90 SETTABLEKS                       R22 R21 K17 ["Size"]
       92 LOADK                            R22 K30 ["position-top-left clip"]
       93 SETTABLEKS                       R22 R21 K11 ["tag"]
       95 LOADK                            R23 K31 ["%*--left-gradient"]
       96 GETTABLEKS                       R25 R1 K19 ["testId"]
       98 NAMECALL                         R23 R23 K22 ["format"]
      100 CALL                             R23 2 1
      101 MOVE                             R22 R23
      102 SETTABLEKS                       R22 R21 K19 ["testId"]
      104 DUPTABLE                         R22 K33 [{"Image"}]
      105 GETUPVAL                         R24 6
      106 GETTABLEKS                       R23 R24 K10 ["createElement"]
      108 GETUPVAL                         R24 12
      109 DUPTABLE                         R25 K34 [{"Image", "Size", "tag"}]
      110 LOADK                            R26 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      111 SETTABLEKS                       R26 R25 K32 ["Image"]
      113 GETIMPORT                        R26 K28 [UDim2.fromScale]
      115 LOADN                            R27 2
      116 LOADN                            R28 1
      117 CALL                             R26 2 1
      118 SETTABLEKS                       R26 R25 K17 ["Size"]
      120 LOADK                            R26 K36 ["content-emphasis position-top-left"]
      121 SETTABLEKS                       R26 R25 K11 ["tag"]
      123 DUPTABLE                         R26 K38 [{"Gradient"}]
      124 GETUPVAL                         R28 6
      125 GETTABLEKS                       R27 R28 K10 ["createElement"]
      127 GETUPVAL                         R28 13
      128 DUPTABLE                         R29 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      129 GETIMPORT                        R30 K48 [Enum.HorizontalAlignment.Left]
      131 SETTABLEKS                       R30 R29 K39 ["side"]
      133 SETTABLEKS                       R6 R29 K40 ["isIndeterminate"]
      135 SETTABLEKS                       R8 R29 K41 ["rotation"]
      137 SETTABLEKS                       R7 R29 K42 ["progress"]
      139 SETTABLEKS                       R9 R29 K43 ["pulse"]
      141 CALL                             R27 2 1
      142 SETTABLEKS                       R27 R26 K37 ["Gradient"]
      144 CALL                             R23 3 1
      145 SETTABLEKS                       R23 R22 K32 ["Image"]
      147 CALL                             R19 3 1
      148 SETTABLEKS                       R19 R18 K23 ["LeftGradient"]
      150 GETUPVAL                         R20 6
      151 GETTABLEKS                       R19 R20 K10 ["createElement"]
      153 GETUPVAL                         R20 10
      154 DUPTABLE                         R21 K26 [{"Size", "tag", "testId"}]
      155 GETIMPORT                        R22 K28 [UDim2.fromScale]
      157 LOADK                            R23 K29 [0.5]
      158 LOADN                            R24 1
      159 CALL                             R22 2 1
      160 SETTABLEKS                       R22 R21 K17 ["Size"]
      162 LOADK                            R22 K49 ["clip position-top-center"]
      163 SETTABLEKS                       R22 R21 K11 ["tag"]
      165 LOADK                            R23 K50 ["%*--right-gradient"]
      166 GETTABLEKS                       R25 R1 K19 ["testId"]
      168 NAMECALL                         R23 R23 K22 ["format"]
      170 CALL                             R23 2 1
      171 MOVE                             R22 R23
      172 SETTABLEKS                       R22 R21 K19 ["testId"]
      174 DUPTABLE                         R22 K33 [{"Image"}]
      175 GETUPVAL                         R24 6
      176 GETTABLEKS                       R23 R24 K10 ["createElement"]
      178 GETUPVAL                         R24 12
      179 DUPTABLE                         R25 K52 [{"Image", "Size", "Position", "tag"}]
      180 LOADK                            R26 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      181 SETTABLEKS                       R26 R25 K32 ["Image"]
      183 GETIMPORT                        R26 K28 [UDim2.fromScale]
      185 LOADN                            R27 2
      186 LOADN                            R28 1
      187 CALL                             R26 2 1
      188 SETTABLEKS                       R26 R25 K17 ["Size"]
      190 GETIMPORT                        R26 K28 [UDim2.fromScale]
      192 LOADN                            R27 255
      193 LOADN                            R28 0
      194 CALL                             R26 2 1
      195 SETTABLEKS                       R26 R25 K51 ["Position"]
      197 LOADK                            R26 K53 ["content-emphasis"]
      198 SETTABLEKS                       R26 R25 K11 ["tag"]
      200 DUPTABLE                         R26 K38 [{"Gradient"}]
      201 GETUPVAL                         R28 6
      202 GETTABLEKS                       R27 R28 K10 ["createElement"]
      204 GETUPVAL                         R28 13
      205 DUPTABLE                         R29 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      206 GETIMPORT                        R30 K55 [Enum.HorizontalAlignment.Right]
      208 SETTABLEKS                       R30 R29 K39 ["side"]
      210 SETTABLEKS                       R6 R29 K40 ["isIndeterminate"]
      212 SETTABLEKS                       R8 R29 K41 ["rotation"]
      214 SETTABLEKS                       R7 R29 K42 ["progress"]
      216 SETTABLEKS                       R9 R29 K43 ["pulse"]
      218 CALL                             R27 2 1
      219 SETTABLEKS                       R27 R26 K37 ["Gradient"]
      221 CALL                             R23 3 1
      222 SETTABLEKS                       R23 R22 K32 ["Image"]
      224 CALL                             R19 3 1
      225 SETTABLEKS                       R19 R18 K24 ["RightGradient"]
      227 CALL                             R15 3 1
      228 SETTABLEKS                       R15 R14 K15 ["IndeterminateContainer"]
      230 CALL                             R11 3 -1
      231 RETURN                           R11 -1
      232 GETUPVAL                         R12 6
      233 GETTABLEKS                       R11 R12 K10 ["createElement"]
      235 GETUPVAL                         R12 10
      236 GETUPVAL                         R13 11
      237 MOVE                             R14 R1
      238 DUPTABLE                         R15 K56 [{"Size", "ref"}]
      239 SETTABLEKS                       R10 R15 K17 ["Size"]
      241 GETTABLEKS                       R16 R1 K12 ["ref"]
      243 SETTABLEKS                       R16 R15 K12 ["ref"]
      245 CALL                             R13 2 1
      246 DUPTABLE                         R14 K58 [{"LeftGradient", "RightGradient", "ProgressLabel"}]
      247 GETUPVAL                         R16 6
      248 GETTABLEKS                       R15 R16 K10 ["createElement"]
      250 GETUPVAL                         R16 10
      251 DUPTABLE                         R17 K26 [{"Size", "tag", "testId"}]
      252 GETIMPORT                        R18 K28 [UDim2.fromScale]
      254 LOADK                            R19 K29 [0.5]
      255 LOADN                            R20 1
      256 CALL                             R18 2 1
      257 SETTABLEKS                       R18 R17 K17 ["Size"]
      259 LOADK                            R18 K30 ["position-top-left clip"]
      260 SETTABLEKS                       R18 R17 K11 ["tag"]
      262 LOADK                            R19 K31 ["%*--left-gradient"]
      263 GETTABLEKS                       R21 R1 K19 ["testId"]
      265 NAMECALL                         R19 R19 K22 ["format"]
      267 CALL                             R19 2 1
      268 MOVE                             R18 R19
      269 SETTABLEKS                       R18 R17 K19 ["testId"]
      271 DUPTABLE                         R18 K33 [{"Image"}]
      272 GETUPVAL                         R20 6
      273 GETTABLEKS                       R19 R20 K10 ["createElement"]
      275 GETUPVAL                         R20 12
      276 DUPTABLE                         R21 K34 [{"Image", "Size", "tag"}]
      277 LOADK                            R22 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      278 SETTABLEKS                       R22 R21 K32 ["Image"]
      280 GETIMPORT                        R22 K28 [UDim2.fromScale]
      282 LOADN                            R23 2
      283 LOADN                            R24 1
      284 CALL                             R22 2 1
      285 SETTABLEKS                       R22 R21 K17 ["Size"]
      287 LOADK                            R22 K36 ["content-emphasis position-top-left"]
      288 SETTABLEKS                       R22 R21 K11 ["tag"]
      290 DUPTABLE                         R22 K38 [{"Gradient"}]
      291 GETUPVAL                         R24 6
      292 GETTABLEKS                       R23 R24 K10 ["createElement"]
      294 GETUPVAL                         R24 13
      295 DUPTABLE                         R25 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      296 GETIMPORT                        R26 K48 [Enum.HorizontalAlignment.Left]
      298 SETTABLEKS                       R26 R25 K39 ["side"]
      300 SETTABLEKS                       R6 R25 K40 ["isIndeterminate"]
      302 SETTABLEKS                       R8 R25 K41 ["rotation"]
      304 SETTABLEKS                       R5 R25 K42 ["progress"]
      306 SETTABLEKS                       R9 R25 K43 ["pulse"]
      308 CALL                             R23 2 1
      309 SETTABLEKS                       R23 R22 K37 ["Gradient"]
      311 CALL                             R19 3 1
      312 SETTABLEKS                       R19 R18 K32 ["Image"]
      314 CALL                             R15 3 1
      315 SETTABLEKS                       R15 R14 K23 ["LeftGradient"]
      317 GETUPVAL                         R16 6
      318 GETTABLEKS                       R15 R16 K10 ["createElement"]
      320 GETUPVAL                         R16 10
      321 DUPTABLE                         R17 K26 [{"Size", "tag", "testId"}]
      322 GETIMPORT                        R18 K28 [UDim2.fromScale]
      324 LOADK                            R19 K29 [0.5]
      325 LOADN                            R20 1
      326 CALL                             R18 2 1
      327 SETTABLEKS                       R18 R17 K17 ["Size"]
      329 LOADK                            R18 K49 ["clip position-top-center"]
      330 SETTABLEKS                       R18 R17 K11 ["tag"]
      332 LOADK                            R19 K50 ["%*--right-gradient"]
      333 GETTABLEKS                       R21 R1 K19 ["testId"]
      335 NAMECALL                         R19 R19 K22 ["format"]
      337 CALL                             R19 2 1
      338 MOVE                             R18 R19
      339 SETTABLEKS                       R18 R17 K19 ["testId"]
      341 DUPTABLE                         R18 K33 [{"Image"}]
      342 GETUPVAL                         R20 6
      343 GETTABLEKS                       R19 R20 K10 ["createElement"]
      345 GETUPVAL                         R20 12
      346 DUPTABLE                         R21 K52 [{"Image", "Size", "Position", "tag"}]
      347 LOADK                            R22 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      348 SETTABLEKS                       R22 R21 K32 ["Image"]
      350 GETIMPORT                        R22 K28 [UDim2.fromScale]
      352 LOADN                            R23 2
      353 LOADN                            R24 1
      354 CALL                             R22 2 1
      355 SETTABLEKS                       R22 R21 K17 ["Size"]
      357 GETIMPORT                        R22 K28 [UDim2.fromScale]
      359 LOADN                            R23 255
      360 LOADN                            R24 0
      361 CALL                             R22 2 1
      362 SETTABLEKS                       R22 R21 K51 ["Position"]
      364 LOADK                            R22 K53 ["content-emphasis"]
      365 SETTABLEKS                       R22 R21 K11 ["tag"]
      367 DUPTABLE                         R22 K38 [{"Gradient"}]
      368 GETUPVAL                         R24 6
      369 GETTABLEKS                       R23 R24 K10 ["createElement"]
      371 GETUPVAL                         R24 13
      372 DUPTABLE                         R25 K44 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      373 GETIMPORT                        R26 K55 [Enum.HorizontalAlignment.Right]
      375 SETTABLEKS                       R26 R25 K39 ["side"]
      377 SETTABLEKS                       R6 R25 K40 ["isIndeterminate"]
      379 SETTABLEKS                       R8 R25 K41 ["rotation"]
      381 SETTABLEKS                       R5 R25 K42 ["progress"]
      383 SETTABLEKS                       R9 R25 K43 ["pulse"]
      385 CALL                             R23 2 1
      386 SETTABLEKS                       R23 R22 K37 ["Gradient"]
      388 CALL                             R19 3 1
      389 SETTABLEKS                       R19 R18 K32 ["Image"]
      391 CALL                             R15 3 1
      392 SETTABLEKS                       R15 R14 K24 ["RightGradient"]
      394 GETTABLEKS                       R17 R4 K8 ["circle"]
      396 GETTABLEKS                       R16 R17 K59 ["labelFont"]
      398 JUMPIFNOT                        R16 ; [+32]
      399 JUMPIF                           R6 ; [+31]
      400 GETUPVAL                         R16 6
      401 GETTABLEKS                       R15 R16 K10 ["createElement"]
      403 GETUPVAL                         R16 14
      404 DUPTABLE                         R17 K62 [{"Text", "fontStyle", "tag", "testId"}]
      405 DUPCLOSURE                       R20 K63 [PROTO_6]
      406 NAMECALL                         R18 R5 K64 ["map"]
      408 CALL                             R18 2 1
      409 SETTABLEKS                       R18 R17 K60 ["Text"]
      411 GETTABLEKS                       R19 R4 K8 ["circle"]
      413 GETTABLEKS                       R18 R19 K59 ["labelFont"]
      415 SETTABLEKS                       R18 R17 K61 ["fontStyle"]
      417 LOADK                            R18 K65 ["anchor-center-center position-center-center"]
      418 SETTABLEKS                       R18 R17 K11 ["tag"]
      420 LOADK                            R19 K66 ["%*--label"]
      421 GETTABLEKS                       R21 R1 K19 ["testId"]
      423 NAMECALL                         R19 R19 K22 ["format"]
      425 CALL                             R19 2 1
      426 MOVE                             R18 R19
      427 SETTABLEKS                       R18 R17 K19 ["testId"]
      429 CALL                             R15 2 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R15
      432 SETTABLEKS                       R15 R14 K57 ["ProgressLabel"]
      434 CALL                             R11 3 -1
      435 RETURN                           R11 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Image"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Providers"]
       46 GETTABLEKS                       R9 R10 K14 ["Style"]
       48 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R11 R0 K13 ["Providers"]
       55 GETTABLEKS                       R10 R11 K16 ["Preferences"]
       57 GETTABLEKS                       R9 R10 K17 ["usePreferences"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R11 R12 K4 ["Parent"]
       66 GETTABLEKS                       R10 R11 K18 ["useProgressBinding"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R12 R0 K19 ["Utility"]
       73 GETTABLEKS                       R11 R12 K20 ["usePulseBinding"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R13 R0 K19 ["Utility"]
       80 GETTABLEKS                       R12 R13 K21 ["useRotation"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R14 R0 K19 ["Utility"]
       87 GETTABLEKS                       R13 R14 K22 ["withCommonProps"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETIMPORT                        R16 K1 [script]
       94 GETTABLEKS                       R15 R16 K4 ["Parent"]
       96 GETTABLEKS                       R14 R15 K23 ["useProgressVariants"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R16 R0 K19 ["Utility"]
      103 GETTABLEKS                       R15 R16 K24 ["withDefaults"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETIMPORT                        R18 K1 [script]
      110 GETTABLEKS                       R17 R18 K4 ["Parent"]
      112 GETTABLEKS                       R16 R17 K25 ["constants"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R18 R0 K26 ["Enums"]
      119 GETTABLEKS                       R17 R18 K27 ["ProgressShape"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R19 R0 K26 ["Enums"]
      126 GETTABLEKS                       R18 R19 K28 ["ProgressSize"]
      128 CALL                             R17 1 1
      129 DUPTABLE                         R18 K30 [{"size"}]
      130 GETTABLEKS                       R19 R17 K31 ["Medium"]
      132 SETTABLEKS                       R19 R18 K29 ["size"]
      134 DUPCLOSURE                       R19 K32 [PROTO_5]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 DUPCLOSURE                       R20 K33 [PROTO_7]
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R5
      154 RETURN                           R20 1
