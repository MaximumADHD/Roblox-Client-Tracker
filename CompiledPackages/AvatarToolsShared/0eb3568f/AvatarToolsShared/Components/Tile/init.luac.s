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
       34 DUPTABLE                         R14 K21 [{["Color"], ["BorderSize"] = 0}]
       35 GETTABLEKS                       R15 R7 K22 ["ButtonBackgroundColor"]
       37 SETTABLEKS                       R15 R14 K18 ["Color"]
       39 SETTABLEKS                       R14 R13 K23 ["BackgroundStyle"]
       41 GETUPVAL                         R14 3
       42 GETTABLEKS                       R14 R14 K24 ["Pressed"]
       44 DUPTABLE                         R15 K25 [{"BackgroundStyle"}]
       45 DUPTABLE                         R16 K21 [{["Color"], ["BorderSize"] = 0}]
       46 GETTABLEKS                       R17 R7 K26 ["ButtonPressedColor"]
       48 SETTABLEKS                       R17 R16 K18 ["Color"]
       50 SETTABLEKS                       R16 R15 K23 ["BackgroundStyle"]
       52 SETTABLE                         R15 R13 R14
       53 SETTABLEKS                       R13 R12 K12 ["Style"]
       55 JUMPIFNOT                        R4 ; [+4]
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R13 R13 K24 ["Pressed"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R13
       61 SETTABLEKS                       R13 R12 K13 ["StyleModifier"]
       63 SETTABLEKS                       R9 R12 K14 ["Size"]
       65 GETTABLEKS                       R13 R1 K15 ["Position"]
       67 SETTABLEKS                       R13 R12 K15 ["Position"]
       69 SETTABLEKS                       R2 R12 K2 ["LayoutOrder"]
       71 SETTABLEKS                       R3 R12 K3 ["ZIndex"]
       73 SETTABLEKS                       R6 R12 K7 ["OnClick"]
       75 DUPTABLE                         R13 K28 [{"Image", "TextLabel"}]
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K11 ["createElement"]
       79 GETUPVAL                         R15 4
       80 DUPTABLE                         R16 K29 [{"Style"}]
       81 DUPTABLE                         R17 K32 [{["Image"], ["Size"], ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"]}]
       82 SETTABLEKS                       R8 R17 K9 ["Image"]
       84 SETTABLEKS                       R9 R17 K14 ["Size"]
       86 GETIMPORT                        R18 K35 [Vector2.new]
       88 LOADK                            R19 K36 [0.5]
       89 LOADK                            R20 K36 [0.5]
       90 CALL                             R18 2 1
       91 SETTABLEKS                       R18 R17 K31 ["AnchorPoint"]
       93 GETIMPORT                        R18 K38 [UDim2.new]
       95 LOADK                            R19 K36 [0.5]
       96 LOADN                            R20 0
       97 LOADK                            R21 K36 [0.5]
       98 LOADN                            R22 0
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K15 ["Position"]
      102 SETTABLEKS                       R17 R16 K12 ["Style"]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K9 ["Image"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K11 ["createElement"]
      110 GETUPVAL                         R15 5
      111 DUPTABLE                         R16 K43 [{"Text", "AutomaticSize", "TextXAlignment", "TextYAlignment", "ZIndex", "AnchorPoint", "Position", "TextTruncate"}]
      112 SETTABLEKS                       R5 R16 K6 ["Text"]
      114 GETIMPORT                        R17 K46 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R17 R16 K39 ["AutomaticSize"]
      118 GETIMPORT                        R17 K48 [Enum.TextXAlignment.Left]
      120 SETTABLEKS                       R17 R16 K40 ["TextXAlignment"]
      122 GETIMPORT                        R17 K50 [Enum.TextYAlignment.Center]
      124 SETTABLEKS                       R17 R16 K41 ["TextYAlignment"]
      126 ADDK                             R17 R3 K1 [1]
      127 SETTABLEKS                       R17 R16 K3 ["ZIndex"]
      129 GETIMPORT                        R17 K35 [Vector2.new]
      131 LOADN                            R18 0
      132 LOADN                            R19 1
      133 CALL                             R17 2 1
      134 SETTABLEKS                       R17 R16 K31 ["AnchorPoint"]
      136 GETIMPORT                        R17 K38 [UDim2.new]
      138 LOADN                            R18 0
      139 LOADN                            R19 0
      140 LOADN                            R20 1
      141 LOADN                            R21 0
      142 CALL                             R17 4 1
      143 SETTABLEKS                       R17 R16 K15 ["Position"]
      145 GETIMPORT                        R17 K52 [Enum.TextTruncate.AtEnd]
      147 SETTABLEKS                       R17 R16 K42 ["TextTruncate"]
      149 CALL                             R14 2 1
      150 SETTABLEKS                       R14 R13 K27 ["TextLabel"]
      152 CALL                             R10 3 -1
      153 RETURN                           R10 -1

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
