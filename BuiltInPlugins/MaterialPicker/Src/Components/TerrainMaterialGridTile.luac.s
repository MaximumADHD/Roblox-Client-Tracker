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
       44 DUPTABLE                         R8 K20 [{["entry"], ["position"], ["tag"] = "anchor-top-center size-1000-1000 radius-xsmall clip"}]
       45 GETTABLEKS                       R9 R0 K4 ["entry"]
       47 SETTABLEKS                       R9 R8 K4 ["entry"]
       49 GETIMPORT                        R9 K23 [UDim2.new]
       51 LOADK                            R10 K24 [0.5]
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 GETTABLEKS                       R13 R1 K25 ["Padding"]
       56 GETTABLEKS                       R13 R13 K26 ["XSmall"]
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K18 ["position"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K15 ["Preview"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K2 ["createElement"]
       67 GETUPVAL                         R7 4
       68 DUPTABLE                         R8 K30 [{["backgroundStyle"], ["ZIndex"] = 2, ["tag"] = "position-bottom-left anchor-bottom-left size-full-350 padding-x-xxsmall"}]
       69 DUPTABLE                         R9 K34 [{["Color3"], ["Transparency"] = 0.05}]
       70 GETUPVAL                         R10 5
       71 SETTABLEKS                       R10 R9 K31 ["Color3"]
       73 SETTABLEKS                       R9 R8 K3 ["backgroundStyle"]
       75 DUPTABLE                         R9 K37 [{"Gradient", "Name"}]
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K2 ["createElement"]
       79 LOADK                            R11 K38 ["UIGradient"]
       80 DUPTABLE                         R12 K41 [{["Rotation"] = 90, ["Transparency"]}]
       81 GETIMPORT                        R13 K43 [NumberSequence.new]
       83 NEWTABLE                         R14 0 2
       85 GETIMPORT                        R15 K45 [NumberSequenceKeypoint.new]
       87 LOADN                            R16 0
       88 LOADN                            R17 1
       89 CALL                             R15 2 1
       90 GETIMPORT                        R16 K45 [NumberSequenceKeypoint.new]
       92 LOADN                            R17 1
       93 LOADN                            R18 0
       94 CALL                             R16 2 -1
       95 SETLIST                          R14 R15 -1 [1]
       97 CALL                             R13 1 1
       98 SETTABLEKS                       R13 R12 K32 ["Transparency"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K35 ["Gradient"]
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R10 R10 K2 ["createElement"]
      106 GETUPVAL                         R11 6
      107 DUPTABLE                         R12 K50 [{["fontStyle"], ["Text"], ["textStyle"], ["ZIndex"] = 2, ["tag"] = "size-full text-align-x-left text-align-y-center text-truncate-end"}]
      108 GETUPVAL                         R13 7
      109 SETTABLEKS                       R13 R12 K46 ["fontStyle"]
      111 GETTABLEKS                       R13 R0 K4 ["entry"]
      113 GETTABLEKS                       R13 R13 K51 ["displayName"]
      115 SETTABLEKS                       R13 R12 K47 ["Text"]
      117 GETTABLEKS                       R13 R1 K12 ["Color"]
      119 GETTABLEKS                       R13 R13 K52 ["Extended"]
      121 GETTABLEKS                       R13 R13 K53 ["White"]
      123 GETTABLEKS                       R13 R13 K54 ["White_100"]
      125 SETTABLEKS                       R13 R12 K48 ["textStyle"]
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R9 K36 ["Name"]
      130 CALL                             R6 3 1
      131 SETTABLEKS                       R6 R5 K16 ["Labels"]
      133 CALL                             R2 3 -1
      134 RETURN                           R2 -1

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
       37 GETTABLEKS                       R5 R1 K13 ["Text"]
       39 GETTABLEKS                       R6 R1 K14 ["View"]
       41 GETTABLEKS                       R7 R4 K15 ["Preview"]
       43 GETTABLEKS                       R8 R4 K16 ["Container"]
       45 DUPTABLE                         R9 K22 [{["Font"], ["FontSize"] = 10, ["LineHeight"] = 1.4}]
       46 GETIMPORT                        R10 K24 [Font.new]
       48 GETIMPORT                        R11 K26 [Font.fromEnum]
       50 GETIMPORT                        R12 K29 [Enum.Font.BuilderSans]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R11 R11 K30 ["Family"]
       55 GETIMPORT                        R12 K33 [Enum.FontWeight.SemiBold]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K17 ["Font"]
       60 GETIMPORT                        R10 K36 [Color3.fromRGB]
       62 LOADN                            R11 24
       63 LOADN                            R12 24
       64 LOADN                            R13 27
       65 CALL                             R10 3 1
       66 DUPCLOSURE                       R11 K37 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 GETTABLEKS                       R12 R2 K38 ["memo"]
       77 MOVE                             R13 R11
       78 CALL                             R12 1 -1
       79 RETURN                           R12 -1
