PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["isSelected"] = False}]
        2 NAMECALL                         R0 R0 K4 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["isSelected"] = True}]
        2 NAMECALL                         R0 R0 K4 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["onButtonClicked"]
       10 JUMPIFNOT                        R0 ; [+16]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["props"]
       14 GETTABLEKS                       R0 R0 K5 ["onButtonClicked"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["props"]
       19 GETTABLEKS                       R1 R1 K6 ["index"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K4 ["props"]
       24 GETTABLEKS                       R2 R2 K7 ["action"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["isSelected"] = False}]
        1 SETTABLEKS                       R2 R0 K4 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K5 ["onMouseEnter"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K6 ["onMouseLeave"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K7 ["onMouseDown"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K8 ["onMouseUp"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["index"]
        8 GETTABLEKS                       R5 R1 K4 ["Text"]
       10 GETTABLEKS                       R6 R2 K5 ["isHovered"]
       12 GETTABLEKS                       R7 R2 K6 ["isSelected"]
       14 GETTABLEKS                       R8 R3 K7 ["messageBox"]
       16 GETTABLEKS                       R9 R8 K8 ["button"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["MESSAGE_BOX_BUTTON_WIDTH"]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K10 ["createElement"]
       24 GETUPVAL                         R12 2
       25 NEWTABLE                         R13 8 0
       27 GETIMPORT                        R14 K13 [UDim2.new]
       29 LOADN                            R15 0
       30 MOVE                             R16 R10
       31 LOADN                            R17 1
       32 LOADN                            R18 0
       33 CALL                             R14 4 1
       34 SETTABLEKS                       R14 R13 K14 ["Size"]
       36 SETTABLEKS                       R4 R13 K15 ["LayoutOrder"]
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETTABLEKS                       R14 R9 K16 ["backgroundSelectedColor"]
       41 JUMPIF                           R14 ; [+2]
       42 GETTABLEKS                       R14 R9 K17 ["backgroundColor"]
       44 SETTABLEKS                       R14 R13 K18 ["BackgroundColor3"]
       46 JUMPIF                           R6 ; [+1]
       47 JUMPIFNOT                        R7 ; [+3]
       48 GETTABLEKS                       R14 R9 K19 ["borderSelectedColor"]
       50 JUMPIF                           R14 ; [+2]
       51 GETTABLEKS                       R14 R9 K20 ["borderColor"]
       53 SETTABLEKS                       R14 R13 K21 ["BorderColor3"]
       55 GETUPVAL                         R14 1
       56 GETTABLEKS                       R14 R14 K22 ["Event"]
       58 GETTABLEKS                       R14 R14 K23 ["MouseEnter"]
       60 GETTABLEKS                       R15 R0 K24 ["onMouseEnter"]
       62 SETTABLE                         R15 R13 R14
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K22 ["Event"]
       66 GETTABLEKS                       R14 R14 K25 ["MouseLeave"]
       68 GETTABLEKS                       R15 R0 K26 ["onMouseLeave"]
       70 SETTABLE                         R15 R13 R14
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K22 ["Event"]
       74 GETTABLEKS                       R14 R14 K27 ["MouseButton1Down"]
       76 GETTABLEKS                       R15 R0 K28 ["onMouseDown"]
       78 SETTABLE                         R15 R13 R14
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K22 ["Event"]
       82 GETTABLEKS                       R14 R14 K29 ["MouseButton1Up"]
       84 GETTABLEKS                       R15 R0 K30 ["onMouseUp"]
       86 SETTABLE                         R15 R13 R14
       87 DUPTABLE                         R14 K32 [{"TextLabel"}]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K10 ["createElement"]
       91 LOADK                            R16 K31 ["TextLabel"]
       92 DUPTABLE                         R17 K40 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextXAlignment"]}]
       93 GETIMPORT                        R18 K13 [UDim2.new]
       95 LOADN                            R19 0
       96 LOADN                            R20 0
       97 LOADN                            R21 0
       98 LOADN                            R22 -1
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K35 ["Position"]
      102 GETIMPORT                        R18 K13 [UDim2.new]
      104 LOADN                            R19 1
      105 LOADN                            R20 0
      106 LOADN                            R21 1
      107 LOADN                            R22 0
      108 CALL                             R18 4 1
      109 SETTABLEKS                       R18 R17 K14 ["Size"]
      111 JUMPIFNOT                        R7 ; [+3]
      112 GETTABLEKS                       R18 R9 K41 ["textSelectedColor"]
      114 JUMPIF                           R18 ; [+2]
      115 GETTABLEKS                       R18 R9 K42 ["textColor"]
      117 SETTABLEKS                       R18 R17 K36 ["TextColor3"]
      119 SETTABLEKS                       R5 R17 K4 ["Text"]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K43 ["FONT"]
      124 SETTABLEKS                       R18 R17 K37 ["Font"]
      126 GETUPVAL                         R18 0
      127 GETTABLEKS                       R18 R18 K44 ["FONT_SIZE_SMALL"]
      129 SETTABLEKS                       R18 R17 K38 ["TextSize"]
      131 GETIMPORT                        R18 K47 [Enum.TextXAlignment.Center]
      133 SETTABLEKS                       R18 R17 K39 ["TextXAlignment"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K31 ["TextLabel"]
      138 CALL                             R11 3 -1
      139 RETURN                           R11 -1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K12 ["withContext"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K8 ["Src"]
       40 GETTABLEKS                       R8 R8 K13 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["RoundButton"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R2 K15 ["PureComponent"]
       47 LOADK                            R10 K16 ["MessageBoxButton"]
       48 NAMECALL                         R8 R8 K17 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K18 [PROTO_4]
       52 SETTABLEKS                       R9 R8 K19 ["init"]
       54 DUPCLOSURE                       R9 K20 [PROTO_5]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R9 R8 K21 ["render"]
       60 MOVE                             R9 R6
       61 DUPTABLE                         R10 K23 [{"Stylizer"}]
       62 GETTABLEKS                       R11 R5 K22 ["Stylizer"]
       64 SETTABLEKS                       R11 R10 K22 ["Stylizer"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R8 R9
       70 RETURN                           R8 1
