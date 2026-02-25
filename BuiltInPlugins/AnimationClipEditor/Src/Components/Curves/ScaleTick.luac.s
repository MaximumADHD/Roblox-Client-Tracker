PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["timelineTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Value"]
        8 GETTABLEKS                       R5 R1 K4 ["Width"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["ScaleType"]
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R10 R11 K7 ["SCALE_TYPE"]
       17 GETTABLEKS                       R9 R10 K8 ["Number"]
       19 JUMPIFEQ                         R7 R9 ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K9 ["TICK_LABEL_SIZE"]
       26 GETTABLEKS                       R10 R1 K10 ["TickWidthScale"]
       28 GETUPVAL                         R13 0
       29 GETTABLEKS                       R12 R13 K11 ["TICK_LABEL_POSITION"]
       31 GETTABLE                         R11 R12 R7
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K12 ["createElement"]
       35 LOADK                            R13 K13 ["Frame"]
       36 DUPTABLE                         R14 K18 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
       37 GETIMPORT                        R15 K21 [UDim2.new]
       39 LOADN                            R16 0
       40 MOVE                             R17 R5
       41 LOADN                            R18 0
       42 MOVE                             R19 R5
       43 CALL                             R15 4 1
       44 SETTABLEKS                       R15 R14 K14 ["Size"]
       46 SETTABLEKS                       R6 R14 K5 ["Position"]
       48 GETIMPORT                        R15 K23 [Vector2.new]
       50 LOADN                            R16 0
       51 LOADN                            R17 1
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       55 LOADN                            R15 1
       56 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
       58 LOADN                            R15 0
       59 SETTABLEKS                       R15 R14 K17 ["BorderSizePixel"]
       61 DUPTABLE                         R15 K27 [{"TimeLabel", "Tick", "Line"}]
       62 JUMPIFEQKS                       R4 K28 [""] ; [+50]
       64 GETUPVAL                         R17 1
       65 GETTABLEKS                       R16 R17 K12 ["createElement"]
       67 LOADK                            R17 K29 ["TextLabel"]
       68 DUPTABLE                         R18 K37 [{"Position", "Size", "AnchorPoint", "TextColor3", "BorderSizePixel", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment", "Font", "Text", "Rotation"}]
       69 SETTABLEKS                       R11 R18 K5 ["Position"]
       71 SETTABLEKS                       R9 R18 K14 ["Size"]
       73 GETIMPORT                        R19 K23 [Vector2.new]
       75 LOADK                            R20 K38 [0.5]
       76 LOADK                            R21 K38 [0.5]
       77 CALL                             R19 2 1
       78 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
       80 GETTABLEKS                       R19 R3 K39 ["textColor"]
       82 SETTABLEKS                       R19 R18 K30 ["TextColor3"]
       84 LOADN                            R19 0
       85 SETTABLEKS                       R19 R18 K17 ["BorderSizePixel"]
       87 LOADN                            R19 1
       88 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
       90 GETTABLEKS                       R19 R3 K40 ["textSize"]
       92 SETTABLEKS                       R19 R18 K31 ["TextSize"]
       94 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
       96 SETTABLEKS                       R19 R18 K32 ["TextXAlignment"]
       98 GETIMPORT                        R19 K45 [Enum.TextYAlignment.Center]
      100 SETTABLEKS                       R19 R18 K33 ["TextYAlignment"]
      102 GETTABLEKS                       R19 R2 K46 ["font"]
      104 SETTABLEKS                       R19 R18 K34 ["Font"]
      106 SETTABLEKS                       R4 R18 K35 ["Text"]
      108 LOADN                            R19 166
      109 SETTABLEKS                       R19 R18 K36 ["Rotation"]
      111 CALL                             R16 2 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R16
      114 SETTABLEKS                       R16 R15 K24 ["TimeLabel"]
      116 GETUPVAL                         R18 1
      117 GETTABLEKS                       R17 R18 K12 ["createElement"]
      119 LOADK                            R18 K13 ["Frame"]
      120 DUPTABLE                         R19 K49 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3"}]
      121 GETIMPORT                        R20 K23 [Vector2.new]
      123 JUMPIFNOT                        R8 ; [+2]
      124 LOADN                            R21 1
      125 JUMP                             ; [+1]
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K15 ["AnchorPoint"]
      131 GETIMPORT                        R20 K21 [UDim2.new]
      133 JUMPIFNOT                        R8 ; [+2]
      134 LOADN                            R21 1
      135 JUMP                             ; [+1]
      136 LOADN                            R21 0
      137 LOADN                            R22 0
      138 LOADN                            R23 1
      139 LOADN                            R24 0
      140 CALL                             R20 4 1
      141 SETTABLEKS                       R20 R19 K5 ["Position"]
      143 GETIMPORT                        R20 K21 [UDim2.new]
      145 MOVE                             R21 R10
      146 LOADN                            R22 0
      147 LOADN                            R23 0
      148 LOADN                            R24 1
      149 CALL                             R20 4 1
      150 SETTABLEKS                       R20 R19 K14 ["Size"]
      152 LOADN                            R20 0
      153 SETTABLEKS                       R20 R19 K17 ["BorderSizePixel"]
      155 GETTABLEKS                       R20 R3 K50 ["lineColor"]
      157 SETTABLEKS                       R20 R19 K48 ["BackgroundColor3"]
      159 CALL                             R17 2 1
      160 ORK                              R16 R17 K47 []
      161 SETTABLEKS                       R16 R15 K25 ["Tick"]
      163 JUMPIFNOT                        R8 ; [+43]
      164 GETUPVAL                         R17 1
      165 GETTABLEKS                       R16 R17 K12 ["createElement"]
      167 LOADK                            R17 K13 ["Frame"]
      168 DUPTABLE                         R18 K51 [{"Position", "Size", "AnchorPoint", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
      169 GETIMPORT                        R19 K21 [UDim2.new]
      171 LOADN                            R20 1
      172 LOADN                            R21 0
      173 LOADN                            R22 1
      174 LOADN                            R23 0
      175 CALL                             R19 4 1
      176 SETTABLEKS                       R19 R18 K5 ["Position"]
      178 GETIMPORT                        R19 K21 [UDim2.new]
      180 LOADN                            R20 50
      181 LOADN                            R21 0
      182 LOADN                            R22 0
      183 LOADN                            R23 1
      184 CALL                             R19 4 1
      185 SETTABLEKS                       R19 R18 K14 ["Size"]
      187 GETIMPORT                        R19 K23 [Vector2.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 0
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
      194 LOADN                            R19 0
      195 SETTABLEKS                       R19 R18 K17 ["BorderSizePixel"]
      197 GETTABLEKS                       R19 R3 K50 ["lineColor"]
      199 SETTABLEKS                       R19 R18 K48 ["BackgroundColor3"]
      201 GETTABLEKS                       R19 R3 K52 ["lowerTransparency"]
      203 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      205 CALL                             R16 2 1
      206 JUMPIF                           R16 ; [+1]
      207 LOADNIL                          R16
      208 SETTABLEKS                       R16 R15 K26 ["Line"]
      210 CALL                             R12 3 -1
      211 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["Constants"]
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
