PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["timelineTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Value"]
        8 GETTABLEKS                       R5 R1 K4 ["Width"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["ScaleType"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K7 ["SCALE_TYPE"]
       17 GETTABLEKS                       R9 R9 K8 ["Number"]
       19 JUMPIFEQ                         R7 R9 ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K9 ["TICK_LABEL_SIZE"]
       26 GETTABLEKS                       R10 R1 K10 ["TickWidthScale"]
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R12 R12 K11 ["TICK_LABEL_POSITION"]
       31 GETTABLE                         R11 R12 R7
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K12 ["createElement"]
       35 LOADK                            R13 K13 ["Frame"]
       36 DUPTABLE                         R14 K20 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       37 GETIMPORT                        R15 K23 [UDim2.new]
       39 LOADN                            R16 0
       40 MOVE                             R17 R5
       41 LOADN                            R18 0
       42 MOVE                             R19 R5
       43 CALL                             R15 4 1
       44 SETTABLEKS                       R15 R14 K14 ["Size"]
       46 SETTABLEKS                       R6 R14 K5 ["Position"]
       48 GETIMPORT                        R15 K25 [Vector2.new]
       50 LOADN                            R16 0
       51 LOADN                            R17 1
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       55 DUPTABLE                         R15 K29 [{"TimeLabel", "Tick", "Line"}]
       56 JUMPIFEQKS                       R4 K30 [""] ; [+41]
       58 GETUPVAL                         R16 1
       59 GETTABLEKS                       R16 R16 K12 ["createElement"]
       61 LOADK                            R17 K31 ["TextLabel"]
       62 DUPTABLE                         R18 K40 [{["Position"], ["Size"], ["AnchorPoint"], ["TextColor3"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["Text"], ["Rotation"] = -90}]
       63 SETTABLEKS                       R11 R18 K5 ["Position"]
       65 SETTABLEKS                       R9 R18 K14 ["Size"]
       67 GETIMPORT                        R19 K25 [Vector2.new]
       69 LOADK                            R20 K41 [0.5]
       70 LOADK                            R21 K41 [0.5]
       71 CALL                             R19 2 1
       72 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
       74 GETTABLEKS                       R19 R3 K42 ["textColor"]
       76 SETTABLEKS                       R19 R18 K32 ["TextColor3"]
       78 GETTABLEKS                       R19 R3 K43 ["textSize"]
       80 SETTABLEKS                       R19 R18 K33 ["TextSize"]
       82 GETIMPORT                        R19 K46 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R19 R18 K34 ["TextXAlignment"]
       86 GETIMPORT                        R19 K48 [Enum.TextYAlignment.Center]
       88 SETTABLEKS                       R19 R18 K35 ["TextYAlignment"]
       90 GETTABLEKS                       R19 R2 K49 ["font"]
       92 SETTABLEKS                       R19 R18 K36 ["Font"]
       94 SETTABLEKS                       R4 R18 K37 ["Text"]
       96 CALL                             R16 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R16
       99 SETTABLEKS                       R16 R15 K26 ["TimeLabel"]
      101 GETUPVAL                         R17 1
      102 GETTABLEKS                       R17 R17 K12 ["createElement"]
      104 LOADK                            R18 K13 ["Frame"]
      105 DUPTABLE                         R19 K52 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      106 GETIMPORT                        R20 K25 [Vector2.new]
      108 JUMPIFNOT                        R8 ; [+2]
      109 LOADN                            R21 1
      110 JUMP                             ; [+1]
      111 LOADN                            R21 0
      112 LOADN                            R22 0
      113 CALL                             R20 2 1
      114 SETTABLEKS                       R20 R19 K15 ["AnchorPoint"]
      116 GETIMPORT                        R20 K23 [UDim2.new]
      118 JUMPIFNOT                        R8 ; [+2]
      119 LOADN                            R21 1
      120 JUMP                             ; [+1]
      121 LOADN                            R21 0
      122 LOADN                            R22 0
      123 LOADN                            R23 1
      124 LOADN                            R24 0
      125 CALL                             R20 4 1
      126 SETTABLEKS                       R20 R19 K5 ["Position"]
      128 GETIMPORT                        R20 K23 [UDim2.new]
      130 MOVE                             R21 R10
      131 LOADN                            R22 0
      132 LOADN                            R23 0
      133 LOADN                            R24 1
      134 CALL                             R20 4 1
      135 SETTABLEKS                       R20 R19 K14 ["Size"]
      137 GETTABLEKS                       R20 R3 K53 ["lineColor"]
      139 SETTABLEKS                       R20 R19 K51 ["BackgroundColor3"]
      141 CALL                             R17 2 1
      142 ORK                              R16 R17 K50 []
      143 SETTABLEKS                       R16 R15 K27 ["Tick"]
      145 JUMPIFNOT                        R8 ; [+40]
      146 GETUPVAL                         R16 1
      147 GETTABLEKS                       R16 R16 K12 ["createElement"]
      149 LOADK                            R17 K13 ["Frame"]
      150 DUPTABLE                         R18 K54 [{["Position"], ["Size"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"]}]
      151 GETIMPORT                        R19 K23 [UDim2.new]
      153 LOADN                            R20 1
      154 LOADN                            R21 0
      155 LOADN                            R22 1
      156 LOADN                            R23 0
      157 CALL                             R19 4 1
      158 SETTABLEKS                       R19 R18 K5 ["Position"]
      160 GETIMPORT                        R19 K23 [UDim2.new]
      162 LOADN                            R20 50
      163 LOADN                            R21 0
      164 LOADN                            R22 0
      165 LOADN                            R23 1
      166 CALL                             R19 4 1
      167 SETTABLEKS                       R19 R18 K14 ["Size"]
      169 GETIMPORT                        R19 K25 [Vector2.new]
      171 LOADN                            R20 0
      172 LOADN                            R21 0
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
      176 GETTABLEKS                       R19 R3 K53 ["lineColor"]
      178 SETTABLEKS                       R19 R18 K51 ["BackgroundColor3"]
      180 GETTABLEKS                       R19 R3 K55 ["lowerTransparency"]
      182 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      184 CALL                             R16 2 1
      185 JUMPIF                           R16 ; [+1]
      186 LOADNIL                          R16
      187 SETTABLEKS                       R16 R15 K28 ["Line"]
      189 CALL                             R12 3 -1
      190 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["ScaleTick"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R7 R6 K18 ["render"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
