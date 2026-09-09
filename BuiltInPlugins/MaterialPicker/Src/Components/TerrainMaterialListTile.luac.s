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
       19 DUPTABLE                         R6 K14 [{["backgroundStyle"], ["entry"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xxsmall radius-medium clip"}]
       20 GETTABLEKS                       R7 R2 K15 ["Color"]
       22 GETTABLEKS                       R7 R7 K16 ["Surface"]
       24 GETTABLEKS                       R7 R7 K17 ["Surface_200"]
       26 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       28 GETTABLEKS                       R7 R0 K6 ["entry"]
       30 SETTABLEKS                       R7 R6 K6 ["entry"]
       32 GETTABLEKS                       R7 R0 K7 ["isSelected"]
       34 SETTABLEKS                       R7 R6 K7 ["isSelected"]
       36 GETTABLEKS                       R7 R0 K8 ["layoutOrder"]
       38 SETTABLEKS                       R7 R6 K8 ["layoutOrder"]
       40 GETTABLEKS                       R7 R0 K9 ["onActivated"]
       42 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       44 GETTABLEKS                       R7 R0 K10 ["onSecondaryActivated"]
       46 SETTABLEKS                       R7 R6 K10 ["onSecondaryActivated"]
       48 GETIMPORT                        R7 K20 [UDim2.new]
       50 LOADN                            R8 1
       51 LOADN                            R9 0
       52 LOADN                            R10 0
       53 LOADN                            R11 36
       54 CALL                             R7 4 1
       55 SETTABLEKS                       R7 R6 K11 ["Size"]
       57 DUPTABLE                         R7 K23 [{"Preview", "Labels"}]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K4 ["createElement"]
       61 GETUPVAL                         R9 5
       62 DUPTABLE                         R10 K26 [{["entry"], ["layoutOrder"], ["size"] = 32}]
       63 GETTABLEKS                       R11 R0 K6 ["entry"]
       65 SETTABLEKS                       R11 R10 K6 ["entry"]
       67 MOVE                             R11 R3
       68 CALL                             R11 0 1
       69 SETTABLEKS                       R11 R10 K8 ["layoutOrder"]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K21 ["Preview"]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K4 ["createElement"]
       77 GETUPVAL                         R9 6
       78 DUPTABLE                         R10 K29 [{["LayoutOrder"], ["tag"] = "col grow gap-xxsmall size-0-full"}]
       79 MOVE                             R11 R3
       80 CALL                             R11 0 1
       81 SETTABLEKS                       R11 R10 K27 ["LayoutOrder"]
       83 DUPTABLE                         R11 K32 [{"Name", "Slot"}]
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K4 ["createElement"]
       87 GETUPVAL                         R13 7
       88 DUPTABLE                         R14 K35 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       89 MOVE                             R15 R3
       90 CALL                             R15 0 1
       91 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
       93 GETTABLEKS                       R15 R0 K6 ["entry"]
       95 GETTABLEKS                       R15 R15 K36 ["displayName"]
       97 SETTABLEKS                       R15 R14 K33 ["Text"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K30 ["Name"]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K4 ["createElement"]
      105 GETUPVAL                         R13 7
      106 DUPTABLE                         R14 K38 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-300 text-caption-small text-align-x-left content-muted"}]
      107 MOVE                             R15 R3
      108 CALL                             R15 0 1
      109 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      111 LOADK                            R16 K39 ["%* %*"]
      112 LOADK                            R20 K40 ["Plugin"]
      113 LOADK                            R21 K41 ["SlotLabel"]
      114 NAMECALL                         R18 R1 K42 ["getText"]
      116 CALL                             R18 3 1
      117 GETTABLEKS                       R19 R0 K6 ["entry"]
      119 GETTABLEKS                       R19 R19 K43 ["slotIndex"]
      121 NAMECALL                         R16 R16 K44 ["format"]
      123 CALL                             R16 3 1
      124 MOVE                             R15 R16
      125 SETTABLEKS                       R15 R14 K33 ["Text"]
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K31 ["Slot"]
      130 CALL                             R8 3 1
      131 SETTABLEKS                       R8 R7 K22 ["Labels"]
      133 CALL                             R4 3 -1
      134 RETURN                           R4 -1

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
       51 GETTABLEKS                       R7 R4 K15 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K16 ["Localization"]
       55 GETTABLEKS                       R8 R1 K17 ["Text"]
       57 GETTABLEKS                       R9 R1 K18 ["View"]
       59 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       61 GETTABLEKS                       R11 R6 K20 ["Preview"]
       63 GETTABLEKS                       R12 R6 K21 ["Container"]
       65 DUPCLOSURE                       R13 K22 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 GETTABLEKS                       R14 R2 K23 ["memo"]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 -1
       78 RETURN                           R14 -1
