PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onHovered"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onHoverEnded"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["PromptSelectorWithPreview"]
        8 GETTABLEKS                       R5 R3 K5 ["ToolbarHeight"]
       10 SUBK                             R4 R5 K4 [4]
       11 SUBK                             R5 R4 K6 [10]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K7 ["join"]
       15 MOVE                             R7 R1
       16 NEWTABLE                         R8 16 0
       18 GETIMPORT                        R9 K10 [UDim2.new]
       20 LOADN                            R10 1
       21 LOADN                            R11 0
       22 LOADN                            R12 1
       23 LOADN                            R13 0
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K11 ["Size"]
       27 GETIMPORT                        R9 K15 [Enum.SizeConstraint.RelativeYY]
       29 SETTABLEKS                       R9 R8 K13 ["SizeConstraint"]
       31 LOADN                            R9 1
       32 SETTABLEKS                       R9 R8 K16 ["BackgroundTransparency"]
       34 LOADN                            R9 0
       35 SETTABLEKS                       R9 R8 K17 ["BorderSizePixel"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K18 ["Event"]
       40 GETTABLEKS                       R9 R9 K19 ["MouseEnter"]
       42 GETTABLEKS                       R10 R0 K20 ["onHovered"]
       44 SETTABLE                         R10 R8 R9
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K18 ["Event"]
       48 GETTABLEKS                       R9 R9 K21 ["MouseLeave"]
       50 GETTABLEKS                       R10 R0 K22 ["onHoverEnded"]
       52 SETTABLE                         R10 R8 R9
       53 LOADK                            R9 K23 [""]
       54 SETTABLEKS                       R9 R8 K24 ["Image"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K25 ["None"]
       59 SETTABLEKS                       R9 R8 K26 ["Icon"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K25 ["None"]
       64 SETTABLEKS                       R9 R8 K2 ["Stylizer"]
       66 CALL                             R6 2 1
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K27 ["createElement"]
       70 LOADK                            R8 K28 ["ImageButton"]
       71 MOVE                             R9 R6
       72 DUPTABLE                         R10 K30 [{"Background"}]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R11 R11 K27 ["createElement"]
       76 LOADK                            R12 K31 ["Frame"]
       77 DUPTABLE                         R13 K36 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"], ["BorderSizePixel"] = 1, ["BackgroundColor3"]}]
       78 GETIMPORT                        R14 K38 [Vector2.new]
       80 LOADK                            R15 K39 [0.5]
       81 LOADK                            R16 K39 [0.5]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K32 ["AnchorPoint"]
       85 GETIMPORT                        R14 K10 [UDim2.new]
       87 LOADK                            R15 K39 [0.5]
       88 LOADN                            R16 0
       89 LOADK                            R17 K39 [0.5]
       90 LOADN                            R18 0
       91 CALL                             R14 4 1
       92 SETTABLEKS                       R14 R13 K33 ["Position"]
       94 GETIMPORT                        R14 K10 [UDim2.new]
       96 LOADN                            R15 0
       97 MOVE                             R16 R4
       98 LOADN                            R17 0
       99 MOVE                             R18 R4
      100 CALL                             R14 4 1
      101 SETTABLEKS                       R14 R13 K11 ["Size"]
      103 GETTABLEKS                       R15 R2 K40 ["isHovered"]
      105 JUMPIFNOT                        R15 ; [+2]
      106 LOADN                            R14 0
      107 JUMP                             ; [+1]
      108 LOADN                            R14 1
      109 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
      111 GETTABLEKS                       R14 R3 K41 ["ToolbarButtonBackgroundColor"]
      113 SETTABLEKS                       R14 R13 K35 ["BackgroundColor3"]
      115 DUPTABLE                         R14 K42 [{"Icon"}]
      116 GETUPVAL                         R15 1
      117 GETTABLEKS                       R15 R15 K27 ["createElement"]
      119 LOADK                            R16 K43 ["ImageLabel"]
      120 DUPTABLE                         R17 K45 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 1, ["Image"], ["ImageColor3"]}]
      121 GETIMPORT                        R18 K38 [Vector2.new]
      123 LOADK                            R19 K39 [0.5]
      124 LOADK                            R20 K39 [0.5]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K32 ["AnchorPoint"]
      128 GETIMPORT                        R18 K10 [UDim2.new]
      130 LOADK                            R19 K39 [0.5]
      131 LOADN                            R20 0
      132 LOADK                            R21 K39 [0.5]
      133 LOADN                            R22 0
      134 CALL                             R18 4 1
      135 SETTABLEKS                       R18 R17 K33 ["Position"]
      137 GETIMPORT                        R18 K10 [UDim2.new]
      139 LOADN                            R19 0
      140 MOVE                             R20 R5
      141 LOADN                            R21 0
      142 MOVE                             R22 R5
      143 CALL                             R18 4 1
      144 SETTABLEKS                       R18 R17 K11 ["Size"]
      146 GETTABLEKS                       R18 R1 K26 ["Icon"]
      148 SETTABLEKS                       R18 R17 K24 ["Image"]
      150 GETTABLEKS                       R19 R2 K40 ["isHovered"]
      152 JUMPIFNOT                        R19 ; [+3]
      153 GETTABLEKS                       R18 R3 K46 ["ButtonIconHoveredColor"]
      155 JUMPIF                           R18 ; [+2]
      156 GETTABLEKS                       R18 R3 K47 ["ButtonIconColor"]
      158 SETTABLEKS                       R18 R17 K44 ["ImageColor3"]
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K26 ["Icon"]
      163 CALL                             R11 3 1
      164 SETTABLEKS                       R11 R10 K29 ["Background"]
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R2 K10 ["Style"]
       31 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       33 GETTABLEKS                       R6 R2 K12 ["Dash"]
       35 GETTABLEKS                       R7 R1 K13 ["PureComponent"]
       37 LOADK                            R9 K14 ["PreviewToolbarButton"]
       38 NAMECALL                         R7 R7 K15 ["extend"]
       40 CALL                             R7 2 1
       41 DUPCLOSURE                       R8 K16 [PROTO_2]
       42 SETTABLEKS                       R8 R7 K17 ["init"]
       44 DUPCLOSURE                       R8 K18 [PROTO_3]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R8 R7 K19 ["render"]
       49 MOVE                             R8 R4
       50 DUPTABLE                         R9 K20 [{"Stylizer"}]
       51 SETTABLEKS                       R5 R9 K11 ["Stylizer"]
       53 CALL                             R8 1 1
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 MOVE                             R7 R8
       57 RETURN                           R7 1
