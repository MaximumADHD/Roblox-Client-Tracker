PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIF                           R1 ; [+5]
        3 DUPTABLE                         R1 K1 [{"isHovered"}]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 DUPTABLE                         R1 K1 [{"isHovered"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnClick"]
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 GETTABLEKS                       R1 R0 K1 ["OnClick"]
        9 GETTABLEKS                       R2 R0 K2 ["Text"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"isHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onClick"]
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["AutomaticSize"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["OnClick"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["Text"]
       14 GETTABLEKS                       R9 R0 K7 ["state"]
       16 GETTABLEKS                       R8 R9 K8 ["isHovered"]
       18 GETTABLEKS                       R9 R2 K9 ["searchPill"]
       20 LOADNIL                          R10
       21 JUMPIFNOT                        R8 ; [+3]
       22 GETTABLEKS                       R10 R9 K10 ["backgroundColorHovered"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R10 R9 K11 ["backgroundColor"]
       27 JUMPIFNOT                        R6 ; [+2]
       28 LOADN                            R11 0
       29 JUMP                             ; [+9]
       30 GETTABLEKS                       R13 R9 K12 ["padding"]
       32 GETTABLEKS                       R12 R13 K13 ["left"]
       34 GETTABLEKS                       R14 R9 K12 ["padding"]
       36 GETTABLEKS                       R13 R14 K14 ["right"]
       38 ADD                              R11 R12 R13
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R12 R13 K15 ["createElement"]
       42 LOADK                            R13 K16 ["TextButton"]
       43 NEWTABLE                         R14 16 0
       45 SETTABLEKS                       R3 R14 K2 ["AutomaticSize"]
       47 LOADB                            R15 0
       48 SETTABLEKS                       R15 R14 K17 ["AutoButtonColor"]
       50 SETTABLEKS                       R10 R14 K18 ["BackgroundColor3"]
       52 LOADB                            R15 1
       53 SETTABLEKS                       R15 R14 K19 ["ClipsDescendants"]
       55 GETTABLEKS                       R15 R9 K20 ["font"]
       57 SETTABLEKS                       R15 R14 K21 ["Font"]
       59 SETTABLEKS                       R4 R14 K3 ["LayoutOrder"]
       61 SETTABLEKS                       R6 R14 K5 ["Size"]
       63 SETTABLEKS                       R7 R14 K6 ["Text"]
       65 GETTABLEKS                       R15 R9 K22 ["textColor"]
       67 SETTABLEKS                       R15 R14 K23 ["TextColor3"]
       69 GETTABLEKS                       R15 R9 K24 ["textSize"]
       71 SETTABLEKS                       R15 R14 K25 ["TextSize"]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R16 R17 K26 ["Event"]
       76 GETTABLEKS                       R15 R16 K27 ["Activated"]
       78 GETTABLEKS                       R16 R0 K28 ["onClick"]
       80 SETTABLE                         R16 R14 R15
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R16 R17 K26 ["Event"]
       84 GETTABLEKS                       R15 R16 K29 ["MouseEnter"]
       86 GETTABLEKS                       R16 R0 K30 ["onMouseEnter"]
       88 SETTABLE                         R16 R14 R15
       89 GETUPVAL                         R17 0
       90 GETTABLEKS                       R16 R17 K26 ["Event"]
       92 GETTABLEKS                       R15 R16 K31 ["MouseLeave"]
       94 GETTABLEKS                       R16 R0 K32 ["onMouseLeave"]
       96 SETTABLE                         R16 R14 R15
       97 DUPTABLE                         R15 K36 [{"UICorner", "UIPadding", "HoverArea"}]
       98 GETUPVAL                         R17 0
       99 GETTABLEKS                       R16 R17 K15 ["createElement"]
      101 LOADK                            R17 K33 ["UICorner"]
      102 DUPTABLE                         R18 K38 [{"CornerRadius"}]
      103 GETIMPORT                        R19 K41 [UDim.new]
      105 LOADN                            R20 0
      106 LOADN                            R21 14
      107 CALL                             R19 2 1
      108 SETTABLEKS                       R19 R18 K37 ["CornerRadius"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K33 ["UICorner"]
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R16 R17 K15 ["createElement"]
      116 LOADK                            R17 K34 ["UIPadding"]
      117 DUPTABLE                         R18 K46 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      118 GETIMPORT                        R19 K41 [UDim.new]
      120 LOADN                            R20 0
      121 GETTABLEKS                       R22 R9 K12 ["padding"]
      123 GETTABLEKS                       R21 R22 K47 ["bottom"]
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K42 ["PaddingBottom"]
      128 GETIMPORT                        R19 K41 [UDim.new]
      130 LOADN                            R20 0
      131 MOVE                             R21 R11
      132 CALL                             R19 2 1
      133 SETTABLEKS                       R19 R18 K43 ["PaddingLeft"]
      135 GETIMPORT                        R19 K41 [UDim.new]
      137 LOADN                            R20 0
      138 MOVE                             R21 R11
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K44 ["PaddingRight"]
      142 GETIMPORT                        R19 K41 [UDim.new]
      144 LOADN                            R20 0
      145 GETTABLEKS                       R22 R9 K12 ["padding"]
      147 GETTABLEKS                       R21 R22 K48 ["top"]
      149 CALL                             R19 2 1
      150 SETTABLEKS                       R19 R18 K45 ["PaddingTop"]
      152 CALL                             R16 2 1
      153 SETTABLEKS                       R16 R15 K34 ["UIPadding"]
      155 MOVE                             R16 R5
      156 JUMPIFNOT                        R16 ; [+18]
      157 GETUPVAL                         R17 0
      158 GETTABLEKS                       R16 R17 K15 ["createElement"]
      160 GETUPVAL                         R17 1
      161 DUPTABLE                         R18 K50 [{"Cursor", "Size"}]
      162 LOADK                            R19 K51 ["PointingHand"]
      163 SETTABLEKS                       R19 R18 K49 ["Cursor"]
      165 GETIMPORT                        R19 K53 [UDim2.new]
      167 LOADN                            R20 1
      168 LOADN                            R21 0
      169 LOADN                            R22 1
      170 LOADN                            R23 0
      171 CALL                             R19 4 1
      172 SETTABLEKS                       R19 R18 K5 ["Size"]
      174 CALL                             R16 2 1
      175 SETTABLEKS                       R16 R15 K35 ["HoverArea"]
      177 CALL                             R12 3 -1
      178 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R6 R2 K10 ["UI"]
       23 GETTABLEKS                       R5 R6 K11 ["HoverArea"]
       25 GETTABLEKS                       R6 R4 K12 ["withContext"]
       27 GETTABLEKS                       R7 R3 K13 ["PureComponent"]
       29 LOADK                            R9 K14 ["SearchPill"]
       30 NAMECALL                         R7 R7 K15 ["extend"]
       32 CALL                             R7 2 1
       33 DUPCLOSURE                       R8 K16 [PROTO_5]
       34 SETTABLEKS                       R8 R7 K17 ["init"]
       36 DUPCLOSURE                       R8 K18 [PROTO_6]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R8 R7 K19 ["render"]
       41 MOVE                             R8 R6
       42 DUPTABLE                         R9 K21 [{"Stylizer"}]
       43 GETTABLEKS                       R10 R4 K20 ["Stylizer"]
       45 SETTABLEKS                       R10 R9 K20 ["Stylizer"]
       47 CALL                             R8 1 1
       48 MOVE                             R9 R7
       49 CALL                             R8 1 1
       50 MOVE                             R7 R8
       51 RETURN                           R7 1
