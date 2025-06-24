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
  GETTABLEKS R5 R4 K10 ["StyleKey"]
  GETTABLEKS R6 R4 K11 ["getRawComponentStyle"]
  GETTABLEKS R7 R4 K12 ["ComponentSymbols"]
  GETTABLEKS R8 R2 K13 ["UI"]
  GETTABLEKS R9 R8 K14 ["Image"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Flags"]
  GETTABLEKS R11 R12 K17 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K18 ["Util"]
  GETTABLEKS R11 R12 K19 ["StyleModifier"]
  GETTABLEKS R13 R3 K20 ["Resources"]
  GETTABLEKS R12 R13 K21 ["Theme"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K20 ["Resources"]
  GETTABLEKS R14 R15 K21 ["Theme"]
  CALL R13 1 1
  DUPTABLE R14 K24 [{"Image", "Color", "Size"}]
  LOADK R15 K25 ["rbxasset://textures/DevConsole/Close.png"]
  SETTABLEKS R15 R14 K14 ["Image"]
  GETTABLEKS R15 R5 K26 ["ErrorText"]
  SETTABLEKS R15 R14 K22 ["Color"]
  GETIMPORT R15 K29 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Size"]
  NEWTABLE R15 16 0
  DUPTABLE R16 K49 [{"GenerateButtonSize", "UploadButtonSize", "MultiLinePrompt", "Padding", "PromptHeight", "RowHeight", "Size", "VerticalSpacing", "ErrorPadding", "ErrorSpacing", "ErrorLabelSpacing", "RetryButtonSize", "ErrorMessageTextColor", "AddImageButtonIconColor", "AddImageButtonIconColorNoImage", "ImagePadding", "ImageCornerRadius", "ImageBackgroundColor3", "ImageColor3", "ImageBorderColor"}]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 80
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K30 ["GenerateButtonSize"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 32
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["UploadButtonSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K32 ["MultiLinePrompt"]
  LOADN R17 10
  SETTABLEKS R17 R16 K33 ["Padding"]
  MOVE R18 R10
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADN R17 88
  JUMP [+1]
  LOADN R17 64
  SETTABLEKS R17 R16 K34 ["PromptHeight"]
  LOADN R17 32
  SETTABLEKS R17 R16 K35 ["RowHeight"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 102
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  LOADN R17 6
  SETTABLEKS R17 R16 K36 ["VerticalSpacing"]
  LOADN R17 32
  SETTABLEKS R17 R16 K37 ["ErrorPadding"]
  LOADN R17 32
  SETTABLEKS R17 R16 K38 ["ErrorSpacing"]
  LOADN R17 8
  SETTABLEKS R17 R16 K39 ["ErrorLabelSpacing"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 0
  LOADN R19 150
  LOADN R20 0
  LOADN R21 44
  CALL R17 4 1
  SETTABLEKS R17 R16 K40 ["RetryButtonSize"]
  GETTABLEKS R17 R5 K54 ["TextSecondary"]
  SETTABLEKS R17 R16 K41 ["ErrorMessageTextColor"]
  GETTABLEKS R17 R5 K55 ["MainText"]
  SETTABLEKS R17 R16 K42 ["AddImageButtonIconColor"]
  GETTABLEKS R17 R5 K55 ["MainText"]
  SETTABLEKS R17 R16 K43 ["AddImageButtonIconColorNoImage"]
  LOADN R17 5
  SETTABLEKS R17 R16 K44 ["ImagePadding"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["ImageCornerRadius"]
  GETTABLEKS R17 R5 K58 ["InputFieldBackground"]
  SETTABLEKS R17 R16 K46 ["ImageBackgroundColor3"]
  GETIMPORT R17 K60 [Color3.new]
  LOADN R18 1
  LOADN R19 1
  LOADN R20 1
  CALL R17 3 1
  SETTABLEKS R17 R16 K47 ["ImageColor3"]
  GETTABLEKS R17 R5 K61 ["InputFieldBorder"]
  SETTABLEKS R17 R16 K48 ["ImageBorderColor"]
  SETTABLEKS R16 R15 K62 ["Header"]
  GETTABLEKS R16 R11 K63 ["Selected"]
  DUPTABLE R17 K64 [{"Header"}]
  DUPTABLE R18 K65 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
  GETIMPORT R19 K60 [Color3.new]
  LOADK R20 K66 [0.5]
  LOADK R21 K66 [0.5]
  LOADK R22 K66 [0.5]
  CALL R19 3 1
  SETTABLEKS R19 R18 K47 ["ImageColor3"]
  GETTABLEKS R19 R5 K67 ["InputFieldBorderSelected"]
  SETTABLEKS R19 R18 K48 ["ImageBorderColor"]
  GETIMPORT R19 K60 [Color3.new]
  LOADN R20 1
  LOADN R21 1
  LOADN R22 1
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["AddImageButtonIconColor"]
  SETTABLEKS R18 R17 K62 ["Header"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R11 K68 ["Hover"]
  DUPTABLE R17 K70 [{"Header", "TextureItem"}]
  DUPTABLE R18 K65 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
  GETIMPORT R19 K60 [Color3.new]
  LOADK R20 K66 [0.5]
  LOADK R21 K66 [0.5]
  LOADK R22 K66 [0.5]
  CALL R19 3 1
  SETTABLEKS R19 R18 K47 ["ImageColor3"]
  GETTABLEKS R19 R5 K71 ["InputFieldBorderHover"]
  SETTABLEKS R19 R18 K48 ["ImageBorderColor"]
  GETIMPORT R19 K60 [Color3.new]
  LOADN R20 1
  LOADN R21 1
  LOADN R22 1
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["AddImageButtonIconColor"]
  SETTABLEKS R18 R17 K62 ["Header"]
  DUPTABLE R18 K72 [{"ImageColor3"}]
  GETIMPORT R19 K60 [Color3.new]
  LOADK R20 K73 [0.9]
  LOADK R21 K73 [0.9]
  LOADK R22 K73 [0.9]
  CALL R19 3 1
  SETTABLEKS R19 R18 K47 ["ImageColor3"]
  SETTABLEKS R18 R17 K69 ["TextureItem"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K80 [{"Padding", "MaxWidth", "PrimaryColor", "CornerRadius", "CloseButtonPosition", "CloseButtonSize", "RightPadding"}]
  LOADN R17 32
  SETTABLEKS R17 R16 K33 ["Padding"]
  LOADN R17 144
  SETTABLEKS R17 R16 K74 ["MaxWidth"]
  GETTABLEKS R17 R5 K26 ["ErrorText"]
  SETTABLEKS R17 R16 K75 ["PrimaryColor"]
  LOADN R17 8
  SETTABLEKS R17 R16 K76 ["CornerRadius"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 1
  LOADN R19 19
  LOADK R20 K66 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K77 ["CloseButtonPosition"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 13
  LOADN R19 13
  CALL R17 2 1
  SETTABLEKS R17 R16 K78 ["CloseButtonSize"]
  LOADN R17 15
  SETTABLEKS R17 R16 K79 ["RightPadding"]
  SETTABLEKS R16 R15 K81 ["ErrorBox"]
  DUPTABLE R16 K84 [{"ErrorPadding", "ErrorInnerPadding", "ErrorMaxWidth"}]
  LOADN R17 8
  SETTABLEKS R17 R16 K37 ["ErrorPadding"]
  LOADN R17 12
  SETTABLEKS R17 R16 K82 ["ErrorInnerPadding"]
  LOADK R17 K85 [∞]
  SETTABLEKS R17 R16 K83 ["ErrorMaxWidth"]
  SETTABLEKS R16 R15 K86 ["MainView"]
  DUPTABLE R16 K97 [{"LabelWidth", "Padding", "PreviewHeight", "PreviewTileSize", "PrimarySettingsGroupBackgroundColor", "SaveAndApplyButtonSize", "ApplyButtonSize", "SettingsGroupPadding", "SettingsGroupSpacing", "SettingSpacing", "StudsPerTileSettingSize", "VerticalSpacing"}]
  LOADN R17 100
  SETTABLEKS R17 R16 K87 ["LabelWidth"]
  LOADN R17 8
  SETTABLEKS R17 R16 K33 ["Padding"]
  LOADN R17 192
  SETTABLEKS R17 R16 K88 ["PreviewHeight"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 0
  LOADN R19 192
  LOADN R20 0
  LOADN R21 192
  CALL R17 4 1
  SETTABLEKS R17 R16 K89 ["PreviewTileSize"]
  GETTABLEKS R17 R5 K98 ["ForegroundContrast"]
  SETTABLEKS R17 R16 K90 ["PrimarySettingsGroupBackgroundColor"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 220
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K91 ["SaveAndApplyButtonSize"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 120
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K92 ["ApplyButtonSize"]
  DUPTABLE R17 K101 [{"Left", "Right"}]
  LOADN R18 6
  SETTABLEKS R18 R17 K99 ["Left"]
  LOADN R18 6
  SETTABLEKS R18 R17 K100 ["Right"]
  SETTABLEKS R17 R16 K93 ["SettingsGroupPadding"]
  LOADN R17 10
  SETTABLEKS R17 R16 K94 ["SettingsGroupSpacing"]
  LOADN R17 6
  SETTABLEKS R17 R16 K95 ["SettingSpacing"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 32
  CALL R17 4 1
  SETTABLEKS R17 R16 K96 ["StudsPerTileSettingSize"]
  LOADN R17 6
  SETTABLEKS R17 R16 K36 ["VerticalSpacing"]
  SETTABLEKS R16 R15 K102 ["MaterialView"]
  DUPTABLE R16 K105 [{"CloseButtonSize", "ContentSize", "Transparency"}]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 24
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K78 ["CloseButtonSize"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 1
  LOADN R19 226
  LOADN R20 1
  LOADN R21 226
  CALL R17 4 1
  SETTABLEKS R17 R16 K103 ["ContentSize"]
  LOADK R17 K66 [0.5]
  SETTABLEKS R17 R16 K104 ["Transparency"]
  SETTABLEKS R16 R15 K106 ["ModalView"]
  DUPTABLE R16 K109 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R17 16
  SETTABLEKS R17 R16 K107 ["HorizontalSpacing"]
  GETIMPORT R17 K53 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 30
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  LOADN R17 30
  SETTABLEKS R17 R16 K108 ["ValueLabelWidth"]
  SETTABLEKS R16 R15 K110 ["Setting"]
  DUPTABLE R16 K113 [{"CellPadding", "CellSize", "Padding"}]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 6
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K111 ["CellPadding"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 128
  LOADN R19 128
  CALL R17 2 1
  SETTABLEKS R17 R16 K112 ["CellSize"]
  DUPTABLE R17 K115 [{"Top", "Left", "Right"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K114 ["Top"]
  LOADN R18 10
  SETTABLEKS R18 R17 K99 ["Left"]
  LOADN R18 10
  SETTABLEKS R18 R17 K100 ["Right"]
  SETTABLEKS R17 R16 K33 ["Padding"]
  SETTABLEKS R16 R15 K116 ["TextureBrowser"]
  DUPTABLE R16 K121 [{"BackgroundColor", "BorderColor", "CornerRadius", "ImageColor3", "BorderThickness", "SelectedBorderColor", "Size"}]
  GETTABLEKS R17 R5 K122 ["ForegroundMain"]
  SETTABLEKS R17 R16 K117 ["BackgroundColor"]
  GETTABLEKS R17 R5 K98 ["ForegroundContrast"]
  SETTABLEKS R17 R16 K118 ["BorderColor"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K76 ["CornerRadius"]
  GETIMPORT R17 K60 [Color3.new]
  LOADN R18 1
  LOADN R19 1
  LOADN R20 1
  CALL R17 3 1
  SETTABLEKS R17 R16 K47 ["ImageColor3"]
  LOADN R17 2
  SETTABLEKS R17 R16 K119 ["BorderThickness"]
  GETTABLEKS R17 R5 K123 ["ActionSelected"]
  SETTABLEKS R17 R16 K120 ["SelectedBorderColor"]
  GETIMPORT R17 K51 [UDim2.fromOffset]
  LOADN R18 128
  LOADN R19 128
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["Size"]
  SETTABLEKS R16 R15 K69 ["TextureItem"]
  GETTABLEKS R16 R7 K124 ["Button"]
  GETTABLEKS R17 R1 K125 ["join"]
  MOVE R18 R6
  LOADK R19 K124 ["Button"]
  CALL R18 1 1
  NEWTABLE R19 2 0
  NEWTABLE R20 4 0
  SETTABLEKS R9 R20 K126 ["Background"]
  DUPTABLE R21 K129 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R22 K131 [Vector2.new]
  LOADK R23 K66 [0.5]
  LOADK R24 K66 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K127 ["AnchorPoint"]
  LOADK R22 K132 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R22 R21 K14 ["Image"]
  GETTABLEKS R22 R5 K133 ["ButtonText"]
  SETTABLEKS R22 R21 K22 ["Color"]
  GETIMPORT R22 K29 [UDim2.fromScale]
  LOADK R23 K66 [0.5]
  LOADK R24 K66 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K128 ["Position"]
  GETIMPORT R22 K51 [UDim2.fromOffset]
  LOADN R23 18
  LOADN R24 18
  CALL R22 2 1
  SETTABLEKS R22 R21 K23 ["Size"]
  SETTABLEKS R21 R20 K134 ["BackgroundStyle"]
  GETTABLEKS R21 R11 K68 ["Hover"]
  DUPTABLE R22 K135 [{"BackgroundStyle"}]
  DUPTABLE R23 K129 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R24 K131 [Vector2.new]
  LOADK R25 K66 [0.5]
  LOADK R26 K66 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K127 ["AnchorPoint"]
  LOADK R24 K132 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R24 R23 K14 ["Image"]
  GETTABLEKS R24 R5 K136 ["BrightText"]
  SETTABLEKS R24 R23 K22 ["Color"]
  GETIMPORT R24 K29 [UDim2.fromScale]
  LOADK R25 K66 [0.5]
  LOADK R26 K66 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K128 ["Position"]
  GETIMPORT R24 K51 [UDim2.fromOffset]
  LOADN R25 18
  LOADN R26 18
  CALL R24 2 1
  SETTABLEKS R24 R23 K23 ["Size"]
  SETTABLEKS R23 R22 K134 ["BackgroundStyle"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K137 ["&Close"]
  NEWTABLE R20 4 0
  SETTABLEKS R9 R20 K126 ["Background"]
  SETTABLEKS R14 R20 K134 ["BackgroundStyle"]
  GETTABLEKS R21 R11 K68 ["Hover"]
  DUPTABLE R22 K135 [{"BackgroundStyle"}]
  SETTABLEKS R14 R22 K134 ["BackgroundStyle"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K138 ["&ErrorClose"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  DUPCLOSURE R16 K139 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R13
  RETURN R16 1
