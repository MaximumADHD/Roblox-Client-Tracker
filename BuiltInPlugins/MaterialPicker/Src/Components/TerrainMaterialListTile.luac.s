PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["createElement"]
       18 GETUPVAL                         R5 4
       19 DUPTABLE                         R6 K15 [{["backgroundStyle"], ["entry"], ["isDisabled"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xxsmall radius-medium clip"}]
       20 GETTABLEKS                       R7 R2 K16 ["Color"]
       22 GETTABLEKS                       R7 R7 K17 ["Surface"]
       24 GETTABLEKS                       R7 R7 K18 ["Surface_200"]
       26 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       28 GETTABLEKS                       R7 R0 K6 ["entry"]
       30 SETTABLEKS                       R7 R6 K6 ["entry"]
       32 GETTABLEKS                       R7 R0 K7 ["isDisabled"]
       34 SETTABLEKS                       R7 R6 K7 ["isDisabled"]
       36 GETTABLEKS                       R7 R0 K8 ["isSelected"]
       38 SETTABLEKS                       R7 R6 K8 ["isSelected"]
       40 GETTABLEKS                       R7 R0 K9 ["layoutOrder"]
       42 SETTABLEKS                       R7 R6 K9 ["layoutOrder"]
       44 GETTABLEKS                       R7 R0 K10 ["onActivated"]
       46 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       48 GETTABLEKS                       R7 R0 K11 ["onSecondaryActivated"]
       50 SETTABLEKS                       R7 R6 K11 ["onSecondaryActivated"]
       52 GETIMPORT                        R7 K21 [UDim2.new]
       54 LOADN                            R8 1
       55 LOADN                            R9 0
       56 LOADN                            R10 0
       57 LOADN                            R11 36
       58 CALL                             R7 4 1
       59 SETTABLEKS                       R7 R6 K12 ["Size"]
       61 DUPTABLE                         R7 K24 [{"Preview", "Labels"}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K4 ["createElement"]
       65 GETUPVAL                         R9 5
       66 DUPTABLE                         R10 K28 [{["entry"], ["initialDistance"], ["layoutOrder"], ["size"] = 32}]
       67 GETTABLEKS                       R11 R0 K6 ["entry"]
       69 SETTABLEKS                       R11 R10 K6 ["entry"]
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R11 R11 K29 ["MATERIAL_PREVIEW_CAMERA_DISTANCE"]
       74 SETTABLEKS                       R11 R10 K25 ["initialDistance"]
       76 MOVE                             R11 R3
       77 CALL                             R11 0 1
       78 SETTABLEKS                       R11 R10 K9 ["layoutOrder"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K22 ["Preview"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K4 ["createElement"]
       86 GETUPVAL                         R9 7
       87 DUPTABLE                         R10 K32 [{["LayoutOrder"], ["tag"] = "col grow gap-xxsmall size-0-full"}]
       88 MOVE                             R11 R3
       89 CALL                             R11 0 1
       90 SETTABLEKS                       R11 R10 K30 ["LayoutOrder"]
       92 DUPTABLE                         R11 K35 [{"Name", "Slot"}]
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K4 ["createElement"]
       96 GETUPVAL                         R13 8
       97 DUPTABLE                         R14 K38 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       98 MOVE                             R15 R3
       99 CALL                             R15 0 1
      100 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      102 GETTABLEKS                       R15 R0 K6 ["entry"]
      104 GETTABLEKS                       R15 R15 K39 ["displayName"]
      106 SETTABLEKS                       R15 R14 K36 ["Text"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K33 ["Name"]
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K4 ["createElement"]
      114 GETUPVAL                         R13 8
      115 DUPTABLE                         R14 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-300 text-caption-small text-align-x-left content-muted"}]
      116 MOVE                             R15 R3
      117 CALL                             R15 0 1
      118 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      120 LOADK                            R15 K42 ["%* %*"]
      121 LOADK                            R19 K43 ["Plugin"]
      122 LOADK                            R20 K44 ["SlotLabel"]
      123 NAMECALL                         R17 R1 K45 ["getText"]
      125 CALL                             R17 3 1
      126 GETTABLEKS                       R18 R0 K6 ["entry"]
      128 GETTABLEKS                       R18 R18 K46 ["slotIndex"]
      130 NAMECALL                         R15 R15 K47 ["format"]
      132 CALL                             R15 3 1
      133 SETTABLEKS                       R15 R14 K36 ["Text"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K34 ["Slot"]
      138 CALL                             R8 3 1
      139 SETTABLEKS                       R8 R7 K23 ["Labels"]
      141 CALL                             R4 3 -1
      142 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["TerrainMaterialTileBase"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Constants"]
       57 GETTABLEKS                       R8 R8 K16 ["TERRAIN_CUSTOM_MATERIALS"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R4 K17 ["Contexts"]
       62 GETTABLEKS                       R8 R8 K18 ["Localization"]
       64 GETTABLEKS                       R9 R1 K19 ["Text"]
       66 GETTABLEKS                       R10 R1 K20 ["View"]
       68 GETTABLEKS                       R11 R3 K21 ["createNextOrder"]
       70 GETTABLEKS                       R12 R6 K22 ["Preview"]
       72 GETTABLEKS                       R13 R6 K23 ["Container"]
       74 DUPCLOSURE                       R14 K24 [PROTO_0]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 GETTABLEKS                       R15 R2 K25 ["memo"]
       86 MOVE                             R16 R14
       87 CALL                             R15 1 -1
       88 RETURN                           R15 -1
