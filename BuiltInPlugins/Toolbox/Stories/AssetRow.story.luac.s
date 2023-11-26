PROTO_0:
  DUPTABLE R1 K1 [{"isExpanded"}]
  GETTABLEKS R3 R0 K0 ["isExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["isExpanded"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"isExpanded"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isExpanded"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["updateExpanded"]
  RETURN R0 0

PROTO_3:
  LOADB R0 1
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Insert Asset"]
  CALL R0 1 0
  RETURN R0 0

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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
  GETIMPORT R4 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K2 ["AutomaticSize"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Size"]
  DUPTABLE R4 K13 [{"AssetRow"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K14 ["AssetInfo"]
  DUPCLOSURE R8 K24 [PROTO_3]
  SETTABLEKS R8 R7 K15 ["CanInsertAsset"]
  DUPCLOSURE R8 K25 [PROTO_4]
  SETTABLEKS R8 R7 K16 ["InsertAsset"]
  GETTABLEKS R9 R0 K26 ["state"]
  GETTABLEKS R8 R9 K27 ["isExpanded"]
  SETTABLEKS R8 R7 K17 ["IsExpanded"]
  GETTABLEKS R8 R0 K28 ["updateExpanded"]
  SETTABLEKS R8 R7 K18 ["OnExpanded"]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  DUPCLOSURE R8 K29 [PROTO_5]
  SETTABLEKS R8 R7 K20 ["OnAssetPreviewButtonClicked"]
  GETIMPORT R8 K31 [UDim2.fromOffset]
  LOADN R9 244
  LOADN R10 244
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["ParentAbsoluteSize"]
  DUPCLOSURE R8 K32 [PROTO_6]
  SETTABLEKS R8 R7 K22 ["TryOpenAssetConfig"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["AssetRow"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  NEWTABLE R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  CALL R4 1 -1
  SETLIST R3 R4 -1 [1]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_9:
  LOADB R0 1
  RETURN R0 1

PROTO_10:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Insert Asset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["On Expanded id:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Asset Preview Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Try Open Asset Config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
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
  DUPTABLE R7 K14 [{"AssetRow"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K15 ["AssetInfo"]
  DUPCLOSURE R11 K25 [PROTO_9]
  SETTABLEKS R11 R10 K16 ["CanInsertAsset"]
  DUPCLOSURE R11 K26 [PROTO_10]
  SETTABLEKS R11 R10 K17 ["InsertAsset"]
  LOADB R11 0
  SETTABLEKS R11 R10 K18 ["IsExpanded"]
  DUPCLOSURE R11 K27 [PROTO_11]
  SETTABLEKS R11 R10 K19 ["OnExpanded"]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  DUPCLOSURE R11 K28 [PROTO_12]
  SETTABLEKS R11 R10 K21 ["OnAssetPreviewButtonClicked"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 244
  LOADN R13 244
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["ParentAbsoluteSize"]
  DUPCLOSURE R11 K31 [PROTO_13]
  SETTABLEKS R11 R10 K23 ["TryOpenAssetConfig"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["AssetRow"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_15:
  LOADB R0 1
  RETURN R0 1

PROTO_16:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Insert Asset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["On Expanded"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Asset Preview Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Try Open Asset Config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
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
  DUPTABLE R7 K14 [{"AssetRow"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K15 ["AssetInfo"]
  DUPCLOSURE R11 K25 [PROTO_15]
  SETTABLEKS R11 R10 K16 ["CanInsertAsset"]
  DUPCLOSURE R11 K26 [PROTO_16]
  SETTABLEKS R11 R10 K17 ["InsertAsset"]
  LOADB R11 1
  SETTABLEKS R11 R10 K18 ["IsExpanded"]
  DUPCLOSURE R11 K27 [PROTO_17]
  SETTABLEKS R11 R10 K19 ["OnExpanded"]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  DUPCLOSURE R11 K28 [PROTO_18]
  SETTABLEKS R11 R10 K21 ["OnAssetPreviewButtonClicked"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 244
  LOADN R13 244
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["ParentAbsoluteSize"]
  DUPCLOSURE R11 K31 [PROTO_19]
  SETTABLEKS R11 R10 K23 ["TryOpenAssetConfig"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["AssetRow"]
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
  GETTABLEKS R2 R3 K8 ["AssetRow"]
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
  LOADK R6 K16 [11322590111]
  LOADK R7 K17 ["Asset Row"]
  CALL R5 2 1
  GETTABLEKS R6 R3 K18 ["PureComponent"]
  LOADK R8 K19 ["MockAssetRowInteractiveWrapper"]
  NAMECALL R6 R6 K20 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K21 [PROTO_2]
  SETTABLEKS R7 R6 K22 ["init"]
  DUPCLOSURE R7 K23 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K24 ["render"]
  DUPTABLE R7 K27 [{"summary", "stories"}]
  LOADK R8 K8 ["AssetRow"]
  SETTABLEKS R8 R7 K25 ["summary"]
  NEWTABLE R8 0 3
  DUPTABLE R9 K30 [{"name", "summary", "story"}]
  LOADK R10 K31 ["Interactive AssetRow"]
  SETTABLEKS R10 R9 K28 ["name"]
  LOADK R10 K32 ["Never expanding row (IsExpanded = false)"]
  SETTABLEKS R10 R9 K25 ["summary"]
  DUPCLOSURE R10 K33 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K29 ["story"]
  DUPTABLE R10 K30 [{"name", "summary", "story"}]
  LOADK R11 K34 ["Unexpanded AssetRow"]
  SETTABLEKS R11 R10 K28 ["name"]
  LOADK R11 K32 ["Never expanding row (IsExpanded = false)"]
  SETTABLEKS R11 R10 K25 ["summary"]
  DUPCLOSURE R11 K35 [PROTO_14]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K29 ["story"]
  DUPTABLE R11 K30 [{"name", "summary", "story"}]
  LOADK R12 K36 ["Expanded AssetRow"]
  SETTABLEKS R12 R11 K28 ["name"]
  LOADK R12 K37 ["Always expanded Row (IsExpanded = true)"]
  SETTABLEKS R12 R11 K25 ["summary"]
  DUPCLOSURE R12 K38 [PROTO_20]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K29 ["story"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K26 ["stories"]
  RETURN R7 1
