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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K16 ["getFFlagTerrainEditorUseIconButton"]
  CALL R7 1 1
  NEWTABLE R8 0 0
  LOADK R11 K17 ["Toolbar"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K17 ["Toolbar"]
  DUPTABLE R10 K27 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 84
  LOADN R13 84
  CALL R11 2 1
  JUMP [+5]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 70
  LOADN R13 70
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["CellSize"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 2
  LOADN R13 2
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CellPadding"]
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 30
  LOADN R13 30
  CALL R11 2 1
  JUMP [+5]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 28
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["IconSize"]
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R11 15
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K22 ["OverflowTextSize"]
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R11 75
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K23 ["OverflowThreshold"]
  GETTABLEKS R11 R3 K24 ["StudioTheme"]
  SETTABLEKS R11 R10 K24 ["StudioTheme"]
  GETTABLEKS R11 R3 K31 ["SubBackground"]
  SETTABLEKS R11 R10 K25 ["TabBackgroundColor"]
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R11 18
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K26 ["TextSize"]
  SETTABLE R10 R8 R9
  LOADK R11 K32 ["ToolSettings"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K32 ["ToolSettings"]
  DUPTABLE R10 K34 [{"BackgroundColor"}]
  GETTABLEKS R11 R3 K35 ["MainBackground"]
  SETTABLEKS R11 R10 K33 ["BackgroundColor"]
  SETTABLE R10 R8 R9
  LOADK R11 K36 ["ImageRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K36 ["ImageRenderer"]
  DUPTABLE R10 K46 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R11 K47 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R11 R10 K37 ["ClearIcon"]
  LOADK R11 K48 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R11 R10 K38 ["ExpandIcon"]
  LOADN R11 3
  SETTABLEKS R11 R10 K39 ["IconPadding"]
  LOADK R11 K49 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R11 R10 K40 ["ImportIcon"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 100
  LOADN R13 100
  CALL R11 2 1
  SETTABLEKS R11 R10 K41 ["PreviewSize"]
  LOADK R11 K50 [0.4]
  SETTABLEKS R11 R10 K42 ["ToolbarTransparency"]
  GETTABLEKS R11 R3 K43 ["ToolbarBackgroundColor"]
  SETTABLEKS R11 R10 K43 ["ToolbarBackgroundColor"]
  GETTABLEKS R11 R3 K44 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R11 R10 K44 ["ToolbarButtonBackgroundColor"]
  LOADN R11 32
  SETTABLEKS R11 R10 K45 ["ToolbarHeight"]
  SETTABLE R10 R8 R9
  LOADK R11 K51 ["MetadataDialog"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K51 ["MetadataDialog"]
  DUPTABLE R10 K58 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R11 K61 [Color3.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R11 3 1
  SETTABLEKS R11 R10 K52 ["ImageBackgroundColor"]
  LOADN R11 16
  SETTABLEKS R11 R10 K53 ["MetadataLineHeight"]
  GETIMPORT R11 K63 [Vector2.new]
  LOADN R12 100
  LOADN R13 100
  CALL R11 2 1
  SETTABLEKS R11 R10 K54 ["MinSize"]
  LOADN R11 4
  SETTABLEKS R11 R10 K55 ["Padding"]
  GETIMPORT R11 K63 [Vector2.new]
  LOADN R12 144
  LOADN R13 144
  CALL R11 2 1
  SETTABLEKS R11 R10 K56 ["Size"]
  LOADN R11 4
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R8 R9
  LOADK R11 K64 ["MaterialRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K64 ["MaterialRenderer"]
  DUPTABLE R10 K70 [{"CornerRadius", "DropdownItemHeight", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "Spacing"}]
  GETIMPORT R11 K72 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K65 ["CornerRadius"]
  LOADN R11 40
  SETTABLEKS R11 R10 K66 ["DropdownItemHeight"]
  LOADN R11 48
  SETTABLEKS R11 R10 K67 ["GridItemSize"]
  LOADK R11 K73 [6.2]
  SETTABLEKS R11 R10 K68 ["InitialDistance"]
  GETTABLEKS R11 R3 K74 ["InputFieldBackground"]
  SETTABLEKS R11 R10 K69 ["MaterialPreviewBackground"]
  LOADN R11 24
  SETTABLEKS R11 R10 K41 ["PreviewSize"]
  LOADN R11 6
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R8 R9
  LOADK R11 K75 ["ProgressDialog"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K75 ["ProgressDialog"]
  DUPTABLE R10 K79 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K76 ["DescriptionHeight"]
  GETIMPORT R11 K63 [Vector2.new]
  LOADN R12 64
  LOADN R13 60
  CALL R11 2 1
  SETTABLEKS R11 R10 K77 ["MinContentSize"]
  LOADN R11 5
  SETTABLEKS R11 R10 K55 ["Padding"]
  LOADN R11 20
  SETTABLEKS R11 R10 K78 ["ProgressHeight"]
  LOADN R11 5
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R8 R9
  LOADK R11 K80 ["PlaneLockRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K80 ["PlaneLockRenderer"]
  DUPTABLE R10 K83 [{"Height", "Icon", "Spacing"}]
  LOADN R11 32
  SETTABLEKS R11 R10 K81 ["Height"]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R3 K84 ["Reset"]
  JUMP [+1]
  LOADK R11 K85 ["rbxasset://textures/StudioToolbox/AssetConfig/restore.png"]
  SETTABLEKS R11 R10 K82 ["Icon"]
  LOADN R11 6
  SETTABLEKS R11 R10 K57 ["Spacing"]
  SETTABLE R10 R8 R9
  LOADK R11 K86 ["UpgradeRenderer"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K86 ["UpgradeRenderer"]
  DUPTABLE R10 K89 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R11 K92 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K87 ["Font"]
  LOADN R11 44
  SETTABLEKS R11 R10 K88 ["MaxWidth"]
  LOADN R11 12
  SETTABLEKS R11 R10 K57 ["Spacing"]
  LOADN R11 16
  SETTABLEKS R11 R10 K26 ["TextSize"]
  SETTABLE R10 R8 R9
  LOADK R11 K93 ["Line"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K93 ["Line"]
  DUPTABLE R10 K97 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R11 K100 [BrickColor.White]
  CALL R11 0 1
  SETTABLEKS R11 R10 K94 ["Color"]
  LOADK R11 K101 [0.8]
  SETTABLEKS R11 R10 K95 ["TransparencyActive"]
  LOADK R11 K102 [0.3]
  SETTABLEKS R11 R10 K96 ["Transparency"]
  SETTABLE R10 R8 R9
  LOADK R11 K103 ["Brush"]
  NAMECALL R9 R5 K18 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K103 ["Brush"]
  DUPTABLE R10 K107 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R11 K108 [0.015]
  SETTABLEKS R11 R10 K104 ["CenterRadiusMultiplier"]
  LOADK R11 K109 [0.25]
  SETTABLEKS R11 R10 K105 ["CenterTransparency"]
  GETIMPORT R11 K100 [BrickColor.White]
  CALL R11 0 1
  SETTABLEKS R11 R10 K94 ["Color"]
  LOADK R11 K110 [0.95]
  SETTABLEKS R11 R10 K106 ["MainTransparency"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K111 ["SimpleTab"]
  NEWTABLE R10 16 0
  LOADN R11 1
  SETTABLEKS R11 R10 K112 ["BorderSize"]
  LOADN R11 5
  SETTABLEKS R11 R10 K57 ["Spacing"]
  DUPTABLE R11 K117 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R12 20
  SETTABLEKS R12 R11 K113 ["Left"]
  LOADN R12 4
  SETTABLEKS R12 R11 K114 ["Top"]
  LOADN R12 0
  SETTABLEKS R12 R11 K115 ["Bottom"]
  LOADN R12 20
  SETTABLEKS R12 R11 K116 ["Right"]
  SETTABLEKS R11 R10 K55 ["Padding"]
  LOADN R11 3
  SETTABLEKS R11 R10 K118 ["TopLineHeight"]
  GETTABLEKS R11 R3 K119 ["ButtonText"]
  SETTABLEKS R11 R10 K94 ["Color"]
  GETTABLEKS R11 R3 K31 ["SubBackground"]
  SETTABLEKS R11 R10 K33 ["BackgroundColor"]
  GETTABLEKS R11 R3 K31 ["SubBackground"]
  SETTABLEKS R11 R10 K120 ["BorderColor"]
  GETTABLEKS R11 R3 K121 ["DialogMainButton"]
  SETTABLEKS R11 R10 K122 ["TopLineColor"]
  GETTABLEKS R11 R3 K31 ["SubBackground"]
  SETTABLEKS R11 R10 K123 ["BottomLineColor"]
  GETTABLEKS R11 R4 K124 ["Hover"]
  DUPTABLE R12 K125 [{"Color"}]
  GETTABLEKS R13 R3 K121 ["DialogMainButton"]
  SETTABLEKS R13 R12 K94 ["Color"]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R4 K126 ["Selected"]
  DUPTABLE R12 K127 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R13 R3 K35 ["MainBackground"]
  SETTABLEKS R13 R12 K123 ["BottomLineColor"]
  GETTABLEKS R13 R3 K35 ["MainBackground"]
  SETTABLEKS R13 R12 K33 ["BackgroundColor"]
  GETTABLEKS R13 R3 K128 ["Border"]
  SETTABLEKS R13 R12 K120 ["BorderColor"]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R4 K129 ["Disabled"]
  DUPTABLE R12 K125 [{"Color"}]
  GETTABLEKS R13 R3 K130 ["ButtonTextDisabled"]
  SETTABLEKS R13 R12 K94 ["Color"]
  SETTABLE R12 R10 R11
  SETTABLE R10 R8 R9
  GETIMPORT R9 K72 [UDim.new]
  LOADN R10 0
  LOADN R11 6
  CALL R9 2 1
  LOADK R12 K131 ["MaterialGrid"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K131 ["MaterialGrid"]
  DUPTABLE R11 K144 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R12 R3 K35 ["MainBackground"]
  SETTABLEKS R12 R11 K33 ["BackgroundColor"]
  GETTABLEKS R12 R3 K145 ["Button"]
  SETTABLEKS R12 R11 K132 ["GridItemBackgroundColor"]
  GETTABLEKS R12 R3 K146 ["ButtonHover"]
  SETTABLEKS R12 R11 K133 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R12 R3 K128 ["Border"]
  SETTABLEKS R12 R11 K134 ["GridItemBorderColor"]
  GETTABLEKS R12 R3 K147 ["InputFieldBorderSelected"]
  SETTABLEKS R12 R11 K135 ["GridItemBorderColorSelected"]
  GETIMPORT R12 K72 [UDim.new]
  LOADN R13 0
  LOADN R14 6
  CALL R12 2 1
  SETTABLEKS R12 R11 K136 ["GridItemCornerRadius"]
  LOADN R12 2
  SETTABLEKS R12 R11 K137 ["GridItemPadding"]
  LOADN R12 128
  SETTABLEKS R12 R11 K67 ["GridItemSize"]
  DUPTABLE R12 K151 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R9 R12 K148 ["PaddingBottom"]
  SETTABLEKS R9 R12 K149 ["PaddingLeft"]
  SETTABLEKS R9 R12 K150 ["PaddingRight"]
  SETTABLEKS R12 R11 K138 ["GridItemLabelPadding"]
  LOADN R12 40
  SETTABLEKS R12 R11 K139 ["ListItemHeight"]
  LOADN R12 0
  SETTABLEKS R12 R11 K140 ["ListItemPadding"]
  LOADN R12 4
  SETTABLEKS R12 R11 K141 ["ListItemSpacing"]
  LOADK R12 K152 ["CornerBox"]
  SETTABLEKS R12 R11 K142 ["MaterialPreviewStyle"]
  LOADN R12 0
  SETTABLEKS R12 R11 K55 ["Padding"]
  LOADN R12 2
  SETTABLEKS R12 R11 K143 ["ShimmerSizeOffset"]
  LOADN R12 20
  SETTABLEKS R12 R11 K26 ["TextSize"]
  SETTABLE R11 R8 R10
  LOADK R12 K153 ["Note"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K153 ["Note"]
  DUPTABLE R11 K159 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R12 R3 K35 ["MainBackground"]
  SETTABLEKS R12 R11 K154 ["Background"]
  GETTABLEKS R12 R3 K160 ["DimmedText"]
  SETTABLEKS R12 R11 K155 ["KeyBackground"]
  LOADN R12 2
  SETTABLEKS R12 R11 K156 ["EdgePadding"]
  LOADN R12 3
  SETTABLEKS R12 R11 K157 ["FramePadding"]
  LOADN R12 2
  SETTABLEKS R12 R11 K158 ["TextMargin"]
  SETTABLE R11 R8 R10
  LOADK R12 K161 ["BrushSizeRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K161 ["BrushSizeRenderer"]
  DUPTABLE R11 K167 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R12 20
  SETTABLEKS R12 R11 K162 ["LabelWidth"]
  LOADN R12 26
  SETTABLEKS R12 R11 K163 ["LockButtonWidth"]
  LOADN R12 24
  SETTABLEKS R12 R11 K164 ["RowHeight"]
  GETTABLEKS R12 R3 K165 ["Locked"]
  SETTABLEKS R12 R11 K165 ["Locked"]
  GETTABLEKS R12 R3 K166 ["Unlocked"]
  SETTABLEKS R12 R11 K166 ["Unlocked"]
  SETTABLE R11 R8 R10
  LOADK R12 K168 ["MultiSelectionRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K168 ["MultiSelectionRenderer"]
  DUPTABLE R11 K169 [{"Spacing"}]
  LOADN R12 4
  SETTABLEKS R12 R11 K57 ["Spacing"]
  SETTABLE R11 R8 R10
  LOADK R12 K170 ["ElevationRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K170 ["ElevationRenderer"]
  DUPTABLE R11 K183 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R12 K185 [{"Color", "Image"}]
  GETTABLEKS R13 R3 K186 ["TextPrimary"]
  SETTABLEKS R13 R12 K94 ["Color"]
  LOADK R13 K187 ["rbxasset://textures/TagEditor/Add.png"]
  SETTABLEKS R13 R12 K184 ["Image"]
  SETTABLEKS R12 R11 K171 ["AddStyle"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 10
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K172 ["ArrowSize"]
  DUPTABLE R12 K188 [{"Image"}]
  LOADK R13 K189 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R13 R12 K184 ["Image"]
  SETTABLEKS R12 R11 K173 ["ArrowStyle"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 16
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K174 ["ButtonSize"]
  GETIMPORT R12 K72 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K175 ["Corner"]
  GETTABLEKS R12 R3 K186 ["TextPrimary"]
  SETTABLEKS R12 R11 K176 ["ImageColor"]
  GETTABLEKS R12 R3 K121 ["DialogMainButton"]
  SETTABLEKS R12 R11 K177 ["ImageColorSelected"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 20
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K178 ["MaterialPreviewSize"]
  DUPTABLE R12 K191 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R13 R3 K121 ["DialogMainButton"]
  SETTABLEKS R13 R12 K94 ["Color"]
  LOADK R13 K192 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R13 R12 K184 ["Image"]
  GETIMPORT R13 K194 [Rect.new]
  LOADN R14 3
  LOADN R15 3
  LOADN R16 13
  LOADN R17 13
  CALL R13 4 1
  SETTABLEKS R13 R12 K190 ["SliceCenter"]
  SETTABLEKS R12 R11 K179 ["PreviewBorder"]
  DUPTABLE R12 K188 [{"Image"}]
  LOADK R13 K195 ["rbxasset://textures/TagEditor/Close.png"]
  SETTABLEKS R13 R12 K184 ["Image"]
  SETTABLEKS R12 R11 K180 ["RemoveStyle"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 20
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K181 ["SliderSize"]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 50
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K182 ["TextBoxSize"]
  LOADN R12 10
  SETTABLEKS R12 R11 K57 ["Spacing"]
  SETTABLE R11 R8 R10
  LOADK R12 K196 ["SlopeRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K196 ["SlopeRenderer"]
  DUPTABLE R11 K198 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R12 24
  SETTABLEKS R12 R11 K81 ["Height"]
  LOADN R12 6
  SETTABLEKS R12 R11 K57 ["Spacing"]
  LOADN R12 50
  SETTABLEKS R12 R11 K197 ["TextInputWidth"]
  SETTABLE R11 R8 R10
  LOADK R12 K199 ["MaterialRangesRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K199 ["MaterialRangesRenderer"]
  DUPTABLE R11 K203 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
  GETIMPORT R12 K204 [BrickColor.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R12 3 1
  SETTABLEKS R12 R11 K33 ["BackgroundColor"]
  DUPTABLE R12 K211 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R13 K63 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K205 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K206 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K207 ["BorderSizePixel"]
  LOADK R13 K212 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
  SETTABLEKS R13 R12 K184 ["Image"]
  GETIMPORT R13 K214 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 255
  LOADN R16 255
  CALL R13 3 1
  SETTABLEKS R13 R12 K208 ["ImageColor3"]
  GETIMPORT R13 K216 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K209 ["Position"]
  GETIMPORT R13 K30 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K210 ["ZIndex"]
  SETTABLEKS R12 R11 K200 ["CloseButton"]
  DUPTABLE R12 K218 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
  GETIMPORT R13 K63 [Vector2.new]
  LOADK R14 K219 [0.5]
  LOADK R15 K219 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K205 ["AnchorPoint"]
  GETTABLEKS R13 R3 K35 ["MainBackground"]
  SETTABLEKS R13 R12 K33 ["BackgroundColor"]
  GETIMPORT R13 K216 [UDim2.fromScale]
  LOADK R14 K219 [0.5]
  LOADK R15 K219 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K209 ["Position"]
  GETIMPORT R13 K220 [UDim2.new]
  LOADN R14 0
  LOADN R15 250
  LOADN R16 1
  LOADN R17 196
  CALL R13 4 1
  SETTABLEKS R13 R12 K217 ["FillSize"]
  GETIMPORT R13 K30 [UDim2.fromOffset]
  LOADN R14 250
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["Size"]
  SETTABLEKS R12 R11 K201 ["Dialog"]
  LOADN R12 75
  SETTABLEKS R12 R11 K202 ["MinHeight"]
  LOADN R12 6
  SETTABLEKS R12 R11 K55 ["Padding"]
  DUPTABLE R12 K221 [{"Icon", "Size"}]
  GETTABLEKS R13 R3 K84 ["Reset"]
  SETTABLEKS R13 R12 K82 ["Icon"]
  GETIMPORT R13 K30 [UDim2.fromOffset]
  LOADN R14 90
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["Size"]
  SETTABLEKS R12 R11 K84 ["Reset"]
  SETTABLE R11 R8 R10
  LOADK R12 K222 ["TerrainTypeRenderer"]
  NAMECALL R10 R5 K18 ["add"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K222 ["TerrainTypeRenderer"]
  DUPTABLE R11 K224 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "Spacing"}]
  GETTABLEKS R12 R3 K121 ["DialogMainButton"]
  SETTABLEKS R12 R11 K120 ["BorderColor"]
  LOADN R12 32
  SETTABLEKS R12 R11 K81 ["Height"]
  LOADN R12 24
  SETTABLEKS R12 R11 K21 ["IconSize"]
  LOADN R12 3
  SETTABLEKS R12 R11 K223 ["ItemsPerRow"]
  LOADN R12 6
  SETTABLEKS R12 R11 K57 ["Spacing"]
  SETTABLE R11 R8 R10
  RETURN R8 1
