MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
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
  GETTABLEKS R5 R2 K12 ["ComponentSymbols"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagFixTerrainEditorDETruncations"]
  CALL R6 1 1
  NEWTABLE R7 0 0
  LOADK R10 K16 ["Toolbar"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K16 ["Toolbar"]
  DUPTABLE R9 K26 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+6]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 84
  LOADN R12 84
  CALL R10 2 1
  JUMP [+5]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 70
  LOADN R12 70
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["CellSize"]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 2
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["CellPadding"]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+6]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 30
  LOADN R12 30
  CALL R10 2 1
  JUMP [+5]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 28
  LOADN R12 28
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["IconSize"]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADN R10 15
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K21 ["OverflowTextSize"]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADN R10 75
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K22 ["OverflowThreshold"]
  GETTABLEKS R10 R3 K23 ["StudioTheme"]
  SETTABLEKS R10 R9 K23 ["StudioTheme"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K24 ["TabBackgroundColor"]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADN R10 18
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K25 ["TextSize"]
  SETTABLE R9 R7 R8
  LOADK R10 K31 ["ToolSettings"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K31 ["ToolSettings"]
  DUPTABLE R9 K33 [{"BackgroundColor"}]
  GETTABLEKS R10 R3 K34 ["MainBackground"]
  SETTABLEKS R10 R9 K32 ["BackgroundColor"]
  SETTABLE R9 R7 R8
  LOADK R10 K35 ["ImageRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K35 ["ImageRenderer"]
  DUPTABLE R9 K45 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R10 K46 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R10 R9 K36 ["ClearIcon"]
  LOADK R10 K47 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R10 R9 K37 ["ExpandIcon"]
  LOADN R10 3
  SETTABLEKS R10 R9 K38 ["IconPadding"]
  LOADK R10 K48 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R10 R9 K39 ["ImportIcon"]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 100
  LOADN R12 100
  CALL R10 2 1
  SETTABLEKS R10 R9 K40 ["PreviewSize"]
  LOADK R10 K49 [0.4]
  SETTABLEKS R10 R9 K41 ["ToolbarTransparency"]
  GETTABLEKS R10 R3 K42 ["ToolbarBackgroundColor"]
  SETTABLEKS R10 R9 K42 ["ToolbarBackgroundColor"]
  GETTABLEKS R10 R3 K43 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R10 R9 K43 ["ToolbarButtonBackgroundColor"]
  LOADN R10 32
  SETTABLEKS R10 R9 K44 ["ToolbarHeight"]
  SETTABLE R9 R7 R8
  LOADK R10 K50 ["MetadataDialog"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K50 ["MetadataDialog"]
  DUPTABLE R9 K57 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R10 K60 [Color3.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R10 3 1
  SETTABLEKS R10 R9 K51 ["ImageBackgroundColor"]
  LOADN R10 16
  SETTABLEKS R10 R9 K52 ["MetadataLineHeight"]
  GETIMPORT R10 K62 [Vector2.new]
  LOADN R11 100
  LOADN R12 100
  CALL R10 2 1
  SETTABLEKS R10 R9 K53 ["MinSize"]
  LOADN R10 4
  SETTABLEKS R10 R9 K54 ["Padding"]
  GETIMPORT R10 K62 [Vector2.new]
  LOADN R11 144
  LOADN R12 144
  CALL R10 2 1
  SETTABLEKS R10 R9 K55 ["Size"]
  LOADN R10 4
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K63 ["MaterialRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K63 ["MaterialRenderer"]
  DUPTABLE R9 K69 [{"CornerRadius", "DropdownItemHeight", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "Spacing"}]
  GETIMPORT R10 K71 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K64 ["CornerRadius"]
  LOADN R10 40
  SETTABLEKS R10 R9 K65 ["DropdownItemHeight"]
  LOADN R10 48
  SETTABLEKS R10 R9 K66 ["GridItemSize"]
  LOADK R10 K72 [6.2]
  SETTABLEKS R10 R9 K67 ["InitialDistance"]
  GETTABLEKS R10 R3 K73 ["InputFieldBackground"]
  SETTABLEKS R10 R9 K68 ["MaterialPreviewBackground"]
  LOADN R10 24
  SETTABLEKS R10 R9 K40 ["PreviewSize"]
  LOADN R10 6
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K74 ["ProgressDialog"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K74 ["ProgressDialog"]
  DUPTABLE R9 K78 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K75 ["DescriptionHeight"]
  GETIMPORT R10 K62 [Vector2.new]
  LOADN R11 64
  LOADN R12 60
  CALL R10 2 1
  SETTABLEKS R10 R9 K76 ["MinContentSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K54 ["Padding"]
  LOADN R10 20
  SETTABLEKS R10 R9 K77 ["ProgressHeight"]
  LOADN R10 5
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K79 ["PlaneLockRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K79 ["PlaneLockRenderer"]
  DUPTABLE R9 K82 [{"Height", "Icon", "Spacing"}]
  LOADN R10 32
  SETTABLEKS R10 R9 K80 ["Height"]
  LOADK R10 K83 ["rbxasset://textures/StudioToolbox/AssetConfig/restore.png"]
  SETTABLEKS R10 R9 K81 ["Icon"]
  LOADN R10 6
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K84 ["UpgradeRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K84 ["UpgradeRenderer"]
  DUPTABLE R9 K87 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R10 K90 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K85 ["Font"]
  LOADN R10 44
  SETTABLEKS R10 R9 K86 ["MaxWidth"]
  LOADN R10 12
  SETTABLEKS R10 R9 K56 ["Spacing"]
  LOADN R10 16
  SETTABLEKS R10 R9 K25 ["TextSize"]
  SETTABLE R9 R7 R8
  LOADK R10 K91 ["Line"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K91 ["Line"]
  DUPTABLE R9 K95 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R10 K98 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K92 ["Color"]
  LOADK R10 K99 [0.8]
  SETTABLEKS R10 R9 K93 ["TransparencyActive"]
  LOADK R10 K100 [0.3]
  SETTABLEKS R10 R9 K94 ["Transparency"]
  SETTABLE R9 R7 R8
  LOADK R10 K101 ["Brush"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K101 ["Brush"]
  DUPTABLE R9 K105 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R10 K106 [0.015]
  SETTABLEKS R10 R9 K102 ["CenterRadiusMultiplier"]
  LOADK R10 K107 [0.25]
  SETTABLEKS R10 R9 K103 ["CenterTransparency"]
  GETIMPORT R10 K98 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K92 ["Color"]
  LOADK R10 K108 [0.95]
  SETTABLEKS R10 R9 K104 ["MainTransparency"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K109 ["SimpleTab"]
  NEWTABLE R9 16 0
  LOADN R10 1
  SETTABLEKS R10 R9 K110 ["BorderSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K56 ["Spacing"]
  DUPTABLE R10 K115 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K111 ["Left"]
  LOADN R11 4
  SETTABLEKS R11 R10 K112 ["Top"]
  LOADN R11 0
  SETTABLEKS R11 R10 K113 ["Bottom"]
  LOADN R11 20
  SETTABLEKS R11 R10 K114 ["Right"]
  SETTABLEKS R10 R9 K54 ["Padding"]
  LOADN R10 3
  SETTABLEKS R10 R9 K116 ["TopLineHeight"]
  GETTABLEKS R10 R3 K117 ["ButtonText"]
  SETTABLEKS R10 R9 K92 ["Color"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K32 ["BackgroundColor"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K118 ["BorderColor"]
  GETTABLEKS R10 R3 K119 ["DialogMainButton"]
  SETTABLEKS R10 R9 K120 ["TopLineColor"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K121 ["BottomLineColor"]
  GETTABLEKS R10 R4 K122 ["Hover"]
  DUPTABLE R11 K123 [{"Color"}]
  GETTABLEKS R12 R3 K119 ["DialogMainButton"]
  SETTABLEKS R12 R11 K92 ["Color"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K124 ["Selected"]
  DUPTABLE R11 K125 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R12 R3 K34 ["MainBackground"]
  SETTABLEKS R12 R11 K121 ["BottomLineColor"]
  GETTABLEKS R12 R3 K34 ["MainBackground"]
  SETTABLEKS R12 R11 K32 ["BackgroundColor"]
  GETTABLEKS R12 R3 K126 ["Border"]
  SETTABLEKS R12 R11 K118 ["BorderColor"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K127 ["Disabled"]
  DUPTABLE R11 K123 [{"Color"}]
  GETTABLEKS R12 R3 K128 ["ButtonTextDisabled"]
  SETTABLEKS R12 R11 K92 ["Color"]
  SETTABLE R11 R9 R10
  SETTABLE R9 R7 R8
  GETIMPORT R8 K71 [UDim.new]
  LOADN R9 0
  LOADN R10 6
  CALL R8 2 1
  LOADK R11 K129 ["MaterialGrid"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K129 ["MaterialGrid"]
  DUPTABLE R10 K141 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R11 R3 K34 ["MainBackground"]
  SETTABLEKS R11 R10 K32 ["BackgroundColor"]
  GETTABLEKS R11 R3 K142 ["Button"]
  SETTABLEKS R11 R10 K130 ["GridItemBackgroundColor"]
  GETTABLEKS R11 R3 K143 ["ButtonHover"]
  SETTABLEKS R11 R10 K131 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R11 R3 K126 ["Border"]
  SETTABLEKS R11 R10 K132 ["GridItemBorderColor"]
  GETTABLEKS R11 R3 K144 ["InputFieldBorderSelected"]
  SETTABLEKS R11 R10 K133 ["GridItemBorderColorSelected"]
  GETIMPORT R11 K71 [UDim.new]
  LOADN R12 0
  LOADN R13 6
  CALL R11 2 1
  SETTABLEKS R11 R10 K134 ["GridItemCornerRadius"]
  LOADN R11 2
  SETTABLEKS R11 R10 K135 ["GridItemPadding"]
  LOADN R11 128
  SETTABLEKS R11 R10 K66 ["GridItemSize"]
  DUPTABLE R11 K148 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R8 R11 K145 ["PaddingBottom"]
  SETTABLEKS R8 R11 K146 ["PaddingLeft"]
  SETTABLEKS R8 R11 K147 ["PaddingRight"]
  SETTABLEKS R11 R10 K136 ["GridItemLabelPadding"]
  LOADN R11 40
  SETTABLEKS R11 R10 K137 ["ListItemHeight"]
  LOADN R11 4
  SETTABLEKS R11 R10 K138 ["ListItemSpacing"]
  LOADK R11 K149 ["CornerBox"]
  SETTABLEKS R11 R10 K139 ["MaterialPreviewStyle"]
  LOADN R11 0
  SETTABLEKS R11 R10 K54 ["Padding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K140 ["ShimmerSizeOffset"]
  LOADN R11 20
  SETTABLEKS R11 R10 K25 ["TextSize"]
  SETTABLE R10 R7 R9
  LOADK R11 K150 ["Note"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K150 ["Note"]
  DUPTABLE R10 K156 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R11 R3 K34 ["MainBackground"]
  SETTABLEKS R11 R10 K151 ["Background"]
  GETTABLEKS R11 R3 K157 ["DimmedText"]
  SETTABLEKS R11 R10 K152 ["KeyBackground"]
  LOADN R11 2
  SETTABLEKS R11 R10 K153 ["EdgePadding"]
  LOADN R11 3
  SETTABLEKS R11 R10 K154 ["FramePadding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K155 ["TextMargin"]
  SETTABLE R10 R7 R9
  LOADK R11 K158 ["BrushSizeRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K158 ["BrushSizeRenderer"]
  DUPTABLE R10 K164 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K159 ["LabelWidth"]
  LOADN R11 26
  SETTABLEKS R11 R10 K160 ["LockButtonWidth"]
  LOADN R11 24
  SETTABLEKS R11 R10 K161 ["RowHeight"]
  GETTABLEKS R11 R3 K162 ["Locked"]
  SETTABLEKS R11 R10 K162 ["Locked"]
  GETTABLEKS R11 R3 K163 ["Unlocked"]
  SETTABLEKS R11 R10 K163 ["Unlocked"]
  SETTABLE R10 R7 R9
  LOADK R11 K165 ["MultiSelectionRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K165 ["MultiSelectionRenderer"]
  DUPTABLE R10 K166 [{"Spacing"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K167 ["ElevationRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K167 ["ElevationRenderer"]
  DUPTABLE R10 K180 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R11 K182 [{"Image"}]
  LOADK R12 K183 ["rbxasset://textures/TagEditor/Add.png"]
  SETTABLEKS R12 R11 K181 ["Image"]
  SETTABLEKS R11 R10 K168 ["AddStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 10
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K169 ["ArrowSize"]
  DUPTABLE R11 K182 [{"Image"}]
  LOADK R12 K184 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R12 R11 K181 ["Image"]
  SETTABLEKS R11 R10 K170 ["ArrowStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K171 ["ButtonSize"]
  GETIMPORT R11 K71 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K172 ["Corner"]
  GETTABLEKS R11 R3 K185 ["TextPrimary"]
  SETTABLEKS R11 R10 K173 ["ImageColor"]
  GETTABLEKS R11 R3 K119 ["DialogMainButton"]
  SETTABLEKS R11 R10 K174 ["ImageColorSelected"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K175 ["MaterialPreviewSize"]
  DUPTABLE R11 K187 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R12 R3 K119 ["DialogMainButton"]
  SETTABLEKS R12 R11 K92 ["Color"]
  LOADK R12 K188 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R12 R11 K181 ["Image"]
  GETIMPORT R12 K190 [Rect.new]
  LOADN R13 3
  LOADN R14 3
  LOADN R15 13
  LOADN R16 13
  CALL R12 4 1
  SETTABLEKS R12 R11 K186 ["SliceCenter"]
  SETTABLEKS R11 R10 K176 ["PreviewBorder"]
  DUPTABLE R11 K182 [{"Image"}]
  LOADK R12 K191 ["rbxasset://textures/TagEditor/Close.png"]
  SETTABLEKS R12 R11 K181 ["Image"]
  SETTABLEKS R11 R10 K177 ["RemoveStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K178 ["SliderSize"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 50
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K179 ["TextBoxSize"]
  LOADN R11 10
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K192 ["SlopeRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K192 ["SlopeRenderer"]
  DUPTABLE R10 K194 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K80 ["Height"]
  LOADN R11 6
  SETTABLEKS R11 R10 K56 ["Spacing"]
  LOADN R11 50
  SETTABLEKS R11 R10 K193 ["TextInputWidth"]
  SETTABLE R10 R7 R9
  RETURN R7 1
