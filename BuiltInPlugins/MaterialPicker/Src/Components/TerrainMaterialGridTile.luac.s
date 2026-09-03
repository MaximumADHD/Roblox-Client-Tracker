PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 3
       12 DUPTABLE                         R5 K11 [{["backgroundStyle"], ["entry"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["Size"], ["tag"] = "col align-x-center align-y-center gap-xxsmall padding-xxsmall radius-small clip"}]
       13 GETTABLEKS                       R6 R1 K12 ["Color"]
       15 GETTABLEKS                       R6 R6 K13 ["Shift"]
       17 GETTABLEKS                       R6 R6 K14 ["Shift_100"]
       19 SETTABLEKS                       R6 R5 K3 ["backgroundStyle"]
       21 GETTABLEKS                       R6 R0 K4 ["entry"]
       23 SETTABLEKS                       R6 R5 K4 ["entry"]
       25 GETTABLEKS                       R6 R0 K5 ["isSelected"]
       27 SETTABLEKS                       R6 R5 K5 ["isSelected"]
       29 GETTABLEKS                       R6 R0 K6 ["layoutOrder"]
       31 SETTABLEKS                       R6 R5 K6 ["layoutOrder"]
       33 GETTABLEKS                       R6 R0 K7 ["onActivated"]
       35 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       37 GETIMPORT                        R6 K17 [UDim2.fromScale]
       39 LOADN                            R7 1
       40 LOADN                            R8 1
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K8 ["Size"]
       44 DUPTABLE                         R6 K20 [{"Preview", "Labels"}]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K2 ["createElement"]
       48 GETUPVAL                         R8 4
       49 DUPTABLE                         R9 K23 [{["entry"], ["layoutOrder"], ["size"] = 40}]
       50 GETTABLEKS                       R10 R0 K4 ["entry"]
       52 SETTABLEKS                       R10 R9 K4 ["entry"]
       54 MOVE                             R10 R2
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K6 ["layoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K18 ["Preview"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K2 ["createElement"]
       64 GETUPVAL                         R8 5
       65 DUPTABLE                         R9 K26 [{["backgroundStyle"], ["LayoutOrder"], ["tag"] = "col size-full-350"}]
       66 DUPTABLE                         R10 K30 [{["Color3"], ["Transparency"] = 0.05}]
       67 GETTABLEKS                       R11 R1 K12 ["Color"]
       69 GETTABLEKS                       R11 R11 K31 ["Common"]
       71 GETTABLEKS                       R11 R11 K32 ["Scrim"]
       73 GETTABLEKS                       R11 R11 K27 ["Color3"]
       75 SETTABLEKS                       R11 R10 K27 ["Color3"]
       77 SETTABLEKS                       R10 R9 K3 ["backgroundStyle"]
       79 MOVE                             R10 R2
       80 CALL                             R10 0 1
       81 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
       83 DUPTABLE                         R10 K35 [{"Gradient", "Name"}]
       84 GETUPVAL                         R11 2
       85 GETTABLEKS                       R11 R11 K2 ["createElement"]
       87 LOADK                            R12 K36 ["UIGradient"]
       88 DUPTABLE                         R13 K39 [{["Rotation"] = 90, ["Transparency"]}]
       89 GETIMPORT                        R14 K42 [NumberSequence.new]
       91 NEWTABLE                         R15 0 2
       93 GETIMPORT                        R16 K44 [NumberSequenceKeypoint.new]
       95 LOADN                            R17 0
       96 LOADN                            R18 1
       97 CALL                             R16 2 1
       98 GETIMPORT                        R17 K44 [NumberSequenceKeypoint.new]
      100 LOADN                            R18 1
      101 LOADN                            R19 0
      102 CALL                             R17 2 -1
      103 SETLIST                          R15 R16 -1 [1]
      105 CALL                             R14 1 1
      106 SETTABLEKS                       R14 R13 K28 ["Transparency"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K33 ["Gradient"]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R11 R11 K2 ["createElement"]
      114 GETUPVAL                         R12 6
      115 DUPTABLE                         R13 K48 [{["fontStyle"], ["Text"], ["tag"] = "size-full text-align-x-left text-truncate-end content-emphasis"}]
      116 GETUPVAL                         R14 7
      117 SETTABLEKS                       R14 R13 K45 ["fontStyle"]
      119 GETTABLEKS                       R14 R0 K4 ["entry"]
      121 GETTABLEKS                       R14 R14 K49 ["displayName"]
      123 SETTABLEKS                       R14 R13 K46 ["Text"]
      125 CALL                             R11 2 1
      126 SETTABLEKS                       R11 R10 K34 ["Name"]
      128 CALL                             R7 3 1
      129 SETTABLEKS                       R7 R6 K19 ["Labels"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

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
       32 GETTABLEKS                       R5 R5 K10 ["TerrainPalette"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["TerrainMaterialTileBase"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K14 ["Text"]
       46 GETTABLEKS                       R7 R1 K15 ["View"]
       48 GETTABLEKS                       R8 R3 K16 ["createNextOrder"]
       50 GETTABLEKS                       R9 R5 K17 ["Preview"]
       52 GETTABLEKS                       R10 R5 K18 ["Container"]
       54 DUPTABLE                         R11 K24 [{["Font"], ["FontSize"] = 10, ["LineHeight"] = 1.4}]
       55 GETIMPORT                        R12 K26 [Font.new]
       57 GETIMPORT                        R13 K28 [Font.fromEnum]
       59 GETIMPORT                        R14 K31 [Enum.Font.BuilderSans]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R13 R13 K32 ["Family"]
       64 GETIMPORT                        R14 K35 [Enum.FontWeight.SemiBold]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K19 ["Font"]
       69 DUPCLOSURE                       R12 K36 [PROTO_0]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R11
       78 GETTABLEKS                       R13 R2 K37 ["memo"]
       80 MOVE                             R14 R12
       81 CALL                             R13 1 -1
       82 RETURN                           R13 -1
