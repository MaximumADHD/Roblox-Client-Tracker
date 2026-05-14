PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["timelineTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Time"]
        8 GETTABLEKS                       R5 R1 K4 ["Height"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["LabelSize"]
       14 JUMPIF                           R7 ; [+1]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R8 R1 K7 ["LabelPosition"]
       18 JUMPIF                           R8 ; [+1]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R10 R1 K9 ["TickHeightScale"]
       22 ORK                              R9 R10 K8 [0.7]
       23 GETTABLEKS                       R10 R1 K10 ["ShowTime"]
       25 GETTABLEKS                       R11 R1 K11 ["Highlight"]
       27 GETTABLEKS                       R12 R1 K12 ["PastEnd"]
       29 GETTABLEKS                       R13 R1 K13 ["TimeInSeconds"]
       31 GETUPVAL                         R14 2
       32 GETTABLEKS                       R14 R14 K14 ["createElement"]
       34 LOADK                            R15 K15 ["Frame"]
       35 DUPTABLE                         R16 K19 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Position"}]
       36 GETIMPORT                        R17 K22 [UDim2.new]
       38 LOADN                            R18 0
       39 MOVE                             R19 R5
       40 LOADN                            R20 0
       41 MOVE                             R21 R5
       42 CALL                             R17 4 1
       43 SETTABLEKS                       R17 R16 K16 ["Size"]
       45 LOADN                            R17 1
       46 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
       48 LOADN                            R17 0
       49 SETTABLEKS                       R17 R16 K18 ["BorderSizePixel"]
       51 SETTABLEKS                       R6 R16 K5 ["Position"]
       53 DUPTABLE                         R17 K26 [{"TimeLabel", "TickLine", "LowerTick"}]
       54 GETUPVAL                         R18 2
       55 GETTABLEKS                       R18 R18 K14 ["createElement"]
       57 LOADK                            R19 K27 ["TextLabel"]
       58 DUPTABLE                         R20 K35 [{"TextColor3", "BorderSizePixel", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment", "Font", "Text", "Position", "Size", "Visible"}]
       59 JUMPIFNOT                        R12 ; [+3]
       60 GETTABLEKS                       R21 R3 K36 ["dimmedColor"]
       62 JUMPIF                           R21 ; [+2]
       63 GETTABLEKS                       R21 R3 K37 ["textColor"]
       65 SETTABLEKS                       R21 R20 K28 ["TextColor3"]
       67 LOADN                            R21 0
       68 SETTABLEKS                       R21 R20 K18 ["BorderSizePixel"]
       70 LOADN                            R21 1
       71 SETTABLEKS                       R21 R20 K17 ["BackgroundTransparency"]
       73 GETTABLEKS                       R21 R3 K38 ["textSize"]
       75 SETTABLEKS                       R21 R20 K29 ["TextSize"]
       77 GETIMPORT                        R21 K41 [Enum.TextXAlignment.Left]
       79 SETTABLEKS                       R21 R20 K30 ["TextXAlignment"]
       81 GETIMPORT                        R21 K43 [Enum.TextYAlignment.Center]
       83 SETTABLEKS                       R21 R20 K31 ["TextYAlignment"]
       85 GETTABLEKS                       R21 R2 K44 ["font"]
       87 SETTABLEKS                       R21 R20 K32 ["Font"]
       89 SETTABLEKS                       R4 R20 K33 ["Text"]
       91 SETTABLEKS                       R8 R20 K5 ["Position"]
       93 SETTABLEKS                       R7 R20 K16 ["Size"]
       95 SETTABLEKS                       R10 R20 K34 ["Visible"]
       97 CALL                             R18 2 1
       98 SETTABLEKS                       R18 R17 K23 ["TimeLabel"]
      100 GETUPVAL                         R18 2
      101 GETTABLEKS                       R18 R18 K14 ["createElement"]
      103 LOADK                            R19 K15 ["Frame"]
      104 DUPTABLE                         R20 K47 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3"}]
      105 GETIMPORT                        R21 K49 [Vector2.new]
      107 LOADN                            R22 0
      108 LOADN                            R23 1
      109 CALL                             R21 2 1
      110 SETTABLEKS                       R21 R20 K45 ["AnchorPoint"]
      112 GETIMPORT                        R21 K22 [UDim2.new]
      114 LOADN                            R22 0
      115 LOADN                            R23 0
      116 LOADN                            R24 1
      117 LOADN                            R25 0
      118 CALL                             R21 4 1
      119 SETTABLEKS                       R21 R20 K5 ["Position"]
      121 GETIMPORT                        R21 K22 [UDim2.new]
      123 LOADN                            R22 0
      124 LOADN                            R23 1
      125 MOVE                             R24 R9
      126 LOADN                            R25 0
      127 CALL                             R21 4 1
      128 SETTABLEKS                       R21 R20 K16 ["Size"]
      130 LOADN                            R21 0
      131 SETTABLEKS                       R21 R20 K18 ["BorderSizePixel"]
      133 JUMPIFNOT                        R12 ; [+3]
      134 GETTABLEKS                       R21 R3 K36 ["dimmedColor"]
      136 JUMPIF                           R21 ; [+2]
      137 GETTABLEKS                       R21 R3 K50 ["lineColor"]
      139 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      141 DUPTABLE                         R21 K52 [{"Tooltip"}]
      142 MOVE                             R22 R13
      143 JUMPIFNOT                        R22 ; [+11]
      144 GETUPVAL                         R22 2
      145 GETTABLEKS                       R22 R22 K14 ["createElement"]
      147 GETUPVAL                         R23 3
      148 DUPTABLE                         R24 K54 [{"Text", "ShowDelay"}]
      149 SETTABLEKS                       R13 R24 K33 ["Text"]
      151 LOADN                            R25 0
      152 SETTABLEKS                       R25 R24 K53 ["ShowDelay"]
      154 CALL                             R22 2 1
      155 SETTABLEKS                       R22 R21 K51 ["Tooltip"]
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K24 ["TickLine"]
      160 GETUPVAL                         R18 2
      161 GETTABLEKS                       R18 R18 K14 ["createElement"]
      163 LOADK                            R19 K15 ["Frame"]
      164 DUPTABLE                         R20 K55 [{"Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
      165 GETIMPORT                        R21 K22 [UDim2.new]
      167 LOADN                            R22 0
      168 LOADN                            R23 0
      169 LOADN                            R24 1
      170 LOADN                            R25 0
      171 CALL                             R21 4 1
      172 SETTABLEKS                       R21 R20 K5 ["Position"]
      174 GETIMPORT                        R21 K22 [UDim2.new]
      176 LOADN                            R22 0
      177 LOADN                            R23 1
      178 LOADN                            R24 50
      179 LOADN                            R25 0
      180 CALL                             R21 4 1
      181 SETTABLEKS                       R21 R20 K16 ["Size"]
      183 LOADN                            R21 0
      184 SETTABLEKS                       R21 R20 K18 ["BorderSizePixel"]
      186 GETTABLEKS                       R21 R3 K50 ["lineColor"]
      188 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      190 JUMPIFNOT                        R11 ; [+3]
      191 GETTABLEKS                       R21 R3 K56 ["lowerBrightTransparency"]
      193 JUMPIF                           R21 ; [+2]
      194 GETTABLEKS                       R21 R3 K57 ["lowerTransparency"]
      196 SETTABLEKS                       R21 R20 K17 ["BackgroundTransparency"]
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K25 ["LowerTick"]
      201 CALL                             R14 3 -1
      202 RETURN                           R14 -1

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
       25 GETTABLEKS                       R5 R1 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["TimelineTick"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K14 ["Src"]
       35 GETTABLEKS                       R7 R7 K15 ["Components"]
       37 GETTABLEKS                       R7 R7 K16 ["Tooltip"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K19 [UDim2.new]
       42 LOADN                            R8 0
       43 LOADN                            R9 25
       44 LOADN                            R10 0
       45 LOADN                            R11 15
       46 CALL                             R7 4 1
       47 GETIMPORT                        R8 K19 [UDim2.new]
       49 LOADN                            R9 0
       50 LOADN                            R10 5
       51 LOADN                            R11 0
       52 LOADN                            R12 0
       53 CALL                             R8 4 1
       54 DUPCLOSURE                       R9 K20 [PROTO_0]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R9 R5 K21 ["render"]
       61 MOVE                             R9 R4
       62 DUPTABLE                         R10 K23 [{"Stylizer"}]
       63 GETTABLEKS                       R11 R3 K22 ["Stylizer"]
       65 SETTABLEKS                       R11 R10 K22 ["Stylizer"]
       67 CALL                             R9 1 1
       68 MOVE                             R10 R5
       69 CALL                             R9 1 1
       70 MOVE                             R5 R9
       71 RETURN                           R5 1
