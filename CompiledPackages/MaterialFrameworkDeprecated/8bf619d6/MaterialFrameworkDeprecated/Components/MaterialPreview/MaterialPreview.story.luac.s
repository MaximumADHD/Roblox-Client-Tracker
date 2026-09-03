PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 8, ["VerticalAlignment"]}]
        5 GETIMPORT                        R4 K11 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETIMPORT                        R4 K13 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       13 GETIMPORT                        R4 K16 [Enum.FillDirection.Vertical]
       15 SETTABLEKS                       R4 R3 K3 ["Layout"]
       17 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       21 GETIMPORT                        R4 K18 [Enum.VerticalAlignment.Top]
       23 SETTABLEKS                       R4 R3 K7 ["VerticalAlignment"]
       25 DUPTABLE                         R4 K21 [{"Label", "Content"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K24 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"]}]
       31 GETIMPORT                        R8 K11 [Enum.AutomaticSize.XY]
       33 SETTABLEKS                       R8 R7 K1 ["AutomaticSize"]
       35 GETTABLEKS                       R8 R0 K23 ["Text"]
       37 SETTABLEKS                       R8 R7 K23 ["Text"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K19 ["Label"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 GETUPVAL                         R6 1
       46 DUPTABLE                         R7 K26 [{["AutomaticSize"], ["LayoutOrder"] = 2}]
       47 GETIMPORT                        R8 K11 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R8 R7 K1 ["AutomaticSize"]
       51 GETTABLEKS                       R8 R0 K27 ["children"]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K20 ["Content"]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETTABLEKS                       R2 R0 K3 ["Name"]
        5 SETTABLEKS                       R2 R1 K1 ["Label"]
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 NAMECALL                         R2 R0 K1 ["GetEnumItems"]
        5 CALL                             R2 1 1
        6 DUPCLOSURE                       R3 K2 [PROTO_1]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K5 [table.sort]
       10 MOVE                             R3 R1
       11 DUPCLOSURE                       R4 K6 [PROTO_2]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETTABLEKS                       R2 R0 K3 ["rawValue"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["Label"]
        8 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETTABLEKS                       R2 R0 K1 ["allValues"]
        5 CALL                             R2 0 1
        6 DUPCLOSURE                       R3 K2 [PROTO_4]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K5 [table.sort]
       10 MOVE                             R3 R1
       11 DUPCLOSURE                       R4 K6 [PROTO_5]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"material"}]
        2 GETTABLEKS                       R4 R0 K2 ["Id"]
        4 SETTABLEKS                       R4 R3 K0 ["material"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"materialPreviewGeometryType"}]
        2 GETTABLEKS                       R4 R0 K2 ["Id"]
        4 SETTABLEKS                       R4 R3 K0 ["materialPreviewGeometryType"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["MaterialVariant"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 SETTABLEKS                       R0 R1 K2 ["StudsPerTile"]
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["MaterialVariant"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R2 R0 K2 ["Id"]
        8 SETTABLEKS                       R2 R1 K3 ["MaterialPattern"]
       10 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"updateCount"}]
        1 GETTABLEKS                       R4 R0 K0 ["updateCount"]
        3 ORK                              R3 R4 K3 [0]
        4 ADDK                             R2 R3 K2 [1]
        5 SETTABLEKS                       R2 R1 K0 ["updateCount"]
        7 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_11]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R4 K2 [{"material", "materialPreviewGeometryType"}]
        1 GETTABLEKS                       R5 R1 K3 ["Material"]
        3 SETTABLEKS                       R5 R4 K0 ["material"]
        5 GETTABLEKS                       R5 R1 K4 ["DefaultMaterialPreviewGeometryType"]
        7 JUMPIF                           R5 ; [+3]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K5 ["Sphere"]
       11 SETTABLEKS                       R5 R4 K1 ["materialPreviewGeometryType"]
       13 NAMECALL                         R2 R0 K6 ["setState"]
       15 CALL                             R2 2 0
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["materialChanged"]
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K8 ["onPreviewGeometryTypeChanged"]
       24 NEWCLOSURE                       R2 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K9 ["studsPerTileChanged"]
       28 NEWCLOSURE                       R2 P3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R0 K10 ["materialPatternChanged"]
       32 NEWCLOSURE                       R2 P4
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R0 K11 ["forceUpdate"]
       36 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["MaterialVariant"]
        4 JUMPIFNOT                        R1 ; [+26]
        5 LOADK                            R4 K2 ["StudsPerTile"]
        6 NAMECALL                         R2 R1 K3 ["GetPropertyChangedSignal"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R4 R0 K4 ["forceUpdate"]
       11 NAMECALL                         R2 R2 K5 ["Connect"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K6 ["studsPerTileChangedConnection"]
       16 LOADK                            R4 K7 ["MaterialPattern"]
       17 NAMECALL                         R2 R1 K3 ["GetPropertyChangedSignal"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R4 R0 K4 ["forceUpdate"]
       22 NAMECALL                         R2 R2 K5 ["Connect"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K8 ["materialPatternChangedConnection"]
       27 GETTABLEKS                       R2 R1 K9 ["Parent"]
       29 SETTABLEKS                       R2 R0 K10 ["restoreMaterialVariantParent"]
       31 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["MaterialVariant"]
        4 JUMPIFNOT                        R1 ; [+26]
        5 GETTABLEKS                       R2 R0 K2 ["studsPerTileChangedConnection"]
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["studsPerTileChangedConnection"]
       10 NAMECALL                         R2 R2 K3 ["Disconnect"]
       12 CALL                             R2 1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K2 ["studsPerTileChangedConnection"]
       16 GETTABLEKS                       R2 R0 K4 ["materialPatternChangedConnection"]
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETTABLEKS                       R2 R0 K4 ["materialPatternChangedConnection"]
       21 NAMECALL                         R2 R2 K3 ["Disconnect"]
       23 CALL                             R2 1 0
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R0 K4 ["materialPatternChangedConnection"]
       27 GETTABLEKS                       R2 R0 K5 ["restoreMaterialVariantParent"]
       29 SETTABLEKS                       R2 R1 K6 ["Parent"]
       31 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["MaterialVariant"]
        6 GETTABLEKS                       R4 R2 K3 ["material"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 DUPTABLE                         R6 K6 [{"Preview"}]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K7 ["createElement"]
       16 GETUPVAL                         R8 2
       17 DUPTABLE                         R9 K18 [{["DisableZoom"] = True, ["LayoutOrder"], ["Material"], ["MaterialPreviewGeometryType"], ["RecenterCameraOnUpdate"] = False, ["Size"], ["Style"] = "CornerBox"}]
       18 NAMECALL                         R10 R5 K19 ["getNextOrder"]
       20 CALL                             R10 1 1
       21 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       23 OR                               R10 R4 R3
       24 SETTABLEKS                       R10 R9 K11 ["Material"]
       26 GETTABLEKS                       R10 R2 K20 ["materialPreviewGeometryType"]
       28 SETTABLEKS                       R10 R9 K12 ["MaterialPreviewGeometryType"]
       30 GETIMPORT                        R10 K23 [UDim2.fromOffset]
       32 LOADN                            R11 200
       33 LOADN                            R12 200
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K15 ["Size"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K5 ["Preview"]
       40 JUMPIFNOT                        R4 ; [+117]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K7 ["createElement"]
       44 GETUPVAL                         R8 3
       45 DUPTABLE                         R9 K30 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
       46 GETIMPORT                        R10 K33 [Enum.AutomaticSize.Y]
       48 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       50 GETIMPORT                        R10 K35 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R10 R9 K25 ["HorizontalAlignment"]
       54 GETIMPORT                        R10 K38 [Enum.FillDirection.Vertical]
       56 SETTABLEKS                       R10 R9 K26 ["Layout"]
       58 NAMECALL                         R10 R5 K19 ["getNextOrder"]
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       63 GETIMPORT                        R10 K39 [UDim2.new]
       65 LOADN                            R11 0
       66 LOADN                            R12 200
       67 LOADN                            R13 1
       68 LOADN                            R14 0
       69 CALL                             R10 4 1
       70 SETTABLEKS                       R10 R9 K15 ["Size"]
       72 GETIMPORT                        R10 K41 [Enum.VerticalAlignment.Top]
       74 SETTABLEKS                       R10 R9 K29 ["VerticalAlignment"]
       76 DUPTABLE                         R10 K44 [{"Materialinput", "GeometryInputType"}]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K7 ["createElement"]
       80 GETUPVAL                         R12 4
       81 DUPTABLE                         R13 K46 [{["LayoutOrder"], ["Text"] = "Material"}]
       82 NAMECALL                         R14 R5 K19 ["getNextOrder"]
       84 CALL                             R14 1 1
       85 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       87 DUPTABLE                         R14 K48 [{"Input"}]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K7 ["createElement"]
       91 GETUPVAL                         R16 5
       92 DUPTABLE                         R17 K52 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
       93 GETUPVAL                         R18 6
       94 SETTABLEKS                       R18 R17 K49 ["Items"]
       96 GETTABLEKS                       R18 R0 K53 ["materialChanged"]
       98 SETTABLEKS                       R18 R17 K50 ["OnItemActivated"]
      100 SETTABLEKS                       R4 R17 K51 ["SelectedId"]
      102 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      104 LOADN                            R19 200
      105 LOADN                            R20 30
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K15 ["Size"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K47 ["Input"]
      112 CALL                             R11 3 1
      113 SETTABLEKS                       R11 R10 K42 ["Materialinput"]
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K7 ["createElement"]
      118 GETUPVAL                         R12 4
      119 DUPTABLE                         R13 K55 [{["LayoutOrder"], ["Text"] = "Preview geometry"}]
      120 NAMECALL                         R14 R5 K19 ["getNextOrder"]
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      125 DUPTABLE                         R14 K48 [{"Input"}]
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R15 R15 K7 ["createElement"]
      129 GETUPVAL                         R16 5
      130 DUPTABLE                         R17 K52 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      131 GETUPVAL                         R18 7
      132 SETTABLEKS                       R18 R17 K49 ["Items"]
      134 GETTABLEKS                       R18 R0 K56 ["onPreviewGeometryTypeChanged"]
      136 SETTABLEKS                       R18 R17 K50 ["OnItemActivated"]
      138 GETTABLEKS                       R18 R2 K20 ["materialPreviewGeometryType"]
      140 SETTABLEKS                       R18 R17 K51 ["SelectedId"]
      142 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      144 LOADN                            R19 200
      145 LOADN                            R20 30
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K15 ["Size"]
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K47 ["Input"]
      152 CALL                             R11 3 1
      153 SETTABLEKS                       R11 R10 K43 ["GeometryInputType"]
      155 CALL                             R7 3 1
      156 SETTABLEKS                       R7 R6 K57 ["MaterialInput"]
      158 JUMPIFNOT                        R3 ; [+159]
      159 GETUPVAL                         R7 1
      160 GETTABLEKS                       R7 R7 K7 ["createElement"]
      162 GETUPVAL                         R8 3
      163 DUPTABLE                         R9 K30 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      164 GETIMPORT                        R10 K33 [Enum.AutomaticSize.Y]
      166 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      168 GETIMPORT                        R10 K35 [Enum.HorizontalAlignment.Left]
      170 SETTABLEKS                       R10 R9 K25 ["HorizontalAlignment"]
      172 GETIMPORT                        R10 K38 [Enum.FillDirection.Vertical]
      174 SETTABLEKS                       R10 R9 K26 ["Layout"]
      176 NAMECALL                         R10 R5 K19 ["getNextOrder"]
      178 CALL                             R10 1 1
      179 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
      181 GETIMPORT                        R10 K39 [UDim2.new]
      183 LOADN                            R11 0
      184 LOADN                            R12 200
      185 LOADN                            R13 1
      186 LOADN                            R14 0
      187 CALL                             R10 4 1
      188 SETTABLEKS                       R10 R9 K15 ["Size"]
      190 GETIMPORT                        R10 K41 [Enum.VerticalAlignment.Top]
      192 SETTABLEKS                       R10 R9 K29 ["VerticalAlignment"]
      194 DUPTABLE                         R10 K60 [{"StudsPerTile", "MaterialPattern", "GeometryInputType"}]
      195 GETUPVAL                         R11 1
      196 GETTABLEKS                       R11 R11 K7 ["createElement"]
      198 GETUPVAL                         R12 4
      199 DUPTABLE                         R13 K62 [{["LayoutOrder"], ["Text"] = "Studs Per Tile"}]
      200 NAMECALL                         R14 R5 K19 ["getNextOrder"]
      202 CALL                             R14 1 1
      203 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      205 DUPTABLE                         R14 K48 [{"Input"}]
      206 GETUPVAL                         R15 1
      207 GETTABLEKS                       R15 R15 K7 ["createElement"]
      209 GETUPVAL                         R16 8
      210 DUPTABLE                         R17 K66 [{"OnChanged", "Schema", "Size", "Value"}]
      211 GETTABLEKS                       R18 R0 K67 ["studsPerTileChanged"]
      213 SETTABLEKS                       R18 R17 K63 ["OnChanged"]
      215 DUPTABLE                         R18 K76 [{["Type"] = "Slider", ["Min"] = 0.1, ["Max"] = 20, ["SnapIncrement"] = 0.1, ["ShowInput"] = True}]
      216 SETTABLEKS                       R18 R17 K64 ["Schema"]
      218 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      220 LOADN                            R19 200
      221 LOADN                            R20 30
      222 CALL                             R18 2 1
      223 SETTABLEKS                       R18 R17 K15 ["Size"]
      225 GETTABLEKS                       R18 R3 K58 ["StudsPerTile"]
      227 SETTABLEKS                       R18 R17 K65 ["Value"]
      229 CALL                             R15 2 1
      230 SETTABLEKS                       R15 R14 K47 ["Input"]
      232 CALL                             R11 3 1
      233 SETTABLEKS                       R11 R10 K58 ["StudsPerTile"]
      235 GETUPVAL                         R11 1
      236 GETTABLEKS                       R11 R11 K7 ["createElement"]
      238 GETUPVAL                         R12 4
      239 DUPTABLE                         R13 K78 [{["LayoutOrder"], ["Text"] = "Material Pattern"}]
      240 NAMECALL                         R14 R5 K19 ["getNextOrder"]
      242 CALL                             R14 1 1
      243 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      245 DUPTABLE                         R14 K48 [{"Input"}]
      246 GETUPVAL                         R15 1
      247 GETTABLEKS                       R15 R15 K7 ["createElement"]
      249 GETUPVAL                         R16 5
      250 DUPTABLE                         R17 K52 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      251 GETUPVAL                         R18 9
      252 SETTABLEKS                       R18 R17 K49 ["Items"]
      254 GETTABLEKS                       R18 R0 K79 ["materialPatternChanged"]
      256 SETTABLEKS                       R18 R17 K50 ["OnItemActivated"]
      258 GETTABLEKS                       R18 R3 K59 ["MaterialPattern"]
      260 SETTABLEKS                       R18 R17 K51 ["SelectedId"]
      262 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      264 LOADN                            R19 200
      265 LOADN                            R20 30
      266 CALL                             R18 2 1
      267 SETTABLEKS                       R18 R17 K15 ["Size"]
      269 CALL                             R15 2 1
      270 SETTABLEKS                       R15 R14 K47 ["Input"]
      272 CALL                             R11 3 1
      273 SETTABLEKS                       R11 R10 K59 ["MaterialPattern"]
      275 GETUPVAL                         R11 1
      276 GETTABLEKS                       R11 R11 K7 ["createElement"]
      278 GETUPVAL                         R12 4
      279 DUPTABLE                         R13 K55 [{["LayoutOrder"], ["Text"] = "Preview geometry"}]
      280 NAMECALL                         R14 R5 K19 ["getNextOrder"]
      282 CALL                             R14 1 1
      283 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      285 DUPTABLE                         R14 K48 [{"Input"}]
      286 GETUPVAL                         R15 1
      287 GETTABLEKS                       R15 R15 K7 ["createElement"]
      289 GETUPVAL                         R16 5
      290 DUPTABLE                         R17 K52 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      291 GETUPVAL                         R18 7
      292 SETTABLEKS                       R18 R17 K49 ["Items"]
      294 GETTABLEKS                       R18 R0 K56 ["onPreviewGeometryTypeChanged"]
      296 SETTABLEKS                       R18 R17 K50 ["OnItemActivated"]
      298 GETTABLEKS                       R18 R2 K20 ["materialPreviewGeometryType"]
      300 SETTABLEKS                       R18 R17 K51 ["SelectedId"]
      302 GETIMPORT                        R18 K23 [UDim2.fromOffset]
      304 LOADN                            R19 200
      305 LOADN                            R20 30
      306 CALL                             R18 2 1
      307 SETTABLEKS                       R18 R17 K15 ["Size"]
      309 CALL                             R15 2 1
      310 SETTABLEKS                       R15 R14 K47 ["Input"]
      312 CALL                             R11 3 1
      313 SETTABLEKS                       R11 R10 K43 ["GeometryInputType"]
      315 CALL                             R7 3 1
      316 SETTABLEKS                       R7 R6 K80 ["MaterialVariantPane"]
      318 GETUPVAL                         R7 1
      319 GETTABLEKS                       R7 R7 K7 ["createElement"]
      321 GETUPVAL                         R8 3
      322 DUPTABLE                         R9 K81 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      323 GETIMPORT                        R10 K83 [Enum.AutomaticSize.XY]
      325 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      327 GETIMPORT                        R10 K85 [Enum.FillDirection.Horizontal]
      329 SETTABLEKS                       R10 R9 K26 ["Layout"]
      331 GETIMPORT                        R10 K41 [Enum.VerticalAlignment.Top]
      333 SETTABLEKS                       R10 R9 K29 ["VerticalAlignment"]
      335 MOVE                             R10 R6
      336 CALL                             R7 3 -1
      337 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R1 K6 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R1 K7 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K8 ["UI"]
       28 GETTABLEKS                       R6 R5 K9 ["Pane"]
       30 GETTABLEKS                       R7 R5 K10 ["PropertyCell"]
       32 GETTABLEKS                       R8 R5 K11 ["SelectInput"]
       34 GETTABLEKS                       R9 R5 K12 ["TextLabel"]
       36 GETTABLEKS                       R10 R3 K13 ["Util"]
       38 GETTABLEKS                       R10 R10 K14 ["LayoutOrderIterator"]
       40 GETIMPORT                        R11 K4 [require]
       42 GETTABLEKS                       R12 R0 K15 ["Enums"]
       44 GETTABLEKS                       R12 R12 K16 ["MaterialPreviewGeometryType"]
       46 CALL                             R11 1 1
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R13 R0 K17 ["Components"]
       51 GETTABLEKS                       R13 R13 K18 ["MaterialPreview"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R0 K19 ["TestHelpers"]
       58 GETTABLEKS                       R14 R14 K20 ["createMaterialVariants"]
       60 CALL                             R13 1 1
       61 DUPCLOSURE                       R14 K21 [PROTO_0]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R9
       65 DUPCLOSURE                       R15 K22 [PROTO_3]
       66 CAPTURE                          VAL R2
       67 DUPCLOSURE                       R16 K23 [PROTO_6]
       68 CAPTURE                          VAL R2
       69 MOVE                             R17 R15
       70 GETIMPORT                        R18 K26 [Enum.Material]
       72 CALL                             R17 1 1
       73 MOVE                             R18 R15
       74 GETIMPORT                        R19 K28 [Enum.MaterialPattern]
       76 CALL                             R18 1 1
       77 MOVE                             R19 R16
       78 MOVE                             R20 R11
       79 CALL                             R19 1 1
       80 GETTABLEKS                       R20 R4 K29 ["PureComponent"]
       82 LOADK                            R22 K30 ["MaterialPreviewStory"]
       83 NAMECALL                         R20 R20 K31 ["extend"]
       85 CALL                             R20 2 1
       86 DUPCLOSURE                       R21 K32 [PROTO_13]
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R21 R20 K33 ["init"]
       90 DUPCLOSURE                       R21 K34 [PROTO_14]
       91 SETTABLEKS                       R21 R20 K35 ["didMount"]
       93 DUPCLOSURE                       R21 K36 [PROTO_15]
       94 SETTABLEKS                       R21 R20 K37 ["willUnmount"]
       96 DUPCLOSURE                       R21 K38 [PROTO_16]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R19
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R18
      107 SETTABLEKS                       R21 R20 K39 ["render"]
      109 DUPTABLE                         R21 K41 [{"stories"}]
      110 NEWTABLE                         R22 0 6
      112 DUPTABLE                         R23 K45 [{["name"] = "Material Variant (ColorMap)", ["story"]}]
      113 GETTABLEKS                       R24 R4 K46 ["createElement"]
      115 MOVE                             R25 R20
      116 DUPTABLE                         R26 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      117 MOVE                             R28 R13
      118 CALL                             R28 0 1
      119 GETTABLEN                        R27 R28 1
      120 SETTABLEKS                       R27 R26 K47 ["MaterialVariant"]
      122 GETTABLEKS                       R27 R11 K50 ["ColorMap"]
      124 SETTABLEKS                       R27 R26 K48 ["DefaultMaterialPreviewGeometryType"]
      126 CALL                             R24 2 1
      127 SETTABLEKS                       R24 R23 K44 ["story"]
      129 DUPTABLE                         R24 K52 [{["name"] = "Material (Dominus)", ["story"]}]
      130 GETTABLEKS                       R25 R4 K46 ["createElement"]
      132 MOVE                             R26 R20
      133 DUPTABLE                         R27 K53 [{"Material", "DefaultMaterialPreviewGeometryType"}]
      134 GETIMPORT                        R28 K55 [Enum.Material.Granite]
      136 SETTABLEKS                       R28 R27 K25 ["Material"]
      138 GETTABLEKS                       R28 R11 K56 ["Dominus"]
      140 SETTABLEKS                       R28 R27 K48 ["DefaultMaterialPreviewGeometryType"]
      142 CALL                             R25 2 1
      143 SETTABLEKS                       R25 R24 K44 ["story"]
      145 DUPTABLE                         R25 K58 [{["name"] = "Material (Metal)", ["story"]}]
      146 GETTABLEKS                       R26 R4 K46 ["createElement"]
      148 MOVE                             R27 R20
      149 DUPTABLE                         R28 K59 [{"Material"}]
      150 GETIMPORT                        R29 K61 [Enum.Material.Metal]
      152 SETTABLEKS                       R29 R28 K25 ["Material"]
      154 CALL                             R26 2 1
      155 SETTABLEKS                       R26 R25 K44 ["story"]
      157 DUPTABLE                         R26 K63 [{["name"] = "Material (Brick)", ["story"]}]
      158 GETTABLEKS                       R27 R4 K46 ["createElement"]
      160 MOVE                             R28 R20
      161 DUPTABLE                         R29 K59 [{"Material"}]
      162 GETIMPORT                        R30 K65 [Enum.Material.Brick]
      164 SETTABLEKS                       R30 R29 K25 ["Material"]
      166 CALL                             R27 2 1
      167 SETTABLEKS                       R27 R26 K44 ["story"]
      169 DUPTABLE                         R27 K67 [{["name"] = "Material Variant", ["story"]}]
      170 GETTABLEKS                       R28 R4 K46 ["createElement"]
      172 MOVE                             R29 R20
      173 DUPTABLE                         R30 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      174 MOVE                             R32 R13
      175 CALL                             R32 0 1
      176 GETTABLEN                        R31 R32 1
      177 SETTABLEKS                       R31 R30 K47 ["MaterialVariant"]
      179 GETTABLEKS                       R31 R11 K68 ["Sphere"]
      181 SETTABLEKS                       R31 R30 K48 ["DefaultMaterialPreviewGeometryType"]
      183 CALL                             R28 2 1
      184 SETTABLEKS                       R28 R27 K44 ["story"]
      186 DUPTABLE                         R28 K70 [{["name"] = "MaterialVariant (Plane)", ["story"]}]
      187 GETTABLEKS                       R29 R4 K46 ["createElement"]
      189 MOVE                             R30 R20
      190 DUPTABLE                         R31 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      191 MOVE                             R33 R13
      192 CALL                             R33 0 1
      193 GETTABLEN                        R32 R33 2
      194 SETTABLEKS                       R32 R31 K47 ["MaterialVariant"]
      196 GETTABLEKS                       R32 R11 K71 ["Plane"]
      198 SETTABLEKS                       R32 R31 K48 ["DefaultMaterialPreviewGeometryType"]
      200 CALL                             R29 2 1
      201 SETTABLEKS                       R29 R28 K44 ["story"]
      203 SETLIST                          R22 R23 6 [1]
      205 SETTABLEKS                       R22 R21 K40 ["stories"]
      207 RETURN                           R21 1
