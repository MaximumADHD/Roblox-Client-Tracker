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
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["assetConfig"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["assetTypeEnum"]
  GETTABLEKS R8 R1 K7 ["instances"]
  GETTABLEKS R9 R1 K8 ["onOverrideAssetSelected"]
  GETTABLEKS R10 R1 K9 ["resultsArray"]
  GETTABLEKS R11 R2 K10 ["selectIndex"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["getOwnerDropDownContent"]
  GETTABLEKS R13 R1 K12 ["manageableGroups"]
  GETTABLEKS R14 R1 K13 ["Localization"]
  CALL R12 2 1
  SETTABLEKS R12 R0 K14 ["dropdownContent"]
  GETIMPORT R13 K18 [Enum.AssetType.Animation]
  JUMPIFEQ R7 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  MOVE R13 R12
  JUMPIFNOT R13 [+11]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K19 ["FLOW_TYPE"]
  GETTABLEKS R14 R15 K20 ["DOWNLOAD_FLOW"]
  GETTABLEKS R15 R1 K21 ["screenFlowType"]
  JUMPIFEQ R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETTABLEKS R14 R2 K22 ["filterID"]
  LOADB R15 0
  JUMPIFNOT R14 [+9]
  GETIMPORT R16 K25 [utf8.len]
  MOVE R17 R14
  CALL R16 1 1
  LOADN R17 10
  JUMPIFLT R17 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  LOADK R17 K27 ["Frame"]
  DUPTABLE R18 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  SETTABLEKS R6 R18 K5 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K28 ["BackgroundTransparency"]
  LOADN R19 0
  SETTABLEKS R19 R18 K29 ["BorderSizePixel"]
  SETTABLEKS R5 R18 K4 ["LayoutOrder"]
  DUPTABLE R19 K37 [{"UIPadding", "UIListLayout", "Title", "DropdownAndAnimationIdContainer", "DropdownMenu", "ScrollingItems"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  LOADK R21 K31 ["UIPadding"]
  DUPTABLE R22 K42 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R23 K45 [UDim.new]
  LOADN R24 0
  LOADN R25 46
  CALL R23 2 1
  SETTABLEKS R23 R22 K38 ["PaddingBottom"]
  GETIMPORT R23 K45 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K39 ["PaddingLeft"]
  GETIMPORT R23 K45 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K40 ["PaddingRight"]
  GETIMPORT R23 K45 [UDim.new]
  LOADN R24 0
  LOADN R25 46
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["PaddingTop"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["UIPadding"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  LOADK R21 K32 ["UIListLayout"]
  DUPTABLE R22 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R23 K53 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K46 ["FillDirection"]
  GETIMPORT R23 K55 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K47 ["HorizontalAlignment"]
  GETIMPORT R23 K57 [Enum.VerticalAlignment.Top]
  SETTABLEKS R23 R22 K48 ["VerticalAlignment"]
  GETIMPORT R23 K58 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K49 ["SortOrder"]
  GETIMPORT R23 K45 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K50 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["UIListLayout"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  LOADK R21 K59 ["TextLabel"]
  DUPTABLE R22 K66 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 30
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K28 ["BackgroundTransparency"]
  LOADN R23 0
  SETTABLEKS R23 R22 K29 ["BorderSizePixel"]
  JUMPIFNOT R13 [+8]
  GETTABLEKS R23 R1 K13 ["Localization"]
  LOADK R25 K69 ["AssetConfigFooter"]
  LOADK R26 K70 ["ImportTitle"]
  NAMECALL R23 R23 K71 ["getText"]
  CALL R23 3 1
  JUMP [+7]
  GETTABLEKS R23 R1 K13 ["Localization"]
  LOADK R25 K69 ["AssetConfigFooter"]
  LOADK R26 K72 ["OverrideTitle"]
  NAMECALL R23 R23 K71 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K60 ["Text"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K73 ["FONT"]
  SETTABLEKS R23 R22 K61 ["Font"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K74 ["FONT_SIZE_LARGE"]
  SETTABLEKS R23 R22 K62 ["TextSize"]
  GETTABLEKS R23 R4 K75 ["textColor"]
  SETTABLEKS R23 R22 K63 ["TextColor3"]
  GETIMPORT R23 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K64 ["TextXAlignment"]
  GETIMPORT R23 K78 [Enum.TextYAlignment.Center]
  SETTABLEKS R23 R22 K65 ["TextYAlignment"]
  LOADN R23 1
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["Title"]
  MOVE R20 R12
  JUMPIFNOT R20 [+156]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  LOADK R21 K27 ["Frame"]
  DUPTABLE R22 K79 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  LOADN R23 2
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  LOADN R23 1
  SETTABLEKS R23 R22 K28 ["BackgroundTransparency"]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 1
  LOADN R25 236
  LOADN R26 0
  LOADN R27 40
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["Size"]
  DUPTABLE R23 K81 [{"UIListLayout", "DropdownMenu", "AnimationIdFilter"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K26 ["createElement"]
  LOADK R25 K32 ["UIListLayout"]
  DUPTABLE R26 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R27 K83 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K46 ["FillDirection"]
  GETIMPORT R27 K55 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K47 ["HorizontalAlignment"]
  GETIMPORT R27 K57 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K48 ["VerticalAlignment"]
  GETIMPORT R27 K58 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K49 ["SortOrder"]
  GETIMPORT R27 K45 [UDim.new]
  LOADN R28 0
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K50 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K32 ["UIListLayout"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K26 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
  GETIMPORT R27 K68 [UDim2.new]
  LOADN R28 0
  LOADN R29 80
  LOADN R30 0
  LOADN R31 40
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  SETTABLEKS R11 R26 K84 ["selectedDropDownIndex"]
  LOADN R27 40
  SETTABLEKS R27 R26 K85 ["rowHeight"]
  GETTABLEKS R27 R0 K14 ["dropdownContent"]
  SETTABLEKS R27 R26 K86 ["items"]
  GETTABLEKS R27 R0 K89 ["onDropDownSelect"]
  SETTABLEKS R27 R26 K87 ["onItemClicked"]
  LOADN R27 1
  SETTABLEKS R27 R26 K4 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K35 ["DropdownMenu"]
  NOT R24 R13
  JUMPIFNOT R24 [+66]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K26 ["createElement"]
  LOADK R25 K27 ["Frame"]
  DUPTABLE R26 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R27 K68 [UDim2.new]
  LOADN R28 1
  LOADN R29 176
  LOADN R30 0
  LOADN R31 90
  CALL R27 4 1
  SETTABLEKS R27 R26 K5 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K28 ["BackgroundTransparency"]
  LOADN R27 0
  SETTABLEKS R27 R26 K29 ["BorderSizePixel"]
  LOADN R27 2
  SETTABLEKS R27 R26 K4 ["LayoutOrder"]
  DUPTABLE R27 K91 [{"TextField"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K26 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K95 [{"OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
  GETTABLEKS R31 R0 K96 ["onFilterIDChanged"]
  SETTABLEKS R31 R30 K92 ["OnTextChanged"]
  GETTABLEKS R31 R1 K13 ["Localization"]
  LOADK R33 K97 ["AssetConfigAnimation"]
  LOADK R34 K98 ["FilterID"]
  NAMECALL R31 R31 K71 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K93 ["PlaceholderText"]
  GETIMPORT R31 K68 [UDim2.new]
  LOADN R32 1
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K99 ["TITLE_GUTTER_WIDTH"]
  MINUS R33 R34
  LOADN R34 0
  LOADN R35 40
  CALL R31 4 1
  SETTABLEKS R31 R30 K5 ["Size"]
  JUMPIFNOT R15 [+2]
  LOADK R31 K100 ["FilledRoundedRedBorder"]
  JUMP [+1]
  LOADK R31 K101 ["FilledRoundedBorder"]
  SETTABLEKS R31 R30 K94 ["Style"]
  SETTABLEKS R14 R30 K60 ["Text"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K90 ["TextField"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K80 ["AnimationIdFilter"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K34 ["DropdownAndAnimationIdContainer"]
  NOT R20 R12
  JUMPIFNOT R20 [+31]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 0
  LOADN R25 80
  LOADN R26 0
  LOADN R27 40
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["Size"]
  SETTABLEKS R11 R22 K84 ["selectedDropDownIndex"]
  LOADN R23 40
  SETTABLEKS R23 R22 K85 ["rowHeight"]
  GETTABLEKS R23 R0 K14 ["dropdownContent"]
  SETTABLEKS R23 R22 K86 ["items"]
  GETTABLEKS R23 R0 K89 ["onDropDownSelect"]
  SETTABLEKS R23 R22 K87 ["onItemClicked"]
  LOADN R23 2
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K35 ["DropdownMenu"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K103 [{"Size", "assetTypeEnum", "instances", "resultsArray", "onOverrideAssetSelected", "getOverrideAssets", "filterID", "LayoutOrder"}]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 186
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["Size"]
  SETTABLEKS R7 R22 K6 ["assetTypeEnum"]
  SETTABLEKS R8 R22 K7 ["instances"]
  SETTABLEKS R10 R22 K9 ["resultsArray"]
  SETTABLEKS R9 R22 K8 ["onOverrideAssetSelected"]
  GETTABLEKS R23 R0 K104 ["getOverrideAssetsFunc"]
  SETTABLEKS R23 R22 K102 ["getOverrideAssets"]
  GETTABLEKS R23 R2 K22 ["filterID"]
  SETTABLEKS R23 R22 K22 ["filterID"]
  LOADN R23 3
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["ScrollingItems"]
  CALL R16 3 -1
  RETURN R16 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
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
  GETTABLEKS R9 R7 K14 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K15 ["AssetConfigUtil"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K16 ["getUserId"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K17 ["AssetConfigConstants"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R1 K18 ["Framework"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K19 ["UI"]
  GETTABLEKS R14 R13 K20 ["DEPRECATED_TextInput"]
  GETTABLEKS R15 R12 K21 ["ContextServices"]
  GETTABLEKS R16 R15 K22 ["withContext"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K8 ["Core"]
  GETTABLEKS R19 R20 K21 ["ContextServices"]
  GETTABLEKS R18 R19 K23 ["NetworkContext"]
  CALL R17 1 1
  GETTABLEKS R20 R0 K8 ["Core"]
  GETTABLEKS R19 R20 K24 ["Networking"]
  GETTABLEKS R18 R19 K25 ["Requests"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K26 ["GetOverrideAssetRequest"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R18 K27 ["GetAssetConfigManageableGroupsRequest"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K8 ["Core"]
  GETTABLEKS R23 R24 K28 ["Actions"]
  GETTABLEKS R22 R23 K29 ["UpdateAssetConfigStore"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K30 ["PureComponent"]
  LOADK R24 K31 ["OverrideAsset"]
  NAMECALL R22 R22 K32 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K33 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R23 R22 K34 ["init"]
  DUPCLOSURE R23 K35 [PROTO_4]
  SETTABLEKS R23 R22 K36 ["didMount"]
  DUPCLOSURE R23 K37 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K38 ["render"]
  DUPCLOSURE R23 K39 [PROTO_6]
  DUPCLOSURE R24 K40 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  MOVE R25 R16
  DUPTABLE R26 K44 [{"Stylizer", "Localization", "Network"}]
  GETTABLEKS R27 R15 K41 ["Stylizer"]
  SETTABLEKS R27 R26 K41 ["Stylizer"]
  GETTABLEKS R27 R15 K42 ["Localization"]
  SETTABLEKS R27 R26 K42 ["Localization"]
  SETTABLEKS R17 R26 K43 ["Network"]
  CALL R25 1 1
  MOVE R26 R22
  CALL R25 1 1
  MOVE R22 R25
  GETTABLEKS R25 R3 K45 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1
