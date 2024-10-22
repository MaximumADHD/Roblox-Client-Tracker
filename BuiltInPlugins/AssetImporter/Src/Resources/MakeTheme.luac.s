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
  GETTABLEKS R12 R9 K18 ["Button"]
  GETTABLEKS R11 R12 K19 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R9 K20 ["ExpandablePane"]
  GETTABLEKS R12 R13 K19 ["style"]
  CALL R11 1 1
  GETTABLEKS R12 R10 K21 ["&Round"]
  GETTABLEKS R13 R11 K22 ["&Section"]
  GETTABLEKS R14 R11 K23 ["Content"]
  GETTABLEKS R15 R2 K24 ["join"]
  NEWTABLE R16 32 0
  DUPTABLE R17 K29 [{"SmallLength", "LargeLength", "ErrorIconSolid", "SuccessIconSolid"}]
  LOADN R18 16
  SETTABLEKS R18 R17 K25 ["SmallLength"]
  LOADN R18 32
  SETTABLEKS R18 R17 K26 ["LargeLength"]
  GETTABLEKS R18 R4 K27 ["ErrorIconSolid"]
  SETTABLEKS R18 R17 K27 ["ErrorIconSolid"]
  GETTABLEKS R18 R4 K28 ["SuccessIconSolid"]
  SETTABLEKS R18 R17 K28 ["SuccessIconSolid"]
  SETTABLEKS R17 R16 K30 ["Icons"]
  DUPTABLE R17 K42 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
  GETTABLEKS R18 R4 K31 ["CleanupImage"]
  SETTABLEKS R18 R17 K31 ["CleanupImage"]
  LOADN R18 40
  SETTABLEKS R18 R17 K32 ["ControlsHeight"]
  LOADK R18 K43 [0.5]
  SETTABLEKS R18 R17 K33 ["DisabledTransparancy"]
  LOADN R18 120
  SETTABLEKS R18 R17 K34 ["ImportButtonWidth"]
  LOADN R18 8
  SETTABLEKS R18 R17 K35 ["LoadingBarWidth"]
  GETTABLEKS R18 R4 K36 ["OpenImage"]
  SETTABLEKS R18 R17 K36 ["OpenImage"]
  LOADN R18 8
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 50
  SETTABLEKS R18 R17 K38 ["ProgressBarHeight"]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 139
  LOADN R20 64
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["WindowSize"]
  LOADN R18 2
  SETTABLEKS R18 R17 K40 ["IconPadding"]
  LOADN R18 24
  SETTABLEKS R18 R17 K41 ["IconButtonSize"]
  SETTABLEKS R17 R16 K47 ["ImportQueue"]
  DUPTABLE R17 K52 [{"Padding", "RowHeight", "CheckboxWidth", "DropdownWidth", "StatusWidth"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 28
  SETTABLEKS R18 R17 K48 ["RowHeight"]
  LOADN R18 28
  SETTABLEKS R18 R17 K49 ["CheckboxWidth"]
  LOADN R18 140
  SETTABLEKS R18 R17 K50 ["DropdownWidth"]
  LOADN R18 80
  SETTABLEKS R18 R17 K51 ["StatusWidth"]
  SETTABLEKS R17 R16 K53 ["AssetList"]
  DUPTABLE R17 K55 [{"Padding", "ActionSelectedOverride"}]
  DUPTABLE R18 K60 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K56 ["PaddingTop"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["PaddingRight"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K58 ["PaddingBottom"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K59 ["PaddingLeft"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETTABLEKS R18 R4 K54 ["ActionSelectedOverride"]
  SETTABLEKS R18 R17 K54 ["ActionSelectedOverride"]
  SETTABLEKS R17 R16 K63 ["AssetListCell"]
  DUPTABLE R17 K71 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R18 8 0
  GETTABLEKS R19 R4 K72 ["MainText"]
  SETTABLEKS R19 R18 K73 ["Color"]
  LOADK R19 K74 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R19 R18 K75 ["Image"]
  GETIMPORT R19 K46 [Vector2.new]
  LOADN R20 12
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K76 ["ImageRectOffset"]
  GETIMPORT R19 K46 [Vector2.new]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["ImageRectSize"]
  GETIMPORT R19 K80 [UDim2.fromOffset]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K67 ["Size"]
  GETTABLEKS R19 R5 K81 ["Selected"]
  DUPTABLE R20 K82 [{"ImageRectOffset"}]
  GETIMPORT R21 K46 [Vector2.new]
  LOADN R22 24
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K76 ["ImageRectOffset"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K64 ["Arrow"]
  GETTABLEKS R18 R4 K83 ["Titlebar"]
  SETTABLEKS R18 R17 K65 ["Background"]
  GETIMPORT R18 K86 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K66 ["HorizontalAlignment"]
  DUPTABLE R18 K88 [{"Left", "Right"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K85 ["Left"]
  LOADN R19 10
  SETTABLEKS R19 R18 K87 ["Right"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K67 ["Size"]
  LOADN R18 6
  SETTABLEKS R18 R17 K68 ["Spacing"]
  DUPTABLE R18 K93 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R19 K95 [Enum.Font.SourceSansBold]
  SETTABLEKS R19 R18 K90 ["Font"]
  GETTABLEKS R19 R4 K96 ["TitlebarText"]
  SETTABLEKS R19 R18 K91 ["TextColor"]
  LOADN R19 18
  SETTABLEKS R19 R18 K92 ["TextSize"]
  SETTABLEKS R18 R17 K69 ["Text"]
  GETIMPORT R18 K98 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K70 ["VerticalAlignment"]
  SETTABLEKS R17 R16 K99 ["PropertySectionHeader"]
  DUPTABLE R17 K106 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K100 ["IconSize"]
  LOADN R18 4
  SETTABLEKS R18 R17 K68 ["Spacing"]
  LOADN R18 10
  SETTABLEKS R18 R17 K101 ["ScrollBarOffset"]
  LOADN R18 28
  SETTABLEKS R18 R17 K102 ["Height"]
  LOADN R18 24
  SETTABLEKS R18 R17 K103 ["EditorHeight"]
  LOADN R18 10
  SETTABLEKS R18 R17 K104 ["IconSpacing"]
  LOADN R18 28
  SETTABLEKS R18 R17 K105 ["FilePickerSize"]
  SETTABLEKS R17 R16 K107 ["PropertyView"]
  DUPTABLE R17 K113 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R18 50
  SETTABLEKS R18 R17 K108 ["DropdownHeight"]
  LOADN R18 14
  SETTABLEKS R18 R17 K109 ["SubtextSize"]
  GETTABLEKS R18 R4 K114 ["DimmedText"]
  SETTABLEKS R18 R17 K110 ["SubtextColor"]
  LOADN R18 3
  SETTABLEKS R18 R17 K111 ["SubtextOffset"]
  LOADN R18 8
  SETTABLEKS R18 R17 K112 ["DropdownScrollbarSize"]
  SETTABLEKS R17 R16 K115 ["SuggestionDropdown"]
  DUPTABLE R17 K121 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 0
  LOADN R20 80
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K116 ["ButtonSize"]
  DUPTABLE R18 K124 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K85 ["Left"]
  LOADN R19 6
  SETTABLEKS R19 R18 K122 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K87 ["Right"]
  LOADN R19 5
  SETTABLEKS R19 R18 K123 ["Bottom"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K68 ["Spacing"]
  GETIMPORT R18 K80 [UDim2.fromOffset]
  LOADN R19 175
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K117 ["TemplateDropDown"]
  GETTABLEKS R18 R4 K118 ["MenuImage"]
  SETTABLEKS R18 R17 K118 ["MenuImage"]
  GETIMPORT R18 K80 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K119 ["MenuButtonSize"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 40
  CALL R18 4 1
  SETTABLEKS R18 R17 K120 ["MenuItemSize"]
  SETTABLEKS R17 R16 K125 ["TopBar"]
  DUPTABLE R17 K130 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 44
  LOADN R20 125
  CALL R18 2 1
  SETTABLEKS R18 R17 K126 ["CreateMinContentSize"]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 44
  LOADN R20 100
  CALL R18 2 1
  SETTABLEKS R18 R17 K127 ["RenameMinContentSize"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 0
  LOADN R20 75
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K128 ["LabelSize"]
  LOADN R18 10
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETIMPORT R18 K80 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K129 ["TextboxSize"]
  SETTABLEKS R17 R16 K131 ["PresetNamePrompt"]
  DUPTABLE R17 K138 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R18 R4 K132 ["ResetCameraImage"]
  SETTABLEKS R18 R17 K132 ["ResetCameraImage"]
  GETTABLEKS R18 R4 K133 ["ShowWorkspaceImage"]
  SETTABLEKS R18 R17 K133 ["ShowWorkspaceImage"]
  GETTABLEKS R18 R4 K134 ["ShowRigVisualizationImage"]
  SETTABLEKS R18 R17 K134 ["ShowRigVisualizationImage"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 0
  LOADN R20 28
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K135 ["OptionIconSize"]
  DUPTABLE R18 K140 [{"Size", "Position", "Spacing"}]
  GETIMPORT R19 K89 [UDim2.new]
  LOADN R20 0
  LOADN R21 28
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K67 ["Size"]
  GETIMPORT R19 K89 [UDim2.new]
  LOADN R20 1
  LOADN R21 218
  LOADN R22 0
  LOADN R23 10
  CALL R19 4 1
  SETTABLEKS R19 R18 K139 ["Position"]
  LOADN R19 2
  SETTABLEKS R19 R18 K68 ["Spacing"]
  SETTABLEKS R18 R17 K136 ["PreviewButtonBar"]
  DUPTABLE R18 K143 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R19 K146 [Color3.fromRGB]
  LOADN R20 170
  LOADN R21 185
  LOADN R22 200
  CALL R19 3 1
  SETTABLEKS R19 R18 K141 ["Ambient"]
  GETIMPORT R19 K146 [Color3.fromRGB]
  LOADN R20 242
  LOADN R21 236
  LOADN R22 227
  CALL R19 3 1
  SETTABLEKS R19 R18 K73 ["Color"]
  LOADK R19 K147 [{0.5, -1, 0.1}]
  SETTABLEKS R19 R18 K142 ["Direction"]
  SETTABLEKS R18 R17 K137 ["Lighting"]
  SETTABLEKS R17 R16 K148 ["PreviewWindow"]
  DUPTABLE R17 K149 [{"Padding", "Spacing"}]
  DUPTABLE R18 K124 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 6
  SETTABLEKS R19 R18 K85 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K122 ["Top"]
  LOADN R19 6
  SETTABLEKS R19 R18 K87 ["Right"]
  LOADN R19 3
  SETTABLEKS R19 R18 K123 ["Bottom"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K68 ["Spacing"]
  SETTABLEKS R17 R16 K150 ["TreeViewToolbar"]
  DUPTABLE R17 K157 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K151 ["IndicatorOffset"]
  LOADN R18 100
  SETTABLEKS R18 R17 K152 ["IndicatorSize"]
  LOADK R18 K43 [0.5]
  SETTABLEKS R18 R17 K153 ["PreviewRatio"]
  LOADN R18 24
  SETTABLEKS R18 R17 K154 ["StatusMessagePadding"]
  LOADN R18 30
  SETTABLEKS R18 R17 K155 ["ToolbarHeight"]
  LOADN R18 40
  SETTABLEKS R18 R17 K156 ["TopBarHeight"]
  SETTABLEKS R17 R16 K158 ["Sizes"]
  DUPTABLE R17 K169 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding", "SuccessWidget", "FailureWidget"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K159 ["Width"]
  LOADN R18 100
  SETTABLEKS R18 R17 K102 ["Height"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K160 ["TextLabelSize"]
  LOADN R18 24
  SETTABLEKS R18 R17 K92 ["TextSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K109 ["SubtextSize"]
  GETIMPORT R18 K171 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K161 ["TextAlignment"]
  LOADN R18 12
  SETTABLEKS R18 R17 K162 ["LoadingBarHeight"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADK R19 K172 [0.8]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 10
  CALL R18 4 1
  SETTABLEKS R18 R17 K163 ["LoadingBarContainerSize"]
  GETIMPORT R18 K146 [Color3.fromRGB]
  LOADN R19 2
  LOADN R20 183
  LOADN R21 87
  CALL R18 3 1
  SETTABLEKS R18 R17 K164 ["SuccessColor"]
  GETIMPORT R18 K146 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K165 ["FailureColor"]
  DUPTABLE R18 K124 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K85 ["Left"]
  LOADN R19 20
  SETTABLEKS R19 R18 K122 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K87 ["Right"]
  LOADN R19 10
  SETTABLEKS R19 R18 K123 ["Bottom"]
  SETTABLEKS R18 R17 K166 ["TopPadding"]
  DUPTABLE R18 K174 [{"TextProps"}]
  DUPTABLE R19 K175 [{"Font", "TextSize", "TextXAlignment"}]
  GETIMPORT R20 K177 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K90 ["Font"]
  LOADN R20 16
  SETTABLEKS R20 R19 K92 ["TextSize"]
  GETIMPORT R20 K171 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K170 ["TextXAlignment"]
  SETTABLEKS R19 R18 K173 ["TextProps"]
  SETTABLEKS R18 R17 K167 ["SuccessWidget"]
  DUPTABLE R18 K178 [{"Padding"}]
  DUPTABLE R19 K124 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R20 24
  SETTABLEKS R20 R19 K85 ["Left"]
  LOADN R20 12
  SETTABLEKS R20 R19 K122 ["Top"]
  LOADN R20 24
  SETTABLEKS R20 R19 K87 ["Right"]
  LOADN R20 12
  SETTABLEKS R20 R19 K123 ["Bottom"]
  SETTABLEKS R19 R18 K37 ["Padding"]
  SETTABLEKS R18 R17 K168 ["FailureWidget"]
  SETTABLEKS R17 R16 K179 ["UploadWidget"]
  DUPTABLE R17 K180 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R18 100
  SETTABLEKS R18 R17 K102 ["Height"]
  LOADN R18 48
  SETTABLEKS R18 R17 K100 ["IconSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K104 ["IconSpacing"]
  LOADN R18 18
  SETTABLEKS R18 R17 K109 ["SubtextSize"]
  LOADN R18 24
  SETTABLEKS R18 R17 K92 ["TextSize"]
  LOADN R18 244
  SETTABLEKS R18 R17 K159 ["Width"]
  SETTABLEKS R17 R16 K181 ["ErrorWidget"]
  DUPTABLE R17 K183 [{"Width", "Height", "TextSize", "SubtextSize", "TextLabelSize", "TextAlignment", "SubtextColor", "LoadingButtonColor"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K159 ["Width"]
  LOADN R18 156
  SETTABLEKS R18 R17 K102 ["Height"]
  LOADN R18 24
  SETTABLEKS R18 R17 K92 ["TextSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K109 ["SubtextSize"]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K160 ["TextLabelSize"]
  GETIMPORT R18 K171 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K161 ["TextAlignment"]
  GETTABLEKS R18 R4 K184 ["SubText"]
  SETTABLEKS R18 R17 K110 ["SubtextColor"]
  GETTABLEKS R18 R4 K185 ["ButtonText"]
  SETTABLEKS R18 R17 K182 ["LoadingButtonColor"]
  SETTABLEKS R17 R16 K186 ["ParseWidget"]
  DUPTABLE R17 K187 [{"Image", "Size"}]
  LOADK R18 K188 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R18 R17 K75 ["Image"]
  GETIMPORT R18 K80 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["Size"]
  SETTABLEKS R17 R16 K189 ["ErrorIcon"]
  DUPTABLE R17 K187 [{"Image", "Size"}]
  LOADK R18 K190 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R18 R17 K75 ["Image"]
  GETIMPORT R18 K80 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["Size"]
  SETTABLEKS R17 R16 K191 ["WarningIcon"]
  DUPTABLE R17 K192 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K146 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K91 ["TextColor"]
  GETIMPORT R18 K193 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K170 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K92 ["TextSize"]
  SETTABLEKS R17 R16 K194 ["ErrorStatus"]
  DUPTABLE R17 K192 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K146 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 170
  LOADN R21 33
  CALL R18 3 1
  SETTABLEKS R18 R17 K91 ["TextColor"]
  GETIMPORT R18 K193 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K170 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K92 ["TextSize"]
  SETTABLEKS R17 R16 K195 ["WarningStatus"]
  GETTABLEKS R17 R8 K20 ["ExpandablePane"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K20 ["ExpandablePane"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  MOVE R21 R15
  MOVE R22 R13
  DUPTABLE R23 K196 [{"Content"}]
  MOVE R24 R15
  MOVE R25 R14
  DUPTABLE R26 K178 [{"Padding"}]
  DUPTABLE R27 K124 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R28 4
  SETTABLEKS R28 R27 K85 ["Left"]
  LOADN R28 10
  SETTABLEKS R28 R27 K122 ["Top"]
  LOADN R28 4
  SETTABLEKS R28 R27 K87 ["Right"]
  LOADN R28 10
  SETTABLEKS R28 R27 K123 ["Bottom"]
  SETTABLEKS R27 R26 K37 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K23 ["Content"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K197 ["&ImportTree"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K198 ["LinkText"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K198 ["LinkText"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  DUPTABLE R21 K199 [{"TextColor"}]
  GETTABLEKS R22 R4 K200 ["ButtonTextDisabled"]
  SETTABLEKS R22 R21 K91 ["TextColor"]
  SETTABLEKS R21 R20 K201 ["&Disabled"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K18 ["Button"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K18 ["Button"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  MOVE R21 R15
  MOVE R22 R12
  DUPTABLE R23 K202 [{"Size"}]
  GETIMPORT R24 K89 [UDim2.new]
  LOADN R25 0
  LOADN R26 180
  LOADN R27 0
  LOADN R28 32
  CALL R24 4 1
  SETTABLEKS R24 R23 K67 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K203 ["&CopyMeshID"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K204 ["StyledDialog"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K204 ["StyledDialog"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  DUPTABLE R21 K207 [{"ButtonPadding", "ContentPadding"}]
  LOADN R22 12
  SETTABLEKS R22 R21 K205 ["ButtonPadding"]
  LOADN R22 0
  SETTABLEKS R22 R21 K206 ["ContentPadding"]
  SETTABLEKS R21 R20 K208 ["&ImportDialog"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  NEWTABLE R17 16 0
  GETTABLEKS R18 R4 K209 ["RefreshImage"]
  LOADK R19 K210 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K132 ["ResetCameraImage"]
  LOADK R19 K211 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K134 ["ShowRigVisualizationImage"]
  LOADK R19 K212 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K133 ["ShowWorkspaceImage"]
  LOADK R19 K213 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K118 ["MenuImage"]
  LOADK R19 K214 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K36 ["OpenImage"]
  LOADK R19 K215 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K31 ["CleanupImage"]
  LOADK R19 K216 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K27 ["ErrorIconSolid"]
  LOADK R19 K217 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K28 ["SuccessIconSolid"]
  LOADK R19 K218 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K54 ["ActionSelectedOverride"]
  GETIMPORT R19 K146 [Color3.fromRGB]
  LOADN R20 60
  LOADN R21 60
  LOADN R22 60
  CALL R19 3 1
  SETTABLE R19 R17 R18
  NEWTABLE R18 16 0
  GETTABLEKS R19 R4 K209 ["RefreshImage"]
  LOADK R20 K219 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K132 ["ResetCameraImage"]
  LOADK R20 K220 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K134 ["ShowRigVisualizationImage"]
  LOADK R20 K221 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K133 ["ShowWorkspaceImage"]
  LOADK R20 K222 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K118 ["MenuImage"]
  LOADK R20 K223 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K36 ["OpenImage"]
  LOADK R20 K224 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K31 ["CleanupImage"]
  LOADK R20 K225 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K27 ["ErrorIconSolid"]
  LOADK R20 K226 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K28 ["SuccessIconSolid"]
  LOADK R20 K227 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K54 ["ActionSelectedOverride"]
  GETIMPORT R20 K229 [Color3.fromHex]
  LOADK R21 K230 ["#D5F0FF"]
  CALL R20 1 1
  SETTABLE R20 R18 R19
  DUPCLOSURE R19 K231 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R16
  RETURN R19 1
