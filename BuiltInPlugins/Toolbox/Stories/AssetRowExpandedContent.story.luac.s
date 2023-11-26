PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Asset Preview Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["On Insert Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
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
  DUPTABLE R10 K18 [{"AssetInfo", "OnAssetPreviewButtonClicked", "OnInsertClicked"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K15 ["AssetInfo"]
  DUPCLOSURE R11 K19 [PROTO_0]
  SETTABLEKS R11 R10 K16 ["OnAssetPreviewButtonClicked"]
  DUPCLOSURE R11 K20 [PROTO_1]
  SETTABLEKS R11 R10 K17 ["OnInsertClicked"]
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
  GETTABLEKS R3 R4 K8 ["AssetRow"]
  GETTABLEKS R2 R3 K9 ["AssetRowExpandedContent"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["TestUtils"]
  GETTABLEKS R3 R4 K11 ["MockItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K14 ["Stories"]
  GETTABLEKS R5 R6 K15 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K16 ["getSimpleAsset"]
  LOADK R6 K17 [11322590111]
  LOADK R7 K18 ["Roboto"]
  CALL R5 2 1
  DUPTABLE R6 K21 [{"summary", "stories"}]
  LOADK R7 K9 ["AssetRowExpandedContent"]
  SETTABLEKS R7 R6 K19 ["summary"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K24 [{"name", "story"}]
  LOADK R9 K9 ["AssetRowExpandedContent"]
  SETTABLEKS R9 R8 K22 ["name"]
  DUPCLOSURE R9 K25 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K23 ["story"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K20 ["stories"]
  RETURN R6 1
