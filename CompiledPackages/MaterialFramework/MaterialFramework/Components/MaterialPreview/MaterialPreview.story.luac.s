PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
  GETIMPORT R4 K10 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K1 ["AutomaticSize"]
  GETIMPORT R4 K12 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R4 R3 K2 ["HorizontalAlignment"]
  GETIMPORT R4 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K3 ["Layout"]
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  LOADN R4 8
  SETTABLEKS R4 R3 K5 ["Spacing"]
  GETIMPORT R4 K17 [Enum.VerticalAlignment.Top]
  SETTABLEKS R4 R3 K6 ["VerticalAlignment"]
  DUPTABLE R4 K20 [{"Label", "Content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K22 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R8 K10 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K1 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETTABLEKS R8 R0 K21 ["Text"]
  SETTABLEKS R8 R7 K21 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K18 ["Label"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R8 K10 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K1 ["AutomaticSize"]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETTABLEKS R8 R0 K24 ["children"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K19 ["Content"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R1 K2 [{"Id", "Label"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  GETTABLEKS R2 R0 K3 ["Name"]
  SETTABLEKS R2 R1 K1 ["Label"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["Label"]
  GETTABLEKS R4 R1 K0 ["Label"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["map"]
  NAMECALL R2 R0 K1 ["GetEnumItems"]
  CALL R2 1 1
  DUPCLOSURE R3 K2 [PROTO_1]
  CALL R1 2 1
  GETIMPORT R2 K5 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K6 [PROTO_2]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
  DUPTABLE R1 K2 [{"Id", "Label"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  GETTABLEKS R2 R0 K3 ["rawValue"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["Label"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["Label"]
  GETTABLEKS R4 R1 K0 ["Label"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["map"]
  GETTABLEKS R2 R0 K1 ["allValues"]
  CALL R2 0 1
  DUPCLOSURE R3 K2 [PROTO_4]
  CALL R1 2 1
  GETIMPORT R2 K5 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K6 [PROTO_5]
  CALL R2 2 0
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"material"}]
  GETTABLEKS R4 R0 K2 ["Id"]
  SETTABLEKS R4 R3 K0 ["material"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"materialPreviewGeometryType"}]
  GETTABLEKS R4 R0 K2 ["Id"]
  SETTABLEKS R4 R3 K0 ["materialPreviewGeometryType"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["MaterialVariant"]
  JUMPIFNOT R1 [+2]
  SETTABLEKS R0 R1 K2 ["StudsPerTile"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["MaterialVariant"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K2 ["Id"]
  SETTABLEKS R2 R1 K3 ["MaterialPattern"]
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"updateCount"}]
  GETTABLEKS R4 R0 K0 ["updateCount"]
  ORK R3 R4 K3 [0]
  ADDK R2 R3 K2 [1]
  SETTABLEKS R2 R1 K0 ["updateCount"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_11]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R4 K2 [{"material", "materialPreviewGeometryType"}]
  GETTABLEKS R5 R1 K3 ["Material"]
  SETTABLEKS R5 R4 K0 ["material"]
  GETTABLEKS R5 R1 K4 ["DefaultMaterialPreviewGeometryType"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Sphere"]
  SETTABLEKS R5 R4 K1 ["materialPreviewGeometryType"]
  NAMECALL R2 R0 K6 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["materialChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onPreviewGeometryTypeChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["studsPerTileChanged"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["materialPatternChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K11 ["forceUpdate"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["MaterialVariant"]
  JUMPIFNOT R1 [+26]
  LOADK R4 K2 ["StudsPerTile"]
  NAMECALL R2 R1 K3 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K4 ["forceUpdate"]
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K6 ["studsPerTileChangedConnection"]
  LOADK R4 K7 ["MaterialPattern"]
  NAMECALL R2 R1 K3 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K4 ["forceUpdate"]
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["materialPatternChangedConnection"]
  GETTABLEKS R2 R1 K9 ["Parent"]
  SETTABLEKS R2 R0 K10 ["restoreMaterialVariantParent"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["MaterialVariant"]
  JUMPIFNOT R1 [+26]
  GETTABLEKS R2 R0 K2 ["studsPerTileChangedConnection"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K2 ["studsPerTileChangedConnection"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K2 ["studsPerTileChangedConnection"]
  GETTABLEKS R2 R0 K4 ["materialPatternChangedConnection"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K4 ["materialPatternChangedConnection"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["materialPatternChangedConnection"]
  GETTABLEKS R2 R0 K5 ["restoreMaterialVariantParent"]
  SETTABLEKS R2 R1 K6 ["Parent"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["MaterialVariant"]
  GETTABLEKS R4 R2 K3 ["material"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  DUPTABLE R6 K6 [{"Preview"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K15 [{"DisableZoom", "LayoutOrder", "Material", "MaterialPreviewGeometryType", "RecenterCameraOnUpdate", "Size", "Style"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["DisableZoom"]
  NAMECALL R10 R5 K16 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K9 ["LayoutOrder"]
  OR R10 R4 R3
  SETTABLEKS R10 R9 K10 ["Material"]
  GETTABLEKS R10 R2 K17 ["materialPreviewGeometryType"]
  SETTABLEKS R10 R9 K11 ["MaterialPreviewGeometryType"]
  LOADB R10 0
  SETTABLEKS R10 R9 K12 ["RecenterCameraOnUpdate"]
  GETIMPORT R10 K20 [UDim2.fromOffset]
  LOADN R11 200
  LOADN R12 200
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Size"]
  LOADK R10 K21 ["CornerBox"]
  SETTABLEKS R10 R9 K14 ["Style"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["Preview"]
  JUMPIFNOT R4 [+126]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K27 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R10 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K22 ["AutomaticSize"]
  GETIMPORT R10 K32 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K23 ["HorizontalAlignment"]
  GETIMPORT R10 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K24 ["Layout"]
  NAMECALL R10 R5 K16 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K9 ["LayoutOrder"]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 0
  LOADN R12 200
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K13 ["Size"]
  LOADN R10 10
  SETTABLEKS R10 R9 K25 ["Spacing"]
  GETIMPORT R10 K38 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K26 ["VerticalAlignment"]
  DUPTABLE R10 K41 [{"Materialinput", "GeometryInputType"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R14 R5 K16 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K10 ["Material"]
  SETTABLEKS R14 R13 K42 ["Text"]
  DUPTABLE R14 K45 [{"Input"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
  GETUPVAL R18 6
  SETTABLEKS R18 R17 K46 ["Items"]
  GETTABLEKS R18 R0 K50 ["materialChanged"]
  SETTABLEKS R18 R17 K47 ["OnItemActivated"]
  SETTABLEKS R4 R17 K48 ["SelectedId"]
  GETIMPORT R18 K20 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Input"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K39 ["Materialinput"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R14 R5 K16 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K51 ["Preview geometry"]
  SETTABLEKS R14 R13 K42 ["Text"]
  DUPTABLE R14 K45 [{"Input"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
  GETUPVAL R18 7
  SETTABLEKS R18 R17 K46 ["Items"]
  GETTABLEKS R18 R0 K52 ["onPreviewGeometryTypeChanged"]
  SETTABLEKS R18 R17 K47 ["OnItemActivated"]
  GETTABLEKS R18 R2 K17 ["materialPreviewGeometryType"]
  SETTABLEKS R18 R17 K48 ["SelectedId"]
  GETIMPORT R18 K20 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Input"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K40 ["GeometryInputType"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K53 ["MaterialInput"]
  JUMPIFNOT R3 [+186]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K27 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R10 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K22 ["AutomaticSize"]
  GETIMPORT R10 K32 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K23 ["HorizontalAlignment"]
  GETIMPORT R10 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K24 ["Layout"]
  NAMECALL R10 R5 K16 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K9 ["LayoutOrder"]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 0
  LOADN R12 200
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K13 ["Size"]
  LOADN R10 10
  SETTABLEKS R10 R9 K25 ["Spacing"]
  GETIMPORT R10 K38 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K26 ["VerticalAlignment"]
  DUPTABLE R10 K56 [{"StudsPerTile", "MaterialPattern", "GeometryInputType"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R14 R5 K16 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K57 ["Studs Per Tile"]
  SETTABLEKS R14 R13 K42 ["Text"]
  DUPTABLE R14 K45 [{"Input"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K61 [{"OnChanged", "Schema", "Size", "Value"}]
  GETTABLEKS R18 R0 K62 ["studsPerTileChanged"]
  SETTABLEKS R18 R17 K58 ["OnChanged"]
  DUPTABLE R18 K68 [{"Type", "Min", "Max", "SnapIncrement", "ShowInput"}]
  LOADK R19 K69 ["Slider"]
  SETTABLEKS R19 R18 K63 ["Type"]
  LOADK R19 K70 [0.1]
  SETTABLEKS R19 R18 K64 ["Min"]
  LOADN R19 20
  SETTABLEKS R19 R18 K65 ["Max"]
  LOADK R19 K70 [0.1]
  SETTABLEKS R19 R18 K66 ["SnapIncrement"]
  LOADB R19 1
  SETTABLEKS R19 R18 K67 ["ShowInput"]
  SETTABLEKS R18 R17 K59 ["Schema"]
  GETIMPORT R18 K20 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Size"]
  GETTABLEKS R18 R3 K54 ["StudsPerTile"]
  SETTABLEKS R18 R17 K60 ["Value"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Input"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K54 ["StudsPerTile"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R14 R5 K16 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K71 ["Material Pattern"]
  SETTABLEKS R14 R13 K42 ["Text"]
  DUPTABLE R14 K45 [{"Input"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
  GETUPVAL R18 9
  SETTABLEKS R18 R17 K46 ["Items"]
  GETTABLEKS R18 R0 K72 ["materialPatternChanged"]
  SETTABLEKS R18 R17 K47 ["OnItemActivated"]
  GETTABLEKS R18 R3 K55 ["MaterialPattern"]
  SETTABLEKS R18 R17 K48 ["SelectedId"]
  GETIMPORT R18 K20 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Input"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K55 ["MaterialPattern"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R14 R5 K16 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K51 ["Preview geometry"]
  SETTABLEKS R14 R13 K42 ["Text"]
  DUPTABLE R14 K45 [{"Input"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K49 [{"Items", "OnItemActivated", "SelectedId", "Size"}]
  GETUPVAL R18 7
  SETTABLEKS R18 R17 K46 ["Items"]
  GETTABLEKS R18 R0 K52 ["onPreviewGeometryTypeChanged"]
  SETTABLEKS R18 R17 K47 ["OnItemActivated"]
  GETTABLEKS R18 R2 K17 ["materialPreviewGeometryType"]
  SETTABLEKS R18 R17 K48 ["SelectedId"]
  GETIMPORT R18 K20 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Input"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K40 ["GeometryInputType"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K73 ["MaterialVariantPane"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K74 [{"AutomaticSize", "Layout", "Spacing", "VerticalAlignment"}]
  GETIMPORT R10 K76 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K22 ["AutomaticSize"]
  GETIMPORT R10 K78 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K24 ["Layout"]
  LOADN R10 10
  SETTABLEKS R10 R9 K25 ["Spacing"]
  GETIMPORT R10 K38 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K26 ["VerticalAlignment"]
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R1 K7 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K8 ["UI"]
  GETTABLEKS R6 R5 K9 ["Pane"]
  GETTABLEKS R7 R5 K10 ["PropertyCell"]
  GETTABLEKS R8 R5 K11 ["SelectInput"]
  GETTABLEKS R9 R5 K12 ["TextLabel"]
  GETTABLEKS R11 R3 K13 ["Util"]
  GETTABLEKS R10 R11 K14 ["LayoutOrderIterator"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K15 ["Enums"]
  GETTABLEKS R12 R13 K16 ["MaterialPreviewGeometryType"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K17 ["Components"]
  GETTABLEKS R13 R14 K18 ["MaterialPreview"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K19 ["TestHelpers"]
  GETTABLEKS R14 R15 K20 ["createMaterialVariants"]
  CALL R13 1 1
  DUPCLOSURE R14 K21 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  DUPCLOSURE R15 K22 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R16 K23 [PROTO_6]
  CAPTURE VAL R2
  MOVE R17 R15
  GETIMPORT R18 K26 [Enum.Material]
  CALL R17 1 1
  MOVE R18 R15
  GETIMPORT R19 K28 [Enum.MaterialPattern]
  CALL R18 1 1
  MOVE R19 R16
  MOVE R20 R11
  CALL R19 1 1
  GETTABLEKS R20 R4 K29 ["PureComponent"]
  LOADK R22 K30 ["MaterialPreviewStory"]
  NAMECALL R20 R20 K31 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K32 [PROTO_13]
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K33 ["init"]
  DUPCLOSURE R21 K34 [PROTO_14]
  SETTABLEKS R21 R20 K35 ["didMount"]
  DUPCLOSURE R21 K36 [PROTO_15]
  SETTABLEKS R21 R20 K37 ["willUnmount"]
  DUPCLOSURE R21 K38 [PROTO_16]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K39 ["render"]
  DUPTABLE R21 K41 [{"stories"}]
  NEWTABLE R22 0 6
  DUPTABLE R23 K44 [{"name", "story"}]
  LOADK R24 K45 ["Material Variant (ColorMap)"]
  SETTABLEKS R24 R23 K42 ["name"]
  GETTABLEKS R24 R4 K46 ["createElement"]
  MOVE R25 R20
  DUPTABLE R26 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
  MOVE R28 R13
  CALL R28 0 1
  GETTABLEN R27 R28 1
  SETTABLEKS R27 R26 K47 ["MaterialVariant"]
  GETTABLEKS R27 R11 K50 ["ColorMap"]
  SETTABLEKS R27 R26 K48 ["DefaultMaterialPreviewGeometryType"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K43 ["story"]
  DUPTABLE R24 K44 [{"name", "story"}]
  LOADK R25 K51 ["Material (Dominus)"]
  SETTABLEKS R25 R24 K42 ["name"]
  GETTABLEKS R25 R4 K46 ["createElement"]
  MOVE R26 R20
  DUPTABLE R27 K52 [{"Material", "DefaultMaterialPreviewGeometryType"}]
  GETIMPORT R28 K54 [Enum.Material.Granite]
  SETTABLEKS R28 R27 K25 ["Material"]
  GETTABLEKS R28 R11 K55 ["Dominus"]
  SETTABLEKS R28 R27 K48 ["DefaultMaterialPreviewGeometryType"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K43 ["story"]
  DUPTABLE R25 K44 [{"name", "story"}]
  LOADK R26 K56 ["Material (Metal)"]
  SETTABLEKS R26 R25 K42 ["name"]
  GETTABLEKS R26 R4 K46 ["createElement"]
  MOVE R27 R20
  DUPTABLE R28 K57 [{"Material"}]
  GETIMPORT R29 K59 [Enum.Material.Metal]
  SETTABLEKS R29 R28 K25 ["Material"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K43 ["story"]
  DUPTABLE R26 K44 [{"name", "story"}]
  LOADK R27 K60 ["Material (Brick)"]
  SETTABLEKS R27 R26 K42 ["name"]
  GETTABLEKS R27 R4 K46 ["createElement"]
  MOVE R28 R20
  DUPTABLE R29 K57 [{"Material"}]
  GETIMPORT R30 K62 [Enum.Material.Brick]
  SETTABLEKS R30 R29 K25 ["Material"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K43 ["story"]
  DUPTABLE R27 K44 [{"name", "story"}]
  LOADK R28 K63 ["Material Variant"]
  SETTABLEKS R28 R27 K42 ["name"]
  GETTABLEKS R28 R4 K46 ["createElement"]
  MOVE R29 R20
  DUPTABLE R30 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
  MOVE R32 R13
  CALL R32 0 1
  GETTABLEN R31 R32 1
  SETTABLEKS R31 R30 K47 ["MaterialVariant"]
  GETTABLEKS R31 R11 K64 ["Sphere"]
  SETTABLEKS R31 R30 K48 ["DefaultMaterialPreviewGeometryType"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K43 ["story"]
  DUPTABLE R28 K44 [{"name", "story"}]
  LOADK R29 K65 ["MaterialVariant (Plane)"]
  SETTABLEKS R29 R28 K42 ["name"]
  GETTABLEKS R29 R4 K46 ["createElement"]
  MOVE R30 R20
  DUPTABLE R31 K49 [{"MaterialVariant", "DefaultMaterialPreviewGeometryType"}]
  MOVE R33 R13
  CALL R33 0 1
  GETTABLEN R32 R33 2
  SETTABLEKS R32 R31 K47 ["MaterialVariant"]
  GETTABLEKS R32 R11 K66 ["Plane"]
  SETTABLEKS R32 R31 K48 ["DefaultMaterialPreviewGeometryType"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K43 ["story"]
  SETLIST R22 R23 6 [1]
  SETTABLEKS R22 R21 K40 ["stories"]
  RETURN R21 1
