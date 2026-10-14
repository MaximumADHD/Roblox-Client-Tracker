PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMaterialPreviewOverride"]
        3 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETTABLEKS                       R2 R1 K2 ["material"]
        9 GETTABLEKS                       R3 R1 K3 ["color"]
       11 GETTABLEKS                       R4 R1 K4 ["transparency"]
       13 RETURN                           R2 3
       14 GETTABLEKS                       R2 R0 K5 ["resolvedVariant"]
       16 JUMPIF                           R2 ; [+2]
       17 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
       19 GETTABLEKS                       R3 R0 K3 ["color"]
       21 LOADNIL                          R4
       22 RETURN                           R2 3

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["entry"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["getMaterialPreviewOverride"]
        5 GETTABLEKS                       R6 R4 K2 ["baseMaterial"]
        7 CALL                             R5 1 1
        8 JUMPIFNOT                        R5 ; [+7]
        9 GETTABLEKS                       R1 R5 K3 ["material"]
       11 GETTABLEKS                       R2 R5 K4 ["color"]
       13 GETTABLEKS                       R3 R5 K5 ["transparency"]
       15 JUMP                             ; [+8]
       16 GETTABLEKS                       R1 R4 K6 ["resolvedVariant"]
       18 JUMPIF                           R1 ; [+2]
       19 GETTABLEKS                       R1 R4 K2 ["baseMaterial"]
       21 GETTABLEKS                       R2 R4 K4 ["color"]
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["createElement"]
       27 GETUPVAL                         R5 2
       28 DUPTABLE                         R6 K13 [{"LayoutOrder", "Position", "Size", "tag", "testId"}]
       29 GETTABLEKS                       R7 R0 K14 ["layoutOrder"]
       31 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       33 GETTABLEKS                       R7 R0 K15 ["position"]
       35 SETTABLEKS                       R7 R6 K9 ["Position"]
       37 GETTABLEKS                       R8 R0 K16 ["size"]
       39 JUMPIFNOT                        R8 ; [+8]
       40 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       42 GETTABLEKS                       R8 R0 K16 ["size"]
       44 GETTABLEKS                       R9 R0 K16 ["size"]
       46 CALL                             R7 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 SETTABLEKS                       R7 R6 K10 ["Size"]
       51 GETTABLEKS                       R8 R0 K11 ["tag"]
       53 ORK                              R7 R8 K20 ["radius-xsmall clip"]
       54 SETTABLEKS                       R7 R6 K11 ["tag"]
       56 LOADK                            R7 K21 ["terrain-material-preview-%*"]
       57 GETTABLEKS                       R9 R0 K0 ["entry"]
       59 GETTABLEKS                       R9 R9 K22 ["slotIndex"]
       61 NAMECALL                         R7 R7 K23 ["format"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K12 ["testId"]
       66 DUPTABLE                         R7 K25 [{"Material"}]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K7 ["createElement"]
       70 GETUPVAL                         R9 3
       71 DUPTABLE                         R10 K34 [{["CornerRadius"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["OverrideColor"], ["OverrideTransparency"], ["Size"], ["Static"] = True, ["Transparent"] = True}]
       72 GETIMPORT                        R11 K37 [UDim.new]
       74 LOADN                            R12 0
       75 LOADN                            R13 2
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K26 ["CornerRadius"]
       79 GETTABLEKS                       R11 R0 K38 ["initialDistance"]
       81 JUMPIF                           R11 ; [+3]
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R11 R11 K39 ["MATERIAL_PREVIEW_CAMERA_DISTANCE"]
       85 SETTABLEKS                       R11 R10 K27 ["InitialDistance"]
       87 SETTABLEKS                       R1 R10 K24 ["Material"]
       89 GETUPVAL                         R11 5
       90 GETTABLEKS                       R11 R11 K40 ["CubeCornerOn"]
       92 SETTABLEKS                       R11 R10 K28 ["MaterialPreviewGeometryType"]
       94 SETTABLEKS                       R2 R10 K29 ["OverrideColor"]
       96 SETTABLEKS                       R3 R10 K30 ["OverrideTransparency"]
       98 GETIMPORT                        R11 K42 [UDim2.fromScale]
      100 LOADN                            R12 1
      101 LOADN                            R13 1
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K10 ["Size"]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K24 ["Material"]
      108 CALL                             R4 3 -1
      109 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETTABLEKS                       R5 R0 K3 ["isSelected"]
       13 JUMPIFNOT                        R5 ; [+7]
       14 GETTABLEKS                       R4 R1 K4 ["Color"]
       16 GETTABLEKS                       R4 R4 K5 ["ActionEmphasis"]
       18 GETTABLEKS                       R4 R4 K6 ["Background"]
       20 JUMP                             ; [+14]
       21 JUMPIFNOT                        R2 ; [+7]
       22 GETTABLEKS                       R4 R1 K4 ["Color"]
       24 GETTABLEKS                       R4 R4 K7 ["Stroke"]
       26 GETTABLEKS                       R4 R4 K8 ["Emphasis"]
       28 JUMP                             ; [+6]
       29 GETTABLEKS                       R4 R1 K4 ["Color"]
       31 GETTABLEKS                       R4 R4 K7 ["Stroke"]
       33 GETTABLEKS                       R4 R4 K9 ["Default"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K10 ["useCallback"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U2
       41 NEWTABLE                         R7 0 0
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K11 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K25 [{"backgroundStyle", "cursor", "LayoutOrder", "Size", "isDisabled", "onActivated", "onSecondaryActivated", "onStateChanged", "selection", "stateLayer", "stroke", "tag", "testId"}]
       49 GETTABLEKS                       R9 R0 K12 ["backgroundStyle"]
       51 SETTABLEKS                       R9 R8 K12 ["backgroundStyle"]
       53 DUPTABLE                         R9 K29 [{"radius", "offset", "borderWidth"}]
       54 GETIMPORT                        R10 K32 [UDim.new]
       56 LOADN                            R11 0
       57 GETTABLEKS                       R12 R1 K33 ["Radius"]
       59 GETTABLEKS                       R12 R12 K34 ["Small"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K26 ["radius"]
       64 GETTABLEKS                       R11 R1 K7 ["Stroke"]
       66 GETTABLEKS                       R11 R11 K35 ["Thick"]
       68 MINUS                            R10 R11
       69 SETTABLEKS                       R10 R9 K27 ["offset"]
       71 GETTABLEKS                       R10 R1 K7 ["Stroke"]
       73 GETTABLEKS                       R10 R10 K35 ["Thick"]
       75 SETTABLEKS                       R10 R9 K28 ["borderWidth"]
       77 SETTABLEKS                       R9 R8 K13 ["cursor"]
       79 GETTABLEKS                       R9 R0 K36 ["layoutOrder"]
       81 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       83 GETTABLEKS                       R9 R0 K15 ["Size"]
       85 SETTABLEKS                       R9 R8 K15 ["Size"]
       87 GETTABLEKS                       R9 R0 K16 ["isDisabled"]
       89 SETTABLEKS                       R9 R8 K16 ["isDisabled"]
       91 GETTABLEKS                       R10 R0 K16 ["isDisabled"]
       93 JUMPIFNOT                        R10 ; [+2]
       94 LOADNIL                          R9
       95 JUMP                             ; [+2]
       96 GETTABLEKS                       R9 R0 K17 ["onActivated"]
       98 SETTABLEKS                       R9 R8 K17 ["onActivated"]
      100 GETTABLEKS                       R10 R0 K16 ["isDisabled"]
      102 JUMPIFNOT                        R10 ; [+2]
      103 LOADNIL                          R9
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R9 R0 K18 ["onSecondaryActivated"]
      107 SETTABLEKS                       R9 R8 K18 ["onSecondaryActivated"]
      109 SETTABLEKS                       R5 R8 K19 ["onStateChanged"]
      111 DUPTABLE                         R9 K38 [{"Selectable"}]
      112 GETTABLEKS                       R11 R0 K16 ["isDisabled"]
      114 NOT                              R10 R11
      115 SETTABLEKS                       R10 R9 K37 ["Selectable"]
      117 SETTABLEKS                       R9 R8 K20 ["selection"]
      119 DUPTABLE                         R9 K40 [{"affordance"}]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K41 ["Enums"]
      123 GETTABLEKS                       R10 R10 K42 ["StateLayerAffordance"]
      125 GETTABLEKS                       R10 R10 K6 ["Background"]
      127 SETTABLEKS                       R10 R9 K39 ["affordance"]
      129 SETTABLEKS                       R9 R8 K21 ["stateLayer"]
      131 DUPTABLE                         R9 K45 [{"Color", "Transparency", "Thickness"}]
      132 GETTABLEKS                       R10 R4 K46 ["Color3"]
      134 SETTABLEKS                       R10 R9 K4 ["Color"]
      136 GETTABLEKS                       R10 R4 K43 ["Transparency"]
      138 SETTABLEKS                       R10 R9 K43 ["Transparency"]
      140 GETTABLEKS                       R10 R1 K7 ["Stroke"]
      142 GETTABLEKS                       R10 R10 K47 ["Standard"]
      144 SETTABLEKS                       R10 R9 K44 ["Thickness"]
      146 SETTABLEKS                       R9 R8 K22 ["stroke"]
      148 GETTABLEKS                       R9 R0 K23 ["tag"]
      150 SETTABLEKS                       R9 R8 K23 ["tag"]
      152 LOADK                            R9 K48 ["terrain-material-tile-%*"]
      153 GETTABLEKS                       R11 R0 K49 ["entry"]
      155 GETTABLEKS                       R11 R11 K50 ["slotIndex"]
      157 NAMECALL                         R9 R9 K51 ["format"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K24 ["testId"]
      162 GETTABLEKS                       R9 R0 K52 ["children"]
      164 CALL                             R6 3 -1
      165 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["TerrainPalette"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Constants"]
       41 GETTABLEKS                       R6 R6 K13 ["TERRAIN_CUSTOM_MATERIALS"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K14 ["Components"]
       46 GETTABLEKS                       R6 R6 K15 ["MaterialPreview"]
       48 GETTABLEKS                       R7 R2 K16 ["Enums"]
       50 GETTABLEKS                       R7 R7 K17 ["MaterialPreviewGeometryType"]
       52 GETTABLEKS                       R8 R1 K16 ["Enums"]
       54 GETTABLEKS                       R8 R8 K18 ["ControlState"]
       56 GETTABLEKS                       R9 R1 K19 ["View"]
       58 DUPCLOSURE                       R10 K20 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R11 K21 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R7
       67 DUPCLOSURE                       R12 K22 [PROTO_3]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 DUPTABLE                         R13 K25 [{"Container", "Preview"}]
       73 SETTABLEKS                       R12 R13 K23 ["Container"]
       75 SETTABLEKS                       R11 R13 K24 ["Preview"]
       77 RETURN                           R13 1
