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
  LOADN R18 4
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
  DUPTABLE R17 K56 [{"Padding", "HeaderHeight", "RowHeight", "CheckboxWidth", "AssetWidth", "DropdownWidth", "FilenameWidth", "StatusWidth", "MinWidth"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 24
  SETTABLEKS R18 R17 K48 ["HeaderHeight"]
  LOADN R18 28
  SETTABLEKS R18 R17 K49 ["RowHeight"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K59 [0.05]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["CheckboxWidth"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K60 [0.2]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K51 ["AssetWidth"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K61 [0.15]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["DropdownWidth"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K62 [0.4]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K53 ["FilenameWidth"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K59 [0.05]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["StatusWidth"]
  GETIMPORT R18 K58 [UDim.new]
  LOADK R19 K59 [0.05]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["MinWidth"]
  SETTABLEKS R17 R16 K63 ["AssetList"]
  DUPTABLE R17 K68 [{"Padding", "DefaultBackgroundOverride", "OnHoverBackgroundOverride", "BorderSizePixel", "BorderColor3"}]
  DUPTABLE R18 K73 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R19 K58 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K69 ["PaddingTop"]
  GETIMPORT R19 K58 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K70 ["PaddingRight"]
  GETIMPORT R19 K58 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K71 ["PaddingBottom"]
  GETIMPORT R19 K58 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K72 ["PaddingLeft"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETTABLEKS R18 R4 K64 ["DefaultBackgroundOverride"]
  SETTABLEKS R18 R17 K64 ["DefaultBackgroundOverride"]
  GETTABLEKS R18 R4 K65 ["OnHoverBackgroundOverride"]
  SETTABLEKS R18 R17 K65 ["OnHoverBackgroundOverride"]
  LOADN R18 1
  SETTABLEKS R18 R17 K66 ["BorderSizePixel"]
  GETTABLEKS R18 R4 K74 ["AssetListCellBorderOverride"]
  SETTABLEKS R18 R17 K67 ["BorderColor3"]
  SETTABLEKS R17 R16 K75 ["AssetListCell"]
  DUPTABLE R17 K83 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R18 8 0
  GETTABLEKS R19 R4 K84 ["MainText"]
  SETTABLEKS R19 R18 K85 ["Color"]
  LOADK R19 K86 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R19 R18 K87 ["Image"]
  GETIMPORT R19 K46 [Vector2.new]
  LOADN R20 12
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K88 ["ImageRectOffset"]
  GETIMPORT R19 K46 [Vector2.new]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K89 ["ImageRectSize"]
  GETIMPORT R19 K92 [UDim2.fromOffset]
  LOADN R20 12
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K79 ["Size"]
  GETTABLEKS R19 R5 K93 ["Selected"]
  DUPTABLE R20 K94 [{"ImageRectOffset"}]
  GETIMPORT R21 K46 [Vector2.new]
  LOADN R22 24
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K88 ["ImageRectOffset"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K76 ["Arrow"]
  GETTABLEKS R18 R4 K95 ["Titlebar"]
  SETTABLEKS R18 R17 K77 ["Background"]
  GETIMPORT R18 K98 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K78 ["HorizontalAlignment"]
  DUPTABLE R18 K100 [{"Left", "Right"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K97 ["Left"]
  LOADN R19 10
  SETTABLEKS R19 R18 K99 ["Right"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K79 ["Size"]
  LOADN R18 6
  SETTABLEKS R18 R17 K80 ["Spacing"]
  DUPTABLE R18 K105 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R19 K107 [Enum.Font.SourceSansBold]
  SETTABLEKS R19 R18 K102 ["Font"]
  GETTABLEKS R19 R4 K108 ["TitlebarText"]
  SETTABLEKS R19 R18 K103 ["TextColor"]
  LOADN R19 18
  SETTABLEKS R19 R18 K104 ["TextSize"]
  SETTABLEKS R18 R17 K81 ["Text"]
  GETIMPORT R18 K110 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K82 ["VerticalAlignment"]
  SETTABLEKS R17 R16 K111 ["PropertySectionHeader"]
  DUPTABLE R17 K118 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K112 ["IconSize"]
  LOADN R18 4
  SETTABLEKS R18 R17 K80 ["Spacing"]
  LOADN R18 10
  SETTABLEKS R18 R17 K113 ["ScrollBarOffset"]
  LOADN R18 28
  SETTABLEKS R18 R17 K114 ["Height"]
  LOADN R18 24
  SETTABLEKS R18 R17 K115 ["EditorHeight"]
  LOADN R18 10
  SETTABLEKS R18 R17 K116 ["IconSpacing"]
  LOADN R18 28
  SETTABLEKS R18 R17 K117 ["FilePickerSize"]
  SETTABLEKS R17 R16 K119 ["PropertyView"]
  DUPTABLE R17 K125 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R18 50
  SETTABLEKS R18 R17 K120 ["DropdownHeight"]
  LOADN R18 14
  SETTABLEKS R18 R17 K121 ["SubtextSize"]
  GETTABLEKS R18 R4 K126 ["DimmedText"]
  SETTABLEKS R18 R17 K122 ["SubtextColor"]
  LOADN R18 3
  SETTABLEKS R18 R17 K123 ["SubtextOffset"]
  LOADN R18 8
  SETTABLEKS R18 R17 K124 ["DropdownScrollbarSize"]
  SETTABLEKS R17 R16 K127 ["SuggestionDropdown"]
  DUPTABLE R17 K133 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 0
  LOADN R20 80
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K128 ["ButtonSize"]
  DUPTABLE R18 K136 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K97 ["Left"]
  LOADN R19 6
  SETTABLEKS R19 R18 K134 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K99 ["Right"]
  LOADN R19 5
  SETTABLEKS R19 R18 K135 ["Bottom"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K80 ["Spacing"]
  GETIMPORT R18 K92 [UDim2.fromOffset]
  LOADN R19 175
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K129 ["TemplateDropDown"]
  GETTABLEKS R18 R4 K130 ["MenuImage"]
  SETTABLEKS R18 R17 K130 ["MenuImage"]
  GETIMPORT R18 K92 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K131 ["MenuButtonSize"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 40
  CALL R18 4 1
  SETTABLEKS R18 R17 K132 ["MenuItemSize"]
  SETTABLEKS R17 R16 K137 ["TopBar"]
  DUPTABLE R17 K142 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 44
  LOADN R20 125
  CALL R18 2 1
  SETTABLEKS R18 R17 K138 ["CreateMinContentSize"]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 44
  LOADN R20 100
  CALL R18 2 1
  SETTABLEKS R18 R17 K139 ["RenameMinContentSize"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 0
  LOADN R20 75
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K140 ["LabelSize"]
  LOADN R18 10
  SETTABLEKS R18 R17 K37 ["Padding"]
  GETIMPORT R18 K92 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K141 ["TextboxSize"]
  SETTABLEKS R17 R16 K143 ["PresetNamePrompt"]
  DUPTABLE R17 K150 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R18 R4 K144 ["ResetCameraImage"]
  SETTABLEKS R18 R17 K144 ["ResetCameraImage"]
  GETTABLEKS R18 R4 K145 ["ShowWorkspaceImage"]
  SETTABLEKS R18 R17 K145 ["ShowWorkspaceImage"]
  GETTABLEKS R18 R4 K146 ["ShowRigVisualizationImage"]
  SETTABLEKS R18 R17 K146 ["ShowRigVisualizationImage"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 0
  LOADN R20 28
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K147 ["OptionIconSize"]
  DUPTABLE R18 K152 [{"Size", "Position", "Spacing"}]
  GETIMPORT R19 K101 [UDim2.new]
  LOADN R20 0
  LOADN R21 28
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K79 ["Size"]
  GETIMPORT R19 K101 [UDim2.new]
  LOADN R20 1
  LOADN R21 218
  LOADN R22 0
  LOADN R23 10
  CALL R19 4 1
  SETTABLEKS R19 R18 K151 ["Position"]
  LOADN R19 2
  SETTABLEKS R19 R18 K80 ["Spacing"]
  SETTABLEKS R18 R17 K148 ["PreviewButtonBar"]
  DUPTABLE R18 K155 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R19 K158 [Color3.fromRGB]
  LOADN R20 170
  LOADN R21 185
  LOADN R22 200
  CALL R19 3 1
  SETTABLEKS R19 R18 K153 ["Ambient"]
  GETIMPORT R19 K158 [Color3.fromRGB]
  LOADN R20 242
  LOADN R21 236
  LOADN R22 227
  CALL R19 3 1
  SETTABLEKS R19 R18 K85 ["Color"]
  LOADK R19 K159 [{0.5, -1, 0.1}]
  SETTABLEKS R19 R18 K154 ["Direction"]
  SETTABLEKS R18 R17 K149 ["Lighting"]
  SETTABLEKS R17 R16 K160 ["PreviewWindow"]
  DUPTABLE R17 K161 [{"Padding", "Spacing"}]
  DUPTABLE R18 K136 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 6
  SETTABLEKS R19 R18 K97 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K134 ["Top"]
  LOADN R19 6
  SETTABLEKS R19 R18 K99 ["Right"]
  LOADN R19 3
  SETTABLEKS R19 R18 K135 ["Bottom"]
  SETTABLEKS R18 R17 K37 ["Padding"]
  LOADN R18 6
  SETTABLEKS R18 R17 K80 ["Spacing"]
  SETTABLEKS R17 R16 K162 ["TreeViewToolbar"]
  DUPTABLE R17 K169 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R18 20
  SETTABLEKS R18 R17 K163 ["IndicatorOffset"]
  LOADN R18 100
  SETTABLEKS R18 R17 K164 ["IndicatorSize"]
  LOADK R18 K43 [0.5]
  SETTABLEKS R18 R17 K165 ["PreviewRatio"]
  LOADN R18 24
  SETTABLEKS R18 R17 K166 ["StatusMessagePadding"]
  LOADN R18 30
  SETTABLEKS R18 R17 K167 ["ToolbarHeight"]
  LOADN R18 40
  SETTABLEKS R18 R17 K168 ["TopBarHeight"]
  SETTABLEKS R17 R16 K170 ["Sizes"]
  DUPTABLE R17 K184 [{"Width", "Height", "ExpandedWidth", "ExpandedHeight", "TextLabelSize", "BoldFont", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding", "SuccessWidget", "FailureWidget"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K171 ["Width"]
  LOADN R18 100
  SETTABLEKS R18 R17 K114 ["Height"]
  LOADN R18 244
  SETTABLEKS R18 R17 K172 ["ExpandedWidth"]
  LOADN R18 180
  SETTABLEKS R18 R17 K173 ["ExpandedHeight"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K174 ["TextLabelSize"]
  GETIMPORT R18 K107 [Enum.Font.SourceSansBold]
  SETTABLEKS R18 R17 K175 ["BoldFont"]
  LOADN R18 24
  SETTABLEKS R18 R17 K104 ["TextSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K121 ["SubtextSize"]
  GETIMPORT R18 K186 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K176 ["TextAlignment"]
  LOADN R18 12
  SETTABLEKS R18 R17 K177 ["LoadingBarHeight"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADK R19 K187 [0.8]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 10
  CALL R18 4 1
  SETTABLEKS R18 R17 K178 ["LoadingBarContainerSize"]
  GETIMPORT R18 K158 [Color3.fromRGB]
  LOADN R19 2
  LOADN R20 183
  LOADN R21 87
  CALL R18 3 1
  SETTABLEKS R18 R17 K179 ["SuccessColor"]
  GETIMPORT R18 K158 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K180 ["FailureColor"]
  DUPTABLE R18 K136 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K97 ["Left"]
  LOADN R19 20
  SETTABLEKS R19 R18 K134 ["Top"]
  LOADN R19 10
  SETTABLEKS R19 R18 K99 ["Right"]
  LOADN R19 10
  SETTABLEKS R19 R18 K135 ["Bottom"]
  SETTABLEKS R18 R17 K181 ["TopPadding"]
  DUPTABLE R18 K189 [{"TextProps"}]
  DUPTABLE R19 K190 [{"Font", "TextSize", "TextXAlignment"}]
  GETIMPORT R20 K192 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K102 ["Font"]
  LOADN R20 16
  SETTABLEKS R20 R19 K104 ["TextSize"]
  GETIMPORT R20 K186 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K185 ["TextXAlignment"]
  SETTABLEKS R19 R18 K188 ["TextProps"]
  SETTABLEKS R18 R17 K182 ["SuccessWidget"]
  DUPTABLE R18 K193 [{"Padding"}]
  DUPTABLE R19 K136 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R20 24
  SETTABLEKS R20 R19 K97 ["Left"]
  LOADN R20 12
  SETTABLEKS R20 R19 K134 ["Top"]
  LOADN R20 24
  SETTABLEKS R20 R19 K99 ["Right"]
  LOADN R20 6
  SETTABLEKS R20 R19 K135 ["Bottom"]
  SETTABLEKS R19 R18 K37 ["Padding"]
  SETTABLEKS R18 R17 K183 ["FailureWidget"]
  SETTABLEKS R17 R16 K194 ["UploadWidget"]
  DUPTABLE R17 K196 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width", "Dropdown"}]
  LOADN R18 100
  SETTABLEKS R18 R17 K114 ["Height"]
  LOADN R18 48
  SETTABLEKS R18 R17 K112 ["IconSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K116 ["IconSpacing"]
  LOADN R18 18
  SETTABLEKS R18 R17 K121 ["SubtextSize"]
  LOADN R18 24
  SETTABLEKS R18 R17 K104 ["TextSize"]
  LOADN R18 244
  SETTABLEKS R18 R17 K171 ["Width"]
  DUPTABLE R18 K198 [{"Header", "Content"}]
  DUPTABLE R19 K199 [{"Arrow", "Text", "Spacing", "Size"}]
  NEWTABLE R20 8 0
  GETTABLEKS R21 R4 K84 ["MainText"]
  SETTABLEKS R21 R20 K85 ["Color"]
  LOADK R21 K86 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R21 R20 K87 ["Image"]
  GETIMPORT R21 K46 [Vector2.new]
  LOADN R22 12
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K88 ["ImageRectOffset"]
  GETIMPORT R21 K46 [Vector2.new]
  LOADN R22 12
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K89 ["ImageRectSize"]
  GETIMPORT R21 K92 [UDim2.fromOffset]
  LOADN R22 12
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K79 ["Size"]
  GETTABLEKS R21 R5 K93 ["Selected"]
  DUPTABLE R22 K94 [{"ImageRectOffset"}]
  GETIMPORT R23 K46 [Vector2.new]
  LOADN R24 24
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K88 ["ImageRectOffset"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K76 ["Arrow"]
  DUPTABLE R20 K200 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
  GETIMPORT R21 K192 [Enum.Font.SourceSans]
  SETTABLEKS R21 R20 K102 ["Font"]
  GETTABLEKS R21 R4 K108 ["TitlebarText"]
  SETTABLEKS R21 R20 K103 ["TextColor"]
  LOADN R21 16
  SETTABLEKS R21 R20 K104 ["TextSize"]
  GETIMPORT R21 K186 [Enum.TextXAlignment.Center]
  SETTABLEKS R21 R20 K185 ["TextXAlignment"]
  SETTABLEKS R20 R19 K81 ["Text"]
  LOADN R20 6
  SETTABLEKS R20 R19 K80 ["Spacing"]
  GETIMPORT R20 K101 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 16
  CALL R20 4 1
  SETTABLEKS R20 R19 K79 ["Size"]
  SETTABLEKS R19 R18 K197 ["Header"]
  DUPTABLE R19 K193 [{"Padding"}]
  DUPTABLE R20 K201 [{"Top", "Bottom"}]
  LOADN R21 6
  SETTABLEKS R21 R20 K134 ["Top"]
  LOADN R21 6
  SETTABLEKS R21 R20 K135 ["Bottom"]
  SETTABLEKS R20 R19 K37 ["Padding"]
  SETTABLEKS R19 R18 K23 ["Content"]
  SETTABLEKS R18 R17 K195 ["Dropdown"]
  SETTABLEKS R17 R16 K202 ["ErrorWidget"]
  DUPTABLE R17 K204 [{"Width", "Height", "TextSize", "SubtextSize", "TextLabelSize", "TextAlignment", "SubtextColor", "LoadingButtonColor"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K171 ["Width"]
  LOADN R18 156
  SETTABLEKS R18 R17 K114 ["Height"]
  LOADN R18 24
  SETTABLEKS R18 R17 K104 ["TextSize"]
  LOADN R18 16
  SETTABLEKS R18 R17 K121 ["SubtextSize"]
  GETIMPORT R18 K101 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K174 ["TextLabelSize"]
  GETIMPORT R18 K186 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K176 ["TextAlignment"]
  GETTABLEKS R18 R4 K205 ["SubText"]
  SETTABLEKS R18 R17 K122 ["SubtextColor"]
  GETTABLEKS R18 R4 K206 ["ButtonText"]
  SETTABLEKS R18 R17 K203 ["LoadingButtonColor"]
  SETTABLEKS R17 R16 K207 ["ParseWidget"]
  DUPTABLE R17 K208 [{"Image", "Size"}]
  LOADK R18 K209 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R18 R17 K87 ["Image"]
  GETIMPORT R18 K92 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K79 ["Size"]
  SETTABLEKS R17 R16 K210 ["ErrorIcon"]
  DUPTABLE R17 K208 [{"Image", "Size"}]
  LOADK R18 K211 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R18 R17 K87 ["Image"]
  GETIMPORT R18 K92 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K79 ["Size"]
  SETTABLEKS R17 R16 K212 ["WarningIcon"]
  DUPTABLE R17 K213 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K158 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 85
  LOADN R21 85
  CALL R18 3 1
  SETTABLEKS R18 R17 K103 ["TextColor"]
  GETIMPORT R18 K214 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K185 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K104 ["TextSize"]
  SETTABLEKS R17 R16 K215 ["ErrorStatus"]
  DUPTABLE R17 K213 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R18 K158 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 170
  LOADN R21 33
  CALL R18 3 1
  SETTABLEKS R18 R17 K103 ["TextColor"]
  GETIMPORT R18 K214 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K185 ["TextXAlignment"]
  LOADN R18 10
  SETTABLEKS R18 R17 K104 ["TextSize"]
  SETTABLEKS R17 R16 K216 ["WarningStatus"]
  GETTABLEKS R17 R8 K20 ["ExpandablePane"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K20 ["ExpandablePane"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  MOVE R21 R15
  MOVE R22 R13
  DUPTABLE R23 K217 [{"Content"}]
  MOVE R24 R15
  MOVE R25 R14
  DUPTABLE R26 K193 [{"Padding"}]
  DUPTABLE R27 K136 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R28 4
  SETTABLEKS R28 R27 K97 ["Left"]
  LOADN R28 10
  SETTABLEKS R28 R27 K134 ["Top"]
  LOADN R28 4
  SETTABLEKS R28 R27 K99 ["Right"]
  LOADN R28 10
  SETTABLEKS R28 R27 K135 ["Bottom"]
  SETTABLEKS R27 R26 K37 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K23 ["Content"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K218 ["&ImportTree"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K219 ["LinkText"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K219 ["LinkText"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  DUPTABLE R21 K220 [{"TextColor"}]
  GETTABLEKS R22 R4 K221 ["ButtonTextDisabled"]
  SETTABLEKS R22 R21 K103 ["TextColor"]
  SETTABLEKS R21 R20 K222 ["&Disabled"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K18 ["Button"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K18 ["Button"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  MOVE R21 R15
  MOVE R22 R12
  DUPTABLE R23 K223 [{"Size"}]
  GETIMPORT R24 K101 [UDim2.new]
  LOADN R25 0
  LOADN R26 180
  LOADN R27 0
  LOADN R28 32
  CALL R24 4 1
  SETTABLEKS R24 R23 K79 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K224 ["&CopyMeshID"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K225 ["StyledDialog"]
  MOVE R18 R15
  GETTABLEKS R20 R8 K225 ["StyledDialog"]
  GETTABLE R19 R6 R20
  NEWTABLE R20 1 0
  DUPTABLE R21 K228 [{"ButtonPadding", "ContentPadding"}]
  LOADN R22 12
  SETTABLEKS R22 R21 K226 ["ButtonPadding"]
  LOADN R22 0
  SETTABLEKS R22 R21 K227 ["ContentPadding"]
  SETTABLEKS R21 R20 K229 ["&ImportDialog"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  NEWTABLE R17 16 0
  GETTABLEKS R18 R4 K230 ["RefreshImage"]
  LOADK R19 K231 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K144 ["ResetCameraImage"]
  LOADK R19 K232 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K146 ["ShowRigVisualizationImage"]
  LOADK R19 K233 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K145 ["ShowWorkspaceImage"]
  LOADK R19 K234 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K130 ["MenuImage"]
  LOADK R19 K235 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K36 ["OpenImage"]
  LOADK R19 K236 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K31 ["CleanupImage"]
  LOADK R19 K237 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K27 ["ErrorIconSolid"]
  LOADK R19 K238 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K28 ["SuccessIconSolid"]
  LOADK R19 K239 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K64 ["DefaultBackgroundOverride"]
  GETIMPORT R19 K241 [Color3.fromHex]
  LOADK R20 K242 ["#2C2C2C"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K65 ["OnHoverBackgroundOverride"]
  GETIMPORT R19 K241 [Color3.fromHex]
  LOADK R20 K243 ["#565656"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R4 K74 ["AssetListCellBorderOverride"]
  GETIMPORT R19 K241 [Color3.fromHex]
  LOADK R20 K244 ["#171717"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  NEWTABLE R18 16 0
  GETTABLEKS R19 R4 K230 ["RefreshImage"]
  LOADK R20 K245 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K144 ["ResetCameraImage"]
  LOADK R20 K246 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K146 ["ShowRigVisualizationImage"]
  LOADK R20 K247 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K145 ["ShowWorkspaceImage"]
  LOADK R20 K248 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K130 ["MenuImage"]
  LOADK R20 K249 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K36 ["OpenImage"]
  LOADK R20 K250 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K31 ["CleanupImage"]
  LOADK R20 K251 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K27 ["ErrorIconSolid"]
  LOADK R20 K252 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K28 ["SuccessIconSolid"]
  LOADK R20 K253 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K64 ["DefaultBackgroundOverride"]
  GETIMPORT R20 K241 [Color3.fromHex]
  LOADK R21 K254 ["#F6F6F6"]
  CALL R20 1 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K65 ["OnHoverBackgroundOverride"]
  GETIMPORT R20 K241 [Color3.fromHex]
  LOADK R21 K255 ["#E1E1E1"]
  CALL R20 1 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K74 ["AssetListCellBorderOverride"]
  GETIMPORT R20 K241 [Color3.fromHex]
  LOADK R21 K255 ["#E1E1E1"]
  CALL R20 1 1
  SETTABLE R20 R18 R19
  DUPCLOSURE R19 K256 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R16
  RETURN R19 1
