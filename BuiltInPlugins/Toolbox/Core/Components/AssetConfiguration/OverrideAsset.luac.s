PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"filterID"}]
  SETTABLEKS R0 R3 K0 ["filterID"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dropdownContent"]
  GETTABLE R1 R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["updateStore"]
  DUPTABLE R3 K6 [{"fetchedAll", "loadingPage", "overrideCursor"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["fetchedAll"]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["loadingPage"]
  LOADK R4 K7 [""]
  SETTABLEKS R4 R3 K5 ["overrideCursor"]
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K8 ["getOverrideAssets"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K9 ["Network"]
  GETTABLEKS R3 R4 K10 ["networkInterface"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K11 ["assetTypeEnum"]
  GETTABLEKS R5 R1 K12 ["creatorType"]
  GETTABLEKS R6 R1 K13 ["creatorId"]
  LOADN R7 1
  CALL R2 5 0
  GETUPVAL R2 0
  DUPTABLE R4 K16 [{"selectIndex", "selectItem"}]
  SETTABLEKS R0 R4 K14 ["selectIndex"]
  SETTABLEKS R1 R4 K15 ["selectItem"]
  NAMECALL R2 R2 K17 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectItem"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["getOverrideAssets"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K4 ["Network"]
  GETTABLEKS R3 R4 K5 ["networkInterface"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K6 ["assetTypeEnum"]
  GETTABLEKS R5 R1 K7 ["creatorType"]
  GETTABLEKS R6 R1 K8 ["creatorId"]
  MOVE R7 R0
  CALL R2 5 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"name", "creatorType", "creatorId"}]
  LOADK R4 K4 ["Me"]
  SETTABLEKS R4 R3 K0 ["name"]
  LOADK R4 K5 ["User"]
  SETTABLEKS R4 R3 K1 ["creatorType"]
  GETUPVAL R4 0
  CALL R4 0 1
  SETTABLEKS R4 R3 K2 ["creatorId"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R0 K6 ["dropdownContent"]
  LOADB R2 0
  SETTABLEKS R2 R0 K7 ["groupAdded"]
  DUPTABLE R2 K11 [{"selectIndex", "selectItem", "filterID"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K8 ["selectIndex"]
  GETTABLEKS R4 R0 K6 ["dropdownContent"]
  GETTABLEN R3 R4 1
  SETTABLEKS R3 R2 K9 ["selectItem"]
  LOADK R3 K12 [""]
  SETTABLEKS R3 R2 K10 ["filterID"]
  SETTABLEKS R2 R0 K13 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K14 ["onFilterIDChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K15 ["onDropDownSelect"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["getOverrideAssetsFunc"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["dropdownContent"]
  GETTABLEN R1 R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["getOverrideAssets"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K3 ["Network"]
  GETTABLEKS R3 R4 K4 ["networkInterface"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K5 ["assetTypeEnum"]
  GETTABLEKS R5 R1 K6 ["creatorType"]
  GETTABLEKS R6 R1 K7 ["creatorId"]
  LOADN R7 1
  CALL R2 5 0
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K8 ["getManageableGroups"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K3 ["Network"]
  GETTABLEKS R3 R4 K4 ["networkInterface"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R0 K1 ["state"]
  GETTABLEKS R1 R4 K2 ["Stylizer"]
  GETTABLEKS R6 R1 K3 ["assetConfig"]
  GETTABLEKS R7 R4 K4 ["LayoutOrder"]
  GETTABLEKS R8 R4 K5 ["Size"]
  GETTABLEKS R9 R4 K6 ["assetTypeEnum"]
  GETTABLEKS R10 R4 K7 ["instances"]
  GETTABLEKS R11 R4 K8 ["onOverrideAssetSelected"]
  GETTABLEKS R12 R4 K9 ["resultsArray"]
  GETTABLEKS R13 R5 K10 ["selectIndex"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K11 ["getOwnerDropDownContent"]
  GETTABLEKS R15 R4 K12 ["manageableGroups"]
  GETTABLEKS R16 R4 K13 ["Localization"]
  CALL R14 2 1
  SETTABLEKS R14 R0 K14 ["dropdownContent"]
  GETIMPORT R15 K18 [Enum.AssetType.Animation]
  JUMPIFEQ R9 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  MOVE R15 R14
  JUMPIFNOT R15 [+11]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K19 ["FLOW_TYPE"]
  GETTABLEKS R16 R17 K20 ["DOWNLOAD_FLOW"]
  GETTABLEKS R17 R4 K21 ["screenFlowType"]
  JUMPIFEQ R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETTABLEKS R16 R5 K22 ["filterID"]
  LOADB R17 0
  JUMPIFNOT R16 [+9]
  GETIMPORT R18 K25 [utf8.len]
  MOVE R19 R16
  CALL R18 1 1
  LOADN R19 10
  JUMPIFLT R19 R18 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K26 ["createElement"]
  LOADK R19 K27 ["Frame"]
  DUPTABLE R20 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  SETTABLEKS R8 R20 K5 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K28 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K29 ["BorderSizePixel"]
  SETTABLEKS R7 R20 K4 ["LayoutOrder"]
  DUPTABLE R21 K37 [{"UIPadding", "UIListLayout", "Title", "DropdownAndAnimationIdContainer", "DropdownMenu", "ScrollingItems"}]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  LOADK R23 K31 ["UIPadding"]
  DUPTABLE R24 K42 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R25 K45 [UDim.new]
  LOADN R26 0
  LOADN R27 46
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["PaddingBottom"]
  GETIMPORT R25 K45 [UDim.new]
  LOADN R26 0
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["PaddingLeft"]
  GETIMPORT R25 K45 [UDim.new]
  LOADN R26 0
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["PaddingRight"]
  GETIMPORT R25 K45 [UDim.new]
  LOADN R26 0
  LOADN R27 46
  CALL R25 2 1
  SETTABLEKS R25 R24 K41 ["PaddingTop"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K31 ["UIPadding"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  LOADK R23 K32 ["UIListLayout"]
  DUPTABLE R24 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R25 K53 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K46 ["FillDirection"]
  GETIMPORT R25 K55 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R25 R24 K47 ["HorizontalAlignment"]
  GETIMPORT R25 K57 [Enum.VerticalAlignment.Top]
  SETTABLEKS R25 R24 K48 ["VerticalAlignment"]
  GETIMPORT R25 K58 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K49 ["SortOrder"]
  GETIMPORT R25 K45 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K50 ["Padding"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K32 ["UIListLayout"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  LOADK R23 K59 ["TextLabel"]
  DUPTABLE R24 K66 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  GETIMPORT R25 K68 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 30
  CALL R25 4 1
  SETTABLEKS R25 R24 K5 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K28 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K29 ["BorderSizePixel"]
  JUMPIFNOT R15 [+8]
  GETTABLEKS R25 R4 K13 ["Localization"]
  LOADK R27 K69 ["AssetConfigFooter"]
  LOADK R28 K70 ["ImportTitle"]
  NAMECALL R25 R25 K71 ["getText"]
  CALL R25 3 1
  JUMP [+7]
  GETTABLEKS R25 R4 K13 ["Localization"]
  LOADK R27 K69 ["AssetConfigFooter"]
  LOADK R28 K72 ["OverrideTitle"]
  NAMECALL R25 R25 K71 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K60 ["Text"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K73 ["FONT"]
  SETTABLEKS R25 R24 K61 ["Font"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K74 ["FONT_SIZE_LARGE"]
  SETTABLEKS R25 R24 K62 ["TextSize"]
  GETTABLEKS R25 R6 K75 ["textColor"]
  SETTABLEKS R25 R24 K63 ["TextColor3"]
  GETIMPORT R25 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K64 ["TextXAlignment"]
  GETIMPORT R25 K78 [Enum.TextYAlignment.Center]
  SETTABLEKS R25 R24 K65 ["TextYAlignment"]
  LOADN R25 1
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K33 ["Title"]
  MOVE R22 R14
  JUMPIFNOT R22 [+156]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  LOADK R23 K27 ["Frame"]
  DUPTABLE R24 K79 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  LOADN R25 1
  SETTABLEKS R25 R24 K28 ["BackgroundTransparency"]
  GETIMPORT R25 K68 [UDim2.new]
  LOADN R26 1
  LOADN R27 236
  LOADN R28 0
  LOADN R29 40
  CALL R25 4 1
  SETTABLEKS R25 R24 K5 ["Size"]
  DUPTABLE R25 K81 [{"UIListLayout", "DropdownMenu", "AnimationIdFilter"}]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K26 ["createElement"]
  LOADK R27 K32 ["UIListLayout"]
  DUPTABLE R28 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R29 K83 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K46 ["FillDirection"]
  GETIMPORT R29 K55 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R29 R28 K47 ["HorizontalAlignment"]
  GETIMPORT R29 K57 [Enum.VerticalAlignment.Top]
  SETTABLEKS R29 R28 K48 ["VerticalAlignment"]
  GETIMPORT R29 K58 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K49 ["SortOrder"]
  GETIMPORT R29 K45 [UDim.new]
  LOADN R30 0
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K50 ["Padding"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K32 ["UIListLayout"]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K26 ["createElement"]
  GETUPVAL R27 4
  DUPTABLE R28 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
  GETIMPORT R29 K68 [UDim2.new]
  LOADN R30 0
  LOADN R31 80
  LOADN R32 0
  LOADN R33 40
  CALL R29 4 1
  SETTABLEKS R29 R28 K5 ["Size"]
  SETTABLEKS R13 R28 K84 ["selectedDropDownIndex"]
  LOADN R29 40
  SETTABLEKS R29 R28 K85 ["rowHeight"]
  GETTABLEKS R29 R0 K14 ["dropdownContent"]
  SETTABLEKS R29 R28 K86 ["items"]
  GETTABLEKS R29 R0 K89 ["onDropDownSelect"]
  SETTABLEKS R29 R28 K87 ["onItemClicked"]
  LOADN R29 1
  SETTABLEKS R29 R28 K4 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K35 ["DropdownMenu"]
  NOT R26 R15
  JUMPIFNOT R26 [+66]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K26 ["createElement"]
  LOADK R27 K27 ["Frame"]
  DUPTABLE R28 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R29 K68 [UDim2.new]
  LOADN R30 1
  LOADN R31 176
  LOADN R32 0
  LOADN R33 90
  CALL R29 4 1
  SETTABLEKS R29 R28 K5 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R28 K28 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K29 ["BorderSizePixel"]
  LOADN R29 2
  SETTABLEKS R29 R28 K4 ["LayoutOrder"]
  DUPTABLE R29 K91 [{"TextField"}]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K26 ["createElement"]
  GETUPVAL R31 5
  DUPTABLE R32 K95 [{"OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
  GETTABLEKS R33 R0 K96 ["onFilterIDChanged"]
  SETTABLEKS R33 R32 K92 ["OnTextChanged"]
  GETTABLEKS R33 R4 K13 ["Localization"]
  LOADK R35 K97 ["AssetConfigAnimation"]
  LOADK R36 K98 ["FilterID"]
  NAMECALL R33 R33 K71 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K93 ["PlaceholderText"]
  GETIMPORT R33 K68 [UDim2.new]
  LOADN R34 1
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K99 ["TITLE_GUTTER_WIDTH"]
  MINUS R35 R36
  LOADN R36 0
  LOADN R37 40
  CALL R33 4 1
  SETTABLEKS R33 R32 K5 ["Size"]
  JUMPIFNOT R17 [+2]
  LOADK R33 K100 ["FilledRoundedRedBorder"]
  JUMP [+1]
  LOADK R33 K101 ["FilledRoundedBorder"]
  SETTABLEKS R33 R32 K94 ["Style"]
  SETTABLEKS R16 R32 K60 ["Text"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K90 ["TextField"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K80 ["AnimationIdFilter"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["DropdownAndAnimationIdContainer"]
  NOT R22 R14
  JUMPIFNOT R22 [+31]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  GETUPVAL R23 4
  DUPTABLE R24 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
  GETIMPORT R25 K68 [UDim2.new]
  LOADN R26 0
  LOADN R27 80
  LOADN R28 0
  LOADN R29 40
  CALL R25 4 1
  SETTABLEKS R25 R24 K5 ["Size"]
  SETTABLEKS R13 R24 K84 ["selectedDropDownIndex"]
  LOADN R25 40
  SETTABLEKS R25 R24 K85 ["rowHeight"]
  GETTABLEKS R25 R0 K14 ["dropdownContent"]
  SETTABLEKS R25 R24 K86 ["items"]
  GETTABLEKS R25 R0 K89 ["onDropDownSelect"]
  SETTABLEKS R25 R24 K87 ["onItemClicked"]
  LOADN R25 2
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K35 ["DropdownMenu"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K26 ["createElement"]
  GETUPVAL R23 6
  DUPTABLE R24 K103 [{"Size", "assetTypeEnum", "instances", "resultsArray", "onOverrideAssetSelected", "getOverrideAssets", "filterID", "LayoutOrder"}]
  GETIMPORT R25 K68 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 1
  LOADN R29 186
  CALL R25 4 1
  SETTABLEKS R25 R24 K5 ["Size"]
  SETTABLEKS R9 R24 K6 ["assetTypeEnum"]
  SETTABLEKS R10 R24 K7 ["instances"]
  SETTABLEKS R12 R24 K9 ["resultsArray"]
  SETTABLEKS R11 R24 K8 ["onOverrideAssetSelected"]
  GETTABLEKS R25 R0 K104 ["getOverrideAssetsFunc"]
  SETTABLEKS R25 R24 K102 ["getOverrideAssets"]
  GETTABLEKS R25 R5 K22 ["filterID"]
  SETTABLEKS R25 R24 K22 ["filterID"]
  LOADN R25 3
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["ScrollingItems"]
  CALL R18 3 -1
  RETURN R18 -1

PROTO_8:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K4 [{"totalResults", "resultsArray", "manageableGroups", "assetTypeEnum"}]
  GETTABLEKS R3 R0 K0 ["totalResults"]
  SETTABLEKS R3 R2 K0 ["totalResults"]
  GETTABLEKS R3 R0 K1 ["resultsArray"]
  SETTABLEKS R3 R2 K1 ["resultsArray"]
  GETTABLEKS R3 R0 K2 ["manageableGroups"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["manageableGroups"]
  GETTABLEKS R3 R0 K3 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K3 ["assetTypeEnum"]
  GETTABLEKS R3 R0 K5 ["screenFlowType"]
  SETTABLEKS R3 R2 K5 ["screenFlowType"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K3 [{"getOverrideAssets", "getManageableGroups", "updateStore"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getOverrideAssets"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["getManageableGroups"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["updateStore"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["AssetConfiguration"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K11 ["OverrideAssetView"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Core"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["DropdownMenu"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K14 ["ContextHelper"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K15 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K16 ["AssetConfigUtil"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K17 ["getUserId"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R7 K18 ["AssetConfigConstants"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R1 K19 ["Framework"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K20 ["UI"]
  GETTABLEKS R15 R14 K21 ["DEPRECATED_TextInput"]
  GETTABLEKS R16 R8 K22 ["withLocalization"]
  GETTABLEKS R17 R13 K23 ["ContextServices"]
  GETTABLEKS R18 R17 K24 ["withContext"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K8 ["Core"]
  GETTABLEKS R21 R22 K23 ["ContextServices"]
  GETTABLEKS R20 R21 K25 ["NetworkContext"]
  CALL R19 1 1
  GETTABLEKS R22 R0 K8 ["Core"]
  GETTABLEKS R21 R22 K26 ["Networking"]
  GETTABLEKS R20 R21 K27 ["Requests"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R20 K28 ["GetOverrideAssetRequest"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R20 K29 ["GetAssetConfigManageableGroupsRequest"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K8 ["Core"]
  GETTABLEKS R25 R26 K30 ["Actions"]
  GETTABLEKS R24 R25 K31 ["UpdateAssetConfigStore"]
  CALL R23 1 1
  GETTABLEKS R24 R2 K32 ["PureComponent"]
  LOADK R26 K33 ["OverrideAsset"]
  NAMECALL R24 R24 K34 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K35 [PROTO_3]
  CAPTURE VAL R11
  SETTABLEKS R25 R24 K36 ["init"]
  DUPCLOSURE R25 K37 [PROTO_4]
  SETTABLEKS R25 R24 K38 ["didMount"]
  DUPCLOSURE R25 K39 [PROTO_6]
  CAPTURE VAL R16
  SETTABLEKS R25 R24 K40 ["render"]
  DUPCLOSURE R25 K41 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R25 R24 K42 ["renderContent"]
  DUPCLOSURE R25 K43 [PROTO_8]
  DUPCLOSURE R26 K44 [PROTO_12]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  MOVE R27 R18
  DUPTABLE R28 K48 [{"Stylizer", "Localization", "Network"}]
  GETTABLEKS R29 R17 K45 ["Stylizer"]
  SETTABLEKS R29 R28 K45 ["Stylizer"]
  GETTABLEKS R29 R17 K46 ["Localization"]
  SETTABLEKS R29 R28 K46 ["Localization"]
  SETTABLEKS R19 R28 K47 ["Network"]
  CALL R27 1 1
  MOVE R28 R24
  CALL R27 1 1
  MOVE R24 R27
  GETTABLEKS R27 R3 K49 ["connect"]
  MOVE R28 R25
  MOVE R29 R26
  CALL R27 2 1
  MOVE R28 R24
  CALL R27 1 -1
  RETURN R27 -1
