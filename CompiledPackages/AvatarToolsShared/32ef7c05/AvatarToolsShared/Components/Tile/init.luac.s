PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        4 ORK                              R2 R3 K1 [1]
        5 GETTABLEKS                       R4 R1 K3 ["ZIndex"]
        7 ORK                              R3 R4 K1 [1]
        8 GETTABLEKS                       R5 R1 K5 ["IsOn"]
       10 ORK                              R4 R5 K4 [False]
       11 GETTABLEKS                       R5 R1 K6 ["Text"]
       13 GETTABLEKS                       R6 R1 K7 ["OnClick"]
       15 GETTABLEKS                       R7 R1 K8 ["Stylizer"]
       17 GETTABLEKS                       R8 R1 K9 ["Image"]
       19 GETTABLEKS                       R9 R1 K10 ["ImageSize"]
       21 JUMPIF                           R9 ; [+2]
       22 GETTABLEKS                       R9 R7 K10 ["ImageSize"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K11 ["createElement"]
       27 GETUPVAL                         R11 1
       28 DUPTABLE                         R12 K16 [{"Style", "StyleModifier", "Size", "Position", "LayoutOrder", "ZIndex", "OnClick"}]
       29 NEWTABLE                         R13 4 0
       31 GETUPVAL                         R14 2
       32 SETTABLEKS                       R14 R13 K17 ["Background"]
       34 DUPTABLE                         R14 K20 [{"Color", "BorderSize"}]
       35 GETTABLEKS                       R15 R7 K21 ["ButtonBackgroundColor"]
       37 SETTABLEKS                       R15 R14 K18 ["Color"]
       39 LOADN                            R15 0
       40 SETTABLEKS                       R15 R14 K19 ["BorderSize"]
       42 SETTABLEKS                       R14 R13 K22 ["BackgroundStyle"]
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R14 R14 K23 ["Pressed"]
       47 DUPTABLE                         R15 K24 [{"BackgroundStyle"}]
       48 DUPTABLE                         R16 K20 [{"Color", "BorderSize"}]
       49 GETTABLEKS                       R17 R7 K25 ["ButtonPressedColor"]
       51 SETTABLEKS                       R17 R16 K18 ["Color"]
       53 LOADN                            R17 0
       54 SETTABLEKS                       R17 R16 K19 ["BorderSize"]
       56 SETTABLEKS                       R16 R15 K22 ["BackgroundStyle"]
       58 SETTABLE                         R15 R13 R14
       59 SETTABLEKS                       R13 R12 K12 ["Style"]
       61 JUMPIFNOT                        R4 ; [+4]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R13 R13 K23 ["Pressed"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R13
       67 SETTABLEKS                       R13 R12 K13 ["StyleModifier"]
       69 SETTABLEKS                       R9 R12 K14 ["Size"]
       71 GETTABLEKS                       R13 R1 K15 ["Position"]
       73 SETTABLEKS                       R13 R12 K15 ["Position"]
       75 SETTABLEKS                       R2 R12 K2 ["LayoutOrder"]
       77 SETTABLEKS                       R3 R12 K3 ["ZIndex"]
       79 SETTABLEKS                       R6 R12 K7 ["OnClick"]
       81 DUPTABLE                         R13 K27 [{"Image", "TextLabel"}]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R14 R14 K11 ["createElement"]
       85 GETUPVAL                         R15 4
       86 DUPTABLE                         R16 K28 [{"Style"}]
       87 DUPTABLE                         R17 K31 [{"Image", "Size", "BackgroundTransparency", "AnchorPoint", "Position"}]
       88 SETTABLEKS                       R8 R17 K9 ["Image"]
       90 SETTABLEKS                       R9 R17 K14 ["Size"]
       92 LOADN                            R18 1
       93 SETTABLEKS                       R18 R17 K29 ["BackgroundTransparency"]
       95 GETIMPORT                        R18 K34 [Vector2.new]
       97 LOADK                            R19 K35 [0.5]
       98 LOADK                            R20 K35 [0.5]
       99 CALL                             R18 2 1
      100 SETTABLEKS                       R18 R17 K30 ["AnchorPoint"]
      102 GETIMPORT                        R18 K37 [UDim2.new]
      104 LOADK                            R19 K35 [0.5]
      105 LOADN                            R20 0
      106 LOADK                            R21 K35 [0.5]
      107 LOADN                            R22 0
      108 CALL                             R18 4 1
      109 SETTABLEKS                       R18 R17 K15 ["Position"]
      111 SETTABLEKS                       R17 R16 K12 ["Style"]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K9 ["Image"]
      116 GETUPVAL                         R14 0
      117 GETTABLEKS                       R14 R14 K11 ["createElement"]
      119 GETUPVAL                         R15 5
      120 DUPTABLE                         R16 K42 [{"Text", "AutomaticSize", "TextXAlignment", "TextYAlignment", "ZIndex", "AnchorPoint", "Position", "TextTruncate"}]
      121 SETTABLEKS                       R5 R16 K6 ["Text"]
      123 GETIMPORT                        R17 K45 [Enum.AutomaticSize.XY]
      125 SETTABLEKS                       R17 R16 K38 ["AutomaticSize"]
      127 GETIMPORT                        R17 K47 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
      131 GETIMPORT                        R17 K49 [Enum.TextYAlignment.Center]
      133 SETTABLEKS                       R17 R16 K40 ["TextYAlignment"]
      135 ADDK                             R17 R3 K1 [1]
      136 SETTABLEKS                       R17 R16 K3 ["ZIndex"]
      138 GETIMPORT                        R17 K34 [Vector2.new]
      140 LOADN                            R18 0
      141 LOADN                            R19 1
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K30 ["AnchorPoint"]
      145 GETIMPORT                        R17 K37 [UDim2.new]
      147 LOADN                            R18 0
      148 LOADN                            R19 0
      149 LOADN                            R20 1
      150 LOADN                            R21 0
      151 CALL                             R17 4 1
      152 SETTABLEKS                       R17 R16 K15 ["Position"]
      154 GETIMPORT                        R17 K51 [Enum.TextTruncate.AtEnd]
      156 SETTABLEKS                       R17 R16 K41 ["TextTruncate"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K26 ["TextLabel"]
      161 CALL                             R10 3 -1
      162 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["Button"]
       27 GETTABLEKS                       R7 R5 K11 ["TextLabel"]
       29 GETTABLEKS                       R8 R5 K12 ["Image"]
       31 GETTABLEKS                       R9 R5 K13 ["Box"]
       33 GETTABLEKS                       R10 R2 K14 ["Util"]
       35 GETTABLEKS                       R11 R10 K15 ["Typecheck"]
       37 GETTABLEKS                       R12 R10 K16 ["StyleModifier"]
       39 GETTABLEKS                       R13 R1 K17 ["PureComponent"]
       41 LOADK                            R15 K18 ["Tile"]
       42 NAMECALL                         R13 R13 K19 ["extend"]
       44 CALL                             R13 2 1
       45 GETTABLEKS                       R14 R11 K20 ["wrap"]
       47 MOVE                             R15 R13
       48 GETIMPORT                        R16 K1 [script]
       50 CALL                             R14 2 0
       51 DUPCLOSURE                       R14 K21 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R14 R13 K22 ["render"]
       60 MOVE                             R14 R4
       61 DUPTABLE                         R15 K24 [{"Stylizer"}]
       62 GETTABLEKS                       R16 R3 K23 ["Stylizer"]
       64 SETTABLEKS                       R16 R15 K23 ["Stylizer"]
       66 CALL                             R14 1 1
       67 MOVE                             R15 R13
       68 CALL                             R14 1 1
       69 MOVE                             R13 R14
       70 RETURN                           R13 1
