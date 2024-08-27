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
  NEWTABLE R6 0 0
  LOADK R9 K13 ["Toolbar"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K13 ["Toolbar"]
  DUPTABLE R8 K23 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
  GETIMPORT R9 K26 [UDim2.fromOffset]
  LOADN R10 84
  LOADN R11 84
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["CellSize"]
  GETIMPORT R9 K26 [UDim2.fromOffset]
  LOADN R10 2
  LOADN R11 2
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["CellPadding"]
  GETIMPORT R9 K26 [UDim2.fromOffset]
  LOADN R10 30
  LOADN R11 30
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["IconSize"]
  LOADN R9 15
  SETTABLEKS R9 R8 K18 ["OverflowTextSize"]
  LOADN R9 75
  SETTABLEKS R9 R8 K19 ["OverflowThreshold"]
  GETTABLEKS R9 R3 K20 ["StudioTheme"]
  SETTABLEKS R9 R8 K20 ["StudioTheme"]
  GETTABLEKS R9 R3 K27 ["SubBackground"]
  SETTABLEKS R9 R8 K21 ["TabBackgroundColor"]
  LOADN R9 18
  SETTABLEKS R9 R8 K22 ["TextSize"]
  SETTABLE R8 R6 R7
  LOADK R9 K28 ["ToolSettings"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K28 ["ToolSettings"]
  DUPTABLE R8 K30 [{"BackgroundColor"}]
  GETTABLEKS R9 R3 K31 ["MainBackground"]
  SETTABLEKS R9 R8 K29 ["BackgroundColor"]
  SETTABLE R8 R6 R7
  LOADK R9 K32 ["ImageRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K32 ["ImageRenderer"]
  DUPTABLE R8 K42 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R9 K43 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R9 R8 K33 ["ClearIcon"]
  LOADK R9 K44 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R9 R8 K34 ["ExpandIcon"]
  LOADN R9 3
  SETTABLEKS R9 R8 K35 ["IconPadding"]
  LOADK R9 K45 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R9 R8 K36 ["ImportIcon"]
  GETIMPORT R9 K26 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K37 ["PreviewSize"]
  LOADK R9 K46 [0.4]
  SETTABLEKS R9 R8 K38 ["ToolbarTransparency"]
  GETTABLEKS R9 R3 K39 ["ToolbarBackgroundColor"]
  SETTABLEKS R9 R8 K39 ["ToolbarBackgroundColor"]
  GETTABLEKS R9 R3 K40 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R9 R8 K40 ["ToolbarButtonBackgroundColor"]
  LOADN R9 32
  SETTABLEKS R9 R8 K41 ["ToolbarHeight"]
  SETTABLE R8 R6 R7
  LOADK R9 K47 ["MetadataDialog"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K47 ["MetadataDialog"]
  DUPTABLE R8 K54 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R9 K57 [Color3.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K48 ["ImageBackgroundColor"]
  LOADN R9 16
  SETTABLEKS R9 R8 K49 ["MetadataLineHeight"]
  GETIMPORT R9 K59 [Vector2.new]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K50 ["MinSize"]
  LOADN R9 4
  SETTABLEKS R9 R8 K51 ["Padding"]
  GETIMPORT R9 K59 [Vector2.new]
  LOADN R10 144
  LOADN R11 144
  CALL R9 2 1
  SETTABLEKS R9 R8 K52 ["Size"]
  LOADN R9 4
  SETTABLEKS R9 R8 K53 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K60 ["MaterialRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K60 ["MaterialRenderer"]
  DUPTABLE R8 K70 [{"CornerRadius", "DropdownItemHeight", "DropdownPadding", "Font", "FontSize", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "SelectInputArrowSize", "Spacing"}]
  GETIMPORT R9 K72 [UDim.new]
  LOADN R10 0
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K61 ["CornerRadius"]
  LOADN R9 40
  SETTABLEKS R9 R8 K62 ["DropdownItemHeight"]
  LOADN R9 10
  SETTABLEKS R9 R8 K63 ["DropdownPadding"]
  GETIMPORT R9 K75 [Enum.Font.BuilderSans]
  SETTABLEKS R9 R8 K64 ["Font"]
  LOADN R9 18
  SETTABLEKS R9 R8 K65 ["FontSize"]
  LOADN R9 48
  SETTABLEKS R9 R8 K66 ["GridItemSize"]
  LOADK R9 K76 [6.2]
  SETTABLEKS R9 R8 K67 ["InitialDistance"]
  GETTABLEKS R9 R3 K77 ["InputFieldBackground"]
  SETTABLEKS R9 R8 K68 ["MaterialPreviewBackground"]
  LOADN R9 24
  SETTABLEKS R9 R8 K37 ["PreviewSize"]
  LOADN R9 16
  SETTABLEKS R9 R8 K69 ["SelectInputArrowSize"]
  LOADN R9 6
  SETTABLEKS R9 R8 K53 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K78 ["ProgressDialog"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K78 ["ProgressDialog"]
  DUPTABLE R8 K82 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R9 20
  SETTABLEKS R9 R8 K79 ["DescriptionHeight"]
  GETIMPORT R9 K59 [Vector2.new]
  LOADN R10 64
  LOADN R11 60
  CALL R9 2 1
  SETTABLEKS R9 R8 K80 ["MinContentSize"]
  LOADN R9 5
  SETTABLEKS R9 R8 K51 ["Padding"]
  LOADN R9 20
  SETTABLEKS R9 R8 K81 ["ProgressHeight"]
  LOADN R9 5
  SETTABLEKS R9 R8 K53 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K83 ["PlaneLockRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K83 ["PlaneLockRenderer"]
  DUPTABLE R8 K86 [{"Height", "Icon", "Spacing"}]
  LOADN R9 32
  SETTABLEKS R9 R8 K84 ["Height"]
  GETTABLEKS R9 R3 K87 ["Reset"]
  SETTABLEKS R9 R8 K85 ["Icon"]
  LOADN R9 6
  SETTABLEKS R9 R8 K53 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K88 ["UpgradeRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K88 ["UpgradeRenderer"]
  DUPTABLE R8 K90 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R9 K92 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K64 ["Font"]
  LOADN R9 44
  SETTABLEKS R9 R8 K89 ["MaxWidth"]
  LOADN R9 12
  SETTABLEKS R9 R8 K53 ["Spacing"]
  LOADN R9 16
  SETTABLEKS R9 R8 K22 ["TextSize"]
  SETTABLE R8 R6 R7
  LOADK R9 K93 ["Line"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K93 ["Line"]
  DUPTABLE R8 K97 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R9 K100 [BrickColor.White]
  CALL R9 0 1
  SETTABLEKS R9 R8 K94 ["Color"]
  LOADK R9 K101 [0.8]
  SETTABLEKS R9 R8 K95 ["TransparencyActive"]
  LOADK R9 K102 [0.3]
  SETTABLEKS R9 R8 K96 ["Transparency"]
  SETTABLE R8 R6 R7
  LOADK R9 K103 ["Brush"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K103 ["Brush"]
  DUPTABLE R8 K107 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R9 K108 [0.015]
  SETTABLEKS R9 R8 K104 ["CenterRadiusMultiplier"]
  LOADK R9 K109 [0.25]
  SETTABLEKS R9 R8 K105 ["CenterTransparency"]
  GETIMPORT R9 K100 [BrickColor.White]
  CALL R9 0 1
  SETTABLEKS R9 R8 K94 ["Color"]
  LOADK R9 K110 [0.95]
  SETTABLEKS R9 R8 K106 ["MainTransparency"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K111 ["SimpleTab"]
  NEWTABLE R8 16 0
  LOADN R9 1
  SETTABLEKS R9 R8 K112 ["BorderSize"]
  LOADN R9 5
  SETTABLEKS R9 R8 K53 ["Spacing"]
  DUPTABLE R9 K117 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K113 ["Left"]
  LOADN R10 4
  SETTABLEKS R10 R9 K114 ["Top"]
  LOADN R10 0
  SETTABLEKS R10 R9 K115 ["Bottom"]
  LOADN R10 20
  SETTABLEKS R10 R9 K116 ["Right"]
  SETTABLEKS R9 R8 K51 ["Padding"]
  LOADN R9 3
  SETTABLEKS R9 R8 K118 ["TopLineHeight"]
  GETTABLEKS R9 R3 K119 ["ButtonText"]
  SETTABLEKS R9 R8 K94 ["Color"]
  GETTABLEKS R9 R3 K27 ["SubBackground"]
  SETTABLEKS R9 R8 K29 ["BackgroundColor"]
  GETTABLEKS R9 R3 K27 ["SubBackground"]
  SETTABLEKS R9 R8 K120 ["BorderColor"]
  GETTABLEKS R9 R3 K121 ["DialogMainButton"]
  SETTABLEKS R9 R8 K122 ["TopLineColor"]
  GETTABLEKS R9 R3 K27 ["SubBackground"]
  SETTABLEKS R9 R8 K123 ["BottomLineColor"]
  GETTABLEKS R9 R4 K124 ["Hover"]
  DUPTABLE R10 K125 [{"Color"}]
  GETTABLEKS R11 R3 K121 ["DialogMainButton"]
  SETTABLEKS R11 R10 K94 ["Color"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K126 ["Selected"]
  DUPTABLE R10 K127 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R11 R3 K31 ["MainBackground"]
  SETTABLEKS R11 R10 K123 ["BottomLineColor"]
  GETTABLEKS R11 R3 K31 ["MainBackground"]
  SETTABLEKS R11 R10 K29 ["BackgroundColor"]
  GETTABLEKS R11 R3 K128 ["Border"]
  SETTABLEKS R11 R10 K120 ["BorderColor"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K129 ["Disabled"]
  DUPTABLE R10 K125 [{"Color"}]
  GETTABLEKS R11 R3 K130 ["ButtonTextDisabled"]
  SETTABLEKS R11 R10 K94 ["Color"]
  SETTABLE R10 R8 R9
  SETTABLE R8 R6 R7
  GETIMPORT R7 K72 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  LOADK R10 K131 ["MaterialGrid"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K131 ["MaterialGrid"]
  DUPTABLE R9 K144 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R10 R3 K31 ["MainBackground"]
  SETTABLEKS R10 R9 K29 ["BackgroundColor"]
  GETTABLEKS R10 R3 K145 ["Button"]
  SETTABLEKS R10 R9 K132 ["GridItemBackgroundColor"]
  GETTABLEKS R10 R3 K146 ["ButtonHover"]
  SETTABLEKS R10 R9 K133 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R10 R3 K128 ["Border"]
  SETTABLEKS R10 R9 K134 ["GridItemBorderColor"]
  GETTABLEKS R10 R3 K147 ["InputFieldBorderSelected"]
  SETTABLEKS R10 R9 K135 ["GridItemBorderColorSelected"]
  GETIMPORT R10 K72 [UDim.new]
  LOADN R11 0
  LOADN R12 6
  CALL R10 2 1
  SETTABLEKS R10 R9 K136 ["GridItemCornerRadius"]
  LOADN R10 2
  SETTABLEKS R10 R9 K137 ["GridItemPadding"]
  LOADN R10 128
  SETTABLEKS R10 R9 K66 ["GridItemSize"]
  DUPTABLE R10 K151 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R7 R10 K148 ["PaddingBottom"]
  SETTABLEKS R7 R10 K149 ["PaddingLeft"]
  SETTABLEKS R7 R10 K150 ["PaddingRight"]
  SETTABLEKS R10 R9 K138 ["GridItemLabelPadding"]
  LOADN R10 40
  SETTABLEKS R10 R9 K139 ["ListItemHeight"]
  LOADN R10 0
  SETTABLEKS R10 R9 K140 ["ListItemPadding"]
  LOADN R10 4
  SETTABLEKS R10 R9 K141 ["ListItemSpacing"]
  LOADK R10 K152 ["CornerBox"]
  SETTABLEKS R10 R9 K142 ["MaterialPreviewStyle"]
  LOADN R10 0
  SETTABLEKS R10 R9 K51 ["Padding"]
  LOADN R10 2
  SETTABLEKS R10 R9 K143 ["ShimmerSizeOffset"]
  LOADN R10 20
  SETTABLEKS R10 R9 K22 ["TextSize"]
  SETTABLE R9 R6 R8
  LOADK R10 K153 ["Note"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K153 ["Note"]
  DUPTABLE R9 K159 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R10 R3 K31 ["MainBackground"]
  SETTABLEKS R10 R9 K154 ["Background"]
  GETTABLEKS R10 R3 K160 ["DimmedText"]
  SETTABLEKS R10 R9 K155 ["KeyBackground"]
  LOADN R10 2
  SETTABLEKS R10 R9 K156 ["EdgePadding"]
  LOADN R10 3
  SETTABLEKS R10 R9 K157 ["FramePadding"]
  LOADN R10 2
  SETTABLEKS R10 R9 K158 ["TextMargin"]
  SETTABLE R9 R6 R8
  LOADK R10 K161 ["BrushSizeRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K161 ["BrushSizeRenderer"]
  DUPTABLE R9 K167 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K162 ["LabelWidth"]
  LOADN R10 26
  SETTABLEKS R10 R9 K163 ["LockButtonWidth"]
  LOADN R10 24
  SETTABLEKS R10 R9 K164 ["RowHeight"]
  GETTABLEKS R10 R3 K165 ["Locked"]
  SETTABLEKS R10 R9 K165 ["Locked"]
  GETTABLEKS R10 R3 K166 ["Unlocked"]
  SETTABLEKS R10 R9 K166 ["Unlocked"]
  SETTABLE R9 R6 R8
  LOADK R10 K168 ["MultiSelectionRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K168 ["MultiSelectionRenderer"]
  DUPTABLE R9 K169 [{"Spacing"}]
  LOADN R10 4
  SETTABLEKS R10 R9 K53 ["Spacing"]
  SETTABLE R9 R6 R8
  LOADK R10 K170 ["ElevationRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K170 ["ElevationRenderer"]
  DUPTABLE R9 K184 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderAreaSize", "SliderSize", "TextBoxSize", "Spacing"}]
  DUPTABLE R10 K186 [{"Image"}]
  GETTABLEKS R11 R3 K187 ["Add"]
  SETTABLEKS R11 R10 K185 ["Image"]
  SETTABLEKS R10 R9 K171 ["AddStyle"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 10
  LOADN R12 5
  CALL R10 2 1
  SETTABLEKS R10 R9 K172 ["ArrowSize"]
  DUPTABLE R10 K186 [{"Image"}]
  LOADK R11 K188 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
  SETTABLEKS R11 R10 K185 ["Image"]
  SETTABLEKS R10 R9 K173 ["ArrowStyle"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 16
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K174 ["ButtonSize"]
  GETIMPORT R10 K72 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K175 ["Corner"]
  GETTABLEKS R10 R3 K189 ["TextPrimary"]
  SETTABLEKS R10 R9 K176 ["ImageColor"]
  GETTABLEKS R10 R3 K121 ["DialogMainButton"]
  SETTABLEKS R10 R9 K177 ["ImageColorSelected"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 20
  LOADN R12 20
  CALL R10 2 1
  SETTABLEKS R10 R9 K178 ["MaterialPreviewSize"]
  DUPTABLE R10 K191 [{"Color", "Image", "SliceCenter"}]
  GETTABLEKS R11 R3 K121 ["DialogMainButton"]
  SETTABLEKS R11 R10 K94 ["Color"]
  LOADK R11 K192 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R11 R10 K185 ["Image"]
  GETIMPORT R11 K194 [Rect.new]
  LOADN R12 3
  LOADN R13 3
  LOADN R14 13
  LOADN R15 13
  CALL R11 4 1
  SETTABLEKS R11 R10 K190 ["SliceCenter"]
  SETTABLEKS R10 R9 K179 ["PreviewBorder"]
  DUPTABLE R10 K186 [{"Image"}]
  GETTABLEKS R11 R3 K195 ["Remove"]
  SETTABLEKS R11 R10 K185 ["Image"]
  SETTABLEKS R10 R9 K180 ["RemoveStyle"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 20
  LOADN R12 182
  CALL R10 2 1
  SETTABLEKS R10 R9 K181 ["SliderAreaSize"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 20
  LOADN R12 200
  CALL R10 2 1
  SETTABLEKS R10 R9 K182 ["SliderSize"]
  GETIMPORT R10 K26 [UDim2.fromOffset]
  LOADN R11 50
  LOADN R12 20
  CALL R10 2 1
  SETTABLEKS R10 R9 K183 ["TextBoxSize"]
  LOADN R10 10
  SETTABLEKS R10 R9 K53 ["Spacing"]
  SETTABLE R9 R6 R8
  LOADK R10 K196 ["SlopeRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K196 ["SlopeRenderer"]
  DUPTABLE R9 K198 [{"Height", "Spacing", "TextInputWidth"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K84 ["Height"]
  LOADN R10 6
  SETTABLEKS R10 R9 K53 ["Spacing"]
  LOADN R10 50
  SETTABLEKS R10 R9 K197 ["TextInputWidth"]
  SETTABLE R9 R6 R8
  LOADK R10 K199 ["MaterialRangesRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K199 ["MaterialRangesRenderer"]
  DUPTABLE R9 K203 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
  GETIMPORT R10 K204 [BrickColor.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R10 3 1
  SETTABLEKS R10 R9 K29 ["BackgroundColor"]
  DUPTABLE R10 K211 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R11 K59 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K205 ["AnchorPoint"]
  LOADN R11 1
  SETTABLEKS R11 R10 K206 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K207 ["BorderSizePixel"]
  LOADK R11 K212 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
  SETTABLEKS R11 R10 K185 ["Image"]
  GETIMPORT R11 K214 [Color3.fromRGB]
  LOADN R12 255
  LOADN R13 255
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K208 ["ImageColor3"]
  GETIMPORT R11 K216 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K209 ["Position"]
  GETIMPORT R11 K26 [UDim2.fromOffset]
  LOADN R12 28
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K52 ["Size"]
  LOADN R11 2
  SETTABLEKS R11 R10 K210 ["ZIndex"]
  SETTABLEKS R10 R9 K200 ["CloseButton"]
  DUPTABLE R10 K218 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
  GETIMPORT R11 K59 [Vector2.new]
  LOADK R12 K219 [0.5]
  LOADK R13 K219 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K205 ["AnchorPoint"]
  GETTABLEKS R11 R3 K31 ["MainBackground"]
  SETTABLEKS R11 R10 K29 ["BackgroundColor"]
  GETIMPORT R11 K216 [UDim2.fromScale]
  LOADK R12 K219 [0.5]
  LOADK R13 K219 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K209 ["Position"]
  GETIMPORT R11 K220 [UDim2.new]
  LOADN R12 0
  LOADN R13 250
  LOADN R14 1
  LOADN R15 196
  CALL R11 4 1
  SETTABLEKS R11 R10 K217 ["FillSize"]
  GETIMPORT R11 K26 [UDim2.fromOffset]
  LOADN R12 250
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K52 ["Size"]
  SETTABLEKS R10 R9 K201 ["Dialog"]
  LOADN R10 127
  SETTABLEKS R10 R9 K202 ["MinHeight"]
  LOADN R10 6
  SETTABLEKS R10 R9 K51 ["Padding"]
  DUPTABLE R10 K221 [{"Icon", "Size"}]
  GETTABLEKS R11 R3 K87 ["Reset"]
  SETTABLEKS R11 R10 K85 ["Icon"]
  GETIMPORT R11 K26 [UDim2.fromOffset]
  LOADN R12 90
  LOADN R13 32
  CALL R11 2 1
  SETTABLEKS R11 R10 K52 ["Size"]
  SETTABLEKS R10 R9 K87 ["Reset"]
  SETTABLE R9 R6 R8
  LOADK R10 K222 ["TerrainTypeRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K222 ["TerrainTypeRenderer"]
  DUPTABLE R9 K225 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "ItemMinWidth", "Spacing"}]
  GETTABLEKS R10 R3 K121 ["DialogMainButton"]
  SETTABLEKS R10 R9 K120 ["BorderColor"]
  LOADN R10 32
  SETTABLEKS R10 R9 K84 ["Height"]
  LOADN R10 24
  SETTABLEKS R10 R9 K17 ["IconSize"]
  LOADN R10 3
  SETTABLEKS R10 R9 K223 ["ItemsPerRow"]
  LOADN R10 130
  SETTABLEKS R10 R9 K224 ["ItemMinWidth"]
  LOADN R10 6
  SETTABLEKS R10 R9 K53 ["Spacing"]
  SETTABLE R9 R6 R8
  LOADK R10 K226 ["SeedRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K226 ["SeedRenderer"]
  DUPTABLE R9 K86 [{"Height", "Icon", "Spacing"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K84 ["Height"]
  GETTABLEKS R10 R3 K227 ["Randomize"]
  SETTABLEKS R10 R9 K85 ["Icon"]
  LOADN R10 6
  SETTABLEKS R10 R9 K53 ["Spacing"]
  SETTABLE R9 R6 R8
  RETURN R6 1
