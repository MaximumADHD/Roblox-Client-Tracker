PROTO_0:
        0 MULK                             R2 R0 K0 [360]
        1 LOADN                            R3 180
        2 LOADN                            R4 360
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
      122 DUPTABLE                         R10 K21 [{["tag"] = "size-full-full", ["ref"]}]
      123 SETTABLEKS                       R1 R10 K20 ["ref"]
      125 CALL                             R8 2 1
      126 DUPTABLE                         R9 K24 [{"LeftGradient", "RightGradient"}]
      127 GETUPVAL                         R10 3
      128 GETTABLEKS                       R10 R10 K17 ["createElement"]
      130 GETUPVAL                         R11 4
      131 DUPTABLE                         R12 K27 [{["Size"], ["tag"] = "position-top-left clip"}]
      132 GETIMPORT                        R13 K30 [UDim2.fromScale]
      134 LOADK                            R14 K10 [0.5]
      135 LOADN                            R15 1
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K25 ["Size"]
      139 DUPTABLE                         R13 K32 [{"Image"}]
      140 GETUPVAL                         R14 3
      141 GETTABLEKS                       R14 R14 K17 ["createElement"]
      143 GETUPVAL                         R15 6
      144 DUPTABLE                         R16 K36 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["tag"] = "position-top-left content-emphasis", ["testId"]}]
      145 GETIMPORT                        R17 K30 [UDim2.fromScale]
      147 LOADN                            R18 2
      148 LOADN                            R19 1
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K25 ["Size"]
      152 LOADK                            R18 K37 ["%*--left-gradient"]
      153 GETTABLEKS                       R20 R2 K35 ["testId"]
      155 NAMECALL                         R18 R18 K38 ["format"]
      157 CALL                             R18 2 1
      158 MOVE                             R17 R18
      159 SETTABLEKS                       R17 R16 K35 ["testId"]
      161 DUPTABLE                         R17 K40 [{"Gradient"}]
      162 GETUPVAL                         R18 3
      163 GETTABLEKS                       R18 R18 K17 ["createElement"]
      165 LOADK                            R19 K41 ["UIGradient"]
      166 DUPTABLE                         R20 K43 [{"Transparency", "Color", "Rotation"}]
      167 SETTABLEKS                       R4 R20 K8 ["Transparency"]
      169 SETTABLEKS                       R5 R20 K5 ["Color"]
      171 GETTABLEKS                       R21 R2 K44 ["progress"]
      173 DUPCLOSURE                       R23 K45 [PROTO_0]
      174 NAMECALL                         R21 R21 K46 ["map"]
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K42 ["Rotation"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K39 ["Gradient"]
      182 CALL                             R14 3 1
      183 SETTABLEKS                       R14 R13 K31 ["Image"]
      185 CALL                             R10 3 1
      186 SETTABLEKS                       R10 R9 K22 ["LeftGradient"]
      188 GETUPVAL                         R10 3
      189 GETTABLEKS                       R10 R10 K17 ["createElement"]
      191 GETUPVAL                         R11 4
      192 DUPTABLE                         R12 K48 [{["Size"], ["tag"] = "position-top-center clip"}]
      193 GETIMPORT                        R13 K30 [UDim2.fromScale]
      195 LOADK                            R14 K10 [0.5]
      196 LOADN                            R15 1
      197 CALL                             R13 2 1
      198 SETTABLEKS                       R13 R12 K25 ["Size"]
      200 DUPTABLE                         R13 K32 [{"Image"}]
      201 GETUPVAL                         R14 3
      202 GETTABLEKS                       R14 R14 K17 ["createElement"]
      204 GETUPVAL                         R15 6
      205 DUPTABLE                         R16 K51 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["Position"], ["tag"] = "content-emphasis", ["testId"]}]
      206 GETIMPORT                        R17 K30 [UDim2.fromScale]
      208 LOADN                            R18 2
      209 LOADN                            R19 1
      210 CALL                             R17 2 1
      211 SETTABLEKS                       R17 R16 K25 ["Size"]
      213 GETIMPORT                        R17 K30 [UDim2.fromScale]
      215 LOADN                            R18 -1
      216 LOADN                            R19 0
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K49 ["Position"]
      220 LOADK                            R18 K52 ["%*--right-gradient"]
      221 GETTABLEKS                       R20 R2 K35 ["testId"]
      223 NAMECALL                         R18 R18 K38 ["format"]
      225 CALL                             R18 2 1
      226 MOVE                             R17 R18
      227 SETTABLEKS                       R17 R16 K35 ["testId"]
      229 DUPTABLE                         R17 K40 [{"Gradient"}]
      230 GETUPVAL                         R18 3
      231 GETTABLEKS                       R18 R18 K17 ["createElement"]
      233 LOADK                            R19 K41 ["UIGradient"]
      234 DUPTABLE                         R20 K43 [{"Transparency", "Color", "Rotation"}]
      235 SETTABLEKS                       R4 R20 K8 ["Transparency"]
      237 SETTABLEKS                       R5 R20 K5 ["Color"]
      239 GETTABLEKS                       R21 R2 K44 ["progress"]
      241 DUPCLOSURE                       R23 K53 [PROTO_1]
      242 NAMECALL                         R21 R21 K46 ["map"]
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K42 ["Rotation"]
      247 CALL                             R18 2 1
      248 SETTABLEKS                       R18 R17 K39 ["Gradient"]
      250 CALL                             R14 3 1
      251 SETTABLEKS                       R14 R13 K31 ["Image"]
      253 CALL                             R10 3 1
      254 SETTABLEKS                       R10 R9 K23 ["RightGradient"]
      256 CALL                             R6 3 -1
      257 RETURN                           R6 -1

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
       58 DUPTABLE                         R9 K20 [{["testId"] = "--foundation-circular-progress-bar"}]
       59 DUPCLOSURE                       R10 K21 [PROTO_2]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 GETTABLEKS                       R11 R2 K22 ["memo"]
       69 GETTABLEKS                       R12 R2 K23 ["forwardRef"]
       71 MOVE                             R13 R10
       72 CALL                             R12 1 -1
       73 CALL                             R11 -1 -1
       74 RETURN                           R11 -1
