PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["mouseEnter"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["mouseLeave"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["Size"]
       10 GETTABLEKS                       R5 R2 K4 ["PaddingLeft"]
       12 GETTABLEKS                       R6 R2 K5 ["PaddingRight"]
       14 GETTABLEKS                       R7 R3 K6 ["dialogTheme"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K7 ["createElement"]
       19 LOADK                            R9 K8 ["ImageButton"]
       20 NEWTABLE                         R10 8 0
       22 SETTABLEKS                       R4 R10 K3 ["Size"]
       24 LOADN                            R11 1
       25 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       27 LOADB                            R11 0
       28 SETTABLEKS                       R11 R10 K10 ["AutoButtonColor"]
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R12 R13 K11 ["Event"]
       33 GETTABLEKS                       R11 R12 K12 ["Activated"]
       35 GETTABLEKS                       R12 R2 K13 ["OnAddEvent"]
       37 SETTABLE                         R12 R10 R11
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R12 R13 K11 ["Event"]
       41 GETTABLEKS                       R11 R12 K14 ["MouseEnter"]
       43 GETTABLEKS                       R12 R0 K15 ["mouseEnter"]
       45 SETTABLE                         R12 R10 R11
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R12 R13 K11 ["Event"]
       49 GETTABLEKS                       R11 R12 K16 ["MouseLeave"]
       51 GETTABLEKS                       R12 R0 K17 ["mouseLeave"]
       53 SETTABLE                         R12 R10 R11
       54 DUPTABLE                         R11 K21 [{"Padding", "Label", "AddImage"}]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K7 ["createElement"]
       58 LOADK                            R13 K22 ["UIPadding"]
       59 DUPTABLE                         R14 K25 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       60 SETTABLEKS                       R5 R14 K4 ["PaddingLeft"]
       62 SETTABLEKS                       R6 R14 K5 ["PaddingRight"]
       64 GETIMPORT                        R15 K28 [UDim.new]
       66 LOADN                            R16 0
       67 LOADN                            R17 2
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K23 ["PaddingTop"]
       71 GETIMPORT                        R15 K28 [UDim.new]
       73 LOADN                            R16 0
       74 LOADN                            R17 2
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K24 ["PaddingBottom"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K18 ["Padding"]
       81 GETUPVAL                         R13 0
       82 GETTABLEKS                       R12 R13 K7 ["createElement"]
       84 LOADK                            R13 K29 ["TextLabel"]
       85 DUPTABLE                         R14 K35 [{"Size", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "BackgroundTransparency"}]
       86 GETIMPORT                        R15 K37 [UDim2.new]
       88 LOADN                            R16 1
       89 GETUPVAL                         R19 1
       90 GETTABLEKS                       R18 R19 K38 ["TRACKLIST_BUTTON_SIZE"]
       92 MINUS                            R17 R18
       93 LOADN                            R18 1
       94 LOADN                            R19 0
       95 CALL                             R15 4 1
       96 SETTABLEKS                       R15 R14 K3 ["Size"]
       98 LOADK                            R17 K39 ["Title"]
       99 LOADK                            R18 K40 ["AddEvent"]
      100 NAMECALL                         R15 R1 K41 ["getText"]
      102 CALL                             R15 3 1
      103 SETTABLEKS                       R15 R14 K30 ["Text"]
      105 GETTABLEKS                       R15 R7 K42 ["subTextColor"]
      107 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
      109 GETTABLEKS                       R15 R3 K43 ["font"]
      111 SETTABLEKS                       R15 R14 K32 ["Font"]
      113 GETTABLEKS                       R15 R7 K44 ["textSize"]
      115 SETTABLEKS                       R15 R14 K33 ["TextSize"]
      117 GETIMPORT                        R15 K47 [Enum.TextXAlignment.Left]
      119 SETTABLEKS                       R15 R14 K34 ["TextXAlignment"]
      121 LOADN                            R15 1
      122 SETTABLEKS                       R15 R14 K9 ["BackgroundTransparency"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K19 ["Label"]
      127 GETUPVAL                         R13 0
      128 GETTABLEKS                       R12 R13 K7 ["createElement"]
      130 LOADK                            R13 K48 ["ImageLabel"]
      131 DUPTABLE                         R14 K53 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image", "ImageColor3"}]
      132 GETUPVAL                         R15 2
      133 SETTABLEKS                       R15 R14 K3 ["Size"]
      135 GETIMPORT                        R15 K55 [Vector2.new]
      137 LOADK                            R16 K56 [0.5]
      138 LOADK                            R17 K56 [0.5]
      139 CALL                             R15 2 1
      140 SETTABLEKS                       R15 R14 K49 ["AnchorPoint"]
      142 GETIMPORT                        R15 K37 [UDim2.new]
      144 LOADN                            R16 0
      145 GETTABLEKS                       R19 R5 K58 ["Offset"]
      147 MINUS                            R18 R19
      148 DIVK                             R17 R18 K57 [2]
      149 LOADK                            R18 K56 [0.5]
      150 LOADN                            R19 0
      151 CALL                             R15 4 1
      152 SETTABLEKS                       R15 R14 K50 ["Position"]
      154 LOADN                            R15 1
      155 SETTABLEKS                       R15 R14 K9 ["BackgroundTransparency"]
      157 GETTABLEKS                       R15 R7 K59 ["addImage"]
      159 SETTABLEKS                       R15 R14 K51 ["Image"]
      161 GETTABLEKS                       R15 R7 K42 ["subTextColor"]
      163 SETTABLEKS                       R15 R14 K52 ["ImageColor3"]
      165 CALL                             R12 2 1
      166 SETTABLEKS                       R12 R11 K20 ["AddImage"]
      168 CALL                             R8 3 -1
      169 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [UDim2.new]
        3 LOADN                            R1 0
        4 LOADN                            R2 9
        5 LOADN                            R3 0
        6 LOADN                            R4 8
        7 CALL                             R0 4 1
        8 GETIMPORT                        R1 K4 [script]
       10 LOADK                            R3 K5 ["AnimationClipEditor"]
       11 NAMECALL                         R1 R1 K6 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K8 [require]
       16 GETTABLEKS                       R4 R1 K9 ["Packages"]
       18 GETTABLEKS                       R3 R4 K10 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K8 [require]
       23 GETTABLEKS                       R5 R1 K9 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K8 [require]
       30 GETTABLEKS                       R7 R1 K12 ["Src"]
       32 GETTABLEKS                       R6 R7 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["Constants"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K15 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K16 ["withContext"]
       41 GETTABLEKS                       R7 R2 K17 ["PureComponent"]
       43 LOADK                            R9 K18 ["AddEventEntry"]
       44 NAMECALL                         R7 R7 K19 ["extend"]
       46 CALL                             R7 2 1
       47 DUPCLOSURE                       R8 K20 [PROTO_2]
       48 SETTABLEKS                       R8 R7 K21 ["init"]
       50 DUPCLOSURE                       R8 K22 [PROTO_3]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R8 R7 K23 ["render"]
       56 MOVE                             R8 R6
       57 DUPTABLE                         R9 K27 [{"Stylizer", "Localization", "Mouse"}]
       58 GETTABLEKS                       R10 R5 K24 ["Stylizer"]
       60 SETTABLEKS                       R10 R9 K24 ["Stylizer"]
       62 GETTABLEKS                       R10 R5 K25 ["Localization"]
       64 SETTABLEKS                       R10 R9 K25 ["Localization"]
       66 GETTABLEKS                       R10 R5 K26 ["Mouse"]
       68 SETTABLEKS                       R10 R9 K26 ["Mouse"]
       70 CALL                             R8 1 1
       71 MOVE                             R9 R7
       72 CALL                             R8 1 1
       73 MOVE                             R7 R8
       74 RETURN                           R7 1
