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
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K9 ["useContext"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K10 ["Context"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 2
       38 LOADK                            R5 K11 ["Frame"]
       39 DUPTABLE                         R6 K17 [{["ZIndex"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       40 GETTABLEKS                       R7 R0 K12 ["ZIndex"]
       42 SETTABLEKS                       R7 R6 K12 ["ZIndex"]
       44 GETTABLEKS                       R7 R0 K13 ["Position"]
       46 SETTABLEKS                       R7 R6 K13 ["Position"]
       48 GETTABLEKS                       R7 R0 K14 ["Size"]
       50 SETTABLEKS                       R7 R6 K14 ["Size"]
       52 DUPTABLE                         R7 K20 [{"LeftGradient", "RightGradient"}]
       53 GETUPVAL                         R8 2
       54 LOADK                            R9 K11 ["Frame"]
       55 DUPTABLE                         R10 K23 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True}]
       56 GETIMPORT                        R11 K26 [UDim2.fromScale]
       58 LOADK                            R12 K8 [0.5]
       59 LOADN                            R13 1
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K14 ["Size"]
       63 DUPTABLE                         R11 K28 [{"Image"}]
       64 GETUPVAL                         R12 2
       65 LOADK                            R13 K29 ["ImageLabel"]
       66 NEWTABLE                         R14 4 0
       68 GETUPVAL                         R15 3
       69 GETTABLEKS                       R15 R15 K30 ["circleOutline"]
       71 GETTABLEKS                       R16 R3 K31 ["theme"]
       73 CALL                             R15 1 1
       74 SETTABLEKS                       R15 R14 K27 ["Image"]
       76 LOADN                            R15 1
       77 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
       79 GETIMPORT                        R15 K26 [UDim2.fromScale]
       81 LOADN                            R16 2
       82 LOADN                            R17 1
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K14 ["Size"]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K32 ["Tag"]
       89 SETTABLE                         R1 R14 R15
       90 DUPTABLE                         R15 K34 [{"Gradient"}]
       91 GETUPVAL                         R16 2
       92 LOADK                            R17 K35 ["UIGradient"]
       93 DUPTABLE                         R18 K38 [{"Transparency", "Rotation"}]
       94 SETTABLEKS                       R2 R18 K36 ["Transparency"]
       96 GETTABLEKS                       R19 R0 K39 ["progress"]
       98 DUPCLOSURE                       R21 K40 [PROTO_0]
       99 NAMECALL                         R19 R19 K41 ["map"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K37 ["Rotation"]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K33 ["Gradient"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K27 ["Image"]
      110 CALL                             R8 3 1
      111 SETTABLEKS                       R8 R7 K18 ["LeftGradient"]
      113 GETUPVAL                         R8 2
      114 LOADK                            R9 K11 ["Frame"]
      115 DUPTABLE                         R10 K42 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Position"]}]
      116 GETIMPORT                        R11 K26 [UDim2.fromScale]
      118 LOADK                            R12 K8 [0.5]
      119 LOADN                            R13 1
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K14 ["Size"]
      123 GETIMPORT                        R11 K26 [UDim2.fromScale]
      125 LOADK                            R12 K8 [0.5]
      126 LOADN                            R13 0
      127 CALL                             R11 2 1
      128 SETTABLEKS                       R11 R10 K13 ["Position"]
      130 DUPTABLE                         R11 K28 [{"Image"}]
      131 GETUPVAL                         R12 2
      132 LOADK                            R13 K29 ["ImageLabel"]
      133 NEWTABLE                         R14 8 0
      135 GETUPVAL                         R15 3
      136 GETTABLEKS                       R15 R15 K30 ["circleOutline"]
      138 GETTABLEKS                       R16 R3 K31 ["theme"]
      140 CALL                             R15 1 1
      141 SETTABLEKS                       R15 R14 K27 ["Image"]
      143 LOADN                            R15 1
      144 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      146 GETIMPORT                        R15 K26 [UDim2.fromScale]
      148 LOADN                            R16 2
      149 LOADN                            R17 1
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K14 ["Size"]
      153 GETIMPORT                        R15 K26 [UDim2.fromScale]
      155 LOADN                            R16 -1
      156 LOADN                            R17 0
      157 CALL                             R15 2 1
      158 SETTABLEKS                       R15 R14 K13 ["Position"]
      160 GETUPVAL                         R15 0
      161 GETTABLEKS                       R15 R15 K32 ["Tag"]
      163 SETTABLE                         R1 R14 R15
      164 DUPTABLE                         R15 K34 [{"Gradient"}]
      165 GETUPVAL                         R16 2
      166 LOADK                            R17 K35 ["UIGradient"]
      167 DUPTABLE                         R18 K38 [{"Transparency", "Rotation"}]
      168 SETTABLEKS                       R2 R18 K36 ["Transparency"]
      170 GETTABLEKS                       R19 R0 K39 ["progress"]
      172 DUPCLOSURE                       R21 K43 [PROTO_1]
      173 NAMECALL                         R19 R19 K41 ["map"]
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K37 ["Rotation"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K33 ["Gradient"]
      181 CALL                             R12 3 1
      182 SETTABLEKS                       R12 R11 K27 ["Image"]
      184 CALL                             R8 3 1
      185 SETTABLEKS                       R8 R7 K19 ["RightGradient"]
      187 CALL                             R4 3 -1
      188 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageUrl"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["ThemeContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K13 ["createElement"]
       32 DUPCLOSURE                       R5 K14 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
