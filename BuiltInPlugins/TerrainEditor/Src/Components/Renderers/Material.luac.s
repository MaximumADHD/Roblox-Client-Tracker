PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Padding"] = 2, ["Size"]}]
        5 GETTABLEKS                       R4 R0 K3 ["Size"]
        7 SETTABLEKS                       R4 R3 K3 ["Size"]
        9 DUPTABLE                         R4 K6 [{"Image"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K8 [{"Style"}]
       15 DUPTABLE                         R8 K10 [{["Image"] = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Air.png"}]
       16 SETTABLEKS                       R8 R7 K7 ["Style"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K5 ["Image"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Padding"] = 2, ["Size"]}]
        5 GETTABLEKS                       R4 R0 K3 ["Size"]
        7 SETTABLEKS                       R4 R3 K3 ["Size"]
        9 DUPTABLE                         R4 K6 [{"Image"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K8 [{"Style"}]
       15 DUPTABLE                         R8 K10 [{["Image"] = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Water.png"}]
       16 SETTABLEKS                       R8 R7 K7 ["Style"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K5 ["Image"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["catalog"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AllowAir"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["AllowWater"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Material"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"TestId"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["createElement"]
        4 LOADK                            R3 K3 ["Frame"]
        5 NEWTABLE                         R4 4 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["Tag"]
       10 LOADK                            R7 K5 ["data-testid=terrain-slot-%*"]
       11 GETTABLEKS                       R9 R0 K6 ["Id"]
       13 NAMECALL                         R7 R7 K7 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 SETTABLE                         R6 R4 R5
       18 LOADN                            R5 1
       19 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       21 GETIMPORT                        R5 K11 [UDim2.new]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K12 ["Size"]
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R1 K0 ["TestId"]
       29 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["MaterialRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Schema"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["useContext"]
       10 GETUPVAL                         R4 2
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["useState"]
       15 LOADK                            R5 K5 [""]
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["useState"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 3
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R10 0 2
       29 MOVE                             R11 R4
       30 GETTABLEKS                       R12 R3 K6 ["catalog"]
       32 SETLIST                          R10 R11 2 [1]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 3
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R11 0 2
       41 GETTABLEKS                       R12 R2 K7 ["AllowAir"]
       43 GETTABLEKS                       R13 R2 K8 ["AllowWater"]
       45 SETLIST                          R11 R12 2 [1]
       47 CALL                             R9 2 1
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          VAL R0
       50 GETUPVAL                         R11 6
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+107]
       53 GETTABLEKS                       R11 R2 K9 ["UseTerrainSlots"]
       55 JUMPIFNOT                        R11 ; [+104]
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K10 ["createElement"]
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K16 [{["AutomaticSize"], ["Layout"], ["Size"], ["Spacing"] = 4}]
       61 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       63 SETTABLEKS                       R14 R13 K11 ["AutomaticSize"]
       65 GETIMPORT                        R14 K22 [Enum.FillDirection.Vertical]
       67 SETTABLEKS                       R14 R13 K12 ["Layout"]
       69 GETIMPORT                        R14 K25 [UDim2.fromScale]
       71 LOADN                            R15 1
       72 LOADN                            R16 0
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K13 ["Size"]
       76 DUPTABLE                         R14 K28 [{"Search", "Grid"}]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R15 R15 K10 ["createElement"]
       80 GETUPVAL                         R16 8
       81 DUPTABLE                         R17 K31 [{"OnTextChanged", "Size", "Text"}]
       82 SETTABLEKS                       R5 R17 K29 ["OnTextChanged"]
       84 GETIMPORT                        R18 K33 [UDim2.new]
       86 LOADN                            R19 1
       87 LOADN                            R20 0
       88 LOADN                            R21 0
       89 LOADN                            R22 24
       90 CALL                             R18 4 1
       91 SETTABLEKS                       R18 R17 K13 ["Size"]
       93 SETTABLEKS                       R4 R17 K30 ["Text"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K26 ["Search"]
       98 GETUPVAL                         R15 1
       99 GETTABLEKS                       R15 R15 K10 ["createElement"]
      101 GETUPVAL                         R16 9
      102 DUPTABLE                         R17 K45 [{["AutomaticSize"], ["CustomPreviews"], ["GridItemSize"], ["InitialDistance"], ["Items"], ["OnClick"], ["OnRenderItemChildren"], ["ScrollingDirection"], ["SelectedItemId"], ["ShowGridLabels"] = True, ["Size"], ["ViewType"]}]
      103 GETIMPORT                        R18 K19 [Enum.AutomaticSize.Y]
      105 SETTABLEKS                       R18 R17 K11 ["AutomaticSize"]
      107 NEWTABLE                         R18 2 0
      109 GETIMPORT                        R19 K48 [Enum.Material.Air]
      111 GETUPVAL                         R20 10
      112 SETTABLE                         R20 R18 R19
      113 GETIMPORT                        R19 K50 [Enum.Material.Water]
      115 GETUPVAL                         R20 11
      116 SETTABLE                         R20 R18 R19
      117 SETTABLEKS                       R18 R17 K34 ["CustomPreviews"]
      119 GETTABLEKS                       R18 R1 K35 ["GridItemSize"]
      121 SETTABLEKS                       R18 R17 K35 ["GridItemSize"]
      123 GETTABLEKS                       R18 R1 K36 ["InitialDistance"]
      125 SETTABLEKS                       R18 R17 K36 ["InitialDistance"]
      127 SETTABLEKS                       R8 R17 K37 ["Items"]
      129 NEWCLOSURE                       R18 P3
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R18 R17 K38 ["OnClick"]
      133 DUPCLOSURE                       R18 K51 [PROTO_6]
      134 CAPTURE                          UPVAL U1
      135 SETTABLEKS                       R18 R17 K39 ["OnRenderItemChildren"]
      137 GETIMPORT                        R18 K52 [Enum.ScrollingDirection.Y]
      139 SETTABLEKS                       R18 R17 K40 ["ScrollingDirection"]
      141 SETTABLEKS                       R6 R17 K41 ["SelectedItemId"]
      143 GETIMPORT                        R18 K25 [UDim2.fromScale]
      145 LOADN                            R19 1
      146 LOADN                            R20 0
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K13 ["Size"]
      150 GETUPVAL                         R18 12
      151 GETTABLEKS                       R18 R18 K27 ["Grid"]
      153 SETTABLEKS                       R18 R17 K44 ["ViewType"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K27 ["Grid"]
      158 CALL                             R11 3 -1
      159 RETURN                           R11 -1
      160 GETUPVAL                         R11 1
      161 GETTABLEKS                       R11 R11 K10 ["createElement"]
      163 GETUPVAL                         R12 7
      164 DUPTABLE                         R13 K54 [{"AutomaticSize", "Layout", "Size", "VerticalAlignment"}]
      165 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R14 R13 K11 ["AutomaticSize"]
      169 GETIMPORT                        R14 K56 [Enum.FillDirection.Horizontal]
      171 SETTABLEKS                       R14 R13 K12 ["Layout"]
      173 GETIMPORT                        R14 K25 [UDim2.fromScale]
      175 LOADN                            R15 1
      176 LOADN                            R16 0
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R13 K13 ["Size"]
      180 GETIMPORT                        R14 K58 [Enum.VerticalAlignment.Top]
      182 SETTABLEKS                       R14 R13 K53 ["VerticalAlignment"]
      184 DUPTABLE                         R14 K59 [{"Grid"}]
      185 GETUPVAL                         R15 1
      186 GETTABLEKS                       R15 R15 K10 ["createElement"]
      188 GETUPVAL                         R16 9
      189 DUPTABLE                         R17 K61 [{["AutomaticSize"], ["CustomPreviews"], ["GridItemSize"], ["InitialDistance"], ["OnClick"], ["Items"], ["ScrollingDirection"], ["SelectedItemId"], ["ShowGridLabels"] = False, ["Size"], ["ViewType"]}]
      190 GETIMPORT                        R18 K19 [Enum.AutomaticSize.Y]
      192 SETTABLEKS                       R18 R17 K11 ["AutomaticSize"]
      194 NEWTABLE                         R18 2 0
      196 GETIMPORT                        R19 K48 [Enum.Material.Air]
      198 GETUPVAL                         R20 10
      199 SETTABLE                         R20 R18 R19
      200 GETIMPORT                        R19 K50 [Enum.Material.Water]
      202 GETUPVAL                         R20 11
      203 SETTABLE                         R20 R18 R19
      204 SETTABLEKS                       R18 R17 K34 ["CustomPreviews"]
      206 GETTABLEKS                       R18 R1 K35 ["GridItemSize"]
      208 SETTABLEKS                       R18 R17 K35 ["GridItemSize"]
      210 GETTABLEKS                       R18 R1 K36 ["InitialDistance"]
      212 SETTABLEKS                       R18 R17 K36 ["InitialDistance"]
      214 SETTABLEKS                       R10 R17 K38 ["OnClick"]
      216 SETTABLEKS                       R9 R17 K37 ["Items"]
      218 GETIMPORT                        R18 K52 [Enum.ScrollingDirection.Y]
      220 SETTABLEKS                       R18 R17 K40 ["ScrollingDirection"]
      222 GETUPVAL                         R18 13
      223 GETTABLEKS                       R19 R0 K62 ["Value"]
      225 CALL                             R18 1 1
      226 SETTABLEKS                       R18 R17 K41 ["SelectedItemId"]
      228 GETIMPORT                        R18 K25 [UDim2.fromScale]
      230 LOADN                            R19 1
      231 LOADN                            R20 0
      232 CALL                             R18 2 1
      233 SETTABLEKS                       R18 R17 K13 ["Size"]
      235 GETUPVAL                         R18 12
      236 GETTABLEKS                       R18 R18 K27 ["Grid"]
      238 SETTABLEKS                       R18 R17 K44 ["ViewType"]
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K27 ["Grid"]
      243 CALL                             R11 3 -1
      244 RETURN                           R11 -1

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
       42 GETTABLEKS                       R8 R1 K13 ["UI"]
       44 GETTABLEKS                       R8 R8 K16 ["TextInput"]
       46 GETTABLEKS                       R9 R2 K17 ["Components"]
       48 GETTABLEKS                       R9 R9 K18 ["MaterialGrid"]
       50 GETTABLEKS                       R10 R2 K19 ["Enums"]
       52 GETTABLEKS                       R10 R10 K20 ["ViewType"]
       54 GETTABLEKS                       R11 R2 K21 ["Util"]
       56 GETTABLEKS                       R11 R11 K22 ["getSerializedMaterialIdentifier"]
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R13 R0 K23 ["Src"]
       62 GETTABLEKS                       R13 R13 K21 ["Util"]
       64 GETTABLEKS                       R13 R13 K24 ["getMaterials"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R0 K23 ["Src"]
       71 GETTABLEKS                       R14 R14 K21 ["Util"]
       73 GETTABLEKS                       R14 R14 K25 ["getTerrainMaterialItems"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R0 K23 ["Src"]
       80 GETTABLEKS                       R15 R15 K26 ["Contexts"]
       82 GETTABLEKS                       R15 R15 K27 ["TerrainMaterialCatalogContext"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R16 R0 K23 ["Src"]
       89 GETTABLEKS                       R16 R16 K28 ["Flags"]
       91 GETTABLEKS                       R16 R16 K29 ["getFFlagEnableTerrainPalette"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K5 [require]
       96 GETTABLEKS                       R17 R0 K23 ["Src"]
       98 GETTABLEKS                       R17 R17 K30 ["Resources"]
      100 GETTABLEKS                       R17 R17 K31 ["Theme"]
      102 CALL                             R16 1 1
      103 DUPCLOSURE                       R17 K32 [PROTO_0]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 DUPCLOSURE                       R18 K33 [PROTO_1]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 DUPCLOSURE                       R19 K34 [PROTO_7]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 RETURN                           R19 1
