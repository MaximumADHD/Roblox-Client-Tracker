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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["Style"]
  GETTABLEKS R4 R3 K10 ["StyleKey"]
  GETTABLEKS R6 R1 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R7 R3 K13 ["Themes"]
  GETTABLEKS R6 R7 K14 ["BaseTheme"]
  GETTABLEKS R8 R3 K13 ["Themes"]
  GETTABLEKS R7 R8 K15 ["StudioTheme"]
  GETTABLEKS R8 R3 K16 ["ComponentSymbols"]
  GETTABLEKS R9 R1 K17 ["UIData"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R9 K18 ["ExpandablePane"]
  GETTABLEKS R11 R12 K19 ["style"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K20 ["&Section"]
  GETTABLEKS R12 R10 K21 ["Content"]
  GETTABLEKS R13 R2 K22 ["join"]
  NEWTABLE R14 32 0
  DUPTABLE R15 K25 [{"SmallLength", "LargeLength"}]
  LOADN R16 16
  SETTABLEKS R16 R15 K23 ["SmallLength"]
  LOADN R16 32
  SETTABLEKS R16 R15 K24 ["LargeLength"]
  SETTABLEKS R15 R14 K26 ["Icons"]
  DUPTABLE R15 K38 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
  GETTABLEKS R16 R4 K27 ["CleanupImage"]
  SETTABLEKS R16 R15 K27 ["CleanupImage"]
  LOADN R16 40
  SETTABLEKS R16 R15 K28 ["ControlsHeight"]
  LOADK R16 K39 [0.5]
  SETTABLEKS R16 R15 K29 ["DisabledTransparancy"]
  LOADN R16 120
  SETTABLEKS R16 R15 K30 ["ImportButtonWidth"]
  LOADN R16 8
  SETTABLEKS R16 R15 K31 ["LoadingBarWidth"]
  GETTABLEKS R16 R4 K32 ["OpenImage"]
  SETTABLEKS R16 R15 K32 ["OpenImage"]
  LOADN R16 8
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 50
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
  DUPTABLE R15 K48 [{"Padding", "ActionSelectedOverride"}]
  DUPTABLE R16 K53 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R17 K55 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["PaddingTop"]
  GETIMPORT R17 K55 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K50 ["PaddingRight"]
  GETIMPORT R17 K55 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingBottom"]
  GETIMPORT R17 K55 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["PaddingLeft"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  GETTABLEKS R16 R4 K47 ["ActionSelectedOverride"]
  SETTABLEKS R16 R15 K47 ["ActionSelectedOverride"]
  SETTABLEKS R15 R14 K56 ["AssetListCell"]
  DUPTABLE R15 K64 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K65 ["MainText"]
  SETTABLEKS R17 R16 K66 ["Color"]
  LOADK R17 K67 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K68 ["Image"]
  GETIMPORT R17 K42 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K69 ["ImageRectOffset"]
  GETIMPORT R17 K42 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K70 ["ImageRectSize"]
  GETIMPORT R17 K73 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K60 ["Size"]
  GETTABLEKS R17 R5 K74 ["Selected"]
  DUPTABLE R18 K75 [{"ImageRectOffset"}]
  GETIMPORT R19 K42 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K69 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K57 ["Arrow"]
  GETTABLEKS R16 R4 K76 ["Titlebar"]
  SETTABLEKS R16 R15 K58 ["Background"]
  GETIMPORT R16 K79 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K59 ["HorizontalAlignment"]
  DUPTABLE R16 K81 [{"Left", "Right"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K78 ["Left"]
  LOADN R17 10
  SETTABLEKS R17 R16 K80 ["Right"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K60 ["Size"]
  LOADN R16 6
  SETTABLEKS R16 R15 K61 ["Spacing"]
  DUPTABLE R16 K86 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R17 K88 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K83 ["Font"]
  GETTABLEKS R17 R4 K89 ["TitlebarText"]
  SETTABLEKS R17 R16 K84 ["TextColor"]
  LOADN R17 18
  SETTABLEKS R17 R16 K85 ["TextSize"]
  SETTABLEKS R16 R15 K62 ["Text"]
  GETIMPORT R16 K91 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K63 ["VerticalAlignment"]
  SETTABLEKS R15 R14 K92 ["PropertySectionHeader"]
  DUPTABLE R15 K99 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K93 ["IconSize"]
  LOADN R16 4
  SETTABLEKS R16 R15 K61 ["Spacing"]
  LOADN R16 10
  SETTABLEKS R16 R15 K94 ["ScrollBarOffset"]
  LOADN R16 28
  SETTABLEKS R16 R15 K95 ["Height"]
  LOADN R16 24
  SETTABLEKS R16 R15 K96 ["EditorHeight"]
  LOADN R16 10
  SETTABLEKS R16 R15 K97 ["IconSpacing"]
  LOADN R16 28
  SETTABLEKS R16 R15 K98 ["FilePickerSize"]
  SETTABLEKS R15 R14 K100 ["PropertyView"]
  DUPTABLE R15 K106 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R16 50
  SETTABLEKS R16 R15 K101 ["DropdownHeight"]
  LOADN R16 14
  SETTABLEKS R16 R15 K102 ["SubtextSize"]
  GETTABLEKS R16 R4 K107 ["DimmedText"]
  SETTABLEKS R16 R15 K103 ["SubtextColor"]
  LOADN R16 3
  SETTABLEKS R16 R15 K104 ["SubtextOffset"]
  LOADN R16 8
  SETTABLEKS R16 R15 K105 ["DropdownScrollbarSize"]
  SETTABLEKS R15 R14 K108 ["SuggestionDropdown"]
  DUPTABLE R15 K114 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 0
  LOADN R18 80
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K109 ["ButtonSize"]
  DUPTABLE R16 K117 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K78 ["Left"]
  LOADN R17 6
  SETTABLEKS R17 R16 K115 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K80 ["Right"]
  LOADN R17 5
  SETTABLEKS R17 R16 K116 ["Bottom"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K61 ["Spacing"]
  GETIMPORT R16 K73 [UDim2.fromOffset]
  LOADN R17 175
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K110 ["TemplateDropDown"]
  GETTABLEKS R16 R4 K111 ["MenuImage"]
  SETTABLEKS R16 R15 K111 ["MenuImage"]
  GETIMPORT R16 K73 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K112 ["MenuButtonSize"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K113 ["MenuItemSize"]
  SETTABLEKS R15 R14 K118 ["TopBar"]
  DUPTABLE R15 K123 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R16 K42 [Vector2.new]
  LOADN R17 44
  LOADN R18 125
  CALL R16 2 1
  SETTABLEKS R16 R15 K119 ["CreateMinContentSize"]
  GETIMPORT R16 K42 [Vector2.new]
  LOADN R17 44
  LOADN R18 100
  CALL R16 2 1
  SETTABLEKS R16 R15 K120 ["RenameMinContentSize"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 0
  LOADN R18 75
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K121 ["LabelSize"]
  LOADN R16 10
  SETTABLEKS R16 R15 K33 ["Padding"]
  GETIMPORT R16 K73 [UDim2.fromOffset]
  LOADN R17 200
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["TextboxSize"]
  SETTABLEKS R15 R14 K124 ["PresetNamePrompt"]
  DUPTABLE R15 K131 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R16 R4 K125 ["ResetCameraImage"]
  SETTABLEKS R16 R15 K125 ["ResetCameraImage"]
  GETTABLEKS R16 R4 K126 ["ShowWorkspaceImage"]
  SETTABLEKS R16 R15 K126 ["ShowWorkspaceImage"]
  GETTABLEKS R16 R4 K127 ["ShowRigVisualizationImage"]
  SETTABLEKS R16 R15 K127 ["ShowRigVisualizationImage"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 0
  LOADN R18 28
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K128 ["OptionIconSize"]
  DUPTABLE R16 K133 [{"Size", "Position", "Spacing"}]
  GETIMPORT R17 K82 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K60 ["Size"]
  GETIMPORT R17 K82 [UDim2.new]
  LOADN R18 1
  LOADN R19 218
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K132 ["Position"]
  LOADN R17 2
  SETTABLEKS R17 R16 K61 ["Spacing"]
  SETTABLEKS R16 R15 K129 ["PreviewButtonBar"]
  DUPTABLE R16 K136 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R17 K139 [Color3.fromRGB]
  LOADN R18 170
  LOADN R19 185
  LOADN R20 200
  CALL R17 3 1
  SETTABLEKS R17 R16 K134 ["Ambient"]
  GETIMPORT R17 K139 [Color3.fromRGB]
  LOADN R18 242
  LOADN R19 236
  LOADN R20 227
  CALL R17 3 1
  SETTABLEKS R17 R16 K66 ["Color"]
  LOADK R17 K140 [{0.5, -1, 0.1}]
  SETTABLEKS R17 R16 K135 ["Direction"]
  SETTABLEKS R16 R15 K130 ["Lighting"]
  SETTABLEKS R15 R14 K141 ["PreviewWindow"]
  DUPTABLE R15 K142 [{"Padding", "Spacing"}]
  DUPTABLE R16 K117 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K78 ["Left"]
  LOADN R17 4
  SETTABLEKS R17 R16 K115 ["Top"]
  LOADN R17 6
  SETTABLEKS R17 R16 K80 ["Right"]
  LOADN R17 3
  SETTABLEKS R17 R16 K116 ["Bottom"]
  SETTABLEKS R16 R15 K33 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K61 ["Spacing"]
  SETTABLEKS R15 R14 K143 ["TreeViewToolbar"]
  DUPTABLE R15 K150 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K144 ["IndicatorOffset"]
  LOADN R16 100
  SETTABLEKS R16 R15 K145 ["IndicatorSize"]
  LOADK R16 K39 [0.5]
  SETTABLEKS R16 R15 K146 ["PreviewRatio"]
  LOADN R16 24
  SETTABLEKS R16 R15 K147 ["StatusMessagePadding"]
  LOADN R16 30
  SETTABLEKS R16 R15 K148 ["ToolbarHeight"]
  LOADN R16 40
  SETTABLEKS R16 R15 K149 ["TopBarHeight"]
  SETTABLEKS R15 R14 K151 ["Sizes"]
  DUPTABLE R15 K160 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R16 244
  SETTABLEKS R16 R15 K152 ["Width"]
  LOADN R16 100
  SETTABLEKS R16 R15 K95 ["Height"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 22
  CALL R16 4 1
  SETTABLEKS R16 R15 K153 ["TextLabelSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K85 ["TextSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K102 ["SubtextSize"]
  GETIMPORT R16 K162 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K154 ["TextAlignment"]
  LOADN R16 12
  SETTABLEKS R16 R15 K155 ["LoadingBarHeight"]
  GETIMPORT R16 K82 [UDim2.new]
  LOADK R17 K163 [0.8]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 10
  CALL R16 4 1
  SETTABLEKS R16 R15 K156 ["LoadingBarContainerSize"]
  GETIMPORT R16 K139 [Color3.fromRGB]
  LOADN R17 2
  LOADN R18 183
  LOADN R19 87
  CALL R16 3 1
  SETTABLEKS R16 R15 K157 ["SuccessColor"]
  GETIMPORT R16 K139 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K158 ["FailureColor"]
  DUPTABLE R16 K117 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K78 ["Left"]
  LOADN R17 20
  SETTABLEKS R17 R16 K115 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K80 ["Right"]
  LOADN R17 10
  SETTABLEKS R17 R16 K116 ["Bottom"]
  SETTABLEKS R16 R15 K159 ["TopPadding"]
  SETTABLEKS R15 R14 K164 ["UploadWidget"]
  DUPTABLE R15 K165 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R16 100
  SETTABLEKS R16 R15 K95 ["Height"]
  LOADN R16 48
  SETTABLEKS R16 R15 K93 ["IconSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K97 ["IconSpacing"]
  LOADN R16 18
  SETTABLEKS R16 R15 K102 ["SubtextSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K85 ["TextSize"]
  LOADN R16 244
  SETTABLEKS R16 R15 K152 ["Width"]
  SETTABLEKS R15 R14 K166 ["ErrorWidget"]
  DUPTABLE R15 K167 [{"Image", "Size"}]
  LOADK R16 K168 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R16 R15 K68 ["Image"]
  GETIMPORT R16 K73 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K60 ["Size"]
  SETTABLEKS R15 R14 K169 ["ErrorIcon"]
  DUPTABLE R15 K167 [{"Image", "Size"}]
  LOADK R16 K170 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R16 R15 K68 ["Image"]
  GETIMPORT R16 K73 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K60 ["Size"]
  SETTABLEKS R15 R14 K171 ["WarningIcon"]
  DUPTABLE R15 K172 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K139 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K84 ["TextColor"]
  GETIMPORT R16 K173 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K161 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K85 ["TextSize"]
  SETTABLEKS R15 R14 K174 ["ErrorStatus"]
  DUPTABLE R15 K172 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K139 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 170
  LOADN R19 33
  CALL R16 3 1
  SETTABLEKS R16 R15 K84 ["TextColor"]
  GETIMPORT R16 K173 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K161 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K85 ["TextSize"]
  SETTABLEKS R15 R14 K175 ["WarningStatus"]
  GETTABLEKS R15 R8 K18 ["ExpandablePane"]
  MOVE R16 R13
  GETTABLEKS R18 R8 K18 ["ExpandablePane"]
  GETTABLE R17 R6 R18
  NEWTABLE R18 1 0
  MOVE R19 R13
  MOVE R20 R11
  DUPTABLE R21 K176 [{"Content"}]
  MOVE R22 R13
  MOVE R23 R12
  DUPTABLE R24 K177 [{"Padding"}]
  DUPTABLE R25 K117 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R26 4
  SETTABLEKS R26 R25 K78 ["Left"]
  LOADN R26 10
  SETTABLEKS R26 R25 K115 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K80 ["Right"]
  LOADN R26 10
  SETTABLEKS R26 R25 K116 ["Bottom"]
  SETTABLEKS R25 R24 K33 ["Padding"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K21 ["Content"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K178 ["&ImportTree"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R8 K179 ["LinkText"]
  MOVE R16 R13
  GETTABLEKS R18 R8 K179 ["LinkText"]
  GETTABLE R17 R6 R18
  NEWTABLE R18 1 0
  DUPTABLE R19 K180 [{"TextColor"}]
  GETTABLEKS R20 R4 K181 ["ButtonTextDisabled"]
  SETTABLEKS R20 R19 K84 ["TextColor"]
  SETTABLEKS R19 R18 K182 ["&Disabled"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 8 0
  GETTABLEKS R16 R4 K183 ["RefreshImage"]
  LOADK R17 K184 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K125 ["ResetCameraImage"]
  LOADK R17 K185 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K127 ["ShowRigVisualizationImage"]
  LOADK R17 K186 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K126 ["ShowWorkspaceImage"]
  LOADK R17 K187 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K111 ["MenuImage"]
  LOADK R17 K188 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K32 ["OpenImage"]
  LOADK R17 K189 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K27 ["CleanupImage"]
  LOADK R17 K190 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K47 ["ActionSelectedOverride"]
  GETIMPORT R17 K139 [Color3.fromRGB]
  LOADN R18 60
  LOADN R19 60
  LOADN R20 60
  CALL R17 3 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K183 ["RefreshImage"]
  LOADK R18 K191 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K125 ["ResetCameraImage"]
  LOADK R18 K192 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K127 ["ShowRigVisualizationImage"]
  LOADK R18 K193 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K126 ["ShowWorkspaceImage"]
  LOADK R18 K194 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K111 ["MenuImage"]
  LOADK R18 K195 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K32 ["OpenImage"]
  LOADK R18 K196 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K27 ["CleanupImage"]
  LOADK R18 K197 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K47 ["ActionSelectedOverride"]
  GETIMPORT R18 K199 [Color3.fromHex]
  LOADK R19 K200 ["#D5F0FF"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  DUPCLOSURE R17 K201 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  RETURN R17 1
