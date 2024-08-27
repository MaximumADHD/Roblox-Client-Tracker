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
  LOADN R17 50
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
  DUPTABLE R16 K51 [{"Padding", "ActionSelectedOverride"}]
  DUPTABLE R17 K56 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 2
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["PaddingTop"]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K53 ["PaddingRight"]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 2
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["PaddingBottom"]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["PaddingLeft"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  GETTABLEKS R17 R5 K50 ["ActionSelectedOverride"]
  SETTABLEKS R17 R16 K50 ["ActionSelectedOverride"]
  SETTABLEKS R16 R15 K59 ["AssetListCell"]
  DUPTABLE R16 K67 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K68 ["MainText"]
  SETTABLEKS R18 R17 K69 ["Color"]
  LOADK R18 K70 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R18 R17 K71 ["Image"]
  GETIMPORT R18 K45 [Vector2.new]
  LOADN R19 12
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K72 ["ImageRectOffset"]
  GETIMPORT R18 K45 [Vector2.new]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K73 ["ImageRectSize"]
  GETIMPORT R18 K76 [UDim2.fromOffset]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K63 ["Size"]
  GETTABLEKS R18 R6 K77 ["Selected"]
  DUPTABLE R19 K78 [{"ImageRectOffset"}]
  GETIMPORT R20 K45 [Vector2.new]
  LOADN R21 24
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K72 ["ImageRectOffset"]
  SETTABLE R19 R17 R18
  SETTABLEKS R17 R16 K60 ["Arrow"]
  GETTABLEKS R17 R5 K79 ["Titlebar"]
  SETTABLEKS R17 R16 K61 ["Background"]
  GETIMPORT R17 K82 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K62 ["HorizontalAlignment"]
  DUPTABLE R17 K84 [{"Left", "Right"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K81 ["Left"]
  LOADN R18 10
  SETTABLEKS R18 R17 K83 ["Right"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 32
  CALL R17 4 1
  SETTABLEKS R17 R16 K63 ["Size"]
  LOADN R17 6
  SETTABLEKS R17 R16 K64 ["Spacing"]
  DUPTABLE R17 K89 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R18 K91 [Enum.Font.SourceSansBold]
  SETTABLEKS R18 R17 K86 ["Font"]
  GETTABLEKS R18 R5 K92 ["TitlebarText"]
  SETTABLEKS R18 R17 K87 ["TextColor"]
  LOADN R18 18
  SETTABLEKS R18 R17 K88 ["TextSize"]
  SETTABLEKS R17 R16 K65 ["Text"]
  GETIMPORT R17 K94 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K66 ["VerticalAlignment"]
  SETTABLEKS R16 R15 K95 ["PropertySectionHeader"]
  DUPTABLE R16 K102 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
  LOADN R17 20
  SETTABLEKS R17 R16 K96 ["IconSize"]
  LOADN R17 4
  SETTABLEKS R17 R16 K64 ["Spacing"]
  LOADN R17 10
  SETTABLEKS R17 R16 K97 ["ScrollBarOffset"]
  LOADN R17 28
  SETTABLEKS R17 R16 K98 ["Height"]
  LOADN R17 24
  SETTABLEKS R17 R16 K99 ["EditorHeight"]
  LOADN R17 10
  SETTABLEKS R17 R16 K100 ["IconSpacing"]
  LOADN R17 28
  SETTABLEKS R17 R16 K101 ["FilePickerSize"]
  SETTABLEKS R16 R15 K103 ["PropertyView"]
  DUPTABLE R16 K109 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
  LOADN R17 50
  SETTABLEKS R17 R16 K104 ["DropdownHeight"]
  LOADN R17 14
  SETTABLEKS R17 R16 K105 ["SubtextSize"]
  GETTABLEKS R17 R5 K110 ["DimmedText"]
  SETTABLEKS R17 R16 K106 ["SubtextColor"]
  LOADN R17 3
  SETTABLEKS R17 R16 K107 ["SubtextOffset"]
  LOADN R17 8
  SETTABLEKS R17 R16 K108 ["DropdownScrollbarSize"]
  SETTABLEKS R16 R15 K111 ["SuggestionDropdown"]
  DUPTABLE R16 K117 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 0
  LOADN R19 80
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K112 ["ButtonSize"]
  DUPTABLE R17 K120 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K81 ["Left"]
  LOADN R18 6
  SETTABLEKS R18 R17 K118 ["Top"]
  LOADN R18 10
  SETTABLEKS R18 R17 K83 ["Right"]
  LOADN R18 5
  SETTABLEKS R18 R17 K119 ["Bottom"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 6
  SETTABLEKS R17 R16 K64 ["Spacing"]
  GETIMPORT R17 K76 [UDim2.fromOffset]
  LOADN R18 175
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K113 ["TemplateDropDown"]
  GETTABLEKS R17 R5 K114 ["MenuImage"]
  SETTABLEKS R17 R16 K114 ["MenuImage"]
  GETIMPORT R17 K76 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K115 ["MenuButtonSize"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 40
  CALL R17 4 1
  SETTABLEKS R17 R16 K116 ["MenuItemSize"]
  SETTABLEKS R16 R15 K121 ["TopBar"]
  DUPTABLE R16 K126 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 44
  LOADN R19 125
  CALL R17 2 1
  SETTABLEKS R17 R16 K122 ["CreateMinContentSize"]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 44
  LOADN R19 100
  CALL R17 2 1
  SETTABLEKS R17 R16 K123 ["RenameMinContentSize"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 0
  LOADN R19 75
  LOADN R20 0
  LOADN R21 32
  CALL R17 4 1
  SETTABLEKS R17 R16 K124 ["LabelSize"]
  LOADN R17 10
  SETTABLEKS R17 R16 K36 ["Padding"]
  GETIMPORT R17 K76 [UDim2.fromOffset]
  LOADN R18 200
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K125 ["TextboxSize"]
  SETTABLEKS R16 R15 K127 ["PresetNamePrompt"]
  DUPTABLE R16 K134 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
  GETTABLEKS R17 R5 K128 ["ResetCameraImage"]
  SETTABLEKS R17 R16 K128 ["ResetCameraImage"]
  GETTABLEKS R17 R5 K129 ["ShowWorkspaceImage"]
  SETTABLEKS R17 R16 K129 ["ShowWorkspaceImage"]
  GETTABLEKS R17 R5 K130 ["ShowRigVisualizationImage"]
  SETTABLEKS R17 R16 K130 ["ShowRigVisualizationImage"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K131 ["OptionIconSize"]
  DUPTABLE R17 K136 [{"Size", "Position", "Spacing"}]
  GETIMPORT R18 K85 [UDim2.new]
  LOADN R19 0
  LOADN R20 28
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K63 ["Size"]
  GETIMPORT R18 K85 [UDim2.new]
  LOADN R19 1
  LOADN R20 218
  LOADN R21 0
  LOADN R22 10
  CALL R18 4 1
  SETTABLEKS R18 R17 K135 ["Position"]
  LOADN R18 2
  SETTABLEKS R18 R17 K64 ["Spacing"]
  SETTABLEKS R17 R16 K132 ["PreviewButtonBar"]
  DUPTABLE R17 K139 [{"Ambient", "Color", "Direction"}]
  GETIMPORT R18 K142 [Color3.fromRGB]
  LOADN R19 170
  LOADN R20 185
  LOADN R21 200
  CALL R18 3 1
  SETTABLEKS R18 R17 K137 ["Ambient"]
  GETIMPORT R18 K142 [Color3.fromRGB]
  LOADN R19 242
  LOADN R20 236
  LOADN R21 227
  CALL R18 3 1
  SETTABLEKS R18 R17 K69 ["Color"]
  LOADK R18 K143 [{0.5, -1, 0.1}]
  SETTABLEKS R18 R17 K138 ["Direction"]
  SETTABLEKS R17 R16 K133 ["Lighting"]
  SETTABLEKS R16 R15 K144 ["PreviewWindow"]
  DUPTABLE R16 K145 [{"Padding", "Spacing"}]
  DUPTABLE R17 K120 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 6
  SETTABLEKS R18 R17 K81 ["Left"]
  LOADN R18 4
  SETTABLEKS R18 R17 K118 ["Top"]
  LOADN R18 6
  SETTABLEKS R18 R17 K83 ["Right"]
  LOADN R18 3
  SETTABLEKS R18 R17 K119 ["Bottom"]
  SETTABLEKS R17 R16 K36 ["Padding"]
  LOADN R17 6
  SETTABLEKS R17 R16 K64 ["Spacing"]
  SETTABLEKS R16 R15 K146 ["TreeViewToolbar"]
  DUPTABLE R16 K153 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
  LOADN R17 20
  SETTABLEKS R17 R16 K147 ["IndicatorOffset"]
  LOADN R17 100
  SETTABLEKS R17 R16 K148 ["IndicatorSize"]
  LOADK R17 K42 [0.5]
  SETTABLEKS R17 R16 K149 ["PreviewRatio"]
  LOADN R17 24
  SETTABLEKS R17 R16 K150 ["StatusMessagePadding"]
  LOADN R17 30
  SETTABLEKS R17 R16 K151 ["ToolbarHeight"]
  LOADN R17 40
  SETTABLEKS R17 R16 K152 ["TopBarHeight"]
  SETTABLEKS R16 R15 K154 ["Sizes"]
  DUPTABLE R16 K163 [{"Width", "Height", "TextLabelSize", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding"}]
  LOADN R17 244
  SETTABLEKS R17 R16 K155 ["Width"]
  LOADN R17 100
  SETTABLEKS R17 R16 K98 ["Height"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADN R18 1
  LOADN R19 246
  LOADN R20 0
  LOADN R21 22
  CALL R17 4 1
  SETTABLEKS R17 R16 K156 ["TextLabelSize"]
  LOADN R17 24
  SETTABLEKS R17 R16 K88 ["TextSize"]
  LOADN R17 16
  SETTABLEKS R17 R16 K105 ["SubtextSize"]
  GETIMPORT R17 K165 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K157 ["TextAlignment"]
  LOADN R17 12
  SETTABLEKS R17 R16 K158 ["LoadingBarHeight"]
  GETIMPORT R17 K85 [UDim2.new]
  LOADK R18 K166 [0.8]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K159 ["LoadingBarContainerSize"]
  GETIMPORT R17 K142 [Color3.fromRGB]
  LOADN R18 2
  LOADN R19 183
  LOADN R20 87
  CALL R17 3 1
  SETTABLEKS R17 R16 K160 ["SuccessColor"]
  GETIMPORT R17 K142 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 85
  LOADN R20 85
  CALL R17 3 1
  SETTABLEKS R17 R16 K161 ["FailureColor"]
  DUPTABLE R17 K120 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K81 ["Left"]
  LOADN R18 20
  SETTABLEKS R18 R17 K118 ["Top"]
  LOADN R18 10
  SETTABLEKS R18 R17 K83 ["Right"]
  LOADN R18 10
  SETTABLEKS R18 R17 K119 ["Bottom"]
  SETTABLEKS R17 R16 K162 ["TopPadding"]
  SETTABLEKS R16 R15 K167 ["UploadWidget"]
  DUPTABLE R16 K168 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width"}]
  LOADN R17 100
  SETTABLEKS R17 R16 K98 ["Height"]
  LOADN R17 48
  SETTABLEKS R17 R16 K96 ["IconSize"]
  LOADN R17 16
  SETTABLEKS R17 R16 K100 ["IconSpacing"]
  LOADN R17 18
  SETTABLEKS R17 R16 K105 ["SubtextSize"]
  LOADN R17 24
  SETTABLEKS R17 R16 K88 ["TextSize"]
  LOADN R17 244
  SETTABLEKS R17 R16 K155 ["Width"]
  SETTABLEKS R16 R15 K169 ["ErrorWidget"]
  DUPTABLE R16 K170 [{"Image", "Size"}]
  LOADK R17 K171 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R17 R16 K71 ["Image"]
  GETIMPORT R17 K76 [UDim2.fromOffset]
  LOADN R18 20
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K63 ["Size"]
  SETTABLEKS R16 R15 K172 ["ErrorIcon"]
  DUPTABLE R16 K170 [{"Image", "Size"}]
  LOADK R17 K173 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R17 R16 K71 ["Image"]
  GETIMPORT R17 K76 [UDim2.fromOffset]
  LOADN R18 20
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K63 ["Size"]
  SETTABLEKS R16 R15 K174 ["WarningIcon"]
  DUPTABLE R16 K175 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R17 K142 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 85
  LOADN R20 85
  CALL R17 3 1
  SETTABLEKS R17 R16 K87 ["TextColor"]
  GETIMPORT R17 K176 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K164 ["TextXAlignment"]
  LOADN R17 10
  SETTABLEKS R17 R16 K88 ["TextSize"]
  SETTABLEKS R16 R15 K177 ["ErrorStatus"]
  DUPTABLE R16 K175 [{"TextColor", "TextXAlignment", "TextSize"}]
  GETIMPORT R17 K142 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 170
  LOADN R20 33
  CALL R17 3 1
  SETTABLEKS R17 R16 K87 ["TextColor"]
  GETIMPORT R17 K176 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K164 ["TextXAlignment"]
  LOADN R17 10
  SETTABLEKS R17 R16 K88 ["TextSize"]
  SETTABLEKS R16 R15 K178 ["WarningStatus"]
  GETTABLEKS R16 R9 K21 ["ExpandablePane"]
  MOVE R17 R14
  GETTABLEKS R19 R9 K21 ["ExpandablePane"]
  GETTABLE R18 R7 R19
  NEWTABLE R19 1 0
  MOVE R20 R14
  MOVE R21 R12
  DUPTABLE R22 K179 [{"Content"}]
  MOVE R23 R14
  MOVE R24 R13
  DUPTABLE R25 K180 [{"Padding"}]
  DUPTABLE R26 K120 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R27 4
  SETTABLEKS R27 R26 K81 ["Left"]
  LOADN R27 10
  SETTABLEKS R27 R26 K118 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K83 ["Right"]
  LOADN R27 10
  SETTABLEKS R27 R26 K119 ["Bottom"]
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
  GETTABLEKS R21 R5 K184 ["ButtonTextDisabled"]
  SETTABLEKS R21 R20 K87 ["TextColor"]
  SETTABLEKS R20 R19 K185 ["&Disabled"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 8 0
  GETTABLEKS R17 R5 K186 ["RefreshImage"]
  LOADK R18 K187 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K128 ["ResetCameraImage"]
  LOADK R18 K188 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K130 ["ShowRigVisualizationImage"]
  LOADK R18 K189 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K129 ["ShowWorkspaceImage"]
  LOADK R18 K190 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K114 ["MenuImage"]
  LOADK R18 K191 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K35 ["OpenImage"]
  LOADK R18 K192 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K30 ["CleanupImage"]
  LOADK R18 K193 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K50 ["ActionSelectedOverride"]
  GETIMPORT R18 K142 [Color3.fromRGB]
  LOADN R19 60
  LOADN R20 60
  LOADN R21 60
  CALL R18 3 1
  SETTABLE R18 R16 R17
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K186 ["RefreshImage"]
  LOADK R19 K194 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K128 ["ResetCameraImage"]
  LOADK R19 K195 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K130 ["ShowRigVisualizationImage"]
  LOADK R19 K196 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K129 ["ShowWorkspaceImage"]
  LOADK R19 K197 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K114 ["MenuImage"]
  LOADK R19 K198 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K35 ["OpenImage"]
  LOADK R19 K199 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K30 ["CleanupImage"]
  LOADK R19 K200 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K50 ["ActionSelectedOverride"]
  GETIMPORT R19 K202 [Color3.fromHex]
  LOADK R20 K203 ["#D5F0FF"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  DUPCLOSURE R18 K204 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
