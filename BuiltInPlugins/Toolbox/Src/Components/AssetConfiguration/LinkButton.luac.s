PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{[1] = True}]
        2 NAMECALL                         R3 R3 K3 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{[1] = False}]
        2 NAMECALL                         R3 R3 K3 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R0 K6 ["onActivated"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["linkButton"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R1 K4 ["Text"]
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 GETIMPORT                        R9 K7 [Vector2.new]
       15 LOADN                            R10 9999
       16 LOADN                            R11 9999
       17 CALL                             R9 2 -1
       18 CALL                             R5 -1 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K8 ["createElement"]
       22 LOADK                            R7 K9 ["Frame"]
       23 DUPTABLE                         R8 K16 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       24 GETTABLEKS                       R9 R1 K10 ["Size"]
       26 SETTABLEKS                       R9 R8 K10 ["Size"]
       28 GETTABLEKS                       R9 R1 K15 ["LayoutOrder"]
       30 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       32 DUPTABLE                         R9 K18 [{"Link"}]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K8 ["createElement"]
       36 LOADK                            R11 K19 ["TextButton"]
       37 NEWTABLE                         R12 16 0
       39 GETIMPORT                        R13 K21 [UDim2.new]
       41 LOADN                            R14 0
       42 GETTABLEKS                       R15 R5 K22 ["X"]
       44 LOADN                            R16 0
       45 GETTABLEKS                       R17 R5 K23 ["Y"]
       47 CALL                             R13 4 1
       48 SETTABLEKS                       R13 R12 K10 ["Size"]
       50 LOADN                            R13 1
       51 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
       53 LOADN                            R13 0
       54 SETTABLEKS                       R13 R12 K13 ["BorderSizePixel"]
       56 GETTABLEKS                       R13 R1 K4 ["Text"]
       58 SETTABLEKS                       R13 R12 K4 ["Text"]
       60 GETTABLEKS                       R13 R1 K24 ["TextSize"]
       62 SETTABLEKS                       R13 R12 K24 ["TextSize"]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R13 R13 K25 ["FONT"]
       67 SETTABLEKS                       R13 R12 K26 ["Font"]
       69 LOADB                            R13 1
       70 SETTABLEKS                       R13 R12 K27 ["TextScaled"]
       72 GETTABLEKS                       R13 R4 K28 ["textColor"]
       74 SETTABLEKS                       R13 R12 K29 ["TextColor3"]
       76 GETIMPORT                        R13 K33 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R13 R12 K31 ["TextXAlignment"]
       80 GETIMPORT                        R13 K36 [Enum.TextYAlignment.Center]
       82 SETTABLEKS                       R13 R12 K34 ["TextYAlignment"]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K37 ["Event"]
       87 GETTABLEKS                       R13 R13 K38 ["MouseEnter"]
       89 GETTABLEKS                       R14 R0 K39 ["onMouseEnter"]
       91 SETTABLE                         R14 R12 R13
       92 GETUPVAL                         R13 1
       93 GETTABLEKS                       R13 R13 K37 ["Event"]
       95 GETTABLEKS                       R13 R13 K40 ["MouseLeave"]
       97 GETTABLEKS                       R14 R0 K41 ["onMouseLeave"]
       99 SETTABLE                         R14 R12 R13
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K37 ["Event"]
      103 GETTABLEKS                       R13 R13 K42 ["Activated"]
      105 GETTABLEKS                       R14 R0 K43 ["onActivated"]
      107 SETTABLE                         R14 R12 R13
      108 DUPTABLE                         R13 K45 [{"UnderLine"}]
      109 GETTABLEKS                       R14 R2 K46 ["hovered"]
      111 JUMPIFNOT                        R14 ; [+36]
      112 GETUPVAL                         R14 1
      113 GETTABLEKS                       R14 R14 K8 ["createElement"]
      115 LOADK                            R15 K9 ["Frame"]
      116 DUPTABLE                         R16 K50 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      117 GETIMPORT                        R17 K7 [Vector2.new]
      119 LOADN                            R18 0
      120 LOADN                            R19 1
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K47 ["AnchorPoint"]
      124 GETIMPORT                        R17 K21 [UDim2.new]
      126 LOADN                            R18 0
      127 LOADN                            R19 0
      128 LOADN                            R20 1
      129 LOADN                            R21 0
      130 CALL                             R17 4 1
      131 SETTABLEKS                       R17 R16 K48 ["Position"]
      133 GETIMPORT                        R17 K21 [UDim2.new]
      135 LOADN                            R18 0
      136 GETTABLEKS                       R19 R5 K22 ["X"]
      138 LOADN                            R20 0
      139 LOADN                            R21 1
      140 CALL                             R17 4 1
      141 SETTABLEKS                       R17 R16 K10 ["Size"]
      143 GETTABLEKS                       R17 R4 K28 ["textColor"]
      145 SETTABLEKS                       R17 R16 K49 ["BackgroundColor3"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K44 ["UnderLine"]
      150 CALL                             R10 3 1
      151 SETTABLEKS                       R10 R9 K17 ["Link"]
      153 CALL                             R6 3 -1
      154 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K12 ["withContext"]
       36 GETTABLEKS                       R8 R3 K9 ["Util"]
       38 GETTABLEKS                       R8 R8 K13 ["GetTextSize"]
       40 GETTABLEKS                       R9 R2 K14 ["PureComponent"]
       42 LOADK                            R11 K15 ["LinkButton"]
       43 NAMECALL                         R9 R9 K16 ["extend"]
       45 CALL                             R9 2 1
       46 DUPCLOSURE                       R10 K17 [PROTO_3]
       47 SETTABLEKS                       R10 R9 K18 ["init"]
       49 DUPCLOSURE                       R10 K19 [PROTO_4]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R10 R9 K20 ["render"]
       55 MOVE                             R10 R7
       56 DUPTABLE                         R11 K22 [{"Stylizer"}]
       57 GETTABLEKS                       R12 R6 K21 ["Stylizer"]
       59 SETTABLEKS                       R12 R11 K21 ["Stylizer"]
       61 CALL                             R10 1 1
       62 MOVE                             R11 R9
       63 CALL                             R10 1 1
       64 MOVE                             R9 R10
       65 RETURN                           R9 1
