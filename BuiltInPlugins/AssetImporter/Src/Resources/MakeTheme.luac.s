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
  NEWTABLE R14 32 0
  DUPTABLE R15 K25 [{"SmallLength", "LargeLength"}]
  LOADN R16 16
  SETTABLEKS R16 R15 K23 ["SmallLength"]
  LOADN R16 32
  SETTABLEKS R16 R15 K24 ["LargeLength"]
  SETTABLEKS R15 R14 K26 ["Icons"]
  DUPTABLE R15 K38 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
  GETTABLEKS R16 R3 K27 ["CleanupImage"]
  SETTABLEKS R16 R15 K27 ["CleanupImage"]
  LOADN R16 40
  SETTABLEKS R16 R15 K28 ["ControlsHeight"]
  LOADK R16 K39 [0.5]
  SETTABLEKS R16 R15 K29 ["DisabledTransparancy"]
  LOADN R16 120
  SETTABLEKS R16 R15 K30 ["ImportButtonWidth"]
  LOADN R16 8
  SETTABLEKS R16 R15 K31 ["LoadingBarWidth"]
  GETTABLEKS R16 R3 K32 ["OpenImage"]
  SETTABLEKS R16 R15 K32 ["OpenImage"]
  LOADN R16 8
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 75
  SETTABLEKS R16 R15 K34 ["ProgressBarHeight"]
  GETIMPORT R16 K42 [Vector2.new]
  LOADN R17 139
  LOADN R18 64
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["WindowSize"]
  LOADN R16 2
  SETTABLEKS R16 R15 K36 ["IconPadding"]
  LOADN R16 24
  SETTABLEKS R16 R15 K37 ["IconButtonSize"]
  SETTABLEKS R15 R14 K43 ["ImportQueue"]
  DUPTABLE R15 K45 [{"Padding", "RowHeight"}]
  LOADN R16 4
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 28
  SETTABLEKS R16 R15 K44 ["RowHeight"]
  SETTABLEKS R15 R14 K46 ["AssetList"]
  DUPTABLE R15 K47 [{"Padding"}]
  DUPTABLE R16 K52 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R17 K54 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K48 ["PaddingTop"]
  GETIMPORT R17 K54 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["PaddingRight"]
  GETIMPORT R17 K54 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K50 ["PaddingBottom"]
  GETIMPORT R17 K54 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingLeft"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  SETTABLEKS R15 R14 K55 ["AssetListCell"]
  DUPTABLE R15 K63 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R3 K64 ["MainText"]
  SETTABLEKS R17 R16 K65 ["Color"]
  LOADK R17 K66 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K67 ["Image"]
  GETIMPORT R17 K42 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K68 ["ImageRectOffset"]
  GETIMPORT R17 K42 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K69 ["ImageRectSize"]
  GETIMPORT R17 K72 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Size"]
  GETTABLEKS R17 R4 K73 ["Selected"]
  DUPTABLE R18 K74 [{"ImageRectOffset"}]
  GETIMPORT R19 K42 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K68 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K56 ["Arrow"]
  GETTABLEKS R16 R3 K75 ["Titlebar"]
  SETTABLEKS R16 R15 K57 ["Background"]
  GETIMPORT R16 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K58 ["HorizontalAlignment"]
  DUPTABLE R16 K80 [{"Left", "Right"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K77 ["Left"]
  LOADN R17 10
  SETTABLEKS R17 R16 K79 ["Right"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K59 ["Size"]
  LOADN R16 6
  SETTABLEKS R16 R15 K60 ["Spacing"]
  DUPTABLE R16 K85 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R17 K87 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K82 ["Font"]
  GETTABLEKS R17 R3 K88 ["TitlebarText"]
  SETTABLEKS R17 R16 K83 ["TextColor"]
  LOADN R17 18
  SETTABLEKS R17 R16 K84 ["TextSize"]
  SETTABLEKS R16 R15 K61 ["Text"]
  GETIMPORT R16 K90 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K62 ["VerticalAlignment"]
  SETTABLEKS R15 R14 K91 ["PropertySectionHeader"]
  DUPTABLE R15 K98 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K92 ["IconSize"]
  LOADN R16 4
  SETTABLEKS R16 R15 K60 ["Spacing"]
  LOADN R16 10
  SETTABLEKS R16 R15 K93 ["ScrollBarOffset"]
  LOADN R16 28
  SETTABLEKS R16 R15 K94 ["Height"]
  LOADN R16 24
  SETTABLEKS R16 R15 K95 ["EditorHeight"]
  LOADN R16 10
  SETTABLEKS R16 R15 K96 ["IconSpacing"]
  LOADN R16 28
  SETTABLEKS R16 R15 K97 ["FilePickerSize"]
  SETTABLEKS R15 R14 K99 ["PropertyView"]
  DUPTABLE R15 K105 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R16 50
  SETTABLEKS R16 R15 K100 ["DropdownHeight"]
  LOADN R16 14
  SETTABLEKS R16 R15 K101 ["SubtextSize"]
  GETTABLEKS R16 R3 K106 ["DimmedText"]
  SETTABLEKS R16 R15 K102 ["SubtextColor"]
  LOADN R16 3
  SETTABLEKS R16 R15 K103 ["SubtextOffset"]
  LOADN R16 8
  SETTABLEKS R16 R15 K104 ["DropdownScrollbarSize"]
  SETTABLEKS R15 R14 K107 ["SuggestionDropdown"]
  DUPTABLE R15 K113 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 0
  LOADN R18 80
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K108 ["ButtonSize"]
  DUPTABLE R16 K116 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K77 ["Left"]
  LOADN R17 6
  SETTABLEKS R17 R16 K114 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K79 ["Right"]
  LOADN R17 5
  SETTABLEKS R17 R16 K115 ["Bottom"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K60 ["Spacing"]
  GETIMPORT R16 K72 [UDim2.fromOffset]
  LOADN R17 175
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K109 ["TemplateDropDown"]
  GETTABLEKS R16 R3 K110 ["MenuImage"]
  SETTABLEKS R16 R15 K110 ["MenuImage"]
  GETIMPORT R16 K72 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K111 ["MenuButtonSize"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K112 ["MenuItemSize"]
  SETTABLEKS R15 R14 K117 ["TopBar"]
  DUPTABLE R15 K122 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R16 K42 [Vector2.new]
  LOADN R17 44
  LOADN R18 125
  CALL R16 2 1
  SETTABLEKS R16 R15 K118 ["CreateMinContentSize"]
  GETIMPORT R16 K42 [Vector2.new]
  LOADN R17 44
  LOADN R18 100
  CALL R16 2 1
  SETTABLEKS R16 R15 K119 ["RenameMinContentSize"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 0
  LOADN R18 75
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K120 ["LabelSize"]
  LOADN R16 10
  SETTABLEKS R16 R15 K33 ["Padding"]
  GETIMPORT R16 K72 [UDim2.fromOffset]
  LOADN R17 200
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K121 ["TextboxSize"]
  SETTABLEKS R15 R14 K123 ["PresetNamePrompt"]
  DUPTABLE R15 K130 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R16 R3 K124 ["ResetCameraImage"]
  SETTABLEKS R16 R15 K124 ["ResetCameraImage"]
  GETTABLEKS R16 R3 K125 ["ShowWorkspaceImage"]
  SETTABLEKS R16 R15 K125 ["ShowWorkspaceImage"]
  GETTABLEKS R16 R3 K126 ["ShowRigVisualizationImage"]
  SETTABLEKS R16 R15 K126 ["ShowRigVisualizationImage"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 0
  LOADN R18 28
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K127 ["OptionIconSize"]
  DUPTABLE R16 K132 [{"Size", "Position", "Spacing"}]
  GETIMPORT R17 K81 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K59 ["Size"]
  GETIMPORT R17 K81 [UDim2.new]
  LOADN R18 1
  LOADN R19 218
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K131 ["Position"]
  LOADN R17 2
  SETTABLEKS R17 R16 K60 ["Spacing"]
  SETTABLEKS R16 R15 K128 ["PreviewButtonBar"]
  DUPTABLE R16 K135 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R17 K138 [Color3.fromRGB]
  LOADN R18 170
  LOADN R19 185
  LOADN R20 200
  CALL R17 3 1
  SETTABLEKS R17 R16 K133 ["Ambient"]
  GETIMPORT R17 K138 [Color3.fromRGB]
  LOADN R18 242
  LOADN R19 236
  LOADN R20 227
  CALL R17 3 1
  SETTABLEKS R17 R16 K65 ["Color"]
  LOADK R18 K39 [0.5]
  LOADN R19 255
  LOADK R20 K139 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K141 [Vector3.new]
  CALL R17 3 1
  SETTABLEKS R17 R16 K134 ["Direction"]
  SETTABLEKS R16 R15 K129 ["Lighting"]
  SETTABLEKS R15 R14 K142 ["PreviewWindow"]
  DUPTABLE R15 K143 [{"Padding", "Spacing"}]
  DUPTABLE R16 K116 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K77 ["Left"]
  LOADN R17 4
  SETTABLEKS R17 R16 K114 ["Top"]
  LOADN R17 6
  SETTABLEKS R17 R16 K79 ["Right"]
  LOADN R17 3
  SETTABLEKS R17 R16 K115 ["Bottom"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K60 ["Spacing"]
  SETTABLEKS R15 R14 K144 ["TreeViewToolbar"]
  DUPTABLE R15 K151 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K145 ["IndicatorOffset"]
  LOADN R16 100
  SETTABLEKS R16 R15 K146 ["IndicatorSize"]
  LOADK R16 K39 [0.5]
  SETTABLEKS R16 R15 K147 ["PreviewRatio"]
  LOADN R16 24
  SETTABLEKS R16 R15 K148 ["StatusMessagePadding"]
  LOADN R16 30
  SETTABLEKS R16 R15 K149 ["ToolbarHeight"]
  LOADN R16 40
  SETTABLEKS R16 R15 K150 ["TopBarHeight"]
  SETTABLEKS R15 R14 K152 ["Sizes"]
  DUPTABLE R15 K161 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R16 244
  SETTABLEKS R16 R15 K153 ["Width"]
  LOADN R16 100
  SETTABLEKS R16 R15 K94 ["Height"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 22
  CALL R16 4 1
  SETTABLEKS R16 R15 K154 ["TextLabelSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K84 ["TextSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K101 ["SubtextSize"]
  GETIMPORT R16 K163 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K155 ["TextAlignment"]
  LOADN R16 12
  SETTABLEKS R16 R15 K156 ["LoadingBarHeight"]
  GETIMPORT R16 K81 [UDim2.new]
  LOADK R17 K164 [0.8]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 10
  CALL R16 4 1
  SETTABLEKS R16 R15 K157 ["LoadingBarContainerSize"]
  GETIMPORT R16 K138 [Color3.fromRGB]
  LOADN R17 2
  LOADN R18 183
  LOADN R19 87
  CALL R16 3 1
  SETTABLEKS R16 R15 K158 ["SuccessColor"]
  GETIMPORT R16 K138 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K159 ["FailureColor"]
  DUPTABLE R16 K116 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K77 ["Left"]
  LOADN R17 20
  SETTABLEKS R17 R16 K114 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K79 ["Right"]
  LOADN R17 10
  SETTABLEKS R17 R16 K115 ["Bottom"]
  SETTABLEKS R16 R15 K160 ["TopPadding"]
  SETTABLEKS R15 R14 K165 ["UploadWidget"]
  DUPTABLE R15 K166 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R16 100
  SETTABLEKS R16 R15 K94 ["Height"]
  LOADN R16 48
  SETTABLEKS R16 R15 K92 ["IconSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K96 ["IconSpacing"]
  LOADN R16 18
  SETTABLEKS R16 R15 K101 ["SubtextSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K84 ["TextSize"]
  LOADN R16 244
  SETTABLEKS R16 R15 K153 ["Width"]
  SETTABLEKS R15 R14 K167 ["ErrorWidget"]
  DUPTABLE R15 K168 [{"Image", "Size"}]
  LOADK R16 K169 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R16 R15 K67 ["Image"]
  GETIMPORT R16 K72 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["Size"]
  SETTABLEKS R15 R14 K170 ["ErrorIcon"]
  DUPTABLE R15 K168 [{"Image", "Size"}]
  LOADK R16 K171 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R16 R15 K67 ["Image"]
  GETIMPORT R16 K72 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["Size"]
  SETTABLEKS R15 R14 K172 ["WarningIcon"]
  DUPTABLE R15 K173 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K138 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K83 ["TextColor"]
  GETIMPORT R16 K174 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K162 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K84 ["TextSize"]
  SETTABLEKS R15 R14 K175 ["ErrorStatus"]
  DUPTABLE R15 K173 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K138 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 170
  LOADN R19 33
  CALL R16 3 1
  SETTABLEKS R16 R15 K83 ["TextColor"]
  GETIMPORT R16 K174 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K162 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K84 ["TextSize"]
  SETTABLEKS R15 R14 K176 ["WarningStatus"]
  GETTABLEKS R15 R7 K17 ["ExpandablePane"]
  MOVE R16 R13
  GETTABLEKS R18 R7 K17 ["ExpandablePane"]
  GETTABLE R17 R5 R18
  NEWTABLE R18 1 0
  MOVE R19 R13
  MOVE R20 R10
  DUPTABLE R21 K177 [{"Content"}]
  MOVE R22 R13
  MOVE R23 R11
  DUPTABLE R24 K47 [{"Padding"}]
  DUPTABLE R25 K116 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R26 4
  SETTABLEKS R26 R25 K77 ["Left"]
  LOADN R26 10
  SETTABLEKS R26 R25 K114 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K79 ["Right"]
  LOADN R26 10
  SETTABLEKS R26 R25 K115 ["Bottom"]
  SETTABLEKS R25 R24 K33 ["Padding"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K20 ["Content"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K178 ["&ImportTree"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R7 K179 ["LinkText"]
  MOVE R16 R13
  GETTABLEKS R18 R7 K179 ["LinkText"]
  GETTABLE R17 R5 R18
  NEWTABLE R18 1 0
  DUPTABLE R19 K180 [{"TextColor"}]
  GETTABLEKS R20 R3 K181 ["TextDisabled"]
  SETTABLEKS R20 R19 K83 ["TextColor"]
  SETTABLEKS R19 R18 K182 ["&Disabled"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 8 0
  GETTABLEKS R16 R3 K183 ["RefreshImage"]
  LOADK R17 K184 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K124 ["ResetCameraImage"]
  LOADK R17 K185 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K126 ["ShowRigVisualizationImage"]
  LOADK R17 K186 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K125 ["ShowWorkspaceImage"]
  LOADK R17 K187 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K110 ["MenuImage"]
  LOADK R17 K188 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K32 ["OpenImage"]
  LOADK R17 K189 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R3 K27 ["CleanupImage"]
  LOADK R17 K190 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R17 R15 R16
  NEWTABLE R16 8 0
  GETTABLEKS R17 R3 K183 ["RefreshImage"]
  LOADK R18 K191 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K124 ["ResetCameraImage"]
  LOADK R18 K192 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K126 ["ShowRigVisualizationImage"]
  LOADK R18 K193 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K125 ["ShowWorkspaceImage"]
  LOADK R18 K194 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K110 ["MenuImage"]
  LOADK R18 K195 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K32 ["OpenImage"]
  LOADK R18 K196 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R3 K27 ["CleanupImage"]
  LOADK R18 K197 ["rbxasset://studio_svg_textures/Qt/Emulation/Light/Standard/Cleanup.png"]
  SETTABLE R18 R16 R17
  DUPCLOSURE R17 K198 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  RETURN R17 1
