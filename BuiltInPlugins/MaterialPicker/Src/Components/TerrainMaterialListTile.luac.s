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
       19 DUPTABLE                         R6 K13 [{["backgroundStyle"], ["entry"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xxsmall radius-medium clip"}]
       20 GETTABLEKS                       R7 R2 K14 ["Color"]
       22 GETTABLEKS                       R7 R7 K15 ["Surface"]
       24 GETTABLEKS                       R7 R7 K16 ["Surface_200"]
       26 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       28 GETTABLEKS                       R7 R0 K6 ["entry"]
       30 SETTABLEKS                       R7 R6 K6 ["entry"]
       32 GETTABLEKS                       R7 R0 K7 ["isSelected"]
       34 SETTABLEKS                       R7 R6 K7 ["isSelected"]
       36 GETTABLEKS                       R7 R0 K8 ["layoutOrder"]
       38 SETTABLEKS                       R7 R6 K8 ["layoutOrder"]
       40 GETTABLEKS                       R7 R0 K9 ["onActivated"]
       42 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       44 GETIMPORT                        R7 K19 [UDim2.new]
       46 LOADN                            R8 1
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 36
       50 CALL                             R7 4 1
       51 SETTABLEKS                       R7 R6 K10 ["Size"]
       53 DUPTABLE                         R7 K22 [{"Preview", "Labels"}]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K4 ["createElement"]
       57 GETUPVAL                         R9 5
       58 DUPTABLE                         R10 K25 [{["entry"], ["layoutOrder"], ["size"] = 32}]
       59 GETTABLEKS                       R11 R0 K6 ["entry"]
       61 SETTABLEKS                       R11 R10 K6 ["entry"]
       63 MOVE                             R11 R3
       64 CALL                             R11 0 1
       65 SETTABLEKS                       R11 R10 K8 ["layoutOrder"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K20 ["Preview"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["createElement"]
       73 GETUPVAL                         R9 6
       74 DUPTABLE                         R10 K28 [{["LayoutOrder"], ["tag"] = "col grow gap-xxsmall size-0-full"}]
       75 MOVE                             R11 R3
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
       79 DUPTABLE                         R11 K31 [{"Name", "Slot"}]
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K4 ["createElement"]
       83 GETUPVAL                         R13 7
       84 DUPTABLE                         R14 K34 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       85 MOVE                             R15 R3
       86 CALL                             R15 0 1
       87 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
       89 GETTABLEKS                       R15 R0 K6 ["entry"]
       91 GETTABLEKS                       R15 R15 K35 ["displayName"]
       93 SETTABLEKS                       R15 R14 K32 ["Text"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K29 ["Name"]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K4 ["createElement"]
      101 GETUPVAL                         R13 7
      102 DUPTABLE                         R14 K37 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-300 text-caption-small text-align-x-left content-muted"}]
      103 MOVE                             R15 R3
      104 CALL                             R15 0 1
      105 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
      107 LOADK                            R16 K38 ["%* %*"]
      108 LOADK                            R20 K39 ["Plugin"]
      109 LOADK                            R21 K40 ["SlotLabel"]
      110 NAMECALL                         R18 R1 K41 ["getText"]
      112 CALL                             R18 3 1
      113 GETTABLEKS                       R19 R0 K6 ["entry"]
      115 GETTABLEKS                       R19 R19 K42 ["slotIndex"]
      117 NAMECALL                         R16 R16 K43 ["format"]
      119 CALL                             R16 3 1
      120 MOVE                             R15 R16
      121 SETTABLEKS                       R15 R14 K32 ["Text"]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K30 ["Slot"]
      126 CALL                             R8 3 1
      127 SETTABLEKS                       R8 R7 K21 ["Labels"]
      129 CALL                             R4 3 -1
      130 RETURN                           R4 -1

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
