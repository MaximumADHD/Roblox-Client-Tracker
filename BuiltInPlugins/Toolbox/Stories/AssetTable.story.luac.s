PROTO_0:
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Asset Preview Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Try Open Asset Config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Frame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K6 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
  GETIMPORT R7 K9 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K3 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["BackgroundTransparency"]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K14 [{"List"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K21 [{"Assets", "CanInsertAsset", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  NEWTABLE R11 0 3
  GETUPVAL R12 3
  GETUPVAL R13 4
  GETUPVAL R14 5
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K15 ["Assets"]
  DUPCLOSURE R11 K22 [PROTO_0]
  SETTABLEKS R11 R10 K16 ["CanInsertAsset"]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  DUPCLOSURE R11 K23 [PROTO_1]
  SETTABLEKS R11 R10 K18 ["OnAssetPreviewButtonClicked"]
  GETIMPORT R11 K25 [UDim2.fromOffset]
  LOADN R12 244
  LOADN R13 244
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["ParentAbsoluteSize"]
  DUPCLOSURE R11 K26 [PROTO_2]
  SETTABLEKS R11 R10 K20 ["TryOpenAssetConfig"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["List"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  LOADB R0 1
  RETURN R0 1

PROTO_5:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Asset Preview Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Try Open Asset Config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Frame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K6 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
  GETIMPORT R7 K9 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K3 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["BackgroundTransparency"]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K14 [{"List"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K21 [{"Assets", "CanInsertAsset", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K15 ["Assets"]
  DUPCLOSURE R11 K22 [PROTO_4]
  SETTABLEKS R11 R10 K16 ["CanInsertAsset"]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  DUPCLOSURE R11 K23 [PROTO_5]
  SETTABLEKS R11 R10 K18 ["OnAssetPreviewButtonClicked"]
  GETIMPORT R11 K25 [UDim2.fromOffset]
  LOADN R12 244
  LOADN R13 244
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["ParentAbsoluteSize"]
  DUPCLOSURE R11 K26 [PROTO_6]
  SETTABLEKS R11 R10 K20 ["TryOpenAssetConfig"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["List"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["AssetTable"]
  GETTABLEKS R2 R3 K8 ["AssetTable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["TestUtils"]
  GETTABLEKS R3 R4 K10 ["MockItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Stories"]
  GETTABLEKS R5 R6 K14 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K15 ["getSimpleAsset"]
  LOADN R6 1
  LOADK R7 K16 ["Asset Row 1"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K15 ["getSimpleAsset"]
  LOADN R7 2
  LOADK R8 K17 ["Asset Row 2"]
  CALL R6 2 1
  GETTABLEKS R7 R2 K15 ["getSimpleAsset"]
  LOADN R8 3
  LOADK R9 K18 ["Asset Row 3"]
  CALL R7 2 1
  DUPTABLE R8 K21 [{"summary", "stories"}]
  LOADK R9 K8 ["AssetTable"]
  SETTABLEKS R9 R8 K19 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K24 [{"name", "story"}]
  LOADK R11 K8 ["AssetTable"]
  SETTABLEKS R11 R10 K22 ["name"]
  DUPCLOSURE R11 K25 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K23 ["story"]
  DUPTABLE R11 K24 [{"name", "story"}]
  LOADK R12 K26 ["Empty table"]
  SETTABLEKS R12 R11 K22 ["name"]
  DUPCLOSURE R12 K27 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K23 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K20 ["stories"]
  RETURN R8 1
