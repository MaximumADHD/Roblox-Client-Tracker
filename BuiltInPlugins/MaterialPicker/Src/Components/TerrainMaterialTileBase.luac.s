PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R2 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R1 R2 ; [+11]
        6 GETIMPORT                        R1 K6 [Enum.Material.Glass]
        8 GETIMPORT                        R2 K9 [Color3.fromRGB]
       10 LOADN                            R3 255
       11 LOADN                            R4 255
       12 LOADN                            R5 255
       13 CALL                             R2 3 1
       14 LOADK                            R3 K10 [0.5]
       15 RETURN                           R1 3
       16 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
       18 GETIMPORT                        R2 K12 [Enum.Material.Water]
       20 JUMPIFNOTEQ                      R1 R2 ; [+11]
       22 GETIMPORT                        R1 K14 [Enum.Material.Glacier]
       24 GETIMPORT                        R2 K9 [Color3.fromRGB]
       26 LOADN                            R3 33
       27 LOADN                            R4 84
       28 LOADN                            R5 185
       29 CALL                             R2 3 1
       30 LOADK                            R3 K10 [0.5]
       31 RETURN                           R1 3
       32 GETTABLEKS                       R1 R0 K15 ["resolvedVariant"]
       34 JUMPIF                           R1 ; [+2]
       35 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
       37 GETTABLEKS                       R2 R0 K16 ["color"]
       39 LOADNIL                          R3
       40 RETURN                           R1 3

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["entry"]
        3 CALL                             R1 1 3
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["createElement"]
        7 GETUPVAL                         R5 2
        8 DUPTABLE                         R6 K7 [{"LayoutOrder", "Position", "Size", "tag", "testId"}]
        9 GETTABLEKS                       R7 R0 K8 ["layoutOrder"]
       11 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R7 R0 K9 ["position"]
       15 SETTABLEKS                       R7 R6 K3 ["Position"]
       17 GETTABLEKS                       R8 R0 K10 ["size"]
       19 JUMPIFNOT                        R8 ; [+8]
       20 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       22 GETTABLEKS                       R8 R0 K10 ["size"]
       24 GETTABLEKS                       R9 R0 K10 ["size"]
       26 CALL                             R7 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K4 ["Size"]
       31 GETTABLEKS                       R8 R0 K5 ["tag"]
       33 ORK                              R7 R8 K14 ["radius-xsmall clip"]
       34 SETTABLEKS                       R7 R6 K5 ["tag"]
       36 LOADK                            R7 K15 ["terrain-material-preview-%*"]
       37 GETTABLEKS                       R9 R0 K0 ["entry"]
       39 GETTABLEKS                       R9 R9 K16 ["slotIndex"]
       41 NAMECALL                         R7 R7 K17 ["format"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K6 ["testId"]
       46 DUPTABLE                         R7 K19 [{"Material"}]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K1 ["createElement"]
       50 GETUPVAL                         R9 3
       51 DUPTABLE                         R10 K28 [{["CornerRadius"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["OverrideColor"], ["OverrideTransparency"], ["Size"], ["Static"] = True, ["Transparent"] = True}]
       52 GETIMPORT                        R11 K31 [UDim.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 2
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K20 ["CornerRadius"]
       59 GETTABLEKS                       R12 R0 K33 ["initialDistance"]
       61 ORK                              R11 R12 K32 [4.12]
       62 SETTABLEKS                       R11 R10 K21 ["InitialDistance"]
       64 SETTABLEKS                       R1 R10 K18 ["Material"]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K34 ["CubeCornerOn"]
       69 SETTABLEKS                       R11 R10 K22 ["MaterialPreviewGeometryType"]
       71 SETTABLEKS                       R2 R10 K23 ["OverrideColor"]
       73 SETTABLEKS                       R3 R10 K24 ["OverrideTransparency"]
       75 GETIMPORT                        R11 K36 [UDim2.fromScale]
       77 LOADN                            R12 1
       78 LOADN                            R13 1
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K4 ["Size"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K18 ["Material"]
       85 CALL                             R4 3 -1
       86 RETURN                           R4 -1

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
       48 DUPTABLE                         R8 K24 [{"backgroundStyle", "cursor", "LayoutOrder", "Size", "onActivated", "onSecondaryActivated", "onStateChanged", "selection", "stateLayer", "stroke", "tag", "testId"}]
       49 GETTABLEKS                       R9 R0 K12 ["backgroundStyle"]
       51 SETTABLEKS                       R9 R8 K12 ["backgroundStyle"]
       53 DUPTABLE                         R9 K28 [{"radius", "offset", "borderWidth"}]
       54 GETIMPORT                        R10 K31 [UDim.new]
       56 LOADN                            R11 0
       57 GETTABLEKS                       R12 R1 K32 ["Radius"]
       59 GETTABLEKS                       R12 R12 K33 ["Small"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K25 ["radius"]
       64 GETTABLEKS                       R11 R1 K7 ["Stroke"]
       66 GETTABLEKS                       R11 R11 K34 ["Thick"]
       68 MINUS                            R10 R11
       69 SETTABLEKS                       R10 R9 K26 ["offset"]
       71 GETTABLEKS                       R10 R1 K7 ["Stroke"]
       73 GETTABLEKS                       R10 R10 K34 ["Thick"]
       75 SETTABLEKS                       R10 R9 K27 ["borderWidth"]
       77 SETTABLEKS                       R9 R8 K13 ["cursor"]
       79 GETTABLEKS                       R9 R0 K35 ["layoutOrder"]
       81 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       83 GETTABLEKS                       R9 R0 K15 ["Size"]
       85 SETTABLEKS                       R9 R8 K15 ["Size"]
       87 GETTABLEKS                       R9 R0 K16 ["onActivated"]
       89 SETTABLEKS                       R9 R8 K16 ["onActivated"]
       91 GETTABLEKS                       R9 R0 K17 ["onSecondaryActivated"]
       93 SETTABLEKS                       R9 R8 K17 ["onSecondaryActivated"]
       95 SETTABLEKS                       R5 R8 K18 ["onStateChanged"]
       97 DUPTABLE                         R9 K38 [{["Selectable"] = True}]
       98 SETTABLEKS                       R9 R8 K19 ["selection"]
      100 DUPTABLE                         R9 K40 [{"affordance"}]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R10 R10 K41 ["Enums"]
      104 GETTABLEKS                       R10 R10 K42 ["StateLayerAffordance"]
      106 GETTABLEKS                       R10 R10 K6 ["Background"]
      108 SETTABLEKS                       R10 R9 K39 ["affordance"]
      110 SETTABLEKS                       R9 R8 K20 ["stateLayer"]
      112 DUPTABLE                         R9 K45 [{"Color", "Transparency", "Thickness"}]
      113 GETTABLEKS                       R10 R4 K46 ["Color3"]
      115 SETTABLEKS                       R10 R9 K4 ["Color"]
      117 GETTABLEKS                       R10 R4 K43 ["Transparency"]
      119 SETTABLEKS                       R10 R9 K43 ["Transparency"]
      121 GETTABLEKS                       R10 R1 K7 ["Stroke"]
      123 GETTABLEKS                       R10 R10 K47 ["Standard"]
      125 SETTABLEKS                       R10 R9 K44 ["Thickness"]
      127 SETTABLEKS                       R9 R8 K21 ["stroke"]
      129 GETTABLEKS                       R9 R0 K22 ["tag"]
      131 SETTABLEKS                       R9 R8 K22 ["tag"]
      133 LOADK                            R9 K48 ["terrain-material-tile-%*"]
      134 GETTABLEKS                       R11 R0 K49 ["entry"]
      136 GETTABLEKS                       R11 R11 K50 ["slotIndex"]
      138 NAMECALL                         R9 R9 K51 ["format"]
      140 CALL                             R9 2 1
      141 SETTABLEKS                       R9 R8 K23 ["testId"]
      143 GETTABLEKS                       R9 R0 K52 ["children"]
      145 CALL                             R6 3 -1
      146 RETURN                           R6 -1

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
       35 GETTABLEKS                       R5 R2 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["MaterialPreview"]
       39 GETTABLEKS                       R6 R2 K13 ["Enums"]
       41 GETTABLEKS                       R6 R6 K14 ["MaterialPreviewGeometryType"]
       43 GETTABLEKS                       R7 R1 K13 ["Enums"]
       45 GETTABLEKS                       R7 R7 K15 ["ControlState"]
       47 GETTABLEKS                       R8 R1 K16 ["View"]
       49 DUPCLOSURE                       R9 K17 [PROTO_0]
       50 DUPCLOSURE                       R10 K18 [PROTO_1]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R11 K19 [PROTO_3]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 DUPTABLE                         R12 K22 [{"Container", "Preview"}]
       62 SETTABLEKS                       R11 R12 K20 ["Container"]
       64 SETTABLEKS                       R10 R12 K21 ["Preview"]
       66 RETURN                           R12 1
