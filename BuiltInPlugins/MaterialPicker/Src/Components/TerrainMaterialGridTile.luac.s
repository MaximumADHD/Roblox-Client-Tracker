PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K11 [{["backgroundStyle"], ["entry"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["tag"] = "size-full radius-small clip"}]
       11 GETTABLEKS                       R5 R1 K12 ["Color"]
       13 GETTABLEKS                       R5 R5 K13 ["Shift"]
       15 GETTABLEKS                       R5 R5 K14 ["Shift_100"]
       17 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       19 GETTABLEKS                       R5 R0 K4 ["entry"]
       21 SETTABLEKS                       R5 R4 K4 ["entry"]
       23 GETTABLEKS                       R5 R0 K5 ["isSelected"]
       25 SETTABLEKS                       R5 R4 K5 ["isSelected"]
       27 GETTABLEKS                       R5 R0 K6 ["layoutOrder"]
       29 SETTABLEKS                       R5 R4 K6 ["layoutOrder"]
       31 GETTABLEKS                       R5 R0 K7 ["onActivated"]
       33 SETTABLEKS                       R5 R4 K7 ["onActivated"]
       35 GETTABLEKS                       R5 R0 K8 ["onSecondaryActivated"]
       37 SETTABLEKS                       R5 R4 K8 ["onSecondaryActivated"]
       39 DUPTABLE                         R5 K17 [{"Preview", "Labels"}]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K2 ["createElement"]
       43 GETUPVAL                         R7 3
       44 DUPTABLE                         R8 K24 [{["entry"], ["initialDistance"] = 5.5, ["position"], ["size"] = 40, ["tag"] = "anchor-top-center radius-xsmall clip"}]
       45 GETTABLEKS                       R9 R0 K4 ["entry"]
       47 SETTABLEKS                       R9 R8 K4 ["entry"]
       49 GETIMPORT                        R9 K27 [UDim2.new]
       51 LOADK                            R10 K28 [0.5]
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 GETTABLEKS                       R13 R1 K29 ["Padding"]
       56 GETTABLEKS                       R13 R13 K30 ["XSmall"]
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K20 ["position"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K15 ["Preview"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K2 ["createElement"]
       67 GETUPVAL                         R7 4
       68 DUPTABLE                         R8 K34 [{["ZIndex"] = 2, ["tag"] = "position-bottom-left anchor-bottom-left size-full-600"}]
       69 DUPTABLE                         R9 K37 [{"Gradient", "Name"}]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K2 ["createElement"]
       73 GETUPVAL                         R11 5
       74 DUPTABLE                         R12 K41 [{["Image"], ["Size"], ["ZIndex"] = 1}]
       75 GETTABLEKS                       R14 R1 K42 ["Config"]
       77 GETTABLEKS                       R14 R14 K43 ["ColorMode"]
       79 GETTABLEKS                       R14 R14 K36 ["Name"]
       81 GETUPVAL                         R15 6
       82 GETTABLEKS                       R15 R15 K44 ["Light"]
       84 JUMPIFNOTEQ                      R14 R15 ; [+3]
       86 LOADK                            R13 K45 ["rbxasset://textures/MaterialManager/Gradient_LT.png"]
       87 JUMP                             ; [+1]
       88 LOADK                            R13 K46 ["rbxasset://textures/MaterialManager/Gradient_DT.png"]
       89 SETTABLEKS                       R13 R12 K38 ["Image"]
       91 GETIMPORT                        R13 K48 [UDim2.fromScale]
       93 LOADN                            R14 1
       94 LOADN                            R15 1
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K39 ["Size"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K35 ["Gradient"]
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R10 R10 K2 ["createElement"]
      104 GETUPVAL                         R11 7
      105 DUPTABLE                         R12 K52 [{["Text"], ["textStyle"], ["ZIndex"] = 2, ["tag"] = "size-full padding-top-small padding-x-xsmall padding-bottom-xxsmall text-caption-small text-align-x-left text-align-y-center text-truncate-end"}]
      106 GETTABLEKS                       R13 R0 K4 ["entry"]
      108 GETTABLEKS                       R13 R13 K53 ["displayName"]
      110 SETTABLEKS                       R13 R12 K49 ["Text"]
      112 GETTABLEKS                       R14 R1 K42 ["Config"]
      114 GETTABLEKS                       R14 R14 K43 ["ColorMode"]
      116 GETTABLEKS                       R14 R14 K36 ["Name"]
      118 GETUPVAL                         R15 6
      119 GETTABLEKS                       R15 R15 K44 ["Light"]
      121 JUMPIFNOTEQ                      R14 R15 ; [+10]
      123 GETTABLEKS                       R13 R1 K12 ["Color"]
      125 GETTABLEKS                       R13 R13 K54 ["Extended"]
      127 GETTABLEKS                       R13 R13 K55 ["Black"]
      129 GETTABLEKS                       R13 R13 K56 ["Black_100"]
      131 JUMP                             ; [+8]
      132 GETTABLEKS                       R13 R1 K12 ["Color"]
      134 GETTABLEKS                       R13 R13 K54 ["Extended"]
      136 GETTABLEKS                       R13 R13 K57 ["White"]
      138 GETTABLEKS                       R13 R13 K58 ["White_100"]
      140 SETTABLEKS                       R13 R12 K50 ["textStyle"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K36 ["Name"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K16 ["Labels"]
      148 CALL                             R2 3 -1
      149 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["TerrainPalette"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["TerrainMaterialTileBase"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Enums"]
       39 GETTABLEKS                       R5 R5 K14 ["ColorMode"]
       41 GETTABLEKS                       R6 R1 K15 ["Image"]
       43 GETTABLEKS                       R7 R1 K16 ["Text"]
       45 GETTABLEKS                       R8 R1 K17 ["View"]
       47 GETTABLEKS                       R9 R4 K18 ["Preview"]
       49 GETTABLEKS                       R10 R4 K19 ["Container"]
       51 DUPCLOSURE                       R11 K20 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 GETTABLEKS                       R12 R2 K21 ["memo"]
       62 MOVE                             R13 R11
       63 CALL                             R12 1 -1
       64 RETURN                           R12 -1
