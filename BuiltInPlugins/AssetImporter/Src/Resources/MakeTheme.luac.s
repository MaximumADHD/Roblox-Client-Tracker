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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StyleModifier"]
  GETTABLEKS R6 R2 K12 ["Themes"]
  GETTABLEKS R5 R6 K13 ["BaseTheme"]
  GETTABLEKS R7 R2 K12 ["Themes"]
  GETTABLEKS R6 R7 K14 ["StudioTheme"]
  GETTABLEKS R7 R2 K15 ["ComponentSymbols"]
  GETTABLEKS R8 R1 K16 ["UIData"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R8 K17 ["ExpandablePane"]
  GETTABLEKS R10 R11 K18 ["style"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K19 ["&Section"]
  GETTABLEKS R11 R9 K20 ["Content"]
  GETTABLEKS R12 R1 K21 ["Dash"]
  GETTABLEKS R13 R12 K22 ["join"]
  NEWTABLE R14 16 0
  DUPTABLE R15 K31 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R3 K32 ["MainText"]
  SETTABLEKS R17 R16 K33 ["Color"]
  LOADK R17 K34 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K35 ["Image"]
  GETIMPORT R17 K38 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["ImageRectOffset"]
  GETIMPORT R17 K38 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["ImageRectSize"]
  GETIMPORT R17 K43 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["Size"]
  GETTABLEKS R17 R4 K44 ["Selected"]
  DUPTABLE R18 K45 [{"ImageRectOffset"}]
  GETIMPORT R19 K38 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K39 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K23 ["Arrow"]
  GETTABLEKS R16 R3 K46 ["Titlebar"]
  SETTABLEKS R16 R15 K24 ["Background"]
  GETIMPORT R16 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K25 ["HorizontalAlignment"]
  DUPTABLE R16 K51 [{"Left", "Right"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K48 ["Left"]
  LOADN R17 10
  SETTABLEKS R17 R16 K50 ["Right"]
  SETTABLEKS R16 R15 K26 ["Padding"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  LOADN R16 6
  SETTABLEKS R16 R15 K28 ["Spacing"]
  DUPTABLE R16 K56 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R17 K58 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K53 ["Font"]
  GETTABLEKS R17 R3 K59 ["TitlebarText"]
  SETTABLEKS R17 R16 K54 ["TextColor"]
  LOADN R17 18
  SETTABLEKS R17 R16 K55 ["TextSize"]
  SETTABLEKS R16 R15 K29 ["Text"]
  GETIMPORT R16 K61 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K30 ["VerticalAlignment"]
  SETTABLEKS R15 R14 K62 ["PropertySectionHeader"]
  DUPTABLE R15 K69 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K63 ["IconSize"]
  LOADN R16 4
  SETTABLEKS R16 R15 K28 ["Spacing"]
  LOADN R16 10
  SETTABLEKS R16 R15 K64 ["ScrollBarOffset"]
  LOADN R16 28
  SETTABLEKS R16 R15 K65 ["Height"]
  LOADN R16 24
  SETTABLEKS R16 R15 K66 ["EditorHeight"]
  LOADN R16 10
  SETTABLEKS R16 R15 K67 ["IconSpacing"]
  LOADN R16 28
  SETTABLEKS R16 R15 K68 ["FilePickerSize"]
  SETTABLEKS R15 R14 K70 ["PropertyView"]
  DUPTABLE R15 K76 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R16 50
  SETTABLEKS R16 R15 K71 ["DropdownHeight"]
  LOADN R16 14
  SETTABLEKS R16 R15 K72 ["SubtextSize"]
  GETTABLEKS R16 R3 K77 ["DimmedText"]
  SETTABLEKS R16 R15 K73 ["SubtextColor"]
  LOADN R16 3
  SETTABLEKS R16 R15 K74 ["SubtextOffset"]
  LOADN R16 8
  SETTABLEKS R16 R15 K75 ["DropdownScrollbarSize"]
  SETTABLEKS R15 R14 K78 ["SuggestionDropdown"]
  DUPTABLE R15 K84 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 0
  LOADN R18 80
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K79 ["ButtonSize"]
  DUPTABLE R16 K87 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K48 ["Left"]
  LOADN R17 6
  SETTABLEKS R17 R16 K85 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K50 ["Right"]
  LOADN R17 5
  SETTABLEKS R17 R16 K86 ["Bottom"]
  SETTABLEKS R16 R15 K26 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K28 ["Spacing"]
  GETIMPORT R16 K43 [UDim2.fromOffset]
  LOADN R17 175
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K80 ["TemplateDropDown"]
  GETTABLEKS R16 R3 K81 ["MenuImage"]
  SETTABLEKS R16 R15 K81 ["MenuImage"]
  GETIMPORT R16 K43 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K82 ["MenuButtonSize"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K83 ["MenuItemSize"]
  SETTABLEKS R15 R14 K88 ["TopBar"]
  DUPTABLE R15 K93 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R16 K38 [Vector2.new]
  LOADN R17 44
  LOADN R18 125
  CALL R16 2 1
  SETTABLEKS R16 R15 K89 ["CreateMinContentSize"]
  GETIMPORT R16 K38 [Vector2.new]
  LOADN R17 44
  LOADN R18 100
  CALL R16 2 1
  SETTABLEKS R16 R15 K90 ["RenameMinContentSize"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 0
  LOADN R18 75
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K91 ["LabelSize"]
  LOADN R16 10
  SETTABLEKS R16 R15 K26 ["Padding"]
  GETIMPORT R16 K43 [UDim2.fromOffset]
  LOADN R17 200
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K92 ["TextboxSize"]
  SETTABLEKS R15 R14 K94 ["PresetNamePrompt"]
  DUPTABLE R15 K101 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R16 R3 K95 ["ResetCameraImage"]
  SETTABLEKS R16 R15 K95 ["ResetCameraImage"]
  GETTABLEKS R16 R3 K96 ["ShowWorkspaceImage"]
  SETTABLEKS R16 R15 K96 ["ShowWorkspaceImage"]
  GETTABLEKS R16 R3 K97 ["ShowRigVisualizationImage"]
  SETTABLEKS R16 R15 K97 ["ShowRigVisualizationImage"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 0
  LOADN R18 28
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K98 ["OptionIconSize"]
  DUPTABLE R16 K103 [{"Size", "Position", "Spacing"}]
  GETIMPORT R17 K52 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K27 ["Size"]
  GETIMPORT R17 K52 [UDim2.new]
  LOADN R18 1
  LOADN R19 218
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K102 ["Position"]
  LOADN R17 2
  SETTABLEKS R17 R16 K28 ["Spacing"]
  SETTABLEKS R16 R15 K99 ["PreviewButtonBar"]
  DUPTABLE R16 K106 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R17 K109 [Color3.fromRGB]
  LOADN R18 170
  LOADN R19 185
  LOADN R20 200
  CALL R17 3 1
  SETTABLEKS R17 R16 K104 ["Ambient"]
  GETIMPORT R17 K109 [Color3.fromRGB]
  LOADN R18 242
  LOADN R19 236
  LOADN R20 227
  CALL R17 3 1
  SETTABLEKS R17 R16 K33 ["Color"]
  LOADK R18 K110 [0.5]
  LOADN R19 255
  LOADK R20 K111 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K113 [Vector3.new]
  CALL R17 3 1
  SETTABLEKS R17 R16 K105 ["Direction"]
  SETTABLEKS R16 R15 K100 ["Lighting"]
  SETTABLEKS R15 R14 K114 ["PreviewWindow"]
  DUPTABLE R15 K115 [{"Padding", "Spacing"}]
  DUPTABLE R16 K87 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K48 ["Left"]
  LOADN R17 4
  SETTABLEKS R17 R16 K85 ["Top"]
  LOADN R17 6
  SETTABLEKS R17 R16 K50 ["Right"]
  LOADN R17 3
  SETTABLEKS R17 R16 K86 ["Bottom"]
  SETTABLEKS R16 R15 K26 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K28 ["Spacing"]
  SETTABLEKS R15 R14 K116 ["TreeViewToolbar"]
  DUPTABLE R15 K123 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K117 ["IndicatorOffset"]
  LOADN R16 100
  SETTABLEKS R16 R15 K118 ["IndicatorSize"]
  LOADK R16 K110 [0.5]
  SETTABLEKS R16 R15 K119 ["PreviewRatio"]
  LOADN R16 24
  SETTABLEKS R16 R15 K120 ["StatusMessagePadding"]
  LOADN R16 30
  SETTABLEKS R16 R15 K121 ["ToolbarHeight"]
  LOADN R16 40
  SETTABLEKS R16 R15 K122 ["TopBarHeight"]
  SETTABLEKS R15 R14 K124 ["Sizes"]
  DUPTABLE R15 K133 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R16 244
  SETTABLEKS R16 R15 K125 ["Width"]
  LOADN R16 100
  SETTABLEKS R16 R15 K65 ["Height"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 22
  CALL R16 4 1
  SETTABLEKS R16 R15 K126 ["TextLabelSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K55 ["TextSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K72 ["SubtextSize"]
  GETIMPORT R16 K135 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K127 ["TextAlignment"]
  LOADN R16 12
  SETTABLEKS R16 R15 K128 ["LoadingBarHeight"]
  GETIMPORT R16 K52 [UDim2.new]
  LOADK R17 K136 [0.8]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 10
  CALL R16 4 1
  SETTABLEKS R16 R15 K129 ["LoadingBarContainerSize"]
  GETIMPORT R16 K109 [Color3.fromRGB]
  LOADN R17 2
  LOADN R18 183
  LOADN R19 87
  CALL R16 3 1
  SETTABLEKS R16 R15 K130 ["SuccessColor"]
  GETIMPORT R16 K109 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K131 ["FailureColor"]
  DUPTABLE R16 K87 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K48 ["Left"]
  LOADN R17 20
  SETTABLEKS R17 R16 K85 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K50 ["Right"]
  LOADN R17 10
  SETTABLEKS R17 R16 K86 ["Bottom"]
  SETTABLEKS R16 R15 K132 ["TopPadding"]
  SETTABLEKS R15 R14 K137 ["UploadWidget"]
  DUPTABLE R15 K138 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R16 100
  SETTABLEKS R16 R15 K65 ["Height"]
  LOADN R16 48
  SETTABLEKS R16 R15 K63 ["IconSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K67 ["IconSpacing"]
  LOADN R16 18
  SETTABLEKS R16 R15 K72 ["SubtextSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K55 ["TextSize"]
  LOADN R16 244
  SETTABLEKS R16 R15 K125 ["Width"]
  SETTABLEKS R15 R14 K139 ["ErrorWidget"]
  DUPTABLE R15 K140 [{"Image"}]
  LOADK R16 K141 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R16 R15 K35 ["Image"]
  SETTABLEKS R15 R14 K142 ["ErrorIcon"]
  DUPTABLE R15 K140 [{"Image"}]
  LOADK R16 K143 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R16 R15 K35 ["Image"]
  SETTABLEKS R15 R14 K144 ["WarningIcon"]
  DUPTABLE R15 K145 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K109 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["TextColor"]
  GETIMPORT R16 K146 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K134 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K55 ["TextSize"]
  SETTABLEKS R15 R14 K147 ["ErrorStatus"]
  DUPTABLE R15 K145 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K109 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 170
  LOADN R19 33
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["TextColor"]
  GETIMPORT R16 K146 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K134 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K55 ["TextSize"]
  SETTABLEKS R15 R14 K148 ["WarningStatus"]
  GETTABLEKS R15 R7 K17 ["ExpandablePane"]
  MOVE R16 R13
  GETTABLEKS R18 R7 K17 ["ExpandablePane"]
  GETTABLE R17 R5 R18
  NEWTABLE R18 1 0
  MOVE R19 R13
  MOVE R20 R10
  DUPTABLE R21 K149 [{"Content"}]
  MOVE R22 R13
  MOVE R23 R11
  DUPTABLE R24 K150 [{"Padding"}]
  DUPTABLE R25 K87 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R26 4
  SETTABLEKS R26 R25 K48 ["Left"]
  LOADN R26 10
  SETTABLEKS R26 R25 K85 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K50 ["Right"]
  LOADN R26 10
  SETTABLEKS R26 R25 K86 ["Bottom"]
  SETTABLEKS R25 R24 K26 ["Padding"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K20 ["Content"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K151 ["&ImportTree"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 8 0
  GETTABLEKS R16 R3 K152 ["RefreshImage"]
  LOADK R17 K153 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K95 ["ResetCameraImage"]
  LOADK R17 K154 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K97 ["ShowRigVisualizationImage"]
  LOADK R17 K155 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K96 ["ShowWorkspaceImage"]
  LOADK R17 K156 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K81 ["MenuImage"]
  LOADK R17 K157 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R17 R15 R16
  NEWTABLE R16 8 0
  GETTABLEKS R17 R3 K152 ["RefreshImage"]
  LOADK R18 K158 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K95 ["ResetCameraImage"]
  LOADK R18 K159 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K97 ["ShowRigVisualizationImage"]
  LOADK R18 K160 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K96 ["ShowWorkspaceImage"]
  LOADK R18 K161 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K81 ["MenuImage"]
  LOADK R18 K162 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  DUPCLOSURE R17 K163 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  RETURN R17 1
