PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
        5 GETIMPORT                        R4 K10 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETIMPORT                        R4 K12 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       13 GETIMPORT                        R4 K15 [Enum.FillDirection.Vertical]
       15 SETTABLEKS                       R4 R3 K3 ["Layout"]
       17 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       21 LOADN                            R4 8
       22 SETTABLEKS                       R4 R3 K5 ["Spacing"]
       24 GETIMPORT                        R4 K17 [Enum.VerticalAlignment.Top]
       26 SETTABLEKS                       R4 R3 K6 ["VerticalAlignment"]
       28 DUPTABLE                         R4 K20 [{"Label", "Content"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K0 ["createElement"]
       32 GETUPVAL                         R6 2
       33 DUPTABLE                         R7 K22 [{"AutomaticSize", "LayoutOrder", "Text"}]
       34 GETIMPORT                        R8 K10 [Enum.AutomaticSize.XY]
       36 SETTABLEKS                       R8 R7 K1 ["AutomaticSize"]
       38 LOADN                            R8 1
       39 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       41 GETTABLEKS                       R8 R0 K21 ["Text"]
       43 SETTABLEKS                       R8 R7 K21 ["Text"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K18 ["Label"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K0 ["createElement"]
       51 GETUPVAL                         R6 1
       52 DUPTABLE                         R7 K23 [{"AutomaticSize", "LayoutOrder"}]
       53 GETIMPORT                        R8 K10 [Enum.AutomaticSize.XY]
       55 SETTABLEKS                       R8 R7 K1 ["AutomaticSize"]
       57 LOADN                            R8 2
       58 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       60 GETTABLEKS                       R8 R0 K24 ["children"]
       62 CALL                             R5 3 1
       63 SETTABLEKS                       R5 R4 K19 ["Content"]
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["MaterialVariant"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 SETTABLEKS                       R0 R1 K2 ["StudsPerTile"]
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["MaterialVariant"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K5 ["Sphere"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["MaterialVariant"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["MaterialVariant"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 DUPTABLE                         R6 K6 [{"Preview"}]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K7 ["createElement"]
       16 GETUPVAL                         R8 2
       17 DUPTABLE                         R9 K15 [{"DisableZoom", "LayoutOrder", "Material", "MaterialPreviewGeometryType", "RecenterCameraOnUpdate", "Size", "Style"}]
       18 LOADB                            R10 1
       19 SETTABLEKS                       R10 R9 K8 ["DisableZoom"]
       21 NAMECALL                         R10 R5 K16 ["getNextOrder"]
       23 CALL                             R10 1 1
       24 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       26 OR                               R10 R4 R3
       27 SETTABLEKS                       R10 R9 K10 ["Material"]
       29 GETTABLEKS                       R10 R2 K17 ["materialPreviewGeometryType"]
       31 SETTABLEKS                       R10 R9 K11 ["MaterialPreviewGeometryType"]
       33 LOADB                            R10 0
       34 SETTABLEKS                       R10 R9 K12 ["RecenterCameraOnUpdate"]
       36 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       38 LOADN                            R11 200
       39 LOADN                            R12 200
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K13 ["Size"]
       43 LOADK                            R10 K21 ["CornerBox"]
       44 SETTABLEKS                       R10 R9 K14 ["Style"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K5 ["Preview"]
       49 JUMPIFNOT                        R4 ; [+126]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K7 ["createElement"]
       53 GETUPVAL                         R8 3
       54 DUPTABLE                         R9 K27 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       55 GETIMPORT                        R10 K30 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R10 R9 K22 ["AutomaticSize"]
       59 GETIMPORT                        R10 K32 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R10 R9 K23 ["HorizontalAlignment"]
       63 GETIMPORT                        R10 K35 [Enum.FillDirection.Vertical]
       65 SETTABLEKS                       R10 R9 K24 ["Layout"]
       67 NAMECALL                         R10 R5 K16 ["getNextOrder"]
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       72 GETIMPORT                        R10 K36 [UDim2.new]
       74 LOADN                            R11 0
       75 LOADN                            R12 200
       76 LOADN                            R13 1
       77 LOADN                            R14 0
       78 CALL                             R10 4 1
       79 SETTABLEKS                       R10 R9 K13 ["Size"]
       81 LOADN                            R10 10
       82 SETTABLEKS                       R10 R9 K25 ["Spacing"]
       84 GETIMPORT                        R10 K38 [Enum.VerticalAlignment.Top]
       86 SETTABLEKS                       R10 R9 K26 ["VerticalAlignment"]
       88 DUPTABLE                         R10 K41 [{"Materialinput", "GeometryInputType"}]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R11 R12 K7 ["createElement"]
       92 GETUPVAL                         R12 4
       93 DUPTABLE                         R13 K43 [{"LayoutOrder", "Text"}]
       94 NAMECALL                         R14 R5 K16 ["getNextOrder"]
       96 CALL                             R14 1 1
       97 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       99 LOADK                            R14 K10 ["Material"]
      100 SETTABLEKS                       R14 R13 K42 ["Text"]
      102 DUPTABLE                         R14 K45 [{"Input"}]
      103 GETUPVAL                         R16 1
      104 GETTABLEKS                       R15 R16 K7 ["createElement"]
      106 GETUPVAL                         R16 5
      107 DUPTABLE                         R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      108 GETUPVAL                         R18 6
      109 SETTABLEKS                       R18 R17 K46 ["Items"]
      111 GETTABLEKS                       R18 R0 K50 ["materialChanged"]
      113 SETTABLEKS                       R18 R17 K47 ["OnItemActivated"]
      115 SETTABLEKS                       R4 R17 K48 ["SelectedId"]
      117 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      119 LOADN                            R19 200
      120 LOADN                            R20 30
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K13 ["Size"]
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K44 ["Input"]
      127 CALL                             R11 3 1
      128 SETTABLEKS                       R11 R10 K39 ["Materialinput"]
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R11 R12 K7 ["createElement"]
      133 GETUPVAL                         R12 4
      134 DUPTABLE                         R13 K43 [{"LayoutOrder", "Text"}]
      135 NAMECALL                         R14 R5 K16 ["getNextOrder"]
      137 CALL                             R14 1 1
      138 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      140 LOADK                            R14 K51 ["Preview geometry"]
      141 SETTABLEKS                       R14 R13 K42 ["Text"]
      143 DUPTABLE                         R14 K45 [{"Input"}]
      144 GETUPVAL                         R16 1
      145 GETTABLEKS                       R15 R16 K7 ["createElement"]
      147 GETUPVAL                         R16 5
      148 DUPTABLE                         R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      149 GETUPVAL                         R18 7
      150 SETTABLEKS                       R18 R17 K46 ["Items"]
      152 GETTABLEKS                       R18 R0 K52 ["onPreviewGeometryTypeChanged"]
      154 SETTABLEKS                       R18 R17 K47 ["OnItemActivated"]
      156 GETTABLEKS                       R18 R2 K17 ["materialPreviewGeometryType"]
      158 SETTABLEKS                       R18 R17 K48 ["SelectedId"]
      160 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      162 LOADN                            R19 200
      163 LOADN                            R20 30
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K13 ["Size"]
      167 CALL                             R15 2 1
      168 SETTABLEKS                       R15 R14 K44 ["Input"]
      170 CALL                             R11 3 1
      171 SETTABLEKS                       R11 R10 K40 ["GeometryInputType"]
      173 CALL                             R7 3 1
      174 SETTABLEKS                       R7 R6 K53 ["MaterialInput"]
      176 JUMPIFNOT                        R3 ; [+186]
      177 GETUPVAL                         R8 1
      178 GETTABLEKS                       R7 R8 K7 ["createElement"]
      180 GETUPVAL                         R8 3
      181 DUPTABLE                         R9 K27 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      182 GETIMPORT                        R10 K30 [Enum.AutomaticSize.Y]
      184 SETTABLEKS                       R10 R9 K22 ["AutomaticSize"]
      186 GETIMPORT                        R10 K32 [Enum.HorizontalAlignment.Left]
      188 SETTABLEKS                       R10 R9 K23 ["HorizontalAlignment"]
      190 GETIMPORT                        R10 K35 [Enum.FillDirection.Vertical]
      192 SETTABLEKS                       R10 R9 K24 ["Layout"]
      194 NAMECALL                         R10 R5 K16 ["getNextOrder"]
      196 CALL                             R10 1 1
      197 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
      199 GETIMPORT                        R10 K36 [UDim2.new]
      201 LOADN                            R11 0
      202 LOADN                            R12 200
      203 LOADN                            R13 1
      204 LOADN                            R14 0
      205 CALL                             R10 4 1
      206 SETTABLEKS                       R10 R9 K13 ["Size"]
      208 LOADN                            R10 10
      209 SETTABLEKS                       R10 R9 K25 ["Spacing"]
      211 GETIMPORT                        R10 K38 [Enum.VerticalAlignment.Top]
      213 SETTABLEKS                       R10 R9 K26 ["VerticalAlignment"]
      215 DUPTABLE                         R10 K56 [{"StudsPerTile", "MaterialPattern", "GeometryInputType"}]
      216 GETUPVAL                         R12 1
      217 GETTABLEKS                       R11 R12 K7 ["createElement"]
      219 GETUPVAL                         R12 4
      220 DUPTABLE                         R13 K43 [{"LayoutOrder", "Text"}]
      221 NAMECALL                         R14 R5 K16 ["getNextOrder"]
      223 CALL                             R14 1 1
      224 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      226 LOADK                            R14 K57 ["Studs Per Tile"]
      227 SETTABLEKS                       R14 R13 K42 ["Text"]
      229 DUPTABLE                         R14 K45 [{"Input"}]
      230 GETUPVAL                         R16 1
      231 GETTABLEKS                       R15 R16 K7 ["createElement"]
      233 GETUPVAL                         R16 8
      234 DUPTABLE                         R17 K61 [{"OnChanged", "Schema", "Size", "Value"}]
      235 GETTABLEKS                       R18 R0 K62 ["studsPerTileChanged"]
      237 SETTABLEKS                       R18 R17 K58 ["OnChanged"]
      239 DUPTABLE                         R18 K68 [{"Type", "Min", "Max", "SnapIncrement", "ShowInput"}]
      240 LOADK                            R19 K69 ["Slider"]
      241 SETTABLEKS                       R19 R18 K63 ["Type"]
      243 LOADK                            R19 K70 [0.1]
      244 SETTABLEKS                       R19 R18 K64 ["Min"]
      246 LOADN                            R19 20
      247 SETTABLEKS                       R19 R18 K65 ["Max"]
      249 LOADK                            R19 K70 [0.1]
      250 SETTABLEKS                       R19 R18 K66 ["SnapIncrement"]
      252 LOADB                            R19 1
      253 SETTABLEKS                       R19 R18 K67 ["ShowInput"]
      255 SETTABLEKS                       R18 R17 K59 ["Schema"]
      257 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      259 LOADN                            R19 200
      260 LOADN                            R20 30
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K13 ["Size"]
      264 GETTABLEKS                       R18 R3 K54 ["StudsPerTile"]
      266 SETTABLEKS                       R18 R17 K60 ["Value"]
      268 CALL                             R15 2 1
      269 SETTABLEKS                       R15 R14 K44 ["Input"]
      271 CALL                             R11 3 1
      272 SETTABLEKS                       R11 R10 K54 ["StudsPerTile"]
      274 GETUPVAL                         R12 1
      275 GETTABLEKS                       R11 R12 K7 ["createElement"]
      277 GETUPVAL                         R12 4
      278 DUPTABLE                         R13 K43 [{"LayoutOrder", "Text"}]
      279 NAMECALL                         R14 R5 K16 ["getNextOrder"]
      281 CALL                             R14 1 1
      282 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      284 LOADK                            R14 K71 ["Material Pattern"]
      285 SETTABLEKS                       R14 R13 K42 ["Text"]
      287 DUPTABLE                         R14 K45 [{"Input"}]
      288 GETUPVAL                         R16 1
      289 GETTABLEKS                       R15 R16 K7 ["createElement"]
      291 GETUPVAL                         R16 5
      292 DUPTABLE                         R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      293 GETUPVAL                         R18 9
      294 SETTABLEKS                       R18 R17 K46 ["Items"]
      296 GETTABLEKS                       R18 R0 K72 ["materialPatternChanged"]
      298 SETTABLEKS                       R18 R17 K47 ["OnItemActivated"]
      300 GETTABLEKS                       R18 R3 K55 ["MaterialPattern"]
      302 SETTABLEKS                       R18 R17 K48 ["SelectedId"]
      304 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      306 LOADN                            R19 200
      307 LOADN                            R20 30
      308 CALL                             R18 2 1
      309 SETTABLEKS                       R18 R17 K13 ["Size"]
      311 CALL                             R15 2 1
      312 SETTABLEKS                       R15 R14 K44 ["Input"]
      314 CALL                             R11 3 1
      315 SETTABLEKS                       R11 R10 K55 ["MaterialPattern"]
      317 GETUPVAL                         R12 1
      318 GETTABLEKS                       R11 R12 K7 ["createElement"]
      320 GETUPVAL                         R12 4
      321 DUPTABLE                         R13 K43 [{"LayoutOrder", "Text"}]
      322 NAMECALL                         R14 R5 K16 ["getNextOrder"]
      324 CALL                             R14 1 1
      325 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      327 LOADK                            R14 K51 ["Preview geometry"]
      328 SETTABLEKS                       R14 R13 K42 ["Text"]
      330 DUPTABLE                         R14 K45 [{"Input"}]
      331 GETUPVAL                         R16 1
      332 GETTABLEKS                       R15 R16 K7 ["createElement"]
      334 GETUPVAL                         R16 5
      335 DUPTABLE                         R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
      336 GETUPVAL                         R18 7
      337 SETTABLEKS                       R18 R17 K46 ["Items"]
      339 GETTABLEKS                       R18 R0 K52 ["onPreviewGeometryTypeChanged"]
      341 SETTABLEKS                       R18 R17 K47 ["OnItemActivated"]
      343 GETTABLEKS                       R18 R2 K17 ["materialPreviewGeometryType"]
      345 SETTABLEKS                       R18 R17 K48 ["SelectedId"]
      347 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      349 LOADN                            R19 200
      350 LOADN                            R20 30
      351 CALL                             R18 2 1
      352 SETTABLEKS                       R18 R17 K13 ["Size"]
      354 CALL                             R15 2 1
      355 SETTABLEKS                       R15 R14 K44 ["Input"]
      357 CALL                             R11 3 1
      358 SETTABLEKS                       R11 R10 K40 ["GeometryInputType"]
      360 CALL                             R7 3 1
      361 SETTABLEKS                       R7 R6 K73 ["MaterialVariantPane"]
      363 GETUPVAL                         R8 1
      364 GETTABLEKS                       R7 R8 K7 ["createElement"]
      366 GETUPVAL                         R8 3
      367 DUPTABLE                         R9 K74 [{"AutomaticSize", "Layout", "Spacing", "VerticalAlignment"}]
      368 GETIMPORT                        R10 K76 [Enum.AutomaticSize.XY]
      370 SETTABLEKS                       R10 R9 K22 ["AutomaticSize"]
      372 GETIMPORT                        R10 K78 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R10 R9 K24 ["Layout"]
      376 LOADN                            R10 10
      377 SETTABLEKS                       R10 R9 K25 ["Spacing"]
      379 GETIMPORT                        R10 K38 [Enum.VerticalAlignment.Top]
      381 SETTABLEKS                       R10 R9 K26 ["VerticalAlignment"]
      383 MOVE                             R10 R6
      384 CALL                             R7 3 -1
      385 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       36 GETTABLEKS                       R11 R3 K13 ["Util"]
       38 GETTABLEKS                       R10 R11 K14 ["LayoutOrderIterator"]
       40 GETIMPORT                        R11 K4 [require]
       42 GETTABLEKS                       R13 R0 K15 ["Enums"]
       44 GETTABLEKS                       R12 R13 K16 ["MaterialPreviewGeometryType"]
       46 CALL                             R11 1 1
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R14 R0 K17 ["Components"]
       51 GETTABLEKS                       R13 R14 K18 ["MaterialPreview"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R15 R0 K19 ["TestHelpers"]
       58 GETTABLEKS                       R14 R15 K20 ["createMaterialVariants"]
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
      112 DUPTABLE                         R23 K44 [{"name", "story"}]
      113 LOADK                            R24 K45 ["Material Variant (ColorMap)"]
      114 SETTABLEKS                       R24 R23 K42 ["name"]
      116 GETTABLEKS                       R24 R4 K46 ["createElement"]
      118 MOVE                             R25 R20
      119 DUPTABLE                         R26 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      120 MOVE                             R28 R13
      121 CALL                             R28 0 1
      122 GETTABLEN                        R27 R28 1
      123 SETTABLEKS                       R27 R26 K47 ["MaterialVariant"]
      125 GETTABLEKS                       R27 R11 K50 ["ColorMap"]
      127 SETTABLEKS                       R27 R26 K48 ["DefaultMaterialPreviewGeometryType"]
      129 CALL                             R24 2 1
      130 SETTABLEKS                       R24 R23 K43 ["story"]
      132 DUPTABLE                         R24 K44 [{"name", "story"}]
      133 LOADK                            R25 K51 ["Material (Dominus)"]
      134 SETTABLEKS                       R25 R24 K42 ["name"]
      136 GETTABLEKS                       R25 R4 K46 ["createElement"]
      138 MOVE                             R26 R20
      139 DUPTABLE                         R27 K52 [{"Material", "DefaultMaterialPreviewGeometryType"}]
      140 GETIMPORT                        R28 K54 [Enum.Material.Granite]
      142 SETTABLEKS                       R28 R27 K25 ["Material"]
      144 GETTABLEKS                       R28 R11 K55 ["Dominus"]
      146 SETTABLEKS                       R28 R27 K48 ["DefaultMaterialPreviewGeometryType"]
      148 CALL                             R25 2 1
      149 SETTABLEKS                       R25 R24 K43 ["story"]
      151 DUPTABLE                         R25 K44 [{"name", "story"}]
      152 LOADK                            R26 K56 ["Material (Metal)"]
      153 SETTABLEKS                       R26 R25 K42 ["name"]
      155 GETTABLEKS                       R26 R4 K46 ["createElement"]
      157 MOVE                             R27 R20
      158 DUPTABLE                         R28 K57 [{"Material"}]
      159 GETIMPORT                        R29 K59 [Enum.Material.Metal]
      161 SETTABLEKS                       R29 R28 K25 ["Material"]
      163 CALL                             R26 2 1
      164 SETTABLEKS                       R26 R25 K43 ["story"]
      166 DUPTABLE                         R26 K44 [{"name", "story"}]
      167 LOADK                            R27 K60 ["Material (Brick)"]
      168 SETTABLEKS                       R27 R26 K42 ["name"]
      170 GETTABLEKS                       R27 R4 K46 ["createElement"]
      172 MOVE                             R28 R20
      173 DUPTABLE                         R29 K57 [{"Material"}]
      174 GETIMPORT                        R30 K62 [Enum.Material.Brick]
      176 SETTABLEKS                       R30 R29 K25 ["Material"]
      178 CALL                             R27 2 1
      179 SETTABLEKS                       R27 R26 K43 ["story"]
      181 DUPTABLE                         R27 K44 [{"name", "story"}]
      182 LOADK                            R28 K63 ["Material Variant"]
      183 SETTABLEKS                       R28 R27 K42 ["name"]
      185 GETTABLEKS                       R28 R4 K46 ["createElement"]
      187 MOVE                             R29 R20
      188 DUPTABLE                         R30 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      189 MOVE                             R32 R13
      190 CALL                             R32 0 1
      191 GETTABLEN                        R31 R32 1
      192 SETTABLEKS                       R31 R30 K47 ["MaterialVariant"]
      194 GETTABLEKS                       R31 R11 K64 ["Sphere"]
      196 SETTABLEKS                       R31 R30 K48 ["DefaultMaterialPreviewGeometryType"]
      198 CALL                             R28 2 1
      199 SETTABLEKS                       R28 R27 K43 ["story"]
      201 DUPTABLE                         R28 K44 [{"name", "story"}]
      202 LOADK                            R29 K65 ["MaterialVariant (Plane)"]
      203 SETTABLEKS                       R29 R28 K42 ["name"]
      205 GETTABLEKS                       R29 R4 K46 ["createElement"]
      207 MOVE                             R30 R20
      208 DUPTABLE                         R31 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
      209 MOVE                             R33 R13
      210 CALL                             R33 0 1
      211 GETTABLEN                        R32 R33 2
      212 SETTABLEKS                       R32 R31 K47 ["MaterialVariant"]
      214 GETTABLEKS                       R32 R11 K66 ["Plane"]
      216 SETTABLEKS                       R32 R31 K48 ["DefaultMaterialPreviewGeometryType"]
      218 CALL                             R29 2 1
      219 SETTABLEKS                       R29 R28 K43 ["story"]
      221 SETLIST                          R22 R23 6 [1]
      223 SETTABLEKS                       R22 R21 K40 ["stories"]
      225 RETURN                           R21 1
