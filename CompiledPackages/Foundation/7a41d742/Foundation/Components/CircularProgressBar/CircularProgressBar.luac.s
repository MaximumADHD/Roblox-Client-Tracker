PROTO_0:
        0 MULK                             R2 R0 K0 [360]
        1 LOADN                            R3 180
        2 LOADN                            R4 104
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R1 K3 [math.clamp]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_1:
        0 MULK                             R2 R0 K0 [360]
        1 LOADN                            R3 0
        2 LOADN                            R4 180
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R1 K3 [math.clamp]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETIMPORT                        R4 K2 [NumberSequence.new]
        8 NEWTABLE                         R5 0 4
       10 GETIMPORT                        R6 K4 [NumberSequenceKeypoint.new]
       12 LOADN                            R7 0
       13 GETTABLEKS                       R8 R3 K5 ["Color"]
       15 GETTABLEKS                       R8 R8 K6 ["Content"]
       17 GETTABLEKS                       R8 R8 K7 ["Emphasis"]
       19 GETTABLEKS                       R8 R8 K8 ["Transparency"]
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K4 [NumberSequenceKeypoint.new]
       24 LOADK                            R8 K9 [0.4999]
       25 GETTABLEKS                       R9 R3 K5 ["Color"]
       27 GETTABLEKS                       R9 R9 K6 ["Content"]
       29 GETTABLEKS                       R9 R9 K7 ["Emphasis"]
       31 GETTABLEKS                       R9 R9 K8 ["Transparency"]
       33 CALL                             R7 2 1
       34 GETIMPORT                        R8 K4 [NumberSequenceKeypoint.new]
       36 LOADK                            R9 K10 [0.5]
       37 GETTABLEKS                       R10 R3 K5 ["Color"]
       39 GETTABLEKS                       R10 R10 K6 ["Content"]
       41 GETTABLEKS                       R10 R10 K11 ["Muted"]
       43 GETTABLEKS                       R10 R10 K8 ["Transparency"]
       45 CALL                             R8 2 1
       46 GETIMPORT                        R9 K4 [NumberSequenceKeypoint.new]
       48 LOADN                            R10 1
       49 GETTABLEKS                       R11 R3 K5 ["Color"]
       51 GETTABLEKS                       R11 R11 K6 ["Content"]
       53 GETTABLEKS                       R11 R11 K11 ["Muted"]
       55 GETTABLEKS                       R11 R11 K8 ["Transparency"]
       57 CALL                             R9 2 -1
       58 SETLIST                          R5 R6 -1 [1]
       60 CALL                             R4 1 1
       61 GETIMPORT                        R5 K13 [ColorSequence.new]
       63 NEWTABLE                         R6 0 4
       65 GETIMPORT                        R7 K15 [ColorSequenceKeypoint.new]
       67 LOADN                            R8 0
       68 GETTABLEKS                       R9 R3 K5 ["Color"]
       70 GETTABLEKS                       R9 R9 K6 ["Content"]
       72 GETTABLEKS                       R9 R9 K7 ["Emphasis"]
       74 GETTABLEKS                       R9 R9 K16 ["Color3"]
       76 CALL                             R7 2 1
       77 GETIMPORT                        R8 K15 [ColorSequenceKeypoint.new]
       79 LOADK                            R9 K9 [0.4999]
       80 GETTABLEKS                       R10 R3 K5 ["Color"]
       82 GETTABLEKS                       R10 R10 K6 ["Content"]
       84 GETTABLEKS                       R10 R10 K7 ["Emphasis"]
       86 GETTABLEKS                       R10 R10 K16 ["Color3"]
       88 CALL                             R8 2 1
       89 GETIMPORT                        R9 K15 [ColorSequenceKeypoint.new]
       91 LOADK                            R10 K10 [0.5]
       92 GETTABLEKS                       R11 R3 K5 ["Color"]
       94 GETTABLEKS                       R11 R11 K6 ["Content"]
       96 GETTABLEKS                       R11 R11 K11 ["Muted"]
       98 GETTABLEKS                       R11 R11 K16 ["Color3"]
      100 CALL                             R9 2 1
      101 GETIMPORT                        R10 K15 [ColorSequenceKeypoint.new]
      103 LOADN                            R11 1
      104 GETTABLEKS                       R12 R3 K5 ["Color"]
      106 GETTABLEKS                       R12 R12 K6 ["Content"]
      108 GETTABLEKS                       R12 R12 K11 ["Muted"]
      110 GETTABLEKS                       R12 R12 K16 ["Color3"]
      112 CALL                             R10 2 -1
      113 SETLIST                          R6 R7 -1 [1]
      115 CALL                             R5 1 1
      116 GETUPVAL                         R6 3
      117 GETTABLEKS                       R6 R6 K17 ["createElement"]
      119 GETUPVAL                         R7 4
      120 GETUPVAL                         R8 5
      121 MOVE                             R9 R2
      122 DUPTABLE                         R10 K20 [{"tag", "ref"}]
      123 LOADK                            R11 K21 ["size-full-full"]
      124 SETTABLEKS                       R11 R10 K18 ["tag"]
      126 SETTABLEKS                       R1 R10 K19 ["ref"]
      128 CALL                             R8 2 1
      129 DUPTABLE                         R9 K24 [{"LeftGradient", "RightGradient"}]
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K17 ["createElement"]
      133 GETUPVAL                         R11 4
      134 DUPTABLE                         R12 K26 [{"Size", "tag"}]
      135 GETIMPORT                        R13 K29 [UDim2.fromScale]
      137 LOADK                            R14 K10 [0.5]
      138 LOADN                            R15 1
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K25 ["Size"]
      142 LOADK                            R13 K30 ["position-top-left clip"]
      143 SETTABLEKS                       R13 R12 K18 ["tag"]
      145 DUPTABLE                         R13 K32 [{"Image"}]
      146 GETUPVAL                         R14 3
      147 GETTABLEKS                       R14 R14 K17 ["createElement"]
      149 GETUPVAL                         R15 6
      150 DUPTABLE                         R16 K34 [{"Image", "Size", "tag", "testId"}]
      151 LOADK                            R17 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      152 SETTABLEKS                       R17 R16 K31 ["Image"]
      154 GETIMPORT                        R17 K29 [UDim2.fromScale]
      156 LOADN                            R18 2
      157 LOADN                            R19 1
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K25 ["Size"]
      161 LOADK                            R17 K36 ["content-emphasis position-top-left"]
      162 SETTABLEKS                       R17 R16 K18 ["tag"]
      164 LOADK                            R18 K37 ["%*--left-gradient"]
      165 GETTABLEKS                       R20 R2 K33 ["testId"]
      167 NAMECALL                         R18 R18 K38 ["format"]
      169 CALL                             R18 2 1
      170 MOVE                             R17 R18
      171 SETTABLEKS                       R17 R16 K33 ["testId"]
      173 DUPTABLE                         R17 K40 [{"Gradient"}]
      174 GETUPVAL                         R18 3
      175 GETTABLEKS                       R18 R18 K17 ["createElement"]
      177 LOADK                            R19 K41 ["UIGradient"]
      178 DUPTABLE                         R20 K43 [{"Transparency", "Color", "Rotation"}]
      179 SETTABLEKS                       R4 R20 K8 ["Transparency"]
      181 SETTABLEKS                       R5 R20 K5 ["Color"]
      183 GETTABLEKS                       R21 R2 K44 ["progress"]
      185 DUPCLOSURE                       R23 K45 [PROTO_0]
      186 NAMECALL                         R21 R21 K46 ["map"]
      188 CALL                             R21 2 1
      189 SETTABLEKS                       R21 R20 K42 ["Rotation"]
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K39 ["Gradient"]
      194 CALL                             R14 3 1
      195 SETTABLEKS                       R14 R13 K31 ["Image"]
      197 CALL                             R10 3 1
      198 SETTABLEKS                       R10 R9 K22 ["LeftGradient"]
      200 GETUPVAL                         R10 3
      201 GETTABLEKS                       R10 R10 K17 ["createElement"]
      203 GETUPVAL                         R11 4
      204 DUPTABLE                         R12 K26 [{"Size", "tag"}]
      205 GETIMPORT                        R13 K29 [UDim2.fromScale]
      207 LOADK                            R14 K10 [0.5]
      208 LOADN                            R15 1
      209 CALL                             R13 2 1
      210 SETTABLEKS                       R13 R12 K25 ["Size"]
      212 LOADK                            R13 K47 ["clip position-top-center"]
      213 SETTABLEKS                       R13 R12 K18 ["tag"]
      215 DUPTABLE                         R13 K32 [{"Image"}]
      216 GETUPVAL                         R14 3
      217 GETTABLEKS                       R14 R14 K17 ["createElement"]
      219 GETUPVAL                         R15 6
      220 DUPTABLE                         R16 K49 [{"Image", "Size", "Position", "tag", "testId"}]
      221 LOADK                            R17 K35 ["rbxasset://textures/ui/Controls/RadialFill.png"]
      222 SETTABLEKS                       R17 R16 K31 ["Image"]
      224 GETIMPORT                        R17 K29 [UDim2.fromScale]
      226 LOADN                            R18 2
      227 LOADN                            R19 1
      228 CALL                             R17 2 1
      229 SETTABLEKS                       R17 R16 K25 ["Size"]
      231 GETIMPORT                        R17 K29 [UDim2.fromScale]
      233 LOADN                            R18 255
      234 LOADN                            R19 0
      235 CALL                             R17 2 1
      236 SETTABLEKS                       R17 R16 K48 ["Position"]
      238 LOADK                            R17 K50 ["content-emphasis"]
      239 SETTABLEKS                       R17 R16 K18 ["tag"]
      241 LOADK                            R18 K51 ["%*--right-gradient"]
      242 GETTABLEKS                       R20 R2 K33 ["testId"]
      244 NAMECALL                         R18 R18 K38 ["format"]
      246 CALL                             R18 2 1
      247 MOVE                             R17 R18
      248 SETTABLEKS                       R17 R16 K33 ["testId"]
      250 DUPTABLE                         R17 K40 [{"Gradient"}]
      251 GETUPVAL                         R18 3
      252 GETTABLEKS                       R18 R18 K17 ["createElement"]
      254 LOADK                            R19 K41 ["UIGradient"]
      255 DUPTABLE                         R20 K43 [{"Transparency", "Color", "Rotation"}]
      256 SETTABLEKS                       R4 R20 K8 ["Transparency"]
      258 SETTABLEKS                       R5 R20 K5 ["Color"]
      260 GETTABLEKS                       R21 R2 K44 ["progress"]
      262 DUPCLOSURE                       R23 K52 [PROTO_1]
      263 NAMECALL                         R21 R21 K46 ["map"]
      265 CALL                             R21 2 1
      266 SETTABLEKS                       R21 R20 K42 ["Rotation"]
      268 CALL                             R18 2 1
      269 SETTABLEKS                       R18 R17 K39 ["Gradient"]
      271 CALL                             R14 3 1
      272 SETTABLEKS                       R14 R13 K31 ["Image"]
      274 CALL                             R10 3 1
      275 SETTABLEKS                       R10 R9 K23 ["RightGradient"]
      277 CALL                             R6 3 -1
      278 RETURN                           R6 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R7 K13 ["Style"]
       41 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R8 K16 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K15 ["Utility"]
       55 GETTABLEKS                       R9 R9 K17 ["withDefaults"]
       57 CALL                             R8 1 1
       58 DUPTABLE                         R9 K19 [{"testId"}]
       59 LOADK                            R10 K20 ["--foundation-circular-progress-bar"]
       60 SETTABLEKS                       R10 R9 K18 ["testId"]
       62 DUPCLOSURE                       R10 K21 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 GETTABLEKS                       R11 R2 K22 ["memo"]
       72 GETTABLEKS                       R12 R2 K23 ["forwardRef"]
       74 MOVE                             R13 R10
       75 CALL                             R12 1 -1
       76 CALL                             R11 -1 -1
       77 RETURN                           R11 -1
