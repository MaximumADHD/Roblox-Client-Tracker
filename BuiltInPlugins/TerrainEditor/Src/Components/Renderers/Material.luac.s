PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Padding", "Size"}]
        5 LOADN                            R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Padding"]
        8 GETTABLEKS                       R4 R0 K2 ["Size"]
       10 SETTABLEKS                       R4 R3 K2 ["Size"]
       12 DUPTABLE                         R4 K5 [{"Image"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K7 [{"Style"}]
       18 DUPTABLE                         R8 K5 [{"Image"}]
       19 LOADK                            R9 K8 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Air.png"]
       20 SETTABLEKS                       R9 R8 K4 ["Image"]
       22 SETTABLEKS                       R8 R7 K6 ["Style"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K4 ["Image"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Padding", "Size"}]
        5 LOADN                            R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Padding"]
        8 GETTABLEKS                       R4 R0 K2 ["Size"]
       10 SETTABLEKS                       R4 R3 K2 ["Size"]
       12 DUPTABLE                         R4 K5 [{"Image"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K7 [{"Style"}]
       18 DUPTABLE                         R8 K5 [{"Image"}]
       19 LOADK                            R9 K8 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Water.png"]
       20 SETTABLEKS                       R9 R8 K4 ["Image"]
       22 SETTABLEKS                       R8 R7 K6 ["Style"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K4 ["Image"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AllowAir"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["AllowWater"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Material"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["MaterialRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Schema"]
        7 GETUPVAL                         R3 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 2
       13 GETTABLEKS                       R6 R2 K3 ["AllowAir"]
       15 GETTABLEKS                       R7 R2 K4 ["AllowWater"]
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K5 ["createElement"]
       25 GETUPVAL                         R6 4
       26 DUPTABLE                         R7 K10 [{"AutomaticSize", "Layout", "Size", "VerticalAlignment"}]
       27 GETIMPORT                        R8 K13 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       31 GETIMPORT                        R8 K16 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R8 R7 K7 ["Layout"]
       35 GETIMPORT                        R8 K19 [UDim2.fromScale]
       37 LOADN                            R9 1
       38 LOADN                            R10 0
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K8 ["Size"]
       42 GETIMPORT                        R8 K21 [Enum.VerticalAlignment.Top]
       44 SETTABLEKS                       R8 R7 K9 ["VerticalAlignment"]
       46 DUPTABLE                         R8 K23 [{"Grid"}]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K5 ["createElement"]
       50 GETUPVAL                         R10 5
       51 DUPTABLE                         R11 K33 [{"AutomaticSize", "CustomPreviews", "GridItemSize", "InitialDistance", "OnClick", "Items", "ScrollingDirection", "SelectedItemId", "ShowGridLabels", "Size", "ViewType"}]
       52 GETIMPORT                        R12 K13 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
       56 NEWTABLE                         R12 2 0
       58 GETIMPORT                        R13 K36 [Enum.Material.Air]
       60 GETUPVAL                         R14 6
       61 SETTABLE                         R14 R12 R13
       62 GETIMPORT                        R13 K38 [Enum.Material.Water]
       64 GETUPVAL                         R14 7
       65 SETTABLE                         R14 R12 R13
       66 SETTABLEKS                       R12 R11 K24 ["CustomPreviews"]
       68 GETTABLEKS                       R12 R1 K25 ["GridItemSize"]
       70 SETTABLEKS                       R12 R11 K25 ["GridItemSize"]
       72 GETTABLEKS                       R12 R1 K26 ["InitialDistance"]
       74 SETTABLEKS                       R12 R11 K26 ["InitialDistance"]
       76 SETTABLEKS                       R4 R11 K27 ["OnClick"]
       78 SETTABLEKS                       R3 R11 K28 ["Items"]
       80 GETIMPORT                        R12 K39 [Enum.ScrollingDirection.Y]
       82 SETTABLEKS                       R12 R11 K29 ["ScrollingDirection"]
       84 GETUPVAL                         R12 8
       85 GETTABLEKS                       R13 R0 K40 ["Value"]
       87 CALL                             R12 1 1
       88 SETTABLEKS                       R12 R11 K30 ["SelectedItemId"]
       90 LOADB                            R12 0
       91 SETTABLEKS                       R12 R11 K31 ["ShowGridLabels"]
       93 GETIMPORT                        R12 K19 [UDim2.fromScale]
       95 LOADN                            R13 1
       96 LOADN                            R14 0
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K8 ["Size"]
      100 GETUPVAL                         R12 9
      101 GETTABLEKS                       R12 R12 K22 ["Grid"]
      103 SETTABLEKS                       R12 R11 K32 ["ViewType"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K22 ["Grid"]
      108 CALL                             R5 3 -1
      109 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       32 GETTABLEKS                       R5 R3 K12 ["useMemo"]
       34 GETTABLEKS                       R6 R1 K13 ["UI"]
       36 GETTABLEKS                       R6 R6 K14 ["Image"]
       38 GETTABLEKS                       R7 R1 K13 ["UI"]
       40 GETTABLEKS                       R7 R7 K15 ["Pane"]
       42 GETTABLEKS                       R8 R2 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["MaterialGrid"]
       46 GETTABLEKS                       R9 R2 K18 ["Enums"]
       48 GETTABLEKS                       R9 R9 K19 ["ViewType"]
       50 GETTABLEKS                       R10 R2 K20 ["Util"]
       52 GETTABLEKS                       R10 R10 K21 ["getSerializedMaterialIdentifier"]
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R0 K22 ["Src"]
       58 GETTABLEKS                       R12 R12 K20 ["Util"]
       60 GETTABLEKS                       R12 R12 K23 ["getMaterials"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K22 ["Src"]
       67 GETTABLEKS                       R13 R13 K24 ["Resources"]
       69 GETTABLEKS                       R13 R13 K25 ["Theme"]
       71 CALL                             R12 1 1
       72 DUPCLOSURE                       R13 K26 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R14 K27 [PROTO_1]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R15 K28 [PROTO_4]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 RETURN                           R15 1
