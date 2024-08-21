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
  DUPTABLE R9 K73 [{"CornerRadius", "DropdownItemHeight", "DropdownPadding", "Font", "FontSize", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "SelectInputArrowSize", "Spacing"}]
  GETIMPORT R10 K75 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K64 ["CornerRadius"]
  LOADN R10 40
  SETTABLEKS R10 R9 K65 ["DropdownItemHeight"]
  LOADN R10 10
  SETTABLEKS R10 R9 K66 ["DropdownPadding"]
  GETIMPORT R10 K78 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K67 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K68 ["FontSize"]
  LOADN R10 48
  SETTABLEKS R10 R9 K69 ["GridItemSize"]
  LOADK R10 K79 [6.2]
  SETTABLEKS R10 R9 K70 ["InitialDistance"]
  GETTABLEKS R10 R3 K80 ["InputFieldBackground"]
  SETTABLEKS R10 R9 K71 ["MaterialPreviewBackground"]
  LOADN R10 24
  SETTABLEKS R10 R9 K40 ["PreviewSize"]
  LOADN R10 16
  SETTABLEKS R10 R9 K72 ["SelectInputArrowSize"]
  LOADN R10 6
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K81 ["ProgressDialog"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K81 ["ProgressDialog"]
  DUPTABLE R9 K85 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K82 ["DescriptionHeight"]
  GETIMPORT R10 K62 [Vector2.new]
  LOADN R11 64
  LOADN R12 60
  CALL R10 2 1
  SETTABLEKS R10 R9 K83 ["MinContentSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K54 ["Padding"]
  LOADN R10 20
  SETTABLEKS R10 R9 K84 ["ProgressHeight"]
  LOADN R10 5
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K86 ["PlaneLockRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K86 ["PlaneLockRenderer"]
  DUPTABLE R9 K89 [{"Height", "Icon", "Spacing"}]
  LOADN R10 32
  SETTABLEKS R10 R9 K87 ["Height"]
  GETTABLEKS R10 R3 K90 ["Reset"]
  SETTABLEKS R10 R9 K88 ["Icon"]
  LOADN R10 6
  SETTABLEKS R10 R9 K56 ["Spacing"]
  SETTABLE R9 R7 R8
  LOADK R10 K91 ["UpgradeRenderer"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K91 ["UpgradeRenderer"]
  DUPTABLE R9 K93 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R10 K95 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K67 ["Font"]
  LOADN R10 44
  SETTABLEKS R10 R9 K92 ["MaxWidth"]
  LOADN R10 12
  SETTABLEKS R10 R9 K56 ["Spacing"]
  LOADN R10 16
  SETTABLEKS R10 R9 K25 ["TextSize"]
  SETTABLE R9 R7 R8
  LOADK R10 K96 ["Line"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K96 ["Line"]
  DUPTABLE R9 K100 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R10 K103 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K97 ["Color"]
  LOADK R10 K104 [0.8]
  SETTABLEKS R10 R9 K98 ["TransparencyActive"]
  LOADK R10 K105 [0.3]
  SETTABLEKS R10 R9 K99 ["Transparency"]
  SETTABLE R9 R7 R8
  LOADK R10 K106 ["Brush"]
  NAMECALL R8 R5 K17 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K106 ["Brush"]
  DUPTABLE R9 K110 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R10 K111 [0.015]
  SETTABLEKS R10 R9 K107 ["CenterRadiusMultiplier"]
  LOADK R10 K112 [0.25]
  SETTABLEKS R10 R9 K108 ["CenterTransparency"]
  GETIMPORT R10 K103 [BrickColor.White]
  CALL R10 0 1
  SETTABLEKS R10 R9 K97 ["Color"]
  LOADK R10 K113 [0.95]
  SETTABLEKS R10 R9 K109 ["MainTransparency"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K114 ["SimpleTab"]
  NEWTABLE R9 16 0
  LOADN R10 1
  SETTABLEKS R10 R9 K115 ["BorderSize"]
  LOADN R10 5
  SETTABLEKS R10 R9 K56 ["Spacing"]
  DUPTABLE R10 K120 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K116 ["Left"]
  LOADN R11 4
  SETTABLEKS R11 R10 K117 ["Top"]
  LOADN R11 0
  SETTABLEKS R11 R10 K118 ["Bottom"]
  LOADN R11 20
  SETTABLEKS R11 R10 K119 ["Right"]
  SETTABLEKS R10 R9 K54 ["Padding"]
  LOADN R10 3
  SETTABLEKS R10 R9 K121 ["TopLineHeight"]
  GETTABLEKS R10 R3 K122 ["ButtonText"]
  SETTABLEKS R10 R9 K97 ["Color"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K32 ["BackgroundColor"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K123 ["BorderColor"]
  GETTABLEKS R10 R3 K124 ["DialogMainButton"]
  SETTABLEKS R10 R9 K125 ["TopLineColor"]
  GETTABLEKS R10 R3 K30 ["SubBackground"]
  SETTABLEKS R10 R9 K126 ["BottomLineColor"]
  GETTABLEKS R10 R4 K127 ["Hover"]
  DUPTABLE R11 K128 [{"Color"}]
  GETTABLEKS R12 R3 K124 ["DialogMainButton"]
  SETTABLEKS R12 R11 K97 ["Color"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K129 ["Selected"]
  DUPTABLE R11 K130 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R12 R3 K34 ["MainBackground"]
  SETTABLEKS R12 R11 K126 ["BottomLineColor"]
  GETTABLEKS R12 R3 K34 ["MainBackground"]
  SETTABLEKS R12 R11 K32 ["BackgroundColor"]
  GETTABLEKS R12 R3 K131 ["Border"]
  SETTABLEKS R12 R11 K123 ["BorderColor"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K132 ["Disabled"]
  DUPTABLE R11 K128 [{"Color"}]
  GETTABLEKS R12 R3 K133 ["ButtonTextDisabled"]
  SETTABLEKS R12 R11 K97 ["Color"]
  SETTABLE R11 R9 R10
  SETTABLE R9 R7 R8
  GETIMPORT R8 K75 [UDim.new]
  LOADN R9 0
  LOADN R10 6
  CALL R8 2 1
  LOADK R11 K134 ["MaterialGrid"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K134 ["MaterialGrid"]
  DUPTABLE R10 K147 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R11 R3 K34 ["MainBackground"]
  SETTABLEKS R11 R10 K32 ["BackgroundColor"]
  GETTABLEKS R11 R3 K148 ["Button"]
  SETTABLEKS R11 R10 K135 ["GridItemBackgroundColor"]
  GETTABLEKS R11 R3 K149 ["ButtonHover"]
  SETTABLEKS R11 R10 K136 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R11 R3 K131 ["Border"]
  SETTABLEKS R11 R10 K137 ["GridItemBorderColor"]
  GETTABLEKS R11 R3 K150 ["InputFieldBorderSelected"]
  SETTABLEKS R11 R10 K138 ["GridItemBorderColorSelected"]
  GETIMPORT R11 K75 [UDim.new]
  LOADN R12 0
  LOADN R13 6
  CALL R11 2 1
  SETTABLEKS R11 R10 K139 ["GridItemCornerRadius"]
  LOADN R11 2
  SETTABLEKS R11 R10 K140 ["GridItemPadding"]
  LOADN R11 128
  SETTABLEKS R11 R10 K69 ["GridItemSize"]
  DUPTABLE R11 K154 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R8 R11 K151 ["PaddingBottom"]
  SETTABLEKS R8 R11 K152 ["PaddingLeft"]
  SETTABLEKS R8 R11 K153 ["PaddingRight"]
  SETTABLEKS R11 R10 K141 ["GridItemLabelPadding"]
  LOADN R11 40
  SETTABLEKS R11 R10 K142 ["ListItemHeight"]
  LOADN R11 0
  SETTABLEKS R11 R10 K143 ["ListItemPadding"]
  LOADN R11 4
  SETTABLEKS R11 R10 K144 ["ListItemSpacing"]
  LOADK R11 K155 ["CornerBox"]
  SETTABLEKS R11 R10 K145 ["MaterialPreviewStyle"]
  LOADN R11 0
  SETTABLEKS R11 R10 K54 ["Padding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K146 ["ShimmerSizeOffset"]
  LOADN R11 20
  SETTABLEKS R11 R10 K25 ["TextSize"]
  SETTABLE R10 R7 R9
  LOADK R11 K156 ["Note"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K156 ["Note"]
  DUPTABLE R10 K162 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R11 R3 K34 ["MainBackground"]
  SETTABLEKS R11 R10 K157 ["Background"]
  GETTABLEKS R11 R3 K163 ["DimmedText"]
  SETTABLEKS R11 R10 K158 ["KeyBackground"]
  LOADN R11 2
  SETTABLEKS R11 R10 K159 ["EdgePadding"]
  LOADN R11 3
  SETTABLEKS R11 R10 K160 ["FramePadding"]
  LOADN R11 2
  SETTABLEKS R11 R10 K161 ["TextMargin"]
  SETTABLE R10 R7 R9
  LOADK R11 K164 ["BrushSizeRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K164 ["BrushSizeRenderer"]
  DUPTABLE R10 K170 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R11 20
  SETTABLEKS R11 R10 K165 ["LabelWidth"]
  LOADN R11 26
  SETTABLEKS R11 R10 K166 ["LockButtonWidth"]
  LOADN R11 24
  SETTABLEKS R11 R10 K167 ["RowHeight"]
  GETTABLEKS R11 R3 K168 ["Locked"]
  SETTABLEKS R11 R10 K168 ["Locked"]
  GETTABLEKS R11 R3 K169 ["Unlocked"]
  SETTABLEKS R11 R10 K169 ["Unlocked"]
  SETTABLE R10 R7 R9
  LOADK R11 K171 ["MultiSelectionRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K171 ["MultiSelectionRenderer"]
  DUPTABLE R10 K172 [{"Spacing"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K173 ["ElevationRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K173 ["ElevationRenderer"]
  DUPTABLE R10 K187 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderAreaSize", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R11 K189 [{"Image"}]
  GETTABLEKS R12 R3 K190 ["Add"]
  SETTABLEKS R12 R11 K188 ["Image"]
  SETTABLEKS R11 R10 K174 ["AddStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 10
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K175 ["ArrowSize"]
  DUPTABLE R11 K189 [{"Image"}]
  LOADK R12 K191 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R12 R11 K188 ["Image"]
  SETTABLEKS R11 R10 K176 ["ArrowStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K177 ["ButtonSize"]
  GETIMPORT R11 K75 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K178 ["Corner"]
  GETTABLEKS R11 R3 K192 ["TextPrimary"]
  SETTABLEKS R11 R10 K179 ["ImageColor"]
  GETTABLEKS R11 R3 K124 ["DialogMainButton"]
  SETTABLEKS R11 R10 K180 ["ImageColorSelected"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K181 ["MaterialPreviewSize"]
  DUPTABLE R11 K194 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R12 R3 K124 ["DialogMainButton"]
  SETTABLEKS R12 R11 K97 ["Color"]
  LOADK R12 K195 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R12 R11 K188 ["Image"]
  GETIMPORT R12 K197 [Rect.new]
  LOADN R13 3
  LOADN R14 3
  LOADN R15 13
  LOADN R16 13
  CALL R12 4 1
  SETTABLEKS R12 R11 K193 ["SliceCenter"]
  SETTABLEKS R11 R10 K182 ["PreviewBorder"]
  DUPTABLE R11 K189 [{"Image"}]
  GETTABLEKS R12 R3 K198 ["Remove"]
  SETTABLEKS R12 R11 K188 ["Image"]
  SETTABLEKS R11 R10 K183 ["RemoveStyle"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 182
  CALL R11 2 1
  SETTABLEKS R11 R10 K184 ["SliderAreaSize"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K185 ["SliderSize"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 50
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K186 ["TextBoxSize"]
  LOADN R11 10
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K199 ["SlopeRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K199 ["SlopeRenderer"]
  DUPTABLE R10 K201 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K87 ["Height"]
  LOADN R11 6
  SETTABLEKS R11 R10 K56 ["Spacing"]
  LOADN R11 50
  SETTABLEKS R11 R10 K200 ["TextInputWidth"]
  SETTABLE R10 R7 R9
  LOADK R11 K202 ["MaterialRangesRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K202 ["MaterialRangesRenderer"]
  DUPTABLE R10 K206 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
  GETIMPORT R11 K207 [BrickColor.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R11 3 1
  SETTABLEKS R11 R10 K32 ["BackgroundColor"]
  DUPTABLE R11 K214 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R12 K62 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K208 ["AnchorPoint"]
  LOADN R12 1
  SETTABLEKS R12 R11 K209 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K210 ["BorderSizePixel"]
  LOADK R12 K215 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
  SETTABLEKS R12 R11 K188 ["Image"]
  GETIMPORT R12 K217 [Color3.fromRGB]
  LOADN R13 255
  LOADN R14 255
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K211 ["ImageColor3"]
  GETIMPORT R12 K219 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K212 ["Position"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K55 ["Size"]
  LOADN R12 2
  SETTABLEKS R12 R11 K213 ["ZIndex"]
  SETTABLEKS R11 R10 K203 ["CloseButton"]
  DUPTABLE R11 K221 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
  GETIMPORT R12 K62 [Vector2.new]
  LOADK R13 K222 [0.5]
  LOADK R14 K222 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K208 ["AnchorPoint"]
  GETTABLEKS R12 R3 K34 ["MainBackground"]
  SETTABLEKS R12 R11 K32 ["BackgroundColor"]
  GETIMPORT R12 K219 [UDim2.fromScale]
  LOADK R13 K222 [0.5]
  LOADK R14 K222 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K212 ["Position"]
  GETIMPORT R12 K223 [UDim2.new]
  LOADN R13 0
  LOADN R14 250
  LOADN R15 1
  LOADN R16 196
  CALL R12 4 1
  SETTABLEKS R12 R11 K220 ["FillSize"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 250
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K55 ["Size"]
  SETTABLEKS R11 R10 K204 ["Dialog"]
  LOADN R11 127
  SETTABLEKS R11 R10 K205 ["MinHeight"]
  LOADN R11 6
  SETTABLEKS R11 R10 K54 ["Padding"]
  DUPTABLE R11 K224 [{"Icon", "Size"}]
  GETTABLEKS R12 R3 K90 ["Reset"]
  SETTABLEKS R12 R11 K88 ["Icon"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 90
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K55 ["Size"]
  SETTABLEKS R11 R10 K90 ["Reset"]
  SETTABLE R10 R7 R9
  LOADK R11 K225 ["TerrainTypeRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K225 ["TerrainTypeRenderer"]
  DUPTABLE R10 K228 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "ItemMinWidth", "Spacing"}]
  GETTABLEKS R11 R3 K124 ["DialogMainButton"]
  SETTABLEKS R11 R10 K123 ["BorderColor"]
  LOADN R11 32
  SETTABLEKS R11 R10 K87 ["Height"]
  LOADN R11 24
  SETTABLEKS R11 R10 K20 ["IconSize"]
  LOADN R11 3
  SETTABLEKS R11 R10 K226 ["ItemsPerRow"]
  LOADN R11 130
  SETTABLEKS R11 R10 K227 ["ItemMinWidth"]
  LOADN R11 6
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  LOADK R11 K229 ["SeedRenderer"]
  NAMECALL R9 R5 K17 ["add"]
  CALL R9 2 0
  GETTABLEKS R9 R5 K229 ["SeedRenderer"]
  DUPTABLE R10 K89 [{"Height", "Icon", "Spacing"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K87 ["Height"]
  GETTABLEKS R11 R3 K230 ["Randomize"]
  SETTABLEKS R11 R10 K88 ["Icon"]
  LOADN R11 6
  SETTABLEKS R11 R10 K56 ["Spacing"]
  SETTABLE R10 R7 R9
  RETURN R7 1
