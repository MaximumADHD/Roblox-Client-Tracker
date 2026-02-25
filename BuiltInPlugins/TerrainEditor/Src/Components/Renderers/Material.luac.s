PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Padding", "Size"}]
        5 LOADN                            R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Padding"]
        8 GETTABLEKS                       R4 R0 K2 ["Size"]
       10 SETTABLEKS                       R4 R3 K2 ["Size"]
       12 DUPTABLE                         R4 K5 [{"Image"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Padding", "Size"}]
        5 LOADN                            R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Padding"]
        8 GETTABLEKS                       R4 R0 K2 ["Size"]
       10 SETTABLEKS                       R4 R3 K2 ["Size"]
       12 DUPTABLE                         R4 K5 [{"Image"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["AllowAir"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["AllowWater"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K3 [{"Id", "Label", "Material"}]
        7 GETUPVAL                         R9 1
        8 MOVE                             R10 R5
        9 CALL                             R9 1 1
       10 SETTABLEKS                       R9 R8 K0 ["Id"]
       12 GETUPVAL                         R9 2
       13 LOADK                            R11 K4 ["Materials"]
       14 GETTABLEKS                       R12 R5 K5 ["Name"]
       16 NAMECALL                         R9 R9 K6 ["getText"]
       18 CALL                             R9 3 1
       19 SETTABLEKS                       R9 R8 K1 ["Label"]
       21 SETTABLEKS                       R5 R8 K2 ["Material"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K9 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-24]
       31 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K4 [{"LayoutOrder", "OnClick", "Size"}]
        5 SETTABLEKS                       R1 R6 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R2 R6 K2 ["OnClick"]
        9 GETIMPORT                        R7 K7 [UDim2.new]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 LOADN                            R10 0
       14 GETUPVAL                         R12 2
       15 GETTABLEKS                       R11 R12 K8 ["DropdownItemHeight"]
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K3 ["Size"]
       20 DUPTABLE                         R7 K10 [{"Contents"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K0 ["createElement"]
       24 GETUPVAL                         R9 3
       25 DUPTABLE                         R10 K13 [{"Layout", "Size", "Spacing"}]
       26 GETIMPORT                        R11 K17 [Enum.FillDirection.Horizontal]
       28 SETTABLEKS                       R11 R10 K11 ["Layout"]
       30 GETIMPORT                        R11 K19 [UDim2.fromScale]
       32 LOADN                            R12 1
       33 LOADN                            R13 1
       34 CALL                             R11 2 1
       35 SETTABLEKS                       R11 R10 K3 ["Size"]
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R11 R12 K12 ["Spacing"]
       40 SETTABLEKS                       R11 R10 K12 ["Spacing"]
       42 DUPTABLE                         R11 K22 [{"PreviewContainer", "Label"}]
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R12 R13 K0 ["createElement"]
       46 GETUPVAL                         R13 3
       47 DUPTABLE                         R14 K23 [{"LayoutOrder", "Size"}]
       48 LOADN                            R15 1
       49 SETTABLEKS                       R15 R14 K1 ["LayoutOrder"]
       51 GETIMPORT                        R15 K25 [UDim2.fromOffset]
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R16 R17 K8 ["DropdownItemHeight"]
       56 GETUPVAL                         R18 2
       57 GETTABLEKS                       R17 R18 K8 ["DropdownItemHeight"]
       59 CALL                             R15 2 1
       60 SETTABLEKS                       R15 R14 K3 ["Size"]
       62 DUPTABLE                         R15 K27 [{"PreviewCenter"}]
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R16 R17 K0 ["createElement"]
       66 GETUPVAL                         R17 3
       67 DUPTABLE                         R18 K30 [{"AnchorPoint", "Position", "Size"}]
       68 GETIMPORT                        R19 K32 [Vector2.new]
       70 LOADK                            R20 K33 [0.5]
       71 LOADK                            R21 K33 [0.5]
       72 CALL                             R19 2 1
       73 SETTABLEKS                       R19 R18 K28 ["AnchorPoint"]
       75 GETIMPORT                        R19 K19 [UDim2.fromScale]
       77 LOADK                            R20 K33 [0.5]
       78 LOADK                            R21 K33 [0.5]
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K29 ["Position"]
       82 GETIMPORT                        R19 K25 [UDim2.fromOffset]
       84 GETUPVAL                         R21 2
       85 GETTABLEKS                       R20 R21 K34 ["PreviewSize"]
       87 GETUPVAL                         R22 2
       88 GETTABLEKS                       R21 R22 K34 ["PreviewSize"]
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K3 ["Size"]
       93 DUPTABLE                         R19 K36 [{"Preview"}]
       94 GETUPVAL                         R21 0
       95 GETTABLEKS                       R20 R21 K0 ["createElement"]
       97 GETUPVAL                         R21 4
       98 DUPTABLE                         R22 K40 [{"CornerRadius", "InitialDistance", "LayoutOrder", "Material", "Size"}]
       99 GETIMPORT                        R23 K42 [UDim.new]
      101 LOADN                            R24 0
      102 LOADN                            R25 4
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K37 ["CornerRadius"]
      106 LOADN                            R23 4
      107 SETTABLEKS                       R23 R22 K38 ["InitialDistance"]
      109 LOADN                            R23 1
      110 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      112 GETTABLEKS                       R23 R0 K39 ["Material"]
      114 SETTABLEKS                       R23 R22 K39 ["Material"]
      116 GETIMPORT                        R23 K19 [UDim2.fromScale]
      118 LOADN                            R24 1
      119 LOADN                            R25 1
      120 CALL                             R23 2 1
      121 SETTABLEKS                       R23 R22 K3 ["Size"]
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K35 ["Preview"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K26 ["PreviewCenter"]
      129 CALL                             R12 3 1
      130 SETTABLEKS                       R12 R11 K20 ["PreviewContainer"]
      132 GETUPVAL                         R13 0
      133 GETTABLEKS                       R12 R13 K0 ["createElement"]
      135 GETUPVAL                         R13 5
      136 DUPTABLE                         R14 K46 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment"}]
      137 LOADN                            R15 2
      138 SETTABLEKS                       R15 R14 K1 ["LayoutOrder"]
      140 GETIMPORT                        R15 K7 [UDim2.new]
      142 LOADN                            R16 1
      143 GETUPVAL                         R19 2
      144 GETTABLEKS                       R18 R19 K8 ["DropdownItemHeight"]
      146 MINUS                            R17 R18
      147 LOADN                            R18 1
      148 LOADN                            R19 0
      149 CALL                             R15 4 1
      150 SETTABLEKS                       R15 R14 K3 ["Size"]
      152 GETTABLEKS                       R15 R0 K21 ["Label"]
      154 SETTABLEKS                       R15 R14 K43 ["Text"]
      156 GETIMPORT                        R15 K48 [Enum.TextTruncate.AtEnd]
      158 SETTABLEKS                       R15 R14 K44 ["TextTruncate"]
      160 GETIMPORT                        R15 K50 [Enum.TextXAlignment.Left]
      162 SETTABLEKS                       R15 R14 K45 ["TextXAlignment"]
      164 CALL                             R12 2 1
      165 SETTABLEKS                       R12 R11 K21 ["Label"]
      167 CALL                             R8 3 1
      168 SETTABLEKS                       R8 R7 K9 ["Contents"]
      170 CALL                             R4 3 -1
      171 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Material"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Material"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
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
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 GETUPVAL                         R7 3
       24 CALL                             R7 0 1
       25 JUMPIFNOT                        R7 ; [+32]
       26 GETUPVAL                         R7 4
       27 NAMECALL                         R7 R7 K1 ["use"]
       29 CALL                             R7 1 1
       30 MOVE                             R4 R7
       31 GETUPVAL                         R7 1
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          REF R4
       36 NEWTABLE                         R9 0 1
       38 MOVE                             R10 R3
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 1
       42 MOVE                             R5 R7
       43 GETUPVAL                         R7 6
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U11
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R1
       54 SETLIST                          R9 R10 1 [1]
       56 CALL                             R7 2 1
       57 MOVE                             R6 R7
       58 NEWCLOSURE                       R7 P3
       59 CAPTURE                          VAL R0
       60 GETUPVAL                         R8 12
       61 JUMPIFNOT                        R8 ; [+94]
       62 GETTABLEKS                       R8 R2 K5 ["Dropdown"]
       64 JUMPIFNOT                        R8 ; [+91]
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R8 R9 K6 ["createElement"]
       68 GETUPVAL                         R9 9
       69 DUPTABLE                         R10 K10 [{"Layout", "Size", "Spacing"}]
       70 GETIMPORT                        R11 K14 [Enum.FillDirection.Horizontal]
       72 SETTABLEKS                       R11 R10 K7 ["Layout"]
       74 GETIMPORT                        R11 K17 [UDim2.fromScale]
       76 LOADN                            R12 1
       77 LOADN                            R13 1
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K8 ["Size"]
       81 GETTABLEKS                       R11 R1 K9 ["Spacing"]
       83 SETTABLEKS                       R11 R10 K9 ["Spacing"]
       85 NEWTABLE                         R11 0 2
       87 GETUPVAL                         R13 7
       88 GETTABLEKS                       R12 R13 K6 ["createElement"]
       90 GETUPVAL                         R13 10
       91 DUPTABLE                         R14 K21 [{"CornerRadius", "InitialDistance", "Material", "Size"}]
       92 GETIMPORT                        R15 K24 [UDim.new]
       94 LOADN                            R16 0
       95 LOADN                            R17 4
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K18 ["CornerRadius"]
       99 LOADN                            R15 4
      100 SETTABLEKS                       R15 R14 K19 ["InitialDistance"]
      102 GETTABLEKS                       R15 R0 K25 ["Value"]
      104 SETTABLEKS                       R15 R14 K20 ["Material"]
      106 GETIMPORT                        R15 K27 [UDim2.fromOffset]
      108 GETTABLEKS                       R16 R1 K28 ["PreviewSize"]
      110 GETTABLEKS                       R17 R1 K28 ["PreviewSize"]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K8 ["Size"]
      115 CALL                             R12 2 1
      116 GETUPVAL                         R14 7
      117 GETTABLEKS                       R13 R14 K6 ["createElement"]
      119 GETUPVAL                         R14 13
      120 DUPTABLE                         R15 K33 [{"Items", "OnItemActivated", "OnRenderItem", "SelectedId", "Size"}]
      121 SETTABLEKS                       R5 R15 K29 ["Items"]
      123 NEWCLOSURE                       R16 P4
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R16 R15 K30 ["OnItemActivated"]
      127 SETTABLEKS                       R6 R15 K31 ["OnRenderItem"]
      129 GETTABLEKS                       R17 R0 K25 ["Value"]
      131 GETTABLEKS                       R16 R17 K34 ["Name"]
      133 SETTABLEKS                       R16 R15 K32 ["SelectedId"]
      135 GETIMPORT                        R16 K35 [UDim2.new]
      137 LOADN                            R17 1
      138 GETTABLEKS                       R20 R1 K28 ["PreviewSize"]
      140 MINUS                            R19 R20
      141 GETTABLEKS                       R20 R1 K9 ["Spacing"]
      143 SUB                              R18 R19 R20
      144 LOADN                            R19 0
      145 GETTABLEKS                       R20 R1 K28 ["PreviewSize"]
      147 CALL                             R16 4 1
      148 SETTABLEKS                       R16 R15 K8 ["Size"]
      150 CALL                             R13 2 -1
      151 SETLIST                          R11 R12 -1 [1]
      153 CALL                             R8 3 -1
      154 CLOSEUPVALS                      R4
      155 RETURN                           R8 -1
      156 GETUPVAL                         R9 7
      157 GETTABLEKS                       R8 R9 K6 ["createElement"]
      159 GETUPVAL                         R9 9
      160 DUPTABLE                         R10 K38 [{"AutomaticSize", "Layout", "Size", "VerticalAlignment"}]
      161 GETIMPORT                        R11 K40 [Enum.AutomaticSize.Y]
      163 SETTABLEKS                       R11 R10 K36 ["AutomaticSize"]
      165 GETIMPORT                        R11 K14 [Enum.FillDirection.Horizontal]
      167 SETTABLEKS                       R11 R10 K7 ["Layout"]
      169 GETIMPORT                        R11 K17 [UDim2.fromScale]
      171 LOADN                            R12 1
      172 LOADN                            R13 0
      173 CALL                             R11 2 1
      174 SETTABLEKS                       R11 R10 K8 ["Size"]
      176 GETIMPORT                        R11 K42 [Enum.VerticalAlignment.Top]
      178 SETTABLEKS                       R11 R10 K37 ["VerticalAlignment"]
      180 DUPTABLE                         R11 K44 [{"Grid"}]
      181 GETUPVAL                         R13 7
      182 GETTABLEKS                       R12 R13 K6 ["createElement"]
      184 GETUPVAL                         R13 14
      185 DUPTABLE                         R14 K52 [{"AutomaticSize", "CustomPreviews", "GridItemSize", "InitialDistance", "OnClick", "Items", "ScrollingDirection", "SelectedItemId", "ShowGridLabels", "Size", "ViewType"}]
      186 GETIMPORT                        R15 K40 [Enum.AutomaticSize.Y]
      188 SETTABLEKS                       R15 R14 K36 ["AutomaticSize"]
      190 NEWTABLE                         R15 2 0
      192 GETIMPORT                        R16 K54 [Enum.Material.Air]
      194 GETUPVAL                         R17 15
      195 SETTABLE                         R17 R15 R16
      196 GETIMPORT                        R16 K56 [Enum.Material.Water]
      198 GETUPVAL                         R17 16
      199 SETTABLE                         R17 R15 R16
      200 SETTABLEKS                       R15 R14 K45 ["CustomPreviews"]
      202 GETTABLEKS                       R15 R1 K46 ["GridItemSize"]
      204 SETTABLEKS                       R15 R14 K46 ["GridItemSize"]
      206 GETTABLEKS                       R15 R1 K19 ["InitialDistance"]
      208 SETTABLEKS                       R15 R14 K19 ["InitialDistance"]
      210 SETTABLEKS                       R7 R14 K47 ["OnClick"]
      212 SETTABLEKS                       R3 R14 K29 ["Items"]
      214 GETIMPORT                        R15 K57 [Enum.ScrollingDirection.Y]
      216 SETTABLEKS                       R15 R14 K48 ["ScrollingDirection"]
      218 GETUPVAL                         R15 5
      219 GETTABLEKS                       R16 R0 K25 ["Value"]
      221 CALL                             R15 1 1
      222 SETTABLEKS                       R15 R14 K49 ["SelectedItemId"]
      224 LOADB                            R15 0
      225 SETTABLEKS                       R15 R14 K50 ["ShowGridLabels"]
      227 GETIMPORT                        R15 K17 [UDim2.fromScale]
      229 LOADN                            R16 1
      230 LOADN                            R17 0
      231 CALL                             R15 2 1
      232 SETTABLEKS                       R15 R14 K8 ["Size"]
      234 GETUPVAL                         R16 17
      235 GETTABLEKS                       R15 R16 K43 ["Grid"]
      237 SETTABLEKS                       R15 R14 K51 ["ViewType"]
      239 CALL                             R12 2 1
      240 SETTABLEKS                       R12 R11 K43 ["Grid"]
      242 CALL                             R8 3 -1
      243 CLOSEUPVALS                      R4
      244 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R6 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K11 ["ContextServices"]
       41 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       43 GETTABLEKS                       R7 R4 K14 ["useCallback"]
       45 GETTABLEKS                       R8 R4 K15 ["useMemo"]
       47 GETTABLEKS                       R9 R4 K16 ["useState"]
       49 GETTABLEKS                       R11 R2 K17 ["UI"]
       51 GETTABLEKS                       R10 R11 K18 ["Button"]
       53 GETTABLEKS                       R12 R2 K17 ["UI"]
       55 GETTABLEKS                       R11 R12 K19 ["Image"]
       57 GETTABLEKS                       R13 R2 K17 ["UI"]
       59 GETTABLEKS                       R12 R13 K20 ["Pane"]
       61 GETTABLEKS                       R14 R2 K17 ["UI"]
       63 GETTABLEKS                       R13 R14 K21 ["SelectInput"]
       65 GETTABLEKS                       R15 R2 K17 ["UI"]
       67 GETTABLEKS                       R14 R15 K22 ["TextLabel"]
       69 GETTABLEKS                       R16 R3 K23 ["Components"]
       71 GETTABLEKS                       R15 R16 K24 ["MaterialPreview"]
       73 GETTABLEKS                       R17 R3 K23 ["Components"]
       75 GETTABLEKS                       R16 R17 K25 ["MaterialGrid"]
       77 GETTABLEKS                       R18 R3 K26 ["Enums"]
       79 GETTABLEKS                       R17 R18 K27 ["ViewType"]
       81 GETTABLEKS                       R19 R3 K28 ["Util"]
       83 GETTABLEKS                       R18 R19 K29 ["getSerializedMaterialIdentifier"]
       85 GETIMPORT                        R19 K5 [require]
       87 GETTABLEKS                       R22 R0 K30 ["Src"]
       89 GETTABLEKS                       R21 R22 K28 ["Util"]
       91 GETTABLEKS                       R20 R21 K31 ["getMaterials"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K5 [require]
       96 GETTABLEKS                       R23 R0 K30 ["Src"]
       98 GETTABLEKS                       R22 R23 K32 ["Resources"]
      100 GETTABLEKS                       R21 R22 K33 ["Theme"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R24 R0 K30 ["Src"]
      107 GETTABLEKS                       R23 R24 K34 ["Flags"]
      109 GETTABLEKS                       R22 R23 K35 ["getFFlagTerrainEditorGenerationFeature"]
      111 CALL                             R21 1 1
      112 MOVE                             R22 R21
      113 CALL                             R22 0 1
      114 DUPCLOSURE                       R23 K36 [PROTO_0]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 DUPCLOSURE                       R24 K37 [PROTO_1]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R11
      122 DUPCLOSURE                       R25 K38 [PROTO_7]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R17
      141 RETURN                           R25 1
