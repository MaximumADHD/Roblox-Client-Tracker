PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getAssetConfigMessaging"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K0 ["audioPublicationDisabledLink"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["onLearnMoreActivated"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [string.format]
  LOADK R1 K3 ["%slibrary/configure?id=%s#!/general"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["BaseUrl"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  NAMECALL R3 R3 K5 ["urlEncode"]
  CALL R3 2 -1
  CALL R0 -1 1
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K6 ["OpenBrowserWindow"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["assetConfig"]
  GETTABLEKS R4 R2 K3 ["publishAsset"]
  GETTABLEKS R5 R1 K4 ["AssetId"]
  GETTABLEKS R6 R1 K5 ["AssetType"]
  GETTABLEKS R7 R1 K6 ["AllowSelectPrivate"]
  GETTABLEKS R8 R1 K7 ["LayoutOrder"]
  GETTABLEKS R9 R1 K8 ["IsAssetPublic"]
  GETTABLEKS R10 R1 K9 ["OnSelected"]
  GETTABLEKS R11 R1 K10 ["Localization"]
  LOADK R14 K11 ["AssetConfigSharing"]
  LOADK R15 K12 ["SubTitle"]
  NAMECALL R12 R11 K13 ["getText"]
  CALL R12 3 1
  LOADK R15 K14 ["General"]
  LOADK R16 K15 ["TermsOfUse"]
  NAMECALL R13 R11 K13 ["getText"]
  CALL R13 3 1
  LOADK R16 K11 ["AssetConfigSharing"]
  LOADK R17 K16 ["PrivateSpecificExperiences"]
  NAMECALL R14 R11 K13 ["getText"]
  CALL R14 3 1
  LOADK R17 K11 ["AssetConfigSharing"]
  LOADK R18 K17 ["PublicAllExperiences"]
  NAMECALL R15 R11 K13 ["getText"]
  CALL R15 3 1
  LOADK R18 K11 ["AssetConfigSharing"]
  LOADK R19 K18 ["ExperiencesWithAccess"]
  NAMECALL R16 R11 K13 ["getText"]
  CALL R16 3 1
  LOADNIL R17
  JUMPIFNOT R7 [+7]
  LOADK R20 K11 ["AssetConfigSharing"]
  LOADK R21 K19 ["PrivateInformation"]
  NAMECALL R18 R11 K13 ["getText"]
  CALL R18 3 1
  MOVE R17 R18
  JUMP [+6]
  LOADK R20 K11 ["AssetConfigSharing"]
  LOADK R21 K20 ["PrivateDisabledInformation"]
  NAMECALL R18 R11 K13 ["getText"]
  CALL R18 3 1
  MOVE R17 R18
  LOADNIL R18
  LOADNIL R19
  LOADNIL R20
  LOADB R21 1
  GETIMPORT R22 K23 [Enum.AssetType.Audio]
  JUMPIFEQ R6 R22 [+7]
  GETUPVAL R22 0
  JUMPIFNOT R22 [+83]
  GETIMPORT R22 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R6 R22 [+80]
  JUMPIFNOT R9 [+7]
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K26 ["PublicInformation"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R18 R22
  JUMP [+77]
  GETUPVAL R22 0
  JUMPIFNOT R22 [+18]
  GETIMPORT R22 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R6 R22 [+8]
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K27 ["VideoPublicDisabledInformation"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R18 R22
  JUMP [+13]
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K28 ["PublicDisabledInformation"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R18 R22
  JUMP [+6]
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K28 ["PublicDisabledInformation"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R18 R22
  LOADB R21 0
  DUPTABLE R22 K31 [{"Text", "OnClick"}]
  LOADK R25 K11 ["AssetConfigSharing"]
  LOADK R26 K32 ["PublicDisabledLinkText"]
  NAMECALL R23 R11 K13 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K29 ["Text"]
  GETTABLEKS R23 R0 K33 ["onLearnMoreActivated"]
  SETTABLEKS R23 R22 K30 ["OnClick"]
  MOVE R19 R22
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K34 ["PrivateInformationVersionTwo"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R17 R22
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K36 ["getAssetConfigMessaging"]
  CALL R23 0 1
  GETTABLEKS R22 R23 K35 ["showManageUniversePermissionsLink"]
  JUMPIFNOT R22 [+24]
  JUMPIFNOT R5 [+23]
  DUPTABLE R22 K31 [{"Text", "OnClick"}]
  LOADK R25 K11 ["AssetConfigSharing"]
  LOADK R26 K37 ["PrivateInformationLinkText"]
  NAMECALL R23 R11 K13 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K29 ["Text"]
  NEWCLOSURE R23 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLEKS R23 R22 K30 ["OnClick"]
  MOVE R20 R22
  JUMP [+6]
  LOADK R24 K11 ["AssetConfigSharing"]
  LOADK R25 K26 ["PublicInformation"]
  NAMECALL R22 R11 K13 ["getText"]
  CALL R22 3 1
  MOVE R18 R22
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K38 ["new"]
  CALL R22 0 1
  JUMPIFNOT R9 [+6]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K39 ["SHARING_KEYS"]
  GETTABLEKS R23 R24 K40 ["Public"]
  JUMP [+5]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K39 ["SHARING_KEYS"]
  GETTABLEKS R23 R24 K41 ["Private"]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K42 ["createElement"]
  GETUPVAL R25 8
  DUPTABLE R26 K49 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "VerticalAlignment"}]
  GETIMPORT R27 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K43 ["AutomaticSize"]
  GETIMPORT R27 K53 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K44 ["HorizontalAlignment"]
  GETIMPORT R27 K56 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K45 ["Layout"]
  SETTABLEKS R8 R26 K7 ["LayoutOrder"]
  DUPTABLE R27 K58 [{"Bottom"}]
  LOADN R28 25
  SETTABLEKS R28 R27 K57 ["Bottom"]
  SETTABLEKS R27 R26 K46 ["Padding"]
  GETIMPORT R27 K60 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K47 ["Size"]
  GETIMPORT R27 K62 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K48 ["VerticalAlignment"]
  DUPTABLE R27 K65 [{"Title", "RightFrame"}]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K42 ["createElement"]
  GETUPVAL R29 9
  DUPTABLE R30 K70 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R31 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K43 ["AutomaticSize"]
  LOADN R31 1
  SETTABLEKS R31 R30 K7 ["LayoutOrder"]
  GETIMPORT R31 K60 [UDim2.new]
  LOADN R32 0
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K71 ["TITLE_GUTTER_WIDTH"]
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K47 ["Size"]
  SETTABLEKS R16 R30 K29 ["Text"]
  GETTABLEKS R31 R4 K72 ["titleTextColor"]
  SETTABLEKS R31 R30 K66 ["TextColor"]
  GETUPVAL R32 10
  GETTABLEKS R31 R32 K73 ["FONT_SIZE_TITLE"]
  SETTABLEKS R31 R30 K67 ["TextSize"]
  LOADB R31 1
  SETTABLEKS R31 R30 K68 ["TextWrapped"]
  GETIMPORT R31 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K69 ["TextXAlignment"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K63 ["Title"]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K42 ["createElement"]
  GETUPVAL R29 8
  DUPTABLE R30 K76 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R31 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K43 ["AutomaticSize"]
  GETIMPORT R31 K53 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K44 ["HorizontalAlignment"]
  GETIMPORT R31 K78 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K45 ["Layout"]
  LOADN R31 2
  SETTABLEKS R31 R30 K7 ["LayoutOrder"]
  GETIMPORT R31 K60 [UDim2.new]
  LOADN R32 1
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K71 ["TITLE_GUTTER_WIDTH"]
  MINUS R33 R34
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K47 ["Size"]
  LOADN R31 2
  SETTABLEKS R31 R30 K75 ["Spacing"]
  DUPTABLE R31 K80 [{"ContentContainer"}]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K42 ["createElement"]
  GETUPVAL R33 8
  DUPTABLE R34 K76 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R35 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R35 R34 K43 ["AutomaticSize"]
  GETIMPORT R35 K53 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R35 R34 K44 ["HorizontalAlignment"]
  GETIMPORT R35 K78 [Enum.FillDirection.Vertical]
  SETTABLEKS R35 R34 K45 ["Layout"]
  NAMECALL R35 R22 K81 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K7 ["LayoutOrder"]
  GETIMPORT R35 K60 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K47 ["Size"]
  LOADN R35 10
  SETTABLEKS R35 R34 K75 ["Spacing"]
  DUPTABLE R35 K84 [{"SubtitleLabel", "RadioButtonList"}]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K42 ["createElement"]
  GETUPVAL R37 9
  DUPTABLE R38 K70 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R39 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R39 R38 K43 ["AutomaticSize"]
  LOADN R39 1
  SETTABLEKS R39 R38 K7 ["LayoutOrder"]
  GETIMPORT R39 K60 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 0
  LOADN R43 0
  CALL R39 4 1
  SETTABLEKS R39 R38 K47 ["Size"]
  SETTABLEKS R12 R38 K29 ["Text"]
  GETTABLEKS R39 R3 K85 ["brightText"]
  SETTABLEKS R39 R38 K66 ["TextColor"]
  GETUPVAL R40 10
  GETTABLEKS R39 R40 K86 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
  SETTABLEKS R39 R38 K67 ["TextSize"]
  LOADB R39 1
  SETTABLEKS R39 R38 K68 ["TextWrapped"]
  GETIMPORT R39 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K69 ["TextXAlignment"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K82 ["SubtitleLabel"]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K42 ["createElement"]
  GETUPVAL R37 11
  DUPTABLE R38 K91 [{"AutomaticSize", "Buttons", "FillDirection", "LayoutOrder", "OnClick", "CurrentSelectedKey", "SelectedKey", "Style", "TextWrapped", "TextXAlignment", "VerticalAlignment"}]
  GETIMPORT R39 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R39 R38 K43 ["AutomaticSize"]
  NEWTABLE R39 0 2
  DUPTABLE R40 K96 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
  GETUPVAL R43 6
  GETTABLEKS R42 R43 K39 ["SHARING_KEYS"]
  GETTABLEKS R41 R42 K41 ["Private"]
  SETTABLEKS R41 R40 K92 ["Key"]
  SETTABLEKS R14 R40 K29 ["Text"]
  SETTABLEKS R17 R40 K93 ["Description"]
  SETTABLEKS R20 R40 K94 ["LinkProps"]
  NOT R41 R7
  SETTABLEKS R41 R40 K95 ["Disabled"]
  DUPTABLE R41 K96 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
  GETUPVAL R44 6
  GETTABLEKS R43 R44 K39 ["SHARING_KEYS"]
  GETTABLEKS R42 R43 K40 ["Public"]
  SETTABLEKS R42 R41 K92 ["Key"]
  SETTABLEKS R15 R41 K29 ["Text"]
  SETTABLEKS R18 R41 K93 ["Description"]
  SETTABLEKS R19 R41 K94 ["LinkProps"]
  NOT R42 R21
  SETTABLEKS R42 R41 K95 ["Disabled"]
  SETLIST R39 R40 2 [1]
  SETTABLEKS R39 R38 K87 ["Buttons"]
  GETIMPORT R39 K78 [Enum.FillDirection.Vertical]
  SETTABLEKS R39 R38 K54 ["FillDirection"]
  LOADN R39 2
  SETTABLEKS R39 R38 K7 ["LayoutOrder"]
  SETTABLEKS R10 R38 K30 ["OnClick"]
  SETTABLEKS R23 R38 K88 ["CurrentSelectedKey"]
  SETTABLEKS R23 R38 K89 ["SelectedKey"]
  LOADK R39 K97 ["AssetConfigRadioButtonList"]
  SETTABLEKS R39 R38 K90 ["Style"]
  LOADB R39 1
  SETTABLEKS R39 R38 K68 ["TextWrapped"]
  GETIMPORT R39 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K69 ["TextXAlignment"]
  GETIMPORT R39 K62 [Enum.VerticalAlignment.Top]
  SETTABLEKS R39 R38 K48 ["VerticalAlignment"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K83 ["RadioButtonList"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K79 ["ContentContainer"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K64 ["RightFrame"]
  CALL R24 3 -1
  RETURN R24 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxVideoConfigSharing2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Button"]
  GETTABLEKS R7 R5 K14 ["LinkText"]
  GETTABLEKS R8 R5 K15 ["Pane"]
  GETTABLEKS R9 R5 K16 ["RadioButtonList"]
  GETTABLEKS R10 R5 K17 ["TextLabel"]
  GETTABLEKS R11 R3 K18 ["ContextServices"]
  GETTABLEKS R12 R11 K19 ["withContext"]
  GETTABLEKS R14 R1 K20 ["Core"]
  GETTABLEKS R13 R14 K21 ["Util"]
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R13 K22 ["Constants"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R13 K23 ["AssetConfigConstants"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R13 K24 ["ToolboxUtilities"]
  CALL R16 1 1
  GETTABLEKS R18 R3 K21 ["Util"]
  GETTABLEKS R17 R18 K25 ["LayoutOrderIterator"]
  GETIMPORT R18 K1 [game]
  LOADK R20 K26 ["ContentProvider"]
  NAMECALL R18 R18 K27 ["GetService"]
  CALL R18 2 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K28 ["HttpService"]
  NAMECALL R19 R19 K27 ["GetService"]
  CALL R19 2 1
  GETIMPORT R20 K1 [game]
  LOADK R22 K29 ["GuiService"]
  NAMECALL R20 R20 K27 ["GetService"]
  CALL R20 2 1
  GETTABLEKS R21 R4 K30 ["PureComponent"]
  LOADK R23 K31 ["ConfigSharing"]
  NAMECALL R21 R21 K32 ["extend"]
  CALL R21 2 1
  GETIMPORT R22 K35 [UDim2.fromOffset]
  LOADN R23 160
  LOADN R24 32
  CALL R22 2 1
  DUPCLOSURE R23 K36 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R20
  SETTABLEKS R23 R21 K37 ["init"]
  DUPCLOSURE R23 K38 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R9
  SETTABLEKS R23 R21 K39 ["render"]
  MOVE R23 R12
  DUPTABLE R24 K42 [{"Localization", "Stylizer"}]
  GETTABLEKS R25 R11 K40 ["Localization"]
  SETTABLEKS R25 R24 K40 ["Localization"]
  GETTABLEKS R25 R11 K41 ["Stylizer"]
  SETTABLEKS R25 R24 K41 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R21
  CALL R23 1 1
  MOVE R21 R23
  RETURN R21 1
