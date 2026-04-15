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
        0 GETTABLEKS                       R2 R0 K1 ["imageTags"]
        2 ORK                              R1 R2 K0 ["Explorer-Content-Standard"]
        3 GETIMPORT                        R2 K4 [NumberSequence.new]
        5 NEWTABLE                         R3 0 4
        7 GETIMPORT                        R4 K6 [NumberSequenceKeypoint.new]
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K6 [NumberSequenceKeypoint.new]
       14 LOADK                            R6 K7 [0.4999]
       15 LOADN                            R7 0
       16 CALL                             R5 2 1
       17 GETIMPORT                        R6 K6 [NumberSequenceKeypoint.new]
       19 LOADK                            R7 K8 [0.5]
       20 LOADN                            R8 1
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K6 [NumberSequenceKeypoint.new]
       24 LOADN                            R8 1
       25 LOADN                            R9 1
       26 CALL                             R7 2 -1
       27 SETLIST                          R3 R4 -1 [1]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K9 ["useContext"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K10 ["Context"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 2
       38 LOADK                            R5 K11 ["Frame"]
       39 DUPTABLE                         R6 K16 [{"ZIndex", "Position", "Size", "BackgroundTransparency"}]
       40 GETTABLEKS                       R7 R0 K12 ["ZIndex"]
       42 SETTABLEKS                       R7 R6 K12 ["ZIndex"]
       44 GETTABLEKS                       R7 R0 K13 ["Position"]
       46 SETTABLEKS                       R7 R6 K13 ["Position"]
       48 GETTABLEKS                       R7 R0 K14 ["Size"]
       50 SETTABLEKS                       R7 R6 K14 ["Size"]
       52 LOADN                            R7 1
       53 SETTABLEKS                       R7 R6 K15 ["BackgroundTransparency"]
       55 DUPTABLE                         R7 K19 [{"LeftGradient", "RightGradient"}]
       56 GETUPVAL                         R8 2
       57 LOADK                            R9 K11 ["Frame"]
       58 DUPTABLE                         R10 K21 [{"Size", "BackgroundTransparency", "ClipsDescendants"}]
       59 GETIMPORT                        R11 K24 [UDim2.fromScale]
       61 LOADK                            R12 K8 [0.5]
       62 LOADN                            R13 1
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K14 ["Size"]
       66 LOADN                            R11 1
       67 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       69 LOADB                            R11 1
       70 SETTABLEKS                       R11 R10 K20 ["ClipsDescendants"]
       72 DUPTABLE                         R11 K26 [{"Image"}]
       73 GETUPVAL                         R12 2
       74 LOADK                            R13 K27 ["ImageLabel"]
       75 NEWTABLE                         R14 4 0
       77 GETUPVAL                         R16 3
       78 GETTABLEKS                       R15 R16 K28 ["circleOutline"]
       80 GETTABLEKS                       R16 R3 K29 ["theme"]
       82 CALL                             R15 1 1
       83 SETTABLEKS                       R15 R14 K25 ["Image"]
       85 LOADN                            R15 1
       86 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
       88 GETIMPORT                        R15 K24 [UDim2.fromScale]
       90 LOADN                            R16 2
       91 LOADN                            R17 1
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K14 ["Size"]
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R15 R16 K30 ["Tag"]
       98 SETTABLE                         R1 R14 R15
       99 DUPTABLE                         R15 K32 [{"Gradient"}]
      100 GETUPVAL                         R16 2
      101 LOADK                            R17 K33 ["UIGradient"]
      102 DUPTABLE                         R18 K36 [{"Transparency", "Rotation"}]
      103 SETTABLEKS                       R2 R18 K34 ["Transparency"]
      105 GETTABLEKS                       R19 R0 K37 ["progress"]
      107 DUPCLOSURE                       R21 K38 [PROTO_0]
      108 NAMECALL                         R19 R19 K39 ["map"]
      110 CALL                             R19 2 1
      111 SETTABLEKS                       R19 R18 K35 ["Rotation"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K31 ["Gradient"]
      116 CALL                             R12 3 1
      117 SETTABLEKS                       R12 R11 K25 ["Image"]
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K17 ["LeftGradient"]
      122 GETUPVAL                         R8 2
      123 LOADK                            R9 K11 ["Frame"]
      124 DUPTABLE                         R10 K40 [{"Size", "BackgroundTransparency", "ClipsDescendants", "Position"}]
      125 GETIMPORT                        R11 K24 [UDim2.fromScale]
      127 LOADK                            R12 K8 [0.5]
      128 LOADN                            R13 1
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K14 ["Size"]
      132 LOADN                            R11 1
      133 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
      135 LOADB                            R11 1
      136 SETTABLEKS                       R11 R10 K20 ["ClipsDescendants"]
      138 GETIMPORT                        R11 K24 [UDim2.fromScale]
      140 LOADK                            R12 K8 [0.5]
      141 LOADN                            R13 0
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K13 ["Position"]
      145 DUPTABLE                         R11 K26 [{"Image"}]
      146 GETUPVAL                         R12 2
      147 LOADK                            R13 K27 ["ImageLabel"]
      148 NEWTABLE                         R14 8 0
      150 GETUPVAL                         R16 3
      151 GETTABLEKS                       R15 R16 K28 ["circleOutline"]
      153 GETTABLEKS                       R16 R3 K29 ["theme"]
      155 CALL                             R15 1 1
      156 SETTABLEKS                       R15 R14 K25 ["Image"]
      158 LOADN                            R15 1
      159 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      161 GETIMPORT                        R15 K24 [UDim2.fromScale]
      163 LOADN                            R16 2
      164 LOADN                            R17 1
      165 CALL                             R15 2 1
      166 SETTABLEKS                       R15 R14 K14 ["Size"]
      168 GETIMPORT                        R15 K24 [UDim2.fromScale]
      170 LOADN                            R16 255
      171 LOADN                            R17 0
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K13 ["Position"]
      175 GETUPVAL                         R16 0
      176 GETTABLEKS                       R15 R16 K30 ["Tag"]
      178 SETTABLE                         R1 R14 R15
      179 DUPTABLE                         R15 K32 [{"Gradient"}]
      180 GETUPVAL                         R16 2
      181 LOADK                            R17 K33 ["UIGradient"]
      182 DUPTABLE                         R18 K36 [{"Transparency", "Rotation"}]
      183 SETTABLEKS                       R2 R18 K34 ["Transparency"]
      185 GETTABLEKS                       R19 R0 K37 ["progress"]
      187 DUPCLOSURE                       R21 K41 [PROTO_1]
      188 NAMECALL                         R19 R19 K39 ["map"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K35 ["Rotation"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K31 ["Gradient"]
      196 CALL                             R12 3 1
      197 SETTABLEKS                       R12 R11 K25 ["Image"]
      199 CALL                             R8 3 1
      200 SETTABLEKS                       R8 R7 K18 ["RightGradient"]
      202 CALL                             R4 3 -1
      203 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ImageUrl"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K12 ["ThemeContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K13 ["createElement"]
       32 DUPCLOSURE                       R5 K14 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
