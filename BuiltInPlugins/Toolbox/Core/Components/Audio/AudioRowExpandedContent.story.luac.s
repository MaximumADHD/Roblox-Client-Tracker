PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["OnAssetPreviewButtonClicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Audio End"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Insert Asset"]
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
  DUPTABLE R7 K15 [{"List", "Padding"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K22 [{"AudioDetails", "AssetInfo", "IsPlaying", "OnAssetPreviewButtonClicked", "OnAudioEnd", "OnInsertClicked"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["AudioDetails"]
  SETTABLEKS R11 R10 K16 ["AudioDetails"]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K17 ["AssetInfo"]
  LOADB R11 0
  SETTABLEKS R11 R10 K18 ["IsPlaying"]
  DUPCLOSURE R11 K23 [PROTO_0]
  SETTABLEKS R11 R10 K19 ["OnAssetPreviewButtonClicked"]
  DUPCLOSURE R11 K24 [PROTO_1]
  SETTABLEKS R11 R10 K20 ["OnAudioEnd"]
  DUPCLOSURE R11 K25 [PROTO_2]
  SETTABLEKS R11 R10 K21 ["OnInsertClicked"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["List"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K26 ["UIPadding"]
  DUPTABLE R10 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K33 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["PaddingTop"]
  GETIMPORT R11 K33 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingBottom"]
  GETIMPORT R11 K33 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["PaddingLeft"]
  GETIMPORT R11 K33 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Padding"]
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
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["AudioRowExpandedContent"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["TestUtils"]
  GETTABLEKS R3 R4 K9 ["MockItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Stories"]
  GETTABLEKS R5 R6 K13 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K14 ["getSimpleAudioAsset"]
  LOADK R6 K15 [11322590111]
  LOADK R7 K16 ["Roboto"]
  CALL R5 2 1
  DUPTABLE R6 K20 [{"name", "summary", "story"}]
  LOADK R7 K7 ["AudioRowExpandedContent"]
  SETTABLEKS R7 R6 K17 ["name"]
  LOADK R7 K21 ["Expanded content component used in the AudioRow"]
  SETTABLEKS R7 R6 K18 ["summary"]
  DUPCLOSURE R7 K22 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K19 ["story"]
  RETURN R6 1
