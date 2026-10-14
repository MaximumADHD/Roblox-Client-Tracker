PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K12 [{["backgroundStyle"], ["entry"], ["isDisabled"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["tag"] = "size-full radius-small clip"}]
       11 GETTABLEKS                       R5 R1 K13 ["Color"]
       13 GETTABLEKS                       R5 R5 K14 ["Shift"]
       15 GETTABLEKS                       R5 R5 K15 ["Shift_100"]
       17 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       19 GETTABLEKS                       R5 R0 K4 ["entry"]
       21 SETTABLEKS                       R5 R4 K4 ["entry"]
       23 GETTABLEKS                       R5 R0 K5 ["isDisabled"]
       25 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       27 GETTABLEKS                       R5 R0 K6 ["isSelected"]
       29 SETTABLEKS                       R5 R4 K6 ["isSelected"]
       31 GETTABLEKS                       R5 R0 K7 ["layoutOrder"]
       33 SETTABLEKS                       R5 R4 K7 ["layoutOrder"]
       35 GETTABLEKS                       R5 R0 K8 ["onActivated"]
       37 SETTABLEKS                       R5 R4 K8 ["onActivated"]
       39 GETTABLEKS                       R5 R0 K9 ["onSecondaryActivated"]
       41 SETTABLEKS                       R5 R4 K9 ["onSecondaryActivated"]
       43 DUPTABLE                         R5 K18 [{"Preview", "Labels"}]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K2 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K24 [{["entry"], ["initialDistance"], ["position"], ["size"] = 40, ["tag"] = "anchor-top-center radius-xsmall clip"}]
       49 GETTABLEKS                       R9 R0 K4 ["entry"]
       51 SETTABLEKS                       R9 R8 K4 ["entry"]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K25 ["MATERIAL_PREVIEW_CAMERA_DISTANCE"]
       56 SETTABLEKS                       R9 R8 K19 ["initialDistance"]
       58 GETIMPORT                        R9 K28 [UDim2.new]
       60 LOADK                            R10 K29 [0.5]
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 GETTABLEKS                       R13 R1 K30 ["Padding"]
       65 GETTABLEKS                       R13 R13 K31 ["XSmall"]
       67 CALL                             R9 4 1
       68 SETTABLEKS                       R9 R8 K20 ["position"]
       70 CALL                             R6 2 1
       71 SETTABLEKS                       R6 R5 K16 ["Preview"]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K2 ["createElement"]
       76 GETUPVAL                         R7 5
       77 DUPTABLE                         R8 K35 [{["ZIndex"] = 2, ["tag"] = "position-bottom-left anchor-bottom-left size-full-600"}]
       78 DUPTABLE                         R9 K38 [{"Gradient", "Name"}]
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R10 R10 K2 ["createElement"]
       82 GETUPVAL                         R11 6
       83 DUPTABLE                         R12 K42 [{["Image"], ["Size"], ["ZIndex"] = 1}]
       84 GETTABLEKS                       R14 R1 K43 ["Config"]
       86 GETTABLEKS                       R14 R14 K44 ["ColorMode"]
       88 GETTABLEKS                       R14 R14 K37 ["Name"]
       90 GETUPVAL                         R15 7
       91 GETTABLEKS                       R15 R15 K45 ["Light"]
       93 JUMPIFNOTEQ                      R14 R15 ; [+3]
       95 LOADK                            R13 K46 ["rbxasset://textures/MaterialManager/Gradient_LT.png"]
       96 JUMP                             ; [+1]
       97 LOADK                            R13 K47 ["rbxasset://textures/MaterialManager/Gradient_DT.png"]
       98 SETTABLEKS                       R13 R12 K39 ["Image"]
      100 GETIMPORT                        R13 K49 [UDim2.fromScale]
      102 LOADN                            R14 1
      103 LOADN                            R15 1
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K40 ["Size"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K36 ["Gradient"]
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K2 ["createElement"]
      113 GETUPVAL                         R11 8
      114 DUPTABLE                         R12 K53 [{["Text"], ["textStyle"], ["ZIndex"] = 2, ["tag"] = "size-full padding-top-small padding-x-xsmall padding-bottom-xxsmall text-caption-small text-align-x-left text-align-y-center text-truncate-end"}]
      115 GETTABLEKS                       R13 R0 K4 ["entry"]
      117 GETTABLEKS                       R13 R13 K54 ["displayName"]
      119 SETTABLEKS                       R13 R12 K50 ["Text"]
      121 GETTABLEKS                       R14 R1 K43 ["Config"]
      123 GETTABLEKS                       R14 R14 K44 ["ColorMode"]
      125 GETTABLEKS                       R14 R14 K37 ["Name"]
      127 GETUPVAL                         R15 7
      128 GETTABLEKS                       R15 R15 K45 ["Light"]
      130 JUMPIFNOTEQ                      R14 R15 ; [+10]
      132 GETTABLEKS                       R13 R1 K13 ["Color"]
      134 GETTABLEKS                       R13 R13 K55 ["Extended"]
      136 GETTABLEKS                       R13 R13 K56 ["Black"]
      138 GETTABLEKS                       R13 R13 K57 ["Black_100"]
      140 JUMP                             ; [+8]
      141 GETTABLEKS                       R13 R1 K13 ["Color"]
      143 GETTABLEKS                       R13 R13 K55 ["Extended"]
      145 GETTABLEKS                       R13 R13 K58 ["White"]
      147 GETTABLEKS                       R13 R13 K59 ["White_100"]
      149 SETTABLEKS                       R13 R12 K51 ["textStyle"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K37 ["Name"]
      154 CALL                             R6 3 1
      155 SETTABLEKS                       R6 R5 K17 ["Labels"]
      157 CALL                             R2 3 -1
      158 RETURN                           R2 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Constants"]
       43 GETTABLEKS                       R6 R6 K14 ["TERRAIN_CUSTOM_MATERIALS"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["Enums"]
       48 GETTABLEKS                       R6 R6 K16 ["ColorMode"]
       50 GETTABLEKS                       R7 R1 K17 ["Image"]
       52 GETTABLEKS                       R8 R1 K18 ["Text"]
       54 GETTABLEKS                       R9 R1 K19 ["View"]
       56 GETTABLEKS                       R10 R4 K20 ["Preview"]
       58 GETTABLEKS                       R11 R4 K21 ["Container"]
       60 DUPCLOSURE                       R12 K22 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 GETTABLEKS                       R13 R2 K23 ["memo"]
       72 MOVE                             R14 R12
       73 CALL                             R13 1 -1
       74 RETURN                           R13 -1
