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
  DUPTABLE R15 K27 [{"SmallLength", "LargeLength", "ErrorIconSolid", "SuccessIconSolid"}]
  LOADN R16 16
  SETTABLEKS R16 R15 K23 ["SmallLength"]
  LOADN R16 32
  SETTABLEKS R16 R15 K24 ["LargeLength"]
  GETTABLEKS R16 R4 K25 ["ErrorIconSolid"]
  SETTABLEKS R16 R15 K25 ["ErrorIconSolid"]
  GETTABLEKS R16 R4 K26 ["SuccessIconSolid"]
  SETTABLEKS R16 R15 K26 ["SuccessIconSolid"]
  SETTABLEKS R15 R14 K28 ["Icons"]
  DUPTABLE R15 K40 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
  GETTABLEKS R16 R4 K29 ["CleanupImage"]
  SETTABLEKS R16 R15 K29 ["CleanupImage"]
  LOADN R16 40
  SETTABLEKS R16 R15 K30 ["ControlsHeight"]
  LOADK R16 K41 [0.5]
  SETTABLEKS R16 R15 K31 ["DisabledTransparancy"]
  LOADN R16 120
  SETTABLEKS R16 R15 K32 ["ImportButtonWidth"]
  LOADN R16 8
  SETTABLEKS R16 R15 K33 ["LoadingBarWidth"]
  GETTABLEKS R16 R4 K34 ["OpenImage"]
  SETTABLEKS R16 R15 K34 ["OpenImage"]
  LOADN R16 8
  SETTABLEKS R16 R15 K35 ["Padding"]
  LOADN R16 50
  SETTABLEKS R16 R15 K36 ["ProgressBarHeight"]
  GETIMPORT R16 K44 [Vector2.new]
  LOADN R17 139
  LOADN R18 64
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["WindowSize"]
  LOADN R16 2
  SETTABLEKS R16 R15 K38 ["IconPadding"]
  LOADN R16 24
  SETTABLEKS R16 R15 K39 ["IconButtonSize"]
  SETTABLEKS R15 R14 K45 ["ImportQueue"]
  DUPTABLE R15 K50 [{"Padding", "RowHeight", "CheckboxWidth", "DropdownWidth", "StatusWidth"}]
  LOADN R16 4
  SETTABLEKS R16 R15 K35 ["Padding"]
  LOADN R16 28
  SETTABLEKS R16 R15 K46 ["RowHeight"]
  LOADN R16 28
  SETTABLEKS R16 R15 K47 ["CheckboxWidth"]
  LOADN R16 140
  SETTABLEKS R16 R15 K48 ["DropdownWidth"]
  LOADN R16 80
  SETTABLEKS R16 R15 K49 ["StatusWidth"]
  SETTABLEKS R15 R14 K51 ["AssetList"]
  DUPTABLE R15 K53 [{"Padding", "ActionSelectedOverride"}]
  DUPTABLE R16 K58 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R17 K60 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["PaddingTop"]
  GETIMPORT R17 K60 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["PaddingRight"]
  GETIMPORT R17 K60 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["PaddingBottom"]
  GETIMPORT R17 K60 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["PaddingLeft"]
  SETTABLEKS R16 R15 K35 ["Padding"]
  GETTABLEKS R16 R4 K52 ["ActionSelectedOverride"]
  SETTABLEKS R16 R15 K52 ["ActionSelectedOverride"]
  SETTABLEKS R15 R14 K61 ["AssetListCell"]
  DUPTABLE R15 K69 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K70 ["MainText"]
  SETTABLEKS R17 R16 K71 ["Color"]
  LOADK R17 K72 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K73 ["Image"]
  GETIMPORT R17 K44 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K74 ["ImageRectOffset"]
  GETIMPORT R17 K44 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K75 ["ImageRectSize"]
  GETIMPORT R17 K78 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K65 ["Size"]
  GETTABLEKS R17 R5 K79 ["Selected"]
  DUPTABLE R18 K80 [{"ImageRectOffset"}]
  GETIMPORT R19 K44 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K74 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K62 ["Arrow"]
  GETTABLEKS R16 R4 K81 ["Titlebar"]
  SETTABLEKS R16 R15 K63 ["Background"]
  GETIMPORT R16 K84 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K64 ["HorizontalAlignment"]
  DUPTABLE R16 K86 [{"Left", "Right"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K83 ["Left"]
  LOADN R17 10
  SETTABLEKS R17 R16 K85 ["Right"]
  SETTABLEKS R16 R15 K35 ["Padding"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K65 ["Size"]
  LOADN R16 6
  SETTABLEKS R16 R15 K66 ["Spacing"]
  DUPTABLE R16 K91 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R17 K93 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K88 ["Font"]
  GETTABLEKS R17 R4 K94 ["TitlebarText"]
  SETTABLEKS R17 R16 K89 ["TextColor"]
  LOADN R17 18
  SETTABLEKS R17 R16 K90 ["TextSize"]
  SETTABLEKS R16 R15 K67 ["Text"]
  GETIMPORT R16 K96 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K68 ["VerticalAlignment"]
  SETTABLEKS R15 R14 K97 ["PropertySectionHeader"]
  DUPTABLE R15 K104 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K98 ["IconSize"]
  LOADN R16 4
  SETTABLEKS R16 R15 K66 ["Spacing"]
  LOADN R16 10
  SETTABLEKS R16 R15 K99 ["ScrollBarOffset"]
  LOADN R16 28
  SETTABLEKS R16 R15 K100 ["Height"]
  LOADN R16 24
  SETTABLEKS R16 R15 K101 ["EditorHeight"]
  LOADN R16 10
  SETTABLEKS R16 R15 K102 ["IconSpacing"]
  LOADN R16 28
  SETTABLEKS R16 R15 K103 ["FilePickerSize"]
  SETTABLEKS R15 R14 K105 ["PropertyView"]
  DUPTABLE R15 K111 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R16 50
  SETTABLEKS R16 R15 K106 ["DropdownHeight"]
  LOADN R16 14
  SETTABLEKS R16 R15 K107 ["SubtextSize"]
  GETTABLEKS R16 R4 K112 ["DimmedText"]
  SETTABLEKS R16 R15 K108 ["SubtextColor"]
  LOADN R16 3
  SETTABLEKS R16 R15 K109 ["SubtextOffset"]
  LOADN R16 8
  SETTABLEKS R16 R15 K110 ["DropdownScrollbarSize"]
  SETTABLEKS R15 R14 K113 ["SuggestionDropdown"]
  DUPTABLE R15 K119 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 0
  LOADN R18 80
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K114 ["ButtonSize"]
  DUPTABLE R16 K122 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K83 ["Left"]
  LOADN R17 6
  SETTABLEKS R17 R16 K120 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K85 ["Right"]
  LOADN R17 5
  SETTABLEKS R17 R16 K121 ["Bottom"]
  SETTABLEKS R16 R15 K35 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K66 ["Spacing"]
  GETIMPORT R16 K78 [UDim2.fromOffset]
  LOADN R17 175
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K115 ["TemplateDropDown"]
  GETTABLEKS R16 R4 K116 ["MenuImage"]
  SETTABLEKS R16 R15 K116 ["MenuImage"]
  GETIMPORT R16 K78 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K117 ["MenuButtonSize"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K118 ["MenuItemSize"]
  SETTABLEKS R15 R14 K123 ["TopBar"]
  DUPTABLE R15 K128 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R16 K44 [Vector2.new]
  LOADN R17 44
  LOADN R18 125
  CALL R16 2 1
  SETTABLEKS R16 R15 K124 ["CreateMinContentSize"]
  GETIMPORT R16 K44 [Vector2.new]
  LOADN R17 44
  LOADN R18 100
  CALL R16 2 1
  SETTABLEKS R16 R15 K125 ["RenameMinContentSize"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 0
  LOADN R18 75
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K126 ["LabelSize"]
  LOADN R16 10
  SETTABLEKS R16 R15 K35 ["Padding"]
  GETIMPORT R16 K78 [UDim2.fromOffset]
  LOADN R17 200
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K127 ["TextboxSize"]
  SETTABLEKS R15 R14 K129 ["PresetNamePrompt"]
  DUPTABLE R15 K136 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R16 R4 K130 ["ResetCameraImage"]
  SETTABLEKS R16 R15 K130 ["ResetCameraImage"]
  GETTABLEKS R16 R4 K131 ["ShowWorkspaceImage"]
  SETTABLEKS R16 R15 K131 ["ShowWorkspaceImage"]
  GETTABLEKS R16 R4 K132 ["ShowRigVisualizationImage"]
  SETTABLEKS R16 R15 K132 ["ShowRigVisualizationImage"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 0
  LOADN R18 28
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K133 ["OptionIconSize"]
  DUPTABLE R16 K138 [{"Size", "Position", "Spacing"}]
  GETIMPORT R17 K87 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K65 ["Size"]
  GETIMPORT R17 K87 [UDim2.new]
  LOADN R18 1
  LOADN R19 218
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K137 ["Position"]
  LOADN R17 2
  SETTABLEKS R17 R16 K66 ["Spacing"]
  SETTABLEKS R16 R15 K134 ["PreviewButtonBar"]
  DUPTABLE R16 K141 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R17 K144 [Color3.fromRGB]
  LOADN R18 170
  LOADN R19 185
  LOADN R20 200
  CALL R17 3 1
  SETTABLEKS R17 R16 K139 ["Ambient"]
  GETIMPORT R17 K144 [Color3.fromRGB]
  LOADN R18 242
  LOADN R19 236
  LOADN R20 227
  CALL R17 3 1
  SETTABLEKS R17 R16 K71 ["Color"]
  LOADK R17 K145 [{0.5, -1, 0.1}]
  SETTABLEKS R17 R16 K140 ["Direction"]
  SETTABLEKS R16 R15 K135 ["Lighting"]
  SETTABLEKS R15 R14 K146 ["PreviewWindow"]
  DUPTABLE R15 K147 [{"Padding", "Spacing"}]
  DUPTABLE R16 K122 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K83 ["Left"]
  LOADN R17 4
  SETTABLEKS R17 R16 K120 ["Top"]
  LOADN R17 6
  SETTABLEKS R17 R16 K85 ["Right"]
  LOADN R17 3
  SETTABLEKS R17 R16 K121 ["Bottom"]
  SETTABLEKS R16 R15 K35 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K66 ["Spacing"]
  SETTABLEKS R15 R14 K148 ["TreeViewToolbar"]
  DUPTABLE R15 K155 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K149 ["IndicatorOffset"]
  LOADN R16 100
  SETTABLEKS R16 R15 K150 ["IndicatorSize"]
  LOADK R16 K41 [0.5]
  SETTABLEKS R16 R15 K151 ["PreviewRatio"]
  LOADN R16 24
  SETTABLEKS R16 R15 K152 ["StatusMessagePadding"]
  LOADN R16 30
  SETTABLEKS R16 R15 K153 ["ToolbarHeight"]
  LOADN R16 40
  SETTABLEKS R16 R15 K154 ["TopBarHeight"]
  SETTABLEKS R15 R14 K156 ["Sizes"]
  DUPTABLE R15 K165 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R16 244
  SETTABLEKS R16 R15 K157 ["Width"]
  LOADN R16 100
  SETTABLEKS R16 R15 K100 ["Height"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 22
  CALL R16 4 1
  SETTABLEKS R16 R15 K158 ["TextLabelSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K90 ["TextSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K107 ["SubtextSize"]
  GETIMPORT R16 K167 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K159 ["TextAlignment"]
  LOADN R16 12
  SETTABLEKS R16 R15 K160 ["LoadingBarHeight"]
  GETIMPORT R16 K87 [UDim2.new]
  LOADK R17 K168 [0.8]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 10
  CALL R16 4 1
  SETTABLEKS R16 R15 K161 ["LoadingBarContainerSize"]
  GETIMPORT R16 K144 [Color3.fromRGB]
  LOADN R17 2
  LOADN R18 183
  LOADN R19 87
  CALL R16 3 1
  SETTABLEKS R16 R15 K162 ["SuccessColor"]
  GETIMPORT R16 K144 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K163 ["FailureColor"]
  DUPTABLE R16 K122 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K83 ["Left"]
  LOADN R17 20
  SETTABLEKS R17 R16 K120 ["Top"]
  LOADN R17 10
  SETTABLEKS R17 R16 K85 ["Right"]
  LOADN R17 10
  SETTABLEKS R17 R16 K121 ["Bottom"]
  SETTABLEKS R16 R15 K164 ["TopPadding"]
  SETTABLEKS R15 R14 K169 ["UploadWidget"]
  DUPTABLE R15 K170 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R16 100
  SETTABLEKS R16 R15 K100 ["Height"]
  LOADN R16 48
  SETTABLEKS R16 R15 K98 ["IconSize"]
  LOADN R16 16
  SETTABLEKS R16 R15 K102 ["IconSpacing"]
  LOADN R16 18
  SETTABLEKS R16 R15 K107 ["SubtextSize"]
  LOADN R16 24
  SETTABLEKS R16 R15 K90 ["TextSize"]
  LOADN R16 244
  SETTABLEKS R16 R15 K157 ["Width"]
  SETTABLEKS R15 R14 K171 ["ErrorWidget"]
  DUPTABLE R15 K172 [{"Image", "Size"}]
  LOADK R16 K173 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R16 R15 K73 ["Image"]
  GETIMPORT R16 K78 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K65 ["Size"]
  SETTABLEKS R15 R14 K174 ["ErrorIcon"]
  DUPTABLE R15 K172 [{"Image", "Size"}]
  LOADK R16 K175 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R16 R15 K73 ["Image"]
  GETIMPORT R16 K78 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K65 ["Size"]
  SETTABLEKS R15 R14 K176 ["WarningIcon"]
  DUPTABLE R15 K177 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K144 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 85
  LOADN R19 85
  CALL R16 3 1
  SETTABLEKS R16 R15 K89 ["TextColor"]
  GETIMPORT R16 K178 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K166 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K90 ["TextSize"]
  SETTABLEKS R15 R14 K179 ["ErrorStatus"]
  DUPTABLE R15 K177 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R16 K144 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 170
  LOADN R19 33
  CALL R16 3 1
  SETTABLEKS R16 R15 K89 ["TextColor"]
  GETIMPORT R16 K178 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K166 ["TextXAlignment"]
  LOADN R16 10
  SETTABLEKS R16 R15 K90 ["TextSize"]
  SETTABLEKS R15 R14 K180 ["WarningStatus"]
  GETTABLEKS R15 R8 K18 ["ExpandablePane"]
  MOVE R16 R13
  GETTABLEKS R18 R8 K18 ["ExpandablePane"]
  GETTABLE R17 R6 R18
  NEWTABLE R18 1 0
  MOVE R19 R13
  MOVE R20 R11
  DUPTABLE R21 K181 [{"Content"}]
  MOVE R22 R13
  MOVE R23 R12
  DUPTABLE R24 K182 [{"Padding"}]
  DUPTABLE R25 K122 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R26 4
  SETTABLEKS R26 R25 K83 ["Left"]
  LOADN R26 10
  SETTABLEKS R26 R25 K120 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K85 ["Right"]
  LOADN R26 10
  SETTABLEKS R26 R25 K121 ["Bottom"]
  SETTABLEKS R25 R24 K35 ["Padding"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K21 ["Content"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K183 ["&ImportTree"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R8 K184 ["LinkText"]
  MOVE R16 R13
  GETTABLEKS R18 R8 K184 ["LinkText"]
  GETTABLE R17 R6 R18
  NEWTABLE R18 1 0
  DUPTABLE R19 K185 [{"TextColor"}]
  GETTABLEKS R20 R4 K186 ["ButtonTextDisabled"]
  SETTABLEKS R20 R19 K89 ["TextColor"]
  SETTABLEKS R19 R18 K187 ["&Disabled"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 16 0
  GETTABLEKS R16 R4 K188 ["RefreshImage"]
  LOADK R17 K189 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K130 ["ResetCameraImage"]
  LOADK R17 K190 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K132 ["ShowRigVisualizationImage"]
  LOADK R17 K191 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K131 ["ShowWorkspaceImage"]
  LOADK R17 K192 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K116 ["MenuImage"]
  LOADK R17 K193 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K34 ["OpenImage"]
  LOADK R17 K194 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K29 ["CleanupImage"]
  LOADK R17 K195 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K25 ["ErrorIconSolid"]
  LOADK R17 K196 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K26 ["SuccessIconSolid"]
  LOADK R17 K197 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R4 K52 ["ActionSelectedOverride"]
  GETIMPORT R17 K144 [Color3.fromRGB]
  LOADN R18 60
  LOADN R19 60
  LOADN R20 60
  CALL R17 3 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 16 0
  GETTABLEKS R17 R4 K188 ["RefreshImage"]
  LOADK R18 K198 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K130 ["ResetCameraImage"]
  LOADK R18 K199 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K132 ["ShowRigVisualizationImage"]
  LOADK R18 K200 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K131 ["ShowWorkspaceImage"]
  LOADK R18 K201 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K116 ["MenuImage"]
  LOADK R18 K202 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K34 ["OpenImage"]
  LOADK R18 K203 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K29 ["CleanupImage"]
  LOADK R18 K204 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K25 ["ErrorIconSolid"]
  LOADK R18 K205 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K26 ["SuccessIconSolid"]
  LOADK R18 K206 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R4 K52 ["ActionSelectedOverride"]
  GETIMPORT R18 K208 [Color3.fromHex]
  LOADK R19 K209 ["#D5F0FF"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  DUPCLOSURE R17 K210 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  RETURN R17 1
