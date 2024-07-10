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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagAssetImporterPackageMigration"]
  CALL R2 1 1
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Dash"]
  CALL R3 1 1
  JUMP [+2]
  GETTABLEKS R3 R1 K11 ["Dash"]
  GETTABLEKS R4 R1 K12 ["Style"]
  GETTABLEKS R5 R4 K13 ["StyleKey"]
  GETTABLEKS R7 R1 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["StyleModifier"]
  GETTABLEKS R8 R4 K16 ["Themes"]
  GETTABLEKS R7 R8 K17 ["BaseTheme"]
  GETTABLEKS R9 R4 K16 ["Themes"]
  GETTABLEKS R8 R9 K18 ["StudioTheme"]
  GETTABLEKS R9 R4 K19 ["ComponentSymbols"]
  GETTABLEKS R10 R1 K20 ["UIData"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R10 K21 ["ExpandablePane"]
  GETTABLEKS R12 R13 K22 ["style"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K23 ["&Section"]
  GETTABLEKS R13 R11 K24 ["Content"]
  GETTABLEKS R14 R3 K25 ["join"]
  NEWTABLE R15 32 0
  DUPTABLE R16 K28 [{"SmallLength", "LargeLength"}]
  LOADN R17 16
  SETTABLEKS R17 R16 K26 ["SmallLength"]
  LOADN R17 32
  SETTABLEKS R17 R16 K27 ["LargeLength"]
  SETTABLEKS R16 R15 K29 ["Icons"]
  DUPTABLE R16 K41 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
  GETTABLEKS R17 R5 K30 ["CleanupImage"]
  SETTABLEKS R17 R16 K30 ["CleanupImage"]
  LOADN R17 40
  SETTABLEKS R17 R16 K31 ["ControlsHeight"]
  LOADK R17 K42 [0.5]
  SETTABLEKS R17 R16 K32 ["DisabledTransparancy"]
  LOADN R17 120
  SETTABLEKS R17 R16 K33 ["ImportButtonWidth"]
  LOADN R17 8
  SETTABLEKS R17 R16 K34 ["LoadingBarWidth"]
  GETTABLEKS R17 R5 K35 ["OpenImage"]
  SETTABLEKS R17 R16 K35 ["OpenImage"]
  LOADN R17 8
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 75
  SETTABLEKS R17 R16 K37 ["ProgressBarHeight"]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 139
  LOADN R19 64
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["WindowSize"]
  LOADN R17 2
  SETTABLEKS R17 R16 K39 ["IconPadding"]
  LOADN R17 24
  SETTABLEKS R17 R16 K40 ["IconButtonSize"]
  SETTABLEKS R16 R15 K46 ["ImportQueue"]
  DUPTABLE R16 K48 [{"Padding", "RowHeight"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 28
  SETTABLEKS R17 R16 K47 ["RowHeight"]
  SETTABLEKS R16 R15 K49 ["AssetList"]
  DUPTABLE R16 K50 [{"Padding"}]
  DUPTABLE R17 K55 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R18 K57 [UDim.new]
  LOADN R19 0
  LOADN R20 2
  CALL R18 2 1
  SETTABLEKS R18 R17 K51 ["PaddingTop"]
  GETIMPORT R18 K57 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["PaddingRight"]
  GETIMPORT R18 K57 [UDim.new]
  LOADN R19 0
  LOADN R20 2
  CALL R18 2 1
  SETTABLEKS R18 R17 K53 ["PaddingBottom"]
  GETIMPORT R18 K57 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["PaddingLeft"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  SETTABLEKS R16 R15 K58 ["AssetListCell"]
  DUPTABLE R16 K66 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K67 ["MainText"]
  SETTABLEKS R18 R17 K68 ["Color"]
  LOADK R18 K69 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R18 R17 K70 ["Image"]
  GETIMPORT R18 K45 [Vector2.new]
  LOADN R19 12
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K71 ["ImageRectOffset"]
  GETIMPORT R18 K45 [Vector2.new]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K72 ["ImageRectSize"]
  GETIMPORT R18 K75 [UDim2.fromOffset]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K62 ["Size"]
  GETTABLEKS R18 R6 K76 ["Selected"]
  DUPTABLE R19 K77 [{"ImageRectOffset"}]
  GETIMPORT R20 K45 [Vector2.new]
  LOADN R21 24
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K71 ["ImageRectOffset"]
  SETTABLE R19 R17 R18
  SETTABLEKS R17 R16 K59 ["Arrow"]
  GETTABLEKS R17 R5 K78 ["Titlebar"]
  SETTABLEKS R17 R16 K60 ["Background"]
  GETIMPORT R17 K81 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K61 ["HorizontalAlignment"]
  DUPTABLE R17 K83 [{"Left", "Right"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K80 ["Left"]
  LOADN R18 10
  SETTABLEKS R18 R17 K82 ["Right"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 32
  CALL R17 4 1
  SETTABLEKS R17 R16 K62 ["Size"]
  LOADN R17 6
  SETTABLEKS R17 R16 K63 ["Spacing"]
  DUPTABLE R17 K88 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R18 K90 [Enum.Font.SourceSansBold]
  SETTABLEKS R18 R17 K85 ["Font"]
  GETTABLEKS R18 R5 K91 ["TitlebarText"]
  SETTABLEKS R18 R17 K86 ["TextColor"]
  LOADN R18 18
  SETTABLEKS R18 R17 K87 ["TextSize"]
  SETTABLEKS R17 R16 K64 ["Text"]
  GETIMPORT R17 K93 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K65 ["VerticalAlignment"]
  SETTABLEKS R16 R15 K94 ["PropertySectionHeader"]
  DUPTABLE R16 K101 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R17 20
  SETTABLEKS R17 R16 K95 ["IconSize"]
  LOADN R17 4
  SETTABLEKS R17 R16 K63 ["Spacing"]
  LOADN R17 10
  SETTABLEKS R17 R16 K96 ["ScrollBarOffset"]
  LOADN R17 28
  SETTABLEKS R17 R16 K97 ["Height"]
  LOADN R17 24
  SETTABLEKS R17 R16 K98 ["EditorHeight"]
  LOADN R17 10
  SETTABLEKS R17 R16 K99 ["IconSpacing"]
  LOADN R17 28
  SETTABLEKS R17 R16 K100 ["FilePickerSize"]
  SETTABLEKS R16 R15 K102 ["PropertyView"]
  DUPTABLE R16 K108 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R17 50
  SETTABLEKS R17 R16 K103 ["DropdownHeight"]
  LOADN R17 14
  SETTABLEKS R17 R16 K104 ["SubtextSize"]
  GETTABLEKS R17 R5 K109 ["DimmedText"]
  SETTABLEKS R17 R16 K105 ["SubtextColor"]
  LOADN R17 3
  SETTABLEKS R17 R16 K106 ["SubtextOffset"]
  LOADN R17 8
  SETTABLEKS R17 R16 K107 ["DropdownScrollbarSize"]
  SETTABLEKS R16 R15 K110 ["SuggestionDropdown"]
  DUPTABLE R16 K116 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 0
  LOADN R19 80
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K111 ["ButtonSize"]
  DUPTABLE R17 K119 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K80 ["Left"]
  LOADN R18 6
  SETTABLEKS R18 R17 K117 ["Top"]
  LOADN R18 10
  SETTABLEKS R18 R17 K82 ["Right"]
  LOADN R18 5
  SETTABLEKS R18 R17 K118 ["Bottom"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 6
  SETTABLEKS R17 R16 K63 ["Spacing"]
  GETIMPORT R17 K75 [UDim2.fromOffset]
  LOADN R18 175
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K112 ["TemplateDropDown"]
  GETTABLEKS R17 R5 K113 ["MenuImage"]
  SETTABLEKS R17 R16 K113 ["MenuImage"]
  GETIMPORT R17 K75 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K114 ["MenuButtonSize"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 40
  CALL R17 4 1
  SETTABLEKS R17 R16 K115 ["MenuItemSize"]
  SETTABLEKS R16 R15 K120 ["TopBar"]
  DUPTABLE R16 K125 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 44
  LOADN R19 125
  CALL R17 2 1
  SETTABLEKS R17 R16 K121 ["CreateMinContentSize"]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 44
  LOADN R19 100
  CALL R17 2 1
  SETTABLEKS R17 R16 K122 ["RenameMinContentSize"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 0
  LOADN R19 75
  LOADN R20 0
  LOADN R21 32
  CALL R17 4 1
  SETTABLEKS R17 R16 K123 ["LabelSize"]
  LOADN R17 10
  SETTABLEKS R17 R16 K36 ["Padding"]
  GETIMPORT R17 K75 [UDim2.fromOffset]
  LOADN R18 200
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K124 ["TextboxSize"]
  SETTABLEKS R16 R15 K126 ["PresetNamePrompt"]
  DUPTABLE R16 K133 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R17 R5 K127 ["ResetCameraImage"]
  SETTABLEKS R17 R16 K127 ["ResetCameraImage"]
  GETTABLEKS R17 R5 K128 ["ShowWorkspaceImage"]
  SETTABLEKS R17 R16 K128 ["ShowWorkspaceImage"]
  GETTABLEKS R17 R5 K129 ["ShowRigVisualizationImage"]
  SETTABLEKS R17 R16 K129 ["ShowRigVisualizationImage"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K130 ["OptionIconSize"]
  DUPTABLE R17 K135 [{"Size", "Position", "Spacing"}]
  GETIMPORT R18 K84 [UDim2.new]
  LOADN R19 0
  LOADN R20 28
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K62 ["Size"]
  GETIMPORT R18 K84 [UDim2.new]
  LOADN R19 1
  LOADN R20 218
  LOADN R21 0
  LOADN R22 10
  CALL R18 4 1
  SETTABLEKS R18 R17 K134 ["Position"]
  LOADN R18 2
  SETTABLEKS R18 R17 K63 ["Spacing"]
  SETTABLEKS R17 R16 K131 ["PreviewButtonBar"]
  DUPTABLE R17 K138 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R18 K141 [Color3.fromRGB]
  LOADN R19 170
  LOADN R20 185
  LOADN R21 200
  CALL R18 3 1
  SETTABLEKS R18 R17 K136 ["Ambient"]
  GETIMPORT R18 K141 [Color3.fromRGB]
  LOADN R19 242
  LOADN R20 236
  LOADN R21 227
  CALL R18 3 1
  SETTABLEKS R18 R17 K68 ["Color"]
  LOADK R19 K42 [0.5]
  LOADN R20 255
  LOADK R21 K142 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R18 K144 [Vector3.new]
  CALL R18 3 1
  SETTABLEKS R18 R17 K137 ["Direction"]
  SETTABLEKS R17 R16 K132 ["Lighting"]
  SETTABLEKS R16 R15 K145 ["PreviewWindow"]
  DUPTABLE R16 K146 [{"Padding", "Spacing"}]
  DUPTABLE R17 K119 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 6
  SETTABLEKS R18 R17 K80 ["Left"]
  LOADN R18 4
  SETTABLEKS R18 R17 K117 ["Top"]
  LOADN R18 6
  SETTABLEKS R18 R17 K82 ["Right"]
  LOADN R18 3
  SETTABLEKS R18 R17 K118 ["Bottom"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 6
  SETTABLEKS R17 R16 K63 ["Spacing"]
  SETTABLEKS R16 R15 K147 ["TreeViewToolbar"]
  DUPTABLE R16 K154 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R17 20
  SETTABLEKS R17 R16 K148 ["IndicatorOffset"]
  LOADN R17 100
  SETTABLEKS R17 R16 K149 ["IndicatorSize"]
  LOADK R17 K42 [0.5]
  SETTABLEKS R17 R16 K150 ["PreviewRatio"]
  LOADN R17 24
  SETTABLEKS R17 R16 K151 ["StatusMessagePadding"]
  LOADN R17 30
  SETTABLEKS R17 R16 K152 ["ToolbarHeight"]
  LOADN R17 40
  SETTABLEKS R17 R16 K153 ["TopBarHeight"]
  SETTABLEKS R16 R15 K155 ["Sizes"]
  DUPTABLE R16 K164 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R17 244
  SETTABLEKS R17 R16 K156 ["Width"]
  LOADN R17 100
  SETTABLEKS R17 R16 K97 ["Height"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADN R18 1
  LOADN R19 246
  LOADN R20 0
  LOADN R21 22
  CALL R17 4 1
  SETTABLEKS R17 R16 K157 ["TextLabelSize"]
  LOADN R17 24
  SETTABLEKS R17 R16 K87 ["TextSize"]
  LOADN R17 16
  SETTABLEKS R17 R16 K104 ["SubtextSize"]
  GETIMPORT R17 K166 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K158 ["TextAlignment"]
  LOADN R17 12
  SETTABLEKS R17 R16 K159 ["LoadingBarHeight"]
  GETIMPORT R17 K84 [UDim2.new]
  LOADK R18 K167 [0.8]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K160 ["LoadingBarContainerSize"]
  GETIMPORT R17 K141 [Color3.fromRGB]
  LOADN R18 2
  LOADN R19 183
  LOADN R20 87
  CALL R17 3 1
  SETTABLEKS R17 R16 K161 ["SuccessColor"]
  GETIMPORT R17 K141 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 85
  LOADN R20 85
  CALL R17 3 1
  SETTABLEKS R17 R16 K162 ["FailureColor"]
  DUPTABLE R17 K119 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K80 ["Left"]
  LOADN R18 20
  SETTABLEKS R18 R17 K117 ["Top"]
  LOADN R18 10
  SETTABLEKS R18 R17 K82 ["Right"]
  LOADN R18 10
  SETTABLEKS R18 R17 K118 ["Bottom"]
  SETTABLEKS R17 R16 K163 ["TopPadding"]
  SETTABLEKS R16 R15 K168 ["UploadWidget"]
  DUPTABLE R16 K169 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R17 100
  SETTABLEKS R17 R16 K97 ["Height"]
  LOADN R17 48
  SETTABLEKS R17 R16 K95 ["IconSize"]
  LOADN R17 16
  SETTABLEKS R17 R16 K99 ["IconSpacing"]
  LOADN R17 18
  SETTABLEKS R17 R16 K104 ["SubtextSize"]
  LOADN R17 24
  SETTABLEKS R17 R16 K87 ["TextSize"]
  LOADN R17 244
  SETTABLEKS R17 R16 K156 ["Width"]
  SETTABLEKS R16 R15 K170 ["ErrorWidget"]
  DUPTABLE R16 K171 [{"Image", "Size"}]
  LOADK R17 K172 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R17 R16 K70 ["Image"]
  GETIMPORT R17 K75 [UDim2.fromOffset]
  LOADN R18 20
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["Size"]
  SETTABLEKS R16 R15 K173 ["ErrorIcon"]
  DUPTABLE R16 K171 [{"Image", "Size"}]
  LOADK R17 K174 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R17 R16 K70 ["Image"]
  GETIMPORT R17 K75 [UDim2.fromOffset]
  LOADN R18 20
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["Size"]
  SETTABLEKS R16 R15 K175 ["WarningIcon"]
  DUPTABLE R16 K176 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R17 K141 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 85
  LOADN R20 85
  CALL R17 3 1
  SETTABLEKS R17 R16 K86 ["TextColor"]
  GETIMPORT R17 K177 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K165 ["TextXAlignment"]
  LOADN R17 10
  SETTABLEKS R17 R16 K87 ["TextSize"]
  SETTABLEKS R16 R15 K178 ["ErrorStatus"]
  DUPTABLE R16 K176 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R17 K141 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 170
  LOADN R20 33
  CALL R17 3 1
  SETTABLEKS R17 R16 K86 ["TextColor"]
  GETIMPORT R17 K177 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K165 ["TextXAlignment"]
  LOADN R17 10
  SETTABLEKS R17 R16 K87 ["TextSize"]
  SETTABLEKS R16 R15 K179 ["WarningStatus"]
  GETTABLEKS R16 R9 K21 ["ExpandablePane"]
  MOVE R17 R14
  GETTABLEKS R19 R9 K21 ["ExpandablePane"]
  GETTABLE R18 R7 R19
  NEWTABLE R19 1 0
  MOVE R20 R14
  MOVE R21 R12
  DUPTABLE R22 K180 [{"Content"}]
  MOVE R23 R14
  MOVE R24 R13
  DUPTABLE R25 K50 [{"Padding"}]
  DUPTABLE R26 K119 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R27 4
  SETTABLEKS R27 R26 K80 ["Left"]
  LOADN R27 10
  SETTABLEKS R27 R26 K117 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K82 ["Right"]
  LOADN R27 10
  SETTABLEKS R27 R26 K118 ["Bottom"]
  SETTABLEKS R26 R25 K36 ["Padding"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K24 ["Content"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K181 ["&ImportTree"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R9 K182 ["LinkText"]
  MOVE R17 R14
  GETTABLEKS R19 R9 K182 ["LinkText"]
  GETTABLE R18 R7 R19
  NEWTABLE R19 1 0
  DUPTABLE R20 K183 [{"TextColor"}]
  GETTABLEKS R21 R5 K184 ["TextDisabled"]
  SETTABLEKS R21 R20 K86 ["TextColor"]
  SETTABLEKS R20 R19 K185 ["&Disabled"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 8 0
  GETTABLEKS R17 R5 K186 ["RefreshImage"]
  LOADK R18 K187 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K127 ["ResetCameraImage"]
  LOADK R18 K188 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K129 ["ShowRigVisualizationImage"]
  LOADK R18 K189 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K128 ["ShowWorkspaceImage"]
  LOADK R18 K190 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K113 ["MenuImage"]
  LOADK R18 K191 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K35 ["OpenImage"]
  LOADK R18 K192 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K30 ["CleanupImage"]
  LOADK R18 K193 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K186 ["RefreshImage"]
  LOADK R19 K194 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K127 ["ResetCameraImage"]
  LOADK R19 K195 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K129 ["ShowRigVisualizationImage"]
  LOADK R19 K196 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K128 ["ShowWorkspaceImage"]
  LOADK R19 K197 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K113 ["MenuImage"]
  LOADK R19 K198 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K35 ["OpenImage"]
  LOADK R19 K199 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K30 ["CleanupImage"]
  LOADK R19 K200 ["rbxasset://studio_svg_textures/Qt/Emulation/Light/Standard/Cleanup.png"]
  SETTABLE R19 R17 R18
  DUPCLOSURE R18 K201 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
