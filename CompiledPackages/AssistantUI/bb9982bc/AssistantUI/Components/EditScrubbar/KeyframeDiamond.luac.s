PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R1 K1 ["Color"]
        9 GETTABLEKS                       R4 R4 K2 ["Content"]
       11 GETTABLEKS                       R4 R4 K3 ["Muted"]
       13 GETTABLEKS                       R4 R4 K4 ["Color3"]
       15 MOVE                             R5 R2
       16 JUMPIFNOT                        R5 ; [+3]
       17 GETTABLEKS                       R6 R0 K5 ["isSelected"]
       19 NOT                              R5 R6
       20 GETTABLEKS                       R7 R0 K5 ["isSelected"]
       22 JUMPIFNOT                        R7 ; [+2]
       23 LOADN                            R6 2
       24 JUMP                             ; [+1]
       25 LOADN                            R6 1
       26 GETUPVAL                         R7 2
       27 LOADK                            R8 K6 ["Frame"]
       28 NEWTABLE                         R9 16 0
       30 GETIMPORT                        R10 K9 [UDim2.fromOffset]
       32 LOADN                            R11 16
       33 LOADN                            R12 16
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K10 ["Size"]
       37 GETIMPORT                        R10 K12 [UDim2.new]
       39 GETTABLEKS                       R11 R0 K13 ["xRatio"]
       41 LOADN                            R12 0
       42 LOADN                            R13 0
       43 GETTABLEKS                       R14 R0 K14 ["yCenter"]
       45 CALL                             R10 4 1
       46 SETTABLEKS                       R10 R9 K15 ["Position"]
       48 GETIMPORT                        R10 K17 [Vector2.new]
       50 LOADK                            R11 K18 [0.5]
       51 LOADK                            R12 K18 [0.5]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K19 ["AnchorPoint"]
       55 LOADN                            R10 1
       56 SETTABLEKS                       R10 R9 K20 ["BackgroundTransparency"]
       58 GETTABLEKS                       R10 R0 K21 ["isClickable"]
       60 SETTABLEKS                       R10 R9 K22 ["Active"]
       62 LOADN                            R10 2
       63 SETTABLEKS                       R10 R9 K23 ["ZIndex"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K24 ["Event"]
       68 GETTABLEKS                       R10 R10 K25 ["InputBegan"]
       70 GETTABLEKS                       R12 R0 K26 ["onInputBegan"]
       72 JUMPIFNOT                        R12 ; [+3]
       73 NEWCLOSURE                       R11 P0
       74 CAPTURE                          VAL R0
       75 JUMP                             ; [+1]
       76 LOADNIL                          R11
       77 SETTABLE                         R11 R9 R10
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R10 R10 K24 ["Event"]
       81 GETTABLEKS                       R10 R10 K27 ["MouseEnter"]
       83 NEWCLOSURE                       R11 P1
       84 CAPTURE                          VAL R3
       85 SETTABLE                         R11 R9 R10
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R10 R10 K24 ["Event"]
       89 GETTABLEKS                       R10 R10 K28 ["MouseLeave"]
       91 NEWCLOSURE                       R11 P2
       92 CAPTURE                          VAL R3
       93 SETTABLE                         R11 R9 R10
       94 DUPTABLE                         R10 K30 [{"Diamond"}]
       95 GETUPVAL                         R11 2
       96 GETUPVAL                         R12 3
       97 DUPTABLE                         R13 K38 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["Rotation"] = 45, ["backgroundStyle"], ["BorderSizePixel"], ["BorderColor3"]}]
       98 GETIMPORT                        R14 K9 [UDim2.fromOffset]
      100 LOADN                            R15 8
      101 LOADN                            R16 8
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K10 ["Size"]
      105 DUPTABLE                         R14 K40 [{"Color3", "Transparency"}]
      106 JUMPIFNOT                        R5 ; [+11]
      107 GETIMPORT                        R17 K41 [Color3.new]
      109 LOADN                            R18 1
      110 LOADN                            R19 1
      111 LOADN                            R20 1
      112 CALL                             R17 3 1
      113 LOADK                            R18 K42 [0.25]
      114 NAMECALL                         R15 R4 K43 ["Lerp"]
      116 CALL                             R15 3 1
      117 JUMP                             ; [+1]
      118 MOVE                             R15 R4
      119 SETTABLEKS                       R15 R14 K4 ["Color3"]
      121 GETTABLEKS                       R16 R0 K21 ["isClickable"]
      123 JUMPIFNOT                        R16 ; [+2]
      124 LOADN                            R15 0
      125 JUMP                             ; [+1]
      126 LOADK                            R15 K18 [0.5]
      127 SETTABLEKS                       R15 R14 K39 ["Transparency"]
      129 SETTABLEKS                       R14 R13 K35 ["backgroundStyle"]
      131 SETTABLEKS                       R6 R13 K36 ["BorderSizePixel"]
      133 GETTABLEKS                       R15 R0 K5 ["isSelected"]
      135 JUMPIFNOT                        R15 ; [+9]
      136 GETTABLEKS                       R14 R1 K1 ["Color"]
      138 GETTABLEKS                       R14 R14 K2 ["Content"]
      140 GETTABLEKS                       R14 R14 K44 ["Emphasis"]
      142 GETTABLEKS                       R14 R14 K4 ["Color3"]
      144 JUMP                             ; [+8]
      145 GETTABLEKS                       R14 R1 K1 ["Color"]
      147 GETTABLEKS                       R14 R14 K2 ["Content"]
      149 GETTABLEKS                       R14 R14 K3 ["Muted"]
      151 GETTABLEKS                       R14 R14 K4 ["Color3"]
      153 SETTABLEKS                       R14 R13 K37 ["BorderColor3"]
      155 CALL                             R11 2 1
      156 SETTABLEKS                       R11 R10 K29 ["Diamond"]
      158 CALL                             R7 3 -1
      159 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["View"]
       21 GETTABLEKS                       R5 R2 K10 ["Hooks"]
       23 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       25 GETTABLEKS                       R6 R3 K12 ["createElement"]
       27 DUPCLOSURE                       R7 K13 [PROTO_3]
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R4
       32 RETURN                           R7 1
