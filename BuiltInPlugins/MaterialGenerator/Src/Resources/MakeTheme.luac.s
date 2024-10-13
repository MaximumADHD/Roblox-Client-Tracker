PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["MaterialFramework"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["Style"]
  GETTABLEKS R6 R4 K10 ["Themes"]
  GETTABLEKS R5 R6 K11 ["StudioTheme"]
  GETTABLEKS R6 R4 K12 ["StyleKey"]
  GETTABLEKS R7 R4 K13 ["getRawComponentStyle"]
  GETTABLEKS R8 R4 K14 ["ComponentSymbols"]
  GETTABLEKS R9 R2 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Image"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Flags"]
  GETTABLEKS R12 R13 K19 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K18 ["Flags"]
  GETTABLEKS R13 R14 K20 ["getFFlagMaterialGeneratorNewUI"]
  CALL R12 1 1
  GETTABLEKS R14 R2 K21 ["Util"]
  GETTABLEKS R13 R14 K22 ["StyleModifier"]
  GETTABLEKS R15 R3 K23 ["Resources"]
  GETTABLEKS R14 R15 K24 ["Theme"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K23 ["Resources"]
  GETTABLEKS R16 R17 K24 ["Theme"]
  CALL R15 1 1
  DUPTABLE R16 K27 [{"Image", "Color", "Size"}]
  LOADK R17 K28 ["rbxasset://textures/DevConsole/Close.png"]
  SETTABLEKS R17 R16 K16 ["Image"]
  GETTABLEKS R17 R6 K29 ["ErrorText"]
  SETTABLEKS R17 R16 K25 ["Color"]
  GETIMPORT R17 K32 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["Size"]
  NEWTABLE R17 16 0
  DUPTABLE R18 K52 [{"GenerateButtonSize", "UploadButtonSize", "MultiLinePrompt", "Padding", "PromptHeight", "RowHeight", "Size", "VerticalSpacing", "ErrorPadding", "ErrorSpacing", "ErrorLabelSpacing", "RetryButtonSize", "ErrorMessageTextColor", "AddImageButtonIconColor", "AddImageButtonIconColorNoImage", "ImagePadding", "ImageCornerRadius", "ImageBackgroundColor3", "ImageColor3", "ImageBorderColor"}]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 80
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["GenerateButtonSize"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 32
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["UploadButtonSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K35 ["MultiLinePrompt"]
  LOADN R19 10
  SETTABLEKS R19 R18 K36 ["Padding"]
  MOVE R20 R11
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADN R19 88
  JUMP [+1]
  LOADN R19 64
  SETTABLEKS R19 R18 K37 ["PromptHeight"]
  LOADN R19 32
  SETTABLEKS R19 R18 K38 ["RowHeight"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 102
  CALL R19 4 1
  SETTABLEKS R19 R18 K26 ["Size"]
  LOADN R19 6
  SETTABLEKS R19 R18 K39 ["VerticalSpacing"]
  LOADN R19 32
  SETTABLEKS R19 R18 K40 ["ErrorPadding"]
  LOADN R19 32
  SETTABLEKS R19 R18 K41 ["ErrorSpacing"]
  LOADN R19 8
  SETTABLEKS R19 R18 K42 ["ErrorLabelSpacing"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 0
  LOADN R21 150
  LOADN R22 0
  LOADN R23 44
  CALL R19 4 1
  SETTABLEKS R19 R18 K43 ["RetryButtonSize"]
  GETTABLEKS R19 R6 K57 ["TextSecondary"]
  SETTABLEKS R19 R18 K44 ["ErrorMessageTextColor"]
  GETTABLEKS R19 R6 K58 ["MainText"]
  SETTABLEKS R19 R18 K45 ["AddImageButtonIconColor"]
  GETTABLEKS R19 R6 K58 ["MainText"]
  SETTABLEKS R19 R18 K46 ["AddImageButtonIconColorNoImage"]
  LOADN R19 5
  SETTABLEKS R19 R18 K47 ["ImagePadding"]
  GETIMPORT R19 K60 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["ImageCornerRadius"]
  GETTABLEKS R19 R6 K61 ["InputFieldBackground"]
  SETTABLEKS R19 R18 K49 ["ImageBackgroundColor3"]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 1
  LOADN R21 1
  LOADN R22 1
  CALL R19 3 1
  SETTABLEKS R19 R18 K50 ["ImageColor3"]
  GETTABLEKS R19 R6 K64 ["InputFieldBorder"]
  SETTABLEKS R19 R18 K51 ["ImageBorderColor"]
  SETTABLEKS R18 R17 K65 ["Header"]
  GETTABLEKS R18 R13 K66 ["Selected"]
  DUPTABLE R19 K67 [{"Header"}]
  DUPTABLE R20 K68 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
  GETIMPORT R21 K63 [Color3.new]
  LOADK R22 K69 [0.5]
  LOADK R23 K69 [0.5]
  LOADK R24 K69 [0.5]
  CALL R21 3 1
  SETTABLEKS R21 R20 K50 ["ImageColor3"]
  GETTABLEKS R21 R6 K70 ["InputFieldBorderSelected"]
  SETTABLEKS R21 R20 K51 ["ImageBorderColor"]
  GETIMPORT R21 K63 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 1
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["AddImageButtonIconColor"]
  SETTABLEKS R20 R19 K65 ["Header"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K71 ["Hover"]
  DUPTABLE R19 K73 [{"Header", "TextureItem"}]
  DUPTABLE R20 K68 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
  GETIMPORT R21 K63 [Color3.new]
  LOADK R22 K69 [0.5]
  LOADK R23 K69 [0.5]
  LOADK R24 K69 [0.5]
  CALL R21 3 1
  SETTABLEKS R21 R20 K50 ["ImageColor3"]
  GETTABLEKS R21 R6 K74 ["InputFieldBorderHover"]
  SETTABLEKS R21 R20 K51 ["ImageBorderColor"]
  GETIMPORT R21 K63 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 1
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["AddImageButtonIconColor"]
  SETTABLEKS R20 R19 K65 ["Header"]
  DUPTABLE R20 K75 [{"ImageColor3"}]
  GETIMPORT R21 K63 [Color3.new]
  LOADK R22 K76 [0.9]
  LOADK R23 K76 [0.9]
  LOADK R24 K76 [0.9]
  CALL R21 3 1
  SETTABLEKS R21 R20 K50 ["ImageColor3"]
  SETTABLEKS R20 R19 K72 ["TextureItem"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K83 [{"Padding", "MaxWidth", "PrimaryColor", "CornerRadius", "CloseButtonPosition", "CloseButtonSize", "RightPadding"}]
  LOADN R19 32
  SETTABLEKS R19 R18 K36 ["Padding"]
  LOADN R19 144
  SETTABLEKS R19 R18 K77 ["MaxWidth"]
  GETTABLEKS R19 R6 K29 ["ErrorText"]
  SETTABLEKS R19 R18 K78 ["PrimaryColor"]
  LOADN R19 8
  SETTABLEKS R19 R18 K79 ["CornerRadius"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 1
  LOADN R21 19
  LOADK R22 K69 [0.5]
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K80 ["CloseButtonPosition"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 13
  LOADN R21 13
  CALL R19 2 1
  SETTABLEKS R19 R18 K81 ["CloseButtonSize"]
  LOADN R19 15
  SETTABLEKS R19 R18 K82 ["RightPadding"]
  SETTABLEKS R18 R17 K84 ["ErrorBox"]
  DUPTABLE R18 K87 [{"ErrorPadding", "ErrorInnerPadding", "ErrorMaxWidth"}]
  LOADN R19 8
  SETTABLEKS R19 R18 K40 ["ErrorPadding"]
  LOADN R19 12
  SETTABLEKS R19 R18 K85 ["ErrorInnerPadding"]
  LOADK R19 K88 [∞]
  SETTABLEKS R19 R18 K86 ["ErrorMaxWidth"]
  SETTABLEKS R18 R17 K89 ["MainView"]
  DUPTABLE R18 K100 [{"LabelWidth", "Padding", "PreviewHeight", "PreviewTileSize", "PrimarySettingsGroupBackgroundColor", "SaveAndApplyButtonSize", "ApplyButtonSize", "SettingsGroupPadding", "SettingsGroupSpacing", "SettingSpacing", "StudsPerTileSettingSize", "VerticalSpacing"}]
  LOADN R19 100
  SETTABLEKS R19 R18 K90 ["LabelWidth"]
  LOADN R19 8
  SETTABLEKS R19 R18 K36 ["Padding"]
  LOADN R19 192
  SETTABLEKS R19 R18 K91 ["PreviewHeight"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 0
  LOADN R21 192
  LOADN R22 0
  LOADN R23 192
  CALL R19 4 1
  SETTABLEKS R19 R18 K92 ["PreviewTileSize"]
  GETTABLEKS R19 R6 K101 ["ForegroundContrast"]
  SETTABLEKS R19 R18 K93 ["PrimarySettingsGroupBackgroundColor"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 220
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K94 ["SaveAndApplyButtonSize"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 120
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K95 ["ApplyButtonSize"]
  DUPTABLE R19 K104 [{"Left", "Right"}]
  LOADN R20 6
  SETTABLEKS R20 R19 K102 ["Left"]
  LOADN R20 6
  SETTABLEKS R20 R19 K103 ["Right"]
  SETTABLEKS R19 R18 K96 ["SettingsGroupPadding"]
  LOADN R19 10
  SETTABLEKS R19 R18 K97 ["SettingsGroupSpacing"]
  LOADN R19 6
  SETTABLEKS R19 R18 K98 ["SettingSpacing"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 32
  CALL R19 4 1
  SETTABLEKS R19 R18 K99 ["StudsPerTileSettingSize"]
  LOADN R19 6
  SETTABLEKS R19 R18 K39 ["VerticalSpacing"]
  SETTABLEKS R18 R17 K105 ["MaterialView"]
  DUPTABLE R18 K108 [{"CloseButtonSize", "ContentSize", "Transparency"}]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 24
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K81 ["CloseButtonSize"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 1
  LOADN R21 226
  LOADN R22 1
  LOADN R23 226
  CALL R19 4 1
  SETTABLEKS R19 R18 K106 ["ContentSize"]
  LOADK R19 K69 [0.5]
  SETTABLEKS R19 R18 K107 ["Transparency"]
  SETTABLEKS R18 R17 K109 ["ModalView"]
  DUPTABLE R18 K112 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R19 16
  SETTABLEKS R19 R18 K110 ["HorizontalSpacing"]
  GETIMPORT R19 K56 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 30
  CALL R19 4 1
  SETTABLEKS R19 R18 K26 ["Size"]
  LOADN R19 30
  SETTABLEKS R19 R18 K111 ["ValueLabelWidth"]
  SETTABLEKS R18 R17 K113 ["Setting"]
  DUPTABLE R18 K116 [{"CellPadding", "CellSize", "Padding"}]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 6
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K114 ["CellPadding"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 128
  LOADN R21 128
  CALL R19 2 1
  SETTABLEKS R19 R18 K115 ["CellSize"]
  DUPTABLE R19 K118 [{"Top", "Left", "Right"}]
  LOADN R20 4
  SETTABLEKS R20 R19 K117 ["Top"]
  LOADN R20 10
  SETTABLEKS R20 R19 K102 ["Left"]
  LOADN R20 10
  SETTABLEKS R20 R19 K103 ["Right"]
  SETTABLEKS R19 R18 K36 ["Padding"]
  SETTABLEKS R18 R17 K119 ["TextureBrowser"]
  DUPTABLE R18 K124 [{"BackgroundColor", "BorderColor", "CornerRadius", "ImageColor3", "BorderThickness", "SelectedBorderColor", "Size"}]
  GETTABLEKS R19 R6 K125 ["ForegroundMain"]
  SETTABLEKS R19 R18 K120 ["BackgroundColor"]
  GETTABLEKS R19 R6 K101 ["ForegroundContrast"]
  SETTABLEKS R19 R18 K121 ["BorderColor"]
  GETIMPORT R19 K60 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K79 ["CornerRadius"]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 1
  LOADN R21 1
  LOADN R22 1
  CALL R19 3 1
  SETTABLEKS R19 R18 K50 ["ImageColor3"]
  LOADN R19 2
  SETTABLEKS R19 R18 K122 ["BorderThickness"]
  GETTABLEKS R19 R6 K126 ["ActionSelected"]
  SETTABLEKS R19 R18 K123 ["SelectedBorderColor"]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 128
  LOADN R21 128
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["Size"]
  SETTABLEKS R18 R17 K72 ["TextureItem"]
  GETTABLEKS R18 R8 K127 ["Button"]
  GETTABLEKS R19 R1 K128 ["join"]
  MOVE R20 R7
  LOADK R21 K127 ["Button"]
  CALL R20 1 1
  NEWTABLE R21 2 0
  NEWTABLE R22 4 0
  SETTABLEKS R10 R22 K129 ["Background"]
  DUPTABLE R23 K132 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R24 K134 [Vector2.new]
  LOADK R25 K69 [0.5]
  LOADK R26 K69 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K130 ["AnchorPoint"]
  LOADK R24 K135 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R24 R23 K16 ["Image"]
  GETTABLEKS R24 R6 K136 ["ButtonText"]
  SETTABLEKS R24 R23 K25 ["Color"]
  GETIMPORT R24 K32 [UDim2.fromScale]
  LOADK R25 K69 [0.5]
  LOADK R26 K69 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K131 ["Position"]
  GETIMPORT R24 K54 [UDim2.fromOffset]
  LOADN R25 18
  LOADN R26 18
  CALL R24 2 1
  SETTABLEKS R24 R23 K26 ["Size"]
  SETTABLEKS R23 R22 K137 ["BackgroundStyle"]
  GETTABLEKS R23 R13 K71 ["Hover"]
  DUPTABLE R24 K138 [{"BackgroundStyle"}]
  DUPTABLE R25 K132 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R26 K134 [Vector2.new]
  LOADK R27 K69 [0.5]
  LOADK R28 K69 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K130 ["AnchorPoint"]
  LOADK R26 K135 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R26 R25 K16 ["Image"]
  GETTABLEKS R26 R6 K139 ["BrightText"]
  SETTABLEKS R26 R25 K25 ["Color"]
  GETIMPORT R26 K32 [UDim2.fromScale]
  LOADK R27 K69 [0.5]
  LOADK R28 K69 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K131 ["Position"]
  GETIMPORT R26 K54 [UDim2.fromOffset]
  LOADN R27 18
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K26 ["Size"]
  SETTABLEKS R25 R24 K137 ["BackgroundStyle"]
  SETTABLE R24 R22 R23
  SETTABLEKS R22 R21 K140 ["&Close"]
  NEWTABLE R22 4 0
  SETTABLEKS R10 R22 K129 ["Background"]
  SETTABLEKS R16 R22 K137 ["BackgroundStyle"]
  GETTABLEKS R23 R13 K71 ["Hover"]
  DUPTABLE R24 K138 [{"BackgroundStyle"}]
  SETTABLEKS R16 R24 K137 ["BackgroundStyle"]
  SETTABLE R24 R22 R23
  SETTABLEKS R22 R21 K141 ["&ErrorClose"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  MOVE R18 R12
  CALL R18 0 1
  JUMPIFNOT R18 [+4]
  DUPCLOSURE R18 K142 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R15
  RETURN R18 1
  DUPCLOSURE R18 K143 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R17
  RETURN R18 1
