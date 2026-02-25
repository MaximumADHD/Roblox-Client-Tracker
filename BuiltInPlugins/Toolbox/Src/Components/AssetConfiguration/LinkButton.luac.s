PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"hovered"}]
        2 LOADB                            R6 1
        3 SETTABLEKS                       R6 R5 K0 ["hovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"hovered"}]
        2 LOADB                            R6 0
        3 SETTABLEKS                       R6 R5 K0 ["hovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"hovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["hovered"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R0 K5 ["onActivated"]
       18 RETURN                           R0 0

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
       15 LOADN                            R10 15
       16 LOADN                            R11 15
       17 CALL                             R9 2 -1
       18 CALL                             R5 -1 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K8 ["createElement"]
       22 LOADK                            R7 K9 ["Frame"]
       23 DUPTABLE                         R8 K14 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       24 GETTABLEKS                       R9 R1 K10 ["Size"]
       26 SETTABLEKS                       R9 R8 K10 ["Size"]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       31 LOADN                            R9 0
       32 SETTABLEKS                       R9 R8 K12 ["BorderSizePixel"]
       34 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
       36 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       38 DUPTABLE                         R9 K16 [{"Link"}]
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R10 R11 K8 ["createElement"]
       42 LOADK                            R11 K17 ["TextButton"]
       43 NEWTABLE                         R12 16 0
       45 GETIMPORT                        R13 K19 [UDim2.new]
       47 LOADN                            R14 0
       48 GETTABLEKS                       R15 R5 K20 ["X"]
       50 LOADN                            R16 0
       51 GETTABLEKS                       R17 R5 K21 ["Y"]
       53 CALL                             R13 4 1
       54 SETTABLEKS                       R13 R12 K10 ["Size"]
       56 LOADN                            R13 1
       57 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
       59 LOADN                            R13 0
       60 SETTABLEKS                       R13 R12 K12 ["BorderSizePixel"]
       62 GETTABLEKS                       R13 R1 K4 ["Text"]
       64 SETTABLEKS                       R13 R12 K4 ["Text"]
       66 GETTABLEKS                       R13 R1 K22 ["TextSize"]
       68 SETTABLEKS                       R13 R12 K22 ["TextSize"]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R13 R14 K23 ["FONT"]
       73 SETTABLEKS                       R13 R12 K24 ["Font"]
       75 LOADB                            R13 1
       76 SETTABLEKS                       R13 R12 K25 ["TextScaled"]
       78 GETTABLEKS                       R13 R4 K26 ["textColor"]
       80 SETTABLEKS                       R13 R12 K27 ["TextColor3"]
       82 GETIMPORT                        R13 K31 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R13 R12 K29 ["TextXAlignment"]
       86 GETIMPORT                        R13 K34 [Enum.TextYAlignment.Center]
       88 SETTABLEKS                       R13 R12 K32 ["TextYAlignment"]
       90 GETUPVAL                         R15 1
       91 GETTABLEKS                       R14 R15 K35 ["Event"]
       93 GETTABLEKS                       R13 R14 K36 ["MouseEnter"]
       95 GETTABLEKS                       R14 R0 K37 ["onMouseEnter"]
       97 SETTABLE                         R14 R12 R13
       98 GETUPVAL                         R15 1
       99 GETTABLEKS                       R14 R15 K35 ["Event"]
      101 GETTABLEKS                       R13 R14 K38 ["MouseLeave"]
      103 GETTABLEKS                       R14 R0 K39 ["onMouseLeave"]
      105 SETTABLE                         R14 R12 R13
      106 GETUPVAL                         R15 1
      107 GETTABLEKS                       R14 R15 K35 ["Event"]
      109 GETTABLEKS                       R13 R14 K40 ["Activated"]
      111 GETTABLEKS                       R14 R0 K41 ["onActivated"]
      113 SETTABLE                         R14 R12 R13
      114 DUPTABLE                         R13 K43 [{"UnderLine"}]
      115 GETTABLEKS                       R14 R2 K44 ["hovered"]
      117 JUMPIFNOT                        R14 ; [+39]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R14 R15 K8 ["createElement"]
      121 LOADK                            R15 K9 ["Frame"]
      122 DUPTABLE                         R16 K48 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      123 GETIMPORT                        R17 K7 [Vector2.new]
      125 LOADN                            R18 0
      126 LOADN                            R19 1
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K45 ["AnchorPoint"]
      130 GETIMPORT                        R17 K19 [UDim2.new]
      132 LOADN                            R18 0
      133 LOADN                            R19 0
      134 LOADN                            R20 1
      135 LOADN                            R21 0
      136 CALL                             R17 4 1
      137 SETTABLEKS                       R17 R16 K46 ["Position"]
      139 GETIMPORT                        R17 K19 [UDim2.new]
      141 LOADN                            R18 0
      142 GETTABLEKS                       R19 R5 K20 ["X"]
      144 LOADN                            R20 0
      145 LOADN                            R21 1
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K10 ["Size"]
      149 GETTABLEKS                       R17 R4 K26 ["textColor"]
      151 SETTABLEKS                       R17 R16 K47 ["BackgroundColor3"]
      153 LOADN                            R17 0
      154 SETTABLEKS                       R17 R16 K12 ["BorderSizePixel"]
      156 CALL                             R14 2 1
      157 SETTABLEKS                       R14 R13 K42 ["UnderLine"]
      159 CALL                             R10 3 1
      160 SETTABLEKS                       R10 R9 K15 ["Link"]
      162 CALL                             R6 3 -1
      163 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K12 ["withContext"]
       36 GETTABLEKS                       R9 R3 K9 ["Util"]
       38 GETTABLEKS                       R8 R9 K13 ["GetTextSize"]
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
