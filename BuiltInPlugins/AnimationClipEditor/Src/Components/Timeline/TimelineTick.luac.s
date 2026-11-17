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
       35 DUPTABLE                         R16 K21 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"]}]
       36 GETIMPORT                        R17 K24 [UDim2.new]
       38 LOADN                            R18 0
       39 MOVE                             R19 R5
       40 LOADN                            R20 0
       41 MOVE                             R21 R5
       42 CALL                             R17 4 1
       43 SETTABLEKS                       R17 R16 K16 ["Size"]
       45 SETTABLEKS                       R6 R16 K5 ["Position"]
       47 DUPTABLE                         R17 K28 [{"TimeLabel", "TickLine", "LowerTick"}]
       48 GETUPVAL                         R18 2
       49 GETTABLEKS                       R18 R18 K14 ["createElement"]
       51 LOADK                            R19 K29 ["TextLabel"]
       52 DUPTABLE                         R20 K37 [{["TextColor3"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["Text"], ["Position"], ["Size"], ["Visible"]}]
       53 JUMPIFNOT                        R12 ; [+3]
       54 GETTABLEKS                       R21 R3 K38 ["dimmedColor"]
       56 JUMPIF                           R21 ; [+2]
       57 GETTABLEKS                       R21 R3 K39 ["textColor"]
       59 SETTABLEKS                       R21 R20 K30 ["TextColor3"]
       61 GETTABLEKS                       R21 R3 K40 ["textSize"]
       63 SETTABLEKS                       R21 R20 K31 ["TextSize"]
       65 GETIMPORT                        R21 K43 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R21 R20 K32 ["TextXAlignment"]
       69 GETIMPORT                        R21 K45 [Enum.TextYAlignment.Center]
       71 SETTABLEKS                       R21 R20 K33 ["TextYAlignment"]
       73 GETTABLEKS                       R21 R2 K46 ["font"]
       75 SETTABLEKS                       R21 R20 K34 ["Font"]
       77 SETTABLEKS                       R4 R20 K35 ["Text"]
       79 SETTABLEKS                       R8 R20 K5 ["Position"]
       81 SETTABLEKS                       R7 R20 K16 ["Size"]
       83 SETTABLEKS                       R10 R20 K36 ["Visible"]
       85 CALL                             R18 2 1
       86 SETTABLEKS                       R18 R17 K25 ["TimeLabel"]
       88 GETUPVAL                         R18 2
       89 GETTABLEKS                       R18 R18 K14 ["createElement"]
       91 LOADK                            R19 K15 ["Frame"]
       92 DUPTABLE                         R20 K49 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
       93 GETIMPORT                        R21 K51 [Vector2.new]
       95 LOADN                            R22 0
       96 LOADN                            R23 1
       97 CALL                             R21 2 1
       98 SETTABLEKS                       R21 R20 K47 ["AnchorPoint"]
      100 GETIMPORT                        R21 K24 [UDim2.new]
      102 LOADN                            R22 0
      103 LOADN                            R23 0
      104 LOADN                            R24 1
      105 LOADN                            R25 0
      106 CALL                             R21 4 1
      107 SETTABLEKS                       R21 R20 K5 ["Position"]
      109 GETIMPORT                        R21 K24 [UDim2.new]
      111 LOADN                            R22 0
      112 LOADN                            R23 1
      113 MOVE                             R24 R9
      114 LOADN                            R25 0
      115 CALL                             R21 4 1
      116 SETTABLEKS                       R21 R20 K16 ["Size"]
      118 JUMPIFNOT                        R12 ; [+3]
      119 GETTABLEKS                       R21 R3 K38 ["dimmedColor"]
      121 JUMPIF                           R21 ; [+2]
      122 GETTABLEKS                       R21 R3 K52 ["lineColor"]
      124 SETTABLEKS                       R21 R20 K48 ["BackgroundColor3"]
      126 DUPTABLE                         R21 K54 [{"Tooltip"}]
      127 MOVE                             R22 R13
      128 JUMPIFNOT                        R22 ; [+8]
      129 GETUPVAL                         R22 2
      130 GETTABLEKS                       R22 R22 K14 ["createElement"]
      132 GETUPVAL                         R23 3
      133 DUPTABLE                         R24 K56 [{["Text"], ["ShowDelay"] = 0}]
      134 SETTABLEKS                       R13 R24 K35 ["Text"]
      136 CALL                             R22 2 1
      137 SETTABLEKS                       R22 R21 K53 ["Tooltip"]
      139 CALL                             R18 3 1
      140 SETTABLEKS                       R18 R17 K26 ["TickLine"]
      142 GETUPVAL                         R18 2
      143 GETTABLEKS                       R18 R18 K14 ["createElement"]
      145 LOADK                            R19 K15 ["Frame"]
      146 DUPTABLE                         R20 K57 [{["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"]}]
      147 GETIMPORT                        R21 K24 [UDim2.new]
      149 LOADN                            R22 0
      150 LOADN                            R23 0
      151 LOADN                            R24 1
      152 LOADN                            R25 0
      153 CALL                             R21 4 1
      154 SETTABLEKS                       R21 R20 K5 ["Position"]
      156 GETIMPORT                        R21 K24 [UDim2.new]
      158 LOADN                            R22 0
      159 LOADN                            R23 1
      160 LOADN                            R24 50
      161 LOADN                            R25 0
      162 CALL                             R21 4 1
      163 SETTABLEKS                       R21 R20 K16 ["Size"]
      165 GETTABLEKS                       R21 R3 K52 ["lineColor"]
      167 SETTABLEKS                       R21 R20 K48 ["BackgroundColor3"]
      169 JUMPIFNOT                        R11 ; [+3]
      170 GETTABLEKS                       R21 R3 K58 ["lowerBrightTransparency"]
      172 JUMPIF                           R21 ; [+2]
      173 GETTABLEKS                       R21 R3 K59 ["lowerTransparency"]
      175 SETTABLEKS                       R21 R20 K17 ["BackgroundTransparency"]
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K27 ["LowerTick"]
      180 CALL                             R14 3 -1
      181 RETURN                           R14 -1

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
