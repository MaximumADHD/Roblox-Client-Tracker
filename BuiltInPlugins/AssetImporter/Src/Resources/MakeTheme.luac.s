PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
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
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R3 R2 K8 ["StyleKey"]
  GETTABLEKS R5 R1 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["StyleModifier"]
  GETTABLEKS R6 R2 K11 ["Themes"]
  GETTABLEKS R5 R6 K12 ["BaseTheme"]
  GETTABLEKS R7 R2 K11 ["Themes"]
  GETTABLEKS R6 R7 K13 ["StudioTheme"]
  GETTABLEKS R7 R2 K14 ["ComponentSymbols"]
  GETTABLEKS R8 R1 K15 ["UIData"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R8 K16 ["ExpandablePane"]
  GETTABLEKS R10 R11 K17 ["style"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K18 ["&Section"]
  GETTABLEKS R11 R9 K19 ["Content"]
  GETTABLEKS R12 R1 K20 ["Dash"]
  GETTABLEKS R13 R12 K21 ["join"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K22 ["Src"]
  GETTABLEKS R16 R17 K23 ["Flags"]
  GETTABLEKS R15 R16 K24 ["getFFlagRigVisualizationMetrics"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K22 ["Src"]
  GETTABLEKS R17 R18 K23 ["Flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagAssetImporterCustomPresets"]
  CALL R15 1 1
  NEWTABLE R16 16 0
  DUPTABLE R17 K34 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R18 8 0
  GETTABLEKS R19 R3 K35 ["MainText"]
  SETTABLEKS R19 R18 K36 ["Color"]
  LOADK R19 K37 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R19 R18 K38 ["Image"]
  GETIMPORT R19 K41 [Vector2.new]
  LOADN R20 12
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["ImageRectOffset"]
  GETIMPORT R19 K41 [Vector2.new]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K43 ["ImageRectSize"]
  GETIMPORT R19 K46 [UDim2.fromOffset]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Size"]
  GETTABLEKS R19 R4 K47 ["Selected"]
  DUPTABLE R20 K48 [{"ImageRectOffset"}]
  GETIMPORT R21 K41 [Vector2.new]
  LOADN R22 24
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K42 ["ImageRectOffset"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K26 ["Arrow"]
  GETTABLEKS R18 R3 K49 ["Titlebar"]
  SETTABLEKS R18 R17 K27 ["Background"]
  GETIMPORT R18 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K28 ["HorizontalAlignment"]
  DUPTABLE R18 K54 [{"Left", "Right"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K51 ["Left"]
  LOADN R19 10
  SETTABLEKS R19 R18 K53 ["Right"]
  SETTABLEKS R18 R17 K29 ["Padding"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K30 ["Size"]
  LOADN R18 6
  SETTABLEKS R18 R17 K31 ["Spacing"]
  DUPTABLE R18 K59 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R19 K61 [Enum.Font.SourceSansBold]
  SETTABLEKS R19 R18 K56 ["Font"]
  GETTABLEKS R19 R3 K62 ["TitlebarText"]
  SETTABLEKS R19 R18 K57 ["TextColor"]
  LOADN R19 18
  SETTABLEKS R19 R18 K58 ["TextSize"]
  SETTABLEKS R18 R17 K32 ["Text"]
  GETIMPORT R18 K64 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K33 ["VerticalAlignment"]
  SETTABLEKS R17 R16 K65 ["PropertySectionHeader"]
  DUPTABLE R17 K70 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K66 ["IconSize"]
  LOADN R18 4
  SETTABLEKS R18 R17 K31 ["Spacing"]
  LOADN R18 10
  SETTABLEKS R18 R17 K67 ["ScrollBarOffset"]
  LOADN R18 28
  SETTABLEKS R18 R17 K68 ["Height"]
  LOADN R18 24
  SETTABLEKS R18 R17 K69 ["EditorHeight"]
  SETTABLEKS R17 R16 K71 ["PropertyView"]
  DUPTABLE R17 K77 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R18 50
  SETTABLEKS R18 R17 K72 ["DropdownHeight"]
  LOADN R18 14
  SETTABLEKS R18 R17 K73 ["SubtextSize"]
  GETTABLEKS R18 R3 K78 ["DimmedText"]
  SETTABLEKS R18 R17 K74 ["SubtextColor"]
  LOADN R18 3
  SETTABLEKS R18 R17 K75 ["SubtextOffset"]
  LOADN R18 8
  SETTABLEKS R18 R17 K76 ["DropdownScrollbarSize"]
  SETTABLEKS R17 R16 K79 ["SuggestionDropdown"]
  DUPTABLE R17 K88 [{"ButtonSize", "Padding", "Spacing", "ResetButtonImage", "ResetButtonSize", "ResetButtonImageSize", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 0
  LOADN R20 80
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K80 ["ButtonSize"]
  DUPTABLE R18 K91 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K51 ["Left"]
  LOADN R19 6
  SETTABLEKS R19 R18 K89 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K53 ["Right"]
  LOADN R19 5
  SETTABLEKS R19 R18 K90 ["Bottom"]
  SETTABLEKS R18 R17 K29 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K31 ["Spacing"]
  GETTABLEKS R18 R3 K92 ["RefreshImage"]
  SETTABLEKS R18 R17 K81 ["ResetButtonImage"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 0
  LOADN R20 32
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K82 ["ResetButtonSize"]
  GETIMPORT R18 K46 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K83 ["ResetButtonImageSize"]
  GETIMPORT R18 K46 [UDim2.fromOffset]
  LOADN R19 175
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K84 ["TemplateDropDown"]
  MOVE R19 R15
  CALL R19 0 1
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R3 K85 ["MenuImage"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K85 ["MenuImage"]
  GETIMPORT R18 K46 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K86 ["MenuButtonSize"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 40
  CALL R18 4 1
  SETTABLEKS R18 R17 K87 ["MenuItemSize"]
  SETTABLEKS R17 R16 K93 ["TopBar"]
  DUPTABLE R17 K98 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R18 K41 [Vector2.new]
  LOADN R19 44
  LOADN R20 125
  CALL R18 2 1
  SETTABLEKS R18 R17 K94 ["CreateMinContentSize"]
  GETIMPORT R18 K41 [Vector2.new]
  LOADN R19 44
  LOADN R20 100
  CALL R18 2 1
  SETTABLEKS R18 R17 K95 ["RenameMinContentSize"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 0
  LOADN R20 75
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K96 ["LabelSize"]
  LOADN R18 10
  SETTABLEKS R18 R17 K29 ["Padding"]
  GETIMPORT R18 K46 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K97 ["TextboxSize"]
  SETTABLEKS R17 R16 K99 ["PresetNamePrompt"]
  DUPTABLE R17 K106 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R18 R3 K100 ["ResetCameraImage"]
  SETTABLEKS R18 R17 K100 ["ResetCameraImage"]
  GETTABLEKS R18 R3 K101 ["ShowWorkspaceImage"]
  SETTABLEKS R18 R17 K101 ["ShowWorkspaceImage"]
  GETTABLEKS R18 R3 K102 ["ShowRigVisualizationImage"]
  SETTABLEKS R18 R17 K102 ["ShowRigVisualizationImage"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 0
  LOADN R20 28
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K103 ["OptionIconSize"]
  DUPTABLE R18 K108 [{"Size", "Position", "Padding", "Spacing"}]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 0
  LOADN R21 28
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K30 ["Size"]
  MOVE R20 R14
  CALL R20 0 1
  JUMPIFNOT R20 [+8]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 1
  LOADN R21 218
  LOADN R22 0
  LOADN R23 10
  CALL R19 4 1
  JUMP [+7]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 1
  LOADN R21 218
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K107 ["Position"]
  MOVE R20 R14
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+13]
  DUPTABLE R19 K91 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K51 ["Left"]
  LOADN R20 10
  SETTABLEKS R20 R19 K89 ["Top"]
  LOADN R20 0
  SETTABLEKS R20 R19 K53 ["Right"]
  LOADN R20 0
  SETTABLEKS R20 R19 K90 ["Bottom"]
  SETTABLEKS R19 R18 K29 ["Padding"]
  LOADN R19 2
  SETTABLEKS R19 R18 K31 ["Spacing"]
  SETTABLEKS R18 R17 K104 ["PreviewButtonBar"]
  DUPTABLE R18 K111 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R19 K114 [Color3.fromRGB]
  LOADN R20 170
  LOADN R21 185
  LOADN R22 200
  CALL R19 3 1
  SETTABLEKS R19 R18 K109 ["Ambient"]
  GETIMPORT R19 K114 [Color3.fromRGB]
  LOADN R20 242
  LOADN R21 236
  LOADN R22 227
  CALL R19 3 1
  SETTABLEKS R19 R18 K36 ["Color"]
  LOADK R20 K115 [0.5]
  LOADN R21 255
  LOADK R22 K116 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R19 K118 [Vector3.new]
  CALL R19 3 1
  SETTABLEKS R19 R18 K110 ["Direction"]
  SETTABLEKS R18 R17 K105 ["Lighting"]
  SETTABLEKS R17 R16 K119 ["PreviewWindow"]
  DUPTABLE R17 K120 [{"Padding", "Spacing"}]
  DUPTABLE R18 K91 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 6
  SETTABLEKS R19 R18 K51 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K89 ["Top"]
  LOADN R19 6
  SETTABLEKS R19 R18 K53 ["Right"]
  LOADN R19 3
  SETTABLEKS R19 R18 K90 ["Bottom"]
  SETTABLEKS R18 R17 K29 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K31 ["Spacing"]
  SETTABLEKS R17 R16 K121 ["TreeViewToolbar"]
  DUPTABLE R17 K128 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K122 ["IndicatorOffset"]
  LOADN R18 100
  SETTABLEKS R18 R17 K123 ["IndicatorSize"]
  LOADK R18 K115 [0.5]
  SETTABLEKS R18 R17 K124 ["PreviewRatio"]
  LOADN R18 24
  SETTABLEKS R18 R17 K125 ["StatusMessagePadding"]
  LOADN R18 30
  SETTABLEKS R18 R17 K126 ["ToolbarHeight"]
  LOADN R18 40
  SETTABLEKS R18 R17 K127 ["TopBarHeight"]
  SETTABLEKS R17 R16 K129 ["Sizes"]
  DUPTABLE R17 K138 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K130 ["Width"]
  LOADN R18 100
  SETTABLEKS R18 R17 K68 ["Height"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K131 ["TextLabelSize"]
  LOADN R18 24
  SETTABLEKS R18 R17 K58 ["TextSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K73 ["SubtextSize"]
  GETIMPORT R18 K140 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K132 ["TextAlignment"]
  LOADN R18 12
  SETTABLEKS R18 R17 K133 ["LoadingBarHeight"]
  GETIMPORT R18 K55 [UDim2.new]
  LOADK R19 K141 [0.8]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 10
  CALL R18 4 1
  SETTABLEKS R18 R17 K134 ["LoadingBarContainerSize"]
  GETIMPORT R18 K114 [Color3.fromRGB]
  LOADN R19 2
  LOADN R20 183
  LOADN R21 87
  CALL R18 3 1
  SETTABLEKS R18 R17 K135 ["SuccessColor"]
  GETIMPORT R18 K114 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K136 ["FailureColor"]
  DUPTABLE R18 K91 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K51 ["Left"]
  LOADN R19 20
  SETTABLEKS R19 R18 K89 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K53 ["Right"]
  LOADN R19 10
  SETTABLEKS R19 R18 K90 ["Bottom"]
  SETTABLEKS R18 R17 K137 ["TopPadding"]
  SETTABLEKS R17 R16 K142 ["UploadWidget"]
  DUPTABLE R17 K144 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R18 100
  SETTABLEKS R18 R17 K68 ["Height"]
  LOADN R18 48
  SETTABLEKS R18 R17 K66 ["IconSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K143 ["IconSpacing"]
  LOADN R18 18
  SETTABLEKS R18 R17 K73 ["SubtextSize"]
  LOADN R18 24
  SETTABLEKS R18 R17 K58 ["TextSize"]
  LOADN R18 244
  SETTABLEKS R18 R17 K130 ["Width"]
  SETTABLEKS R17 R16 K145 ["ErrorWidget"]
  DUPTABLE R17 K146 [{"Image"}]
  LOADK R18 K147 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R18 R17 K38 ["Image"]
  SETTABLEKS R17 R16 K148 ["ErrorIcon"]
  DUPTABLE R17 K146 [{"Image"}]
  LOADK R18 K149 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R18 R17 K38 ["Image"]
  SETTABLEKS R17 R16 K150 ["WarningIcon"]
  DUPTABLE R17 K151 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K114 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K57 ["TextColor"]
  GETIMPORT R18 K152 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K139 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K58 ["TextSize"]
  SETTABLEKS R17 R16 K153 ["ErrorStatus"]
  DUPTABLE R17 K151 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K114 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 170
  LOADN R21 33
  CALL R18 3 1
  SETTABLEKS R18 R17 K57 ["TextColor"]
  GETIMPORT R18 K152 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K139 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K58 ["TextSize"]
  SETTABLEKS R17 R16 K154 ["WarningStatus"]
  GETTABLEKS R17 R7 K16 ["ExpandablePane"]
  MOVE R18 R13
  GETTABLEKS R20 R7 K16 ["ExpandablePane"]
  GETTABLE R19 R5 R20
  NEWTABLE R20 1 0
  MOVE R21 R13
  MOVE R22 R10
  DUPTABLE R23 K155 [{"Content"}]
  MOVE R24 R13
  MOVE R25 R11
  DUPTABLE R26 K156 [{"Padding"}]
  DUPTABLE R27 K91 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R28 4
  SETTABLEKS R28 R27 K51 ["Left"]
  LOADN R28 10
  SETTABLEKS R28 R27 K89 ["Top"]
  LOADN R28 4
  SETTABLEKS R28 R27 K53 ["Right"]
  LOADN R28 10
  SETTABLEKS R28 R27 K90 ["Bottom"]
  SETTABLEKS R27 R26 K29 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K19 ["Content"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K157 ["&ImportTree"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  NEWTABLE R17 8 0
  GETTABLEKS R18 R3 K92 ["RefreshImage"]
  LOADK R19 K158 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R3 K100 ["ResetCameraImage"]
  LOADK R19 K159 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R3 K102 ["ShowRigVisualizationImage"]
  LOADK R19 K160 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R3 K101 ["ShowWorkspaceImage"]
  LOADK R19 K161 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R3 K85 ["MenuImage"]
  MOVE R20 R15
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADK R19 K162 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  JUMP [+1]
  LOADNIL R19
  SETTABLE R19 R17 R18
  NEWTABLE R18 8 0
  GETTABLEKS R19 R3 K92 ["RefreshImage"]
  LOADK R20 K163 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R3 K100 ["ResetCameraImage"]
  LOADK R20 K164 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R3 K102 ["ShowRigVisualizationImage"]
  LOADK R20 K165 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R3 K101 ["ShowWorkspaceImage"]
  LOADK R20 K166 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R3 K85 ["MenuImage"]
  MOVE R21 R15
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADK R20 K167 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  JUMP [+1]
  LOADNIL R20
  SETTABLE R20 R18 R19
  DUPCLOSURE R19 K168 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R16
  RETURN R19 1
