MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagTerrainEditorMigrateFoundationFonts"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["Style"]
  GETTABLEKS R4 R3 K12 ["StyleKey"]
  GETTABLEKS R6 R2 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["StyleModifier"]
  GETTABLEKS R8 R2 K11 ["Style"]
  GETTABLEKS R7 R8 K15 ["Themes"]
  GETTABLEKS R6 R7 K16 ["FoundationDark"]
  MOVE R8 R1
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  MOVE R7 R6
  LOADN R8 1
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  MOVE R10 R1
  CALL R10 0 1
  JUMPIFNOT R10 [+12]
  GETTABLEKS R11 R7 K17 ["Typography"]
  GETTABLEKS R10 R11 K18 ["LabelSmall"]
  GETTABLEKS R8 R10 K19 ["FontSize"]
  GETTABLEKS R11 R7 K17 ["Typography"]
  GETTABLEKS R10 R11 K20 ["BodySmall"]
  GETTABLEKS R9 R10 K19 ["FontSize"]
  GETTABLEKS R10 R3 K21 ["ComponentSymbols"]
  NEWTABLE R11 0 0
  LOADK R14 K22 ["Toolbar"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K22 ["Toolbar"]
  DUPTABLE R13 K32 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
  GETIMPORT R14 K35 [UDim2.fromOffset]
  LOADN R15 84
  LOADN R16 60
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["CellSize"]
  GETIMPORT R14 K35 [UDim2.fromOffset]
  LOADN R15 2
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["CellPadding"]
  GETIMPORT R14 K35 [UDim2.fromOffset]
  LOADN R15 30
  LOADN R16 30
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["IconSize"]
  LOADN R14 15
  SETTABLEKS R14 R13 K27 ["OverflowTextSize"]
  LOADN R14 75
  SETTABLEKS R14 R13 K28 ["OverflowThreshold"]
  GETTABLEKS R14 R4 K29 ["StudioTheme"]
  SETTABLEKS R14 R13 K29 ["StudioTheme"]
  GETTABLEKS R14 R4 K36 ["SubBackground"]
  SETTABLEKS R14 R13 K30 ["TabBackgroundColor"]
  LOADN R14 18
  SETTABLEKS R14 R13 K31 ["TextSize"]
  SETTABLE R13 R11 R12
  LOADK R14 K37 ["ToolSettings"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K37 ["ToolSettings"]
  DUPTABLE R13 K39 [{"BackgroundColor"}]
  GETTABLEKS R14 R4 K40 ["MainBackground"]
  SETTABLEKS R14 R13 K38 ["BackgroundColor"]
  SETTABLE R13 R11 R12
  LOADK R14 K41 ["ImageRenderer"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K41 ["ImageRenderer"]
  DUPTABLE R13 K51 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R14 K52 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R14 R13 K42 ["ClearIcon"]
  LOADK R14 K53 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R14 R13 K43 ["ExpandIcon"]
  LOADN R14 3
  SETTABLEKS R14 R13 K44 ["IconPadding"]
  LOADK R14 K54 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R14 R13 K45 ["ImportIcon"]
  GETIMPORT R14 K35 [UDim2.fromOffset]
  LOADN R15 100
  LOADN R16 100
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["PreviewSize"]
  LOADK R14 K55 [0.4]
  SETTABLEKS R14 R13 K47 ["ToolbarTransparency"]
  GETTABLEKS R14 R4 K48 ["ToolbarBackgroundColor"]
  SETTABLEKS R14 R13 K48 ["ToolbarBackgroundColor"]
  GETTABLEKS R14 R4 K49 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R14 R13 K49 ["ToolbarButtonBackgroundColor"]
  LOADN R14 32
  SETTABLEKS R14 R13 K50 ["ToolbarHeight"]
  SETTABLE R13 R11 R12
  LOADK R14 K56 ["MetadataDialog"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K56 ["MetadataDialog"]
  DUPTABLE R13 K63 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R14 K66 [Color3.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R14 3 1
  SETTABLEKS R14 R13 K57 ["ImageBackgroundColor"]
  LOADN R14 16
  SETTABLEKS R14 R13 K58 ["MetadataLineHeight"]
  GETIMPORT R14 K68 [Vector2.new]
  LOADN R15 100
  LOADN R16 100
  CALL R14 2 1
  SETTABLEKS R14 R13 K59 ["MinSize"]
  LOADN R14 4
  SETTABLEKS R14 R13 K60 ["Padding"]
  GETIMPORT R14 K68 [Vector2.new]
  LOADN R15 144
  LOADN R16 144
  CALL R14 2 1
  SETTABLEKS R14 R13 K61 ["Size"]
  LOADN R14 4
  SETTABLEKS R14 R13 K62 ["Spacing"]
  SETTABLE R13 R11 R12
  LOADK R14 K69 ["MaterialRenderer"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K69 ["MaterialRenderer"]
  DUPTABLE R13 K78 [{"CornerRadius", "DropdownItemHeight", "DropdownPadding", "Font", "FontSize", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "SelectInputArrowSize", "Spacing"}]
  GETIMPORT R14 K80 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K70 ["CornerRadius"]
  LOADN R14 40
  SETTABLEKS R14 R13 K71 ["DropdownItemHeight"]
  LOADN R14 10
  SETTABLEKS R14 R13 K72 ["DropdownPadding"]
  GETIMPORT R14 K83 [Enum.Font.BuilderSans]
  SETTABLEKS R14 R13 K73 ["Font"]
  LOADN R14 18
  SETTABLEKS R14 R13 K19 ["FontSize"]
  LOADN R14 48
  SETTABLEKS R14 R13 K74 ["GridItemSize"]
  LOADK R14 K84 [6.2]
  SETTABLEKS R14 R13 K75 ["InitialDistance"]
  GETTABLEKS R14 R4 K85 ["InputFieldBackground"]
  SETTABLEKS R14 R13 K76 ["MaterialPreviewBackground"]
  LOADN R14 24
  SETTABLEKS R14 R13 K46 ["PreviewSize"]
  LOADN R14 16
  SETTABLEKS R14 R13 K77 ["SelectInputArrowSize"]
  LOADN R14 6
  SETTABLEKS R14 R13 K62 ["Spacing"]
  SETTABLE R13 R11 R12
  LOADK R14 K86 ["ProgressDialog"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K86 ["ProgressDialog"]
  DUPTABLE R13 K90 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R14 20
  SETTABLEKS R14 R13 K87 ["DescriptionHeight"]
  GETIMPORT R14 K68 [Vector2.new]
  LOADN R15 64
  LOADN R16 60
  CALL R14 2 1
  SETTABLEKS R14 R13 K88 ["MinContentSize"]
  LOADN R14 5
  SETTABLEKS R14 R13 K60 ["Padding"]
  LOADN R14 20
  SETTABLEKS R14 R13 K89 ["ProgressHeight"]
  LOADN R14 5
  SETTABLEKS R14 R13 K62 ["Spacing"]
  SETTABLE R13 R11 R12
  LOADK R14 K91 ["PlaneLockRenderer"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K91 ["PlaneLockRenderer"]
  DUPTABLE R13 K94 [{"Height", "Icon", "Spacing"}]
  LOADN R14 32
  SETTABLEKS R14 R13 K92 ["Height"]
  GETTABLEKS R14 R4 K95 ["Reset"]
  SETTABLEKS R14 R13 K93 ["Icon"]
  LOADN R14 6
  SETTABLEKS R14 R13 K62 ["Spacing"]
  SETTABLE R13 R11 R12
  LOADK R14 K96 ["UpgradeRenderer"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K96 ["UpgradeRenderer"]
  DUPTABLE R13 K98 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R14 K100 [Enum.Font.SourceSans]
  SETTABLEKS R14 R13 K73 ["Font"]
  LOADN R14 44
  SETTABLEKS R14 R13 K97 ["MaxWidth"]
  LOADN R14 12
  SETTABLEKS R14 R13 K62 ["Spacing"]
  LOADN R14 16
  SETTABLEKS R14 R13 K31 ["TextSize"]
  SETTABLE R13 R11 R12
  LOADK R14 K101 ["Line"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K101 ["Line"]
  DUPTABLE R13 K105 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R14 K108 [BrickColor.White]
  CALL R14 0 1
  SETTABLEKS R14 R13 K102 ["Color"]
  LOADK R14 K109 [0.8]
  SETTABLEKS R14 R13 K103 ["TransparencyActive"]
  LOADK R14 K110 [0.3]
  SETTABLEKS R14 R13 K104 ["Transparency"]
  SETTABLE R13 R11 R12
  LOADK R14 K111 ["Brush"]
  NAMECALL R12 R10 K23 ["add"]
  CALL R12 2 0
  GETTABLEKS R12 R10 K111 ["Brush"]
  DUPTABLE R13 K115 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R14 K116 [0.015]
  SETTABLEKS R14 R13 K112 ["CenterRadiusMultiplier"]
  LOADK R14 K117 [0.25]
  SETTABLEKS R14 R13 K113 ["CenterTransparency"]
  GETIMPORT R14 K108 [BrickColor.White]
  CALL R14 0 1
  SETTABLEKS R14 R13 K102 ["Color"]
  LOADK R14 K118 [0.95]
  SETTABLEKS R14 R13 K114 ["MainTransparency"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K119 ["SimpleTab"]
  NEWTABLE R13 16 0
  LOADN R14 1
  SETTABLEKS R14 R13 K120 ["BorderSize"]
  LOADN R14 5
  SETTABLEKS R14 R13 K62 ["Spacing"]
  DUPTABLE R14 K125 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R15 20
  SETTABLEKS R15 R14 K121 ["Left"]
  LOADN R15 4
  SETTABLEKS R15 R14 K122 ["Top"]
  LOADN R15 0
  SETTABLEKS R15 R14 K123 ["Bottom"]
  LOADN R15 20
  SETTABLEKS R15 R14 K124 ["Right"]
  SETTABLEKS R14 R13 K60 ["Padding"]
  LOADN R14 3
  SETTABLEKS R14 R13 K126 ["TopLineHeight"]
  GETTABLEKS R14 R4 K127 ["ButtonText"]
  SETTABLEKS R14 R13 K102 ["Color"]
  GETTABLEKS R14 R4 K36 ["SubBackground"]
  SETTABLEKS R14 R13 K38 ["BackgroundColor"]
  GETTABLEKS R14 R4 K36 ["SubBackground"]
  SETTABLEKS R14 R13 K128 ["BorderColor"]
  GETTABLEKS R14 R4 K129 ["DialogMainButton"]
  SETTABLEKS R14 R13 K130 ["TopLineColor"]
  GETTABLEKS R14 R4 K36 ["SubBackground"]
  SETTABLEKS R14 R13 K131 ["BottomLineColor"]
  MOVE R15 R1
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETIMPORT R14 K133 [Enum.Font.BuilderSansMedium]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K73 ["Font"]
  MOVE R15 R1
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  MOVE R14 R8
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K31 ["TextSize"]
  GETTABLEKS R14 R5 K134 ["Hover"]
  DUPTABLE R15 K135 [{"Color"}]
  GETTABLEKS R16 R4 K129 ["DialogMainButton"]
  SETTABLEKS R16 R15 K102 ["Color"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K136 ["Selected"]
  DUPTABLE R15 K137 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R16 R4 K40 ["MainBackground"]
  SETTABLEKS R16 R15 K131 ["BottomLineColor"]
  GETTABLEKS R16 R4 K40 ["MainBackground"]
  SETTABLEKS R16 R15 K38 ["BackgroundColor"]
  GETTABLEKS R16 R4 K138 ["Border"]
  SETTABLEKS R16 R15 K128 ["BorderColor"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K139 ["Disabled"]
  DUPTABLE R15 K135 [{"Color"}]
  GETTABLEKS R16 R4 K140 ["ButtonTextDisabled"]
  SETTABLEKS R16 R15 K102 ["Color"]
  SETTABLE R15 R13 R14
  SETTABLE R13 R11 R12
  MOVE R12 R1
  CALL R12 0 1
  JUMPIFNOT R12 [+96]
  GETTABLEKS R12 R10 K141 ["Form"]
  DUPTABLE R13 K144 [{"ExpandablePaneHeader", "FormItem", "Spacing"}]
  LOADK R14 K145 ["SectionTitleSmall"]
  SETTABLEKS R14 R13 K142 ["ExpandablePaneHeader"]
  DUPTABLE R14 K155 [{"Spacing", "StatusIconSize", "HelpIconSize", "DepthPadding", "WithChildrenPadding", "Padding", "StatusIconError", "StatusIconWarning", "HelpIcon", "IconColor", "Arrow", "Font", "FontSize", "TextSize"}]
  LOADN R15 6
  SETTABLEKS R15 R14 K62 ["Spacing"]
  LOADN R15 20
  SETTABLEKS R15 R14 K146 ["StatusIconSize"]
  LOADN R15 16
  SETTABLEKS R15 R14 K147 ["HelpIconSize"]
  LOADN R15 10
  SETTABLEKS R15 R14 K148 ["DepthPadding"]
  LOADN R15 10
  SETTABLEKS R15 R14 K149 ["WithChildrenPadding"]
  LOADN R15 28
  SETTABLEKS R15 R14 K60 ["Padding"]
  LOADK R15 K156 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R15 R14 K150 ["StatusIconError"]
  LOADK R15 K157 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R15 R14 K151 ["StatusIconWarning"]
  LOADK R15 K158 ["rbxasset://textures/StudioSharedUI/Help.png"]
  SETTABLEKS R15 R14 K152 ["HelpIcon"]
  GETTABLEKS R15 R4 K93 ["Icon"]
  SETTABLEKS R15 R14 K153 ["IconColor"]
  NEWTABLE R15 8 0
  GETTABLEKS R16 R4 K159 ["MainText"]
  SETTABLEKS R16 R15 K102 ["Color"]
  LOADK R16 K160 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R16 R15 K161 ["Image"]
  GETIMPORT R16 K68 [Vector2.new]
  LOADN R17 12
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K162 ["ImageRectOffset"]
  GETIMPORT R16 K68 [Vector2.new]
  LOADN R17 12
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K163 ["ImageRectSize"]
  GETIMPORT R16 K35 [UDim2.fromOffset]
  LOADN R17 12
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Size"]
  GETTABLEKS R16 R5 K136 ["Selected"]
  DUPTABLE R17 K164 [{"ImageRectOffset"}]
  GETIMPORT R18 K68 [Vector2.new]
  LOADN R19 24
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K162 ["ImageRectOffset"]
  SETTABLE R17 R15 R16
  SETTABLEKS R15 R14 K154 ["Arrow"]
  GETIMPORT R15 K83 [Enum.Font.BuilderSans]
  SETTABLEKS R15 R14 K73 ["Font"]
  LOADN R15 18
  SETTABLEKS R15 R14 K19 ["FontSize"]
  SETTABLEKS R9 R14 K31 ["TextSize"]
  SETTABLEKS R14 R13 K143 ["FormItem"]
  LOADN R14 16
  SETTABLEKS R14 R13 K62 ["Spacing"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K80 [UDim.new]
  LOADN R13 0
  LOADN R14 6
  CALL R12 2 1
  LOADK R15 K165 ["MaterialGrid"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K165 ["MaterialGrid"]
  DUPTABLE R14 K178 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R15 R4 K40 ["MainBackground"]
  SETTABLEKS R15 R14 K38 ["BackgroundColor"]
  GETTABLEKS R15 R4 K179 ["Button"]
  SETTABLEKS R15 R14 K166 ["GridItemBackgroundColor"]
  GETTABLEKS R15 R4 K180 ["ButtonHover"]
  SETTABLEKS R15 R14 K167 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R15 R4 K138 ["Border"]
  SETTABLEKS R15 R14 K168 ["GridItemBorderColor"]
  GETTABLEKS R15 R4 K181 ["InputFieldBorderSelected"]
  SETTABLEKS R15 R14 K169 ["GridItemBorderColorSelected"]
  GETIMPORT R15 K80 [UDim.new]
  LOADN R16 0
  LOADN R17 6
  CALL R15 2 1
  SETTABLEKS R15 R14 K170 ["GridItemCornerRadius"]
  LOADN R15 2
  SETTABLEKS R15 R14 K171 ["GridItemPadding"]
  LOADN R15 128
  SETTABLEKS R15 R14 K74 ["GridItemSize"]
  DUPTABLE R15 K185 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R12 R15 K182 ["PaddingBottom"]
  SETTABLEKS R12 R15 K183 ["PaddingLeft"]
  SETTABLEKS R12 R15 K184 ["PaddingRight"]
  SETTABLEKS R15 R14 K172 ["GridItemLabelPadding"]
  LOADN R15 40
  SETTABLEKS R15 R14 K173 ["ListItemHeight"]
  LOADN R15 0
  SETTABLEKS R15 R14 K174 ["ListItemPadding"]
  LOADN R15 4
  SETTABLEKS R15 R14 K175 ["ListItemSpacing"]
  LOADK R15 K186 ["CornerBox"]
  SETTABLEKS R15 R14 K176 ["MaterialPreviewStyle"]
  LOADN R15 0
  SETTABLEKS R15 R14 K60 ["Padding"]
  LOADN R15 2
  SETTABLEKS R15 R14 K177 ["ShimmerSizeOffset"]
  LOADN R15 20
  SETTABLEKS R15 R14 K31 ["TextSize"]
  SETTABLE R14 R11 R13
  LOADK R15 K187 ["Note"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K187 ["Note"]
  DUPTABLE R14 K193 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R15 R4 K40 ["MainBackground"]
  SETTABLEKS R15 R14 K188 ["Background"]
  GETTABLEKS R15 R4 K194 ["DimmedText"]
  SETTABLEKS R15 R14 K189 ["KeyBackground"]
  LOADN R15 2
  SETTABLEKS R15 R14 K190 ["EdgePadding"]
  LOADN R15 3
  SETTABLEKS R15 R14 K191 ["FramePadding"]
  LOADN R15 2
  SETTABLEKS R15 R14 K192 ["TextMargin"]
  SETTABLE R14 R11 R13
  LOADK R15 K195 ["BrushSizeRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K195 ["BrushSizeRenderer"]
  DUPTABLE R14 K201 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R15 20
  SETTABLEKS R15 R14 K196 ["LabelWidth"]
  LOADN R15 26
  SETTABLEKS R15 R14 K197 ["LockButtonWidth"]
  LOADN R15 24
  SETTABLEKS R15 R14 K198 ["RowHeight"]
  GETTABLEKS R15 R4 K199 ["Locked"]
  SETTABLEKS R15 R14 K199 ["Locked"]
  GETTABLEKS R15 R4 K200 ["Unlocked"]
  SETTABLEKS R15 R14 K200 ["Unlocked"]
  SETTABLE R14 R11 R13
  LOADK R15 K202 ["MultiSelectionRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K202 ["MultiSelectionRenderer"]
  DUPTABLE R14 K203 [{"Spacing"}]
  LOADN R15 4
  SETTABLEKS R15 R14 K62 ["Spacing"]
  SETTABLE R14 R11 R13
  LOADK R15 K204 ["ElevationRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K204 ["ElevationRenderer"]
  DUPTABLE R14 K218 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderAreaSize", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R15 K219 [{"Image"}]
  GETTABLEKS R16 R4 K220 ["Add"]
  SETTABLEKS R16 R15 K161 ["Image"]
  SETTABLEKS R15 R14 K205 ["AddStyle"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 10
  LOADN R17 5
  CALL R15 2 1
  SETTABLEKS R15 R14 K206 ["ArrowSize"]
  DUPTABLE R15 K219 [{"Image"}]
  LOADK R16 K221 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R16 R15 K161 ["Image"]
  SETTABLEKS R15 R14 K207 ["ArrowStyle"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K208 ["ButtonSize"]
  GETIMPORT R15 K80 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K209 ["Corner"]
  GETTABLEKS R15 R4 K222 ["TextPrimary"]
  SETTABLEKS R15 R14 K210 ["ImageColor"]
  GETTABLEKS R15 R4 K129 ["DialogMainButton"]
  SETTABLEKS R15 R14 K211 ["ImageColorSelected"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K212 ["MaterialPreviewSize"]
  DUPTABLE R15 K224 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R16 R4 K129 ["DialogMainButton"]
  SETTABLEKS R16 R15 K102 ["Color"]
  LOADK R16 K225 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R16 R15 K161 ["Image"]
  GETIMPORT R16 K227 [Rect.new]
  LOADN R17 3
  LOADN R18 3
  LOADN R19 13
  LOADN R20 13
  CALL R16 4 1
  SETTABLEKS R16 R15 K223 ["SliceCenter"]
  SETTABLEKS R15 R14 K213 ["PreviewBorder"]
  DUPTABLE R15 K219 [{"Image"}]
  GETTABLEKS R16 R4 K228 ["Remove"]
  SETTABLEKS R16 R15 K161 ["Image"]
  SETTABLEKS R15 R14 K214 ["RemoveStyle"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 182
  CALL R15 2 1
  SETTABLEKS R15 R14 K215 ["SliderAreaSize"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 200
  CALL R15 2 1
  SETTABLEKS R15 R14 K216 ["SliderSize"]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 50
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K217 ["TextBoxSize"]
  LOADN R15 10
  SETTABLEKS R15 R14 K62 ["Spacing"]
  SETTABLE R14 R11 R13
  LOADK R15 K229 ["SlopeRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K229 ["SlopeRenderer"]
  DUPTABLE R14 K231 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R15 24
  SETTABLEKS R15 R14 K92 ["Height"]
  LOADN R15 6
  SETTABLEKS R15 R14 K62 ["Spacing"]
  LOADN R15 50
  SETTABLEKS R15 R14 K230 ["TextInputWidth"]
  SETTABLE R14 R11 R13
  LOADK R15 K232 ["MaterialRangesRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K232 ["MaterialRangesRenderer"]
  DUPTABLE R14 K236 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
  GETIMPORT R15 K237 [BrickColor.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["BackgroundColor"]
  DUPTABLE R15 K244 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R16 K68 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K238 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K239 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K240 ["BorderSizePixel"]
  LOADK R16 K245 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
  SETTABLEKS R16 R15 K161 ["Image"]
  GETIMPORT R16 K247 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K241 ["ImageColor3"]
  GETIMPORT R16 K249 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K242 ["Position"]
  GETIMPORT R16 K35 [UDim2.fromOffset]
  LOADN R17 28
  LOADN R18 28
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K243 ["ZIndex"]
  SETTABLEKS R15 R14 K233 ["CloseButton"]
  DUPTABLE R15 K251 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
  GETIMPORT R16 K68 [Vector2.new]
  LOADK R17 K252 [0.5]
  LOADK R18 K252 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K238 ["AnchorPoint"]
  GETTABLEKS R16 R4 K40 ["MainBackground"]
  SETTABLEKS R16 R15 K38 ["BackgroundColor"]
  GETIMPORT R16 K249 [UDim2.fromScale]
  LOADK R17 K252 [0.5]
  LOADK R18 K252 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K242 ["Position"]
  GETIMPORT R16 K253 [UDim2.new]
  LOADN R17 0
  LOADN R18 250
  LOADN R19 1
  LOADN R20 196
  CALL R16 4 1
  SETTABLEKS R16 R15 K250 ["FillSize"]
  GETIMPORT R16 K35 [UDim2.fromOffset]
  LOADN R17 250
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Size"]
  SETTABLEKS R15 R14 K234 ["Dialog"]
  LOADN R15 127
  SETTABLEKS R15 R14 K235 ["MinHeight"]
  LOADN R15 6
  SETTABLEKS R15 R14 K60 ["Padding"]
  DUPTABLE R15 K254 [{"Icon", "Size"}]
  GETTABLEKS R16 R4 K95 ["Reset"]
  SETTABLEKS R16 R15 K93 ["Icon"]
  GETIMPORT R16 K35 [UDim2.fromOffset]
  LOADN R17 90
  LOADN R18 32
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Size"]
  SETTABLEKS R15 R14 K95 ["Reset"]
  SETTABLE R14 R11 R13
  LOADK R15 K255 ["TerrainTypeRenderer"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K255 ["TerrainTypeRenderer"]
  DUPTABLE R14 K258 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "ItemMinWidth", "Spacing"}]
  GETTABLEKS R15 R4 K129 ["DialogMainButton"]
  SETTABLEKS R15 R14 K128 ["BorderColor"]
  LOADN R15 32
  SETTABLEKS R15 R14 K92 ["Height"]
  LOADN R15 24
  SETTABLEKS R15 R14 K26 ["IconSize"]
  LOADN R15 3
  SETTABLEKS R15 R14 K256 ["ItemsPerRow"]
  LOADN R15 130
  SETTABLEKS R15 R14 K257 ["ItemMinWidth"]
  LOADN R15 6
  SETTABLEKS R15 R14 K62 ["Spacing"]
  SETTABLE R14 R11 R13
  LOADK R15 K3 ["FindFirstAncestor"]
  NAMECALL R13 R10 K23 ["add"]
  CALL R13 2 0
  GETTABLEKS R13 R10 K259 ["SeedRenderer"]
  DUPTABLE R14 K94 [{"Height", "Icon", "Spacing"}]
  LOADN R15 24
  SETTABLEKS R15 R14 K92 ["Height"]
  GETTABLEKS R15 R4 K260 ["Randomize"]
  SETTABLEKS R15 R14 K93 ["Icon"]
  LOADN R15 6
  SETTABLEKS R15 R14 K62 ["Spacing"]
  SETTABLE R14 R11 R13
  RETURN R11 1
