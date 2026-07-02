PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["HeadSize"]
        8 GETTABLEKS                       R5 R1 K4 ["Height"]
       10 GETTABLEKS                       R6 R1 K5 ["ShowHead"]
       12 GETTABLEKS                       R7 R1 K6 ["AnchorPoint"]
       14 GETTABLEKS                       R8 R1 K7 ["ZIndex"]
       16 GETTABLEKS                       R9 R1 K8 ["Thickness"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K9 ["Children"]
       21 GETTABLE                         R10 R1 R11
       22 JUMPIF                           R10 ; [+2]
       23 NEWTABLE                         R10 0 0
       25 JUMPIFNOT                        R6 ; [+32]
       26 MOVE                             R12 R10
       27 GETUPVAL                         R13 0
       28 GETTABLEKS                       R13 R13 K10 ["createElement"]
       30 LOADK                            R14 K11 ["ImageLabel"]
       31 DUPTABLE                         R15 K17 [{["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["Size"]}]
       32 GETTABLEKS                       R16 R2 K18 ["scrubberTheme"]
       34 GETTABLEKS                       R16 R16 K19 ["image"]
       36 SETTABLEKS                       R16 R15 K12 ["Image"]
       38 GETTABLEKS                       R16 R2 K18 ["scrubberTheme"]
       40 GETTABLEKS                       R16 R16 K20 ["backgroundColor"]
       42 SETTABLEKS                       R16 R15 K13 ["ImageColor3"]
       44 GETIMPORT                        R16 K23 [UDim2.new]
       46 LOADN                            R17 1
       47 LOADN                            R18 0
       48 LOADN                            R19 1
       49 LOADN                            R20 0
       50 CALL                             R16 4 1
       51 SETTABLEKS                       R16 R15 K16 ["Size"]
       53 CALL                             R13 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R11 K26 [table.insert]
       57 CALL                             R11 -1 0
       58 MOVE                             R12 R10
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K10 ["createElement"]
       62 LOADK                            R14 K27 ["Frame"]
       63 DUPTABLE                         R15 K31 [{["Position"], ["Size"], ["BackgroundColor3"], ["AnchorPoint"], ["BorderSizePixel"] = 0}]
       64 GETIMPORT                        R16 K23 [UDim2.new]
       66 LOADK                            R17 K32 [0.5]
       67 LOADN                            R18 0
       68 LOADN                            R19 0
       69 LOADN                            R20 0
       70 CALL                             R16 4 1
       71 SETTABLEKS                       R16 R15 K2 ["Position"]
       73 GETIMPORT                        R16 K23 [UDim2.new]
       75 LOADN                            R17 0
       76 MOVE                             R18 R9
       77 LOADN                            R19 0
       78 MOVE                             R20 R5
       79 CALL                             R16 4 1
       80 SETTABLEKS                       R16 R15 K16 ["Size"]
       82 GETTABLEKS                       R16 R2 K18 ["scrubberTheme"]
       84 GETTABLEKS                       R16 R16 K20 ["backgroundColor"]
       86 SETTABLEKS                       R16 R15 K28 ["BackgroundColor3"]
       88 GETIMPORT                        R16 K34 [Vector2.new]
       90 LOADK                            R17 K32 [0.5]
       91 LOADN                            R18 0
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K6 ["AnchorPoint"]
       95 CALL                             R13 2 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R11 K26 [table.insert]
       99 CALL                             R11 -1 0
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K10 ["createElement"]
      103 LOADK                            R12 K27 ["Frame"]
      104 NEWTABLE                         R13 8 0
      106 LOADN                            R14 1
      107 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
      109 SETTABLEKS                       R3 R13 K2 ["Position"]
      111 SETTABLEKS                       R4 R13 K16 ["Size"]
      113 SETTABLEKS                       R8 R13 K7 ["ZIndex"]
      115 SETTABLEKS                       R7 R13 K6 ["AnchorPoint"]
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K35 ["Event"]
      120 GETTABLEKS                       R14 R14 K36 ["InputBegan"]
      122 GETTABLEKS                       R15 R0 K37 ["onDragBegan"]
      124 SETTABLE                         R15 R13 R14
      125 MOVE                             R14 R10
      126 CALL                             R11 3 -1
      127 RETURN                           R11 -1

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
       27 LOADK                            R7 K12 ["Scrubber"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R4
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
