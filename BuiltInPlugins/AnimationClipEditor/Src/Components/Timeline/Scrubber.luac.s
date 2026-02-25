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
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K9 ["Children"]
       21 GETTABLE                         R10 R1 R11
       22 JUMPIF                           R10 ; [+2]
       23 NEWTABLE                         R10 0 0
       25 JUMPIFNOT                        R6 ; [+35]
       26 MOVE                             R12 R10
       27 GETUPVAL                         R14 0
       28 GETTABLEKS                       R13 R14 K10 ["createElement"]
       30 LOADK                            R14 K11 ["ImageLabel"]
       31 DUPTABLE                         R15 K16 [{"Image", "ImageColor3", "BackgroundTransparency", "Size"}]
       32 GETTABLEKS                       R17 R2 K17 ["scrubberTheme"]
       34 GETTABLEKS                       R16 R17 K18 ["image"]
       36 SETTABLEKS                       R16 R15 K12 ["Image"]
       38 GETTABLEKS                       R17 R2 K17 ["scrubberTheme"]
       40 GETTABLEKS                       R16 R17 K19 ["backgroundColor"]
       42 SETTABLEKS                       R16 R15 K13 ["ImageColor3"]
       44 LOADN                            R16 1
       45 SETTABLEKS                       R16 R15 K14 ["BackgroundTransparency"]
       47 GETIMPORT                        R16 K22 [UDim2.new]
       49 LOADN                            R17 1
       50 LOADN                            R18 0
       51 LOADN                            R19 1
       52 LOADN                            R20 0
       53 CALL                             R16 4 1
       54 SETTABLEKS                       R16 R15 K15 ["Size"]
       56 CALL                             R13 2 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R11 K25 [table.insert]
       60 CALL                             R11 -1 0
       61 MOVE                             R12 R10
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R13 R14 K10 ["createElement"]
       65 LOADK                            R14 K26 ["Frame"]
       66 DUPTABLE                         R15 K29 [{"Position", "Size", "BackgroundColor3", "AnchorPoint", "BorderSizePixel"}]
       67 GETIMPORT                        R16 K22 [UDim2.new]
       69 LOADK                            R17 K30 [0.5]
       70 LOADN                            R18 0
       71 LOADN                            R19 0
       72 LOADN                            R20 0
       73 CALL                             R16 4 1
       74 SETTABLEKS                       R16 R15 K2 ["Position"]
       76 GETIMPORT                        R16 K22 [UDim2.new]
       78 LOADN                            R17 0
       79 MOVE                             R18 R9
       80 LOADN                            R19 0
       81 MOVE                             R20 R5
       82 CALL                             R16 4 1
       83 SETTABLEKS                       R16 R15 K15 ["Size"]
       85 GETTABLEKS                       R17 R2 K17 ["scrubberTheme"]
       87 GETTABLEKS                       R16 R17 K19 ["backgroundColor"]
       89 SETTABLEKS                       R16 R15 K27 ["BackgroundColor3"]
       91 GETIMPORT                        R16 K32 [Vector2.new]
       93 LOADK                            R17 K30 [0.5]
       94 LOADN                            R18 0
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K6 ["AnchorPoint"]
       98 LOADN                            R16 0
       99 SETTABLEKS                       R16 R15 K28 ["BorderSizePixel"]
      101 CALL                             R13 2 -1
      102 FASTCALL                         TABLE_INSERT ; [+2]
      103 GETIMPORT                        R11 K25 [table.insert]
      105 CALL                             R11 -1 0
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R11 R12 K10 ["createElement"]
      109 LOADK                            R12 K26 ["Frame"]
      110 NEWTABLE                         R13 8 0
      112 LOADN                            R14 1
      113 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
      115 SETTABLEKS                       R3 R13 K2 ["Position"]
      117 SETTABLEKS                       R4 R13 K15 ["Size"]
      119 SETTABLEKS                       R8 R13 K7 ["ZIndex"]
      121 SETTABLEKS                       R7 R13 K6 ["AnchorPoint"]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R15 R16 K33 ["Event"]
      126 GETTABLEKS                       R14 R15 K34 ["InputBegan"]
      128 GETTABLEKS                       R15 R0 K35 ["onDragBegan"]
      130 SETTABLE                         R15 R13 R14
      131 MOVE                             R14 R10
      132 CALL                             R11 3 -1
      133 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
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
