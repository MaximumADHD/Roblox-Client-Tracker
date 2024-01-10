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
  DUPTABLE R8 K20 [{"CellSize", "CellPadding", "IconSize", "StudioTheme", "TabBackgroundColor"}]
  GETIMPORT R9 K23 [UDim2.fromOffset]
  LOADN R10 70
  LOADN R11 70
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["CellSize"]
  GETIMPORT R9 K23 [UDim2.fromOffset]
  LOADN R10 2
  LOADN R11 2
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["CellPadding"]
  GETIMPORT R9 K23 [UDim2.fromOffset]
  LOADN R10 28
  LOADN R11 28
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["IconSize"]
  GETTABLEKS R9 R3 K18 ["StudioTheme"]
  SETTABLEKS R9 R8 K18 ["StudioTheme"]
  GETTABLEKS R9 R3 K24 ["SubBackground"]
  SETTABLEKS R9 R8 K19 ["TabBackgroundColor"]
  SETTABLE R8 R6 R7
  LOADK R9 K25 ["ToolSettings"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K25 ["ToolSettings"]
  DUPTABLE R8 K27 [{"BackgroundColor"}]
  GETTABLEKS R9 R3 K28 ["MainBackground"]
  SETTABLEKS R9 R8 K26 ["BackgroundColor"]
  SETTABLE R8 R6 R7
  LOADK R9 K29 ["ImageRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K29 ["ImageRenderer"]
  DUPTABLE R8 K39 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
  LOADK R9 K40 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R9 R8 K30 ["ClearIcon"]
  LOADK R9 K41 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R9 R8 K31 ["ExpandIcon"]
  LOADN R9 3
  SETTABLEKS R9 R8 K32 ["IconPadding"]
  LOADK R9 K42 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R9 R8 K33 ["ImportIcon"]
  GETIMPORT R9 K23 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["PreviewSize"]
  LOADK R9 K43 [0.4]
  SETTABLEKS R9 R8 K35 ["ToolbarTransparency"]
  GETTABLEKS R9 R3 K36 ["ToolbarBackgroundColor"]
  SETTABLEKS R9 R8 K36 ["ToolbarBackgroundColor"]
  GETTABLEKS R9 R3 K37 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R9 R8 K37 ["ToolbarButtonBackgroundColor"]
  LOADN R9 32
  SETTABLEKS R9 R8 K38 ["ToolbarHeight"]
  SETTABLE R8 R6 R7
  LOADK R9 K44 ["MetadataDialog"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K44 ["MetadataDialog"]
  DUPTABLE R8 K51 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
  GETIMPORT R9 K54 [Color3.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K45 ["ImageBackgroundColor"]
  LOADN R9 16
  SETTABLEKS R9 R8 K46 ["MetadataLineHeight"]
  GETIMPORT R9 K56 [Vector2.new]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K47 ["MinSize"]
  LOADN R9 4
  SETTABLEKS R9 R8 K48 ["Padding"]
  GETIMPORT R9 K56 [Vector2.new]
  LOADN R10 144
  LOADN R11 144
  CALL R9 2 1
  SETTABLEKS R9 R8 K49 ["Size"]
  LOADN R9 4
  SETTABLEKS R9 R8 K50 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K57 ["MaterialRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K57 ["MaterialRenderer"]
  DUPTABLE R8 K60 [{"GridItemSize", "InitialDistance"}]
  LOADN R9 48
  SETTABLEKS R9 R8 K58 ["GridItemSize"]
  LOADK R9 K61 [6.2]
  SETTABLEKS R9 R8 K59 ["InitialDistance"]
  SETTABLE R8 R6 R7
  LOADK R9 K62 ["ProgressDialog"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K62 ["ProgressDialog"]
  DUPTABLE R8 K66 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
  LOADN R9 20
  SETTABLEKS R9 R8 K63 ["DescriptionHeight"]
  GETIMPORT R9 K56 [Vector2.new]
  LOADN R10 64
  LOADN R11 60
  CALL R9 2 1
  SETTABLEKS R9 R8 K64 ["MinContentSize"]
  LOADN R9 5
  SETTABLEKS R9 R8 K48 ["Padding"]
  LOADN R9 20
  SETTABLEKS R9 R8 K65 ["ProgressHeight"]
  LOADN R9 5
  SETTABLEKS R9 R8 K50 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K67 ["PlaneLockRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K67 ["PlaneLockRenderer"]
  DUPTABLE R8 K70 [{"Height", "Icon", "Spacing"}]
  LOADN R9 32
  SETTABLEKS R9 R8 K68 ["Height"]
  LOADK R9 K71 ["rbxasset://textures/StudioToolbox/AssetConfig/restore.png"]
  SETTABLEKS R9 R8 K69 ["Icon"]
  LOADN R9 6
  SETTABLEKS R9 R8 K50 ["Spacing"]
  SETTABLE R8 R6 R7
  LOADK R9 K72 ["UpgradeRenderer"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K72 ["UpgradeRenderer"]
  DUPTABLE R8 K76 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
  GETIMPORT R9 K79 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K73 ["Font"]
  LOADN R9 44
  SETTABLEKS R9 R8 K74 ["MaxWidth"]
  LOADN R9 12
  SETTABLEKS R9 R8 K50 ["Spacing"]
  LOADN R9 16
  SETTABLEKS R9 R8 K75 ["TextSize"]
  SETTABLE R8 R6 R7
  LOADK R9 K80 ["Line"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K80 ["Line"]
  DUPTABLE R8 K84 [{"Color", "TransparencyActive", "Transparency"}]
  GETIMPORT R9 K87 [BrickColor.White]
  CALL R9 0 1
  SETTABLEKS R9 R8 K81 ["Color"]
  LOADK R9 K88 [0.8]
  SETTABLEKS R9 R8 K82 ["TransparencyActive"]
  LOADK R9 K89 [0.3]
  SETTABLEKS R9 R8 K83 ["Transparency"]
  SETTABLE R8 R6 R7
  LOADK R9 K90 ["Brush"]
  NAMECALL R7 R5 K14 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K90 ["Brush"]
  DUPTABLE R8 K94 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
  LOADK R9 K95 [0.015]
  SETTABLEKS R9 R8 K91 ["CenterRadiusMultiplier"]
  LOADK R9 K96 [0.25]
  SETTABLEKS R9 R8 K92 ["CenterTransparency"]
  GETIMPORT R9 K87 [BrickColor.White]
  CALL R9 0 1
  SETTABLEKS R9 R8 K81 ["Color"]
  LOADK R9 K97 [0.95]
  SETTABLEKS R9 R8 K93 ["MainTransparency"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K98 ["SimpleTab"]
  NEWTABLE R8 16 0
  LOADN R9 1
  SETTABLEKS R9 R8 K99 ["BorderSize"]
  LOADN R9 5
  SETTABLEKS R9 R8 K50 ["Spacing"]
  DUPTABLE R9 K104 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K100 ["Left"]
  LOADN R10 4
  SETTABLEKS R10 R9 K101 ["Top"]
  LOADN R10 0
  SETTABLEKS R10 R9 K102 ["Bottom"]
  LOADN R10 20
  SETTABLEKS R10 R9 K103 ["Right"]
  SETTABLEKS R9 R8 K48 ["Padding"]
  LOADN R9 3
  SETTABLEKS R9 R8 K105 ["TopLineHeight"]
  GETTABLEKS R9 R3 K106 ["ButtonText"]
  SETTABLEKS R9 R8 K81 ["Color"]
  GETTABLEKS R9 R3 K24 ["SubBackground"]
  SETTABLEKS R9 R8 K26 ["BackgroundColor"]
  GETTABLEKS R9 R3 K24 ["SubBackground"]
  SETTABLEKS R9 R8 K107 ["BorderColor"]
  GETTABLEKS R9 R3 K108 ["DialogMainButton"]
  SETTABLEKS R9 R8 K109 ["TopLineColor"]
  GETTABLEKS R9 R3 K24 ["SubBackground"]
  SETTABLEKS R9 R8 K110 ["BottomLineColor"]
  GETTABLEKS R9 R4 K111 ["Hover"]
  DUPTABLE R10 K112 [{"Color"}]
  GETTABLEKS R11 R3 K108 ["DialogMainButton"]
  SETTABLEKS R11 R10 K81 ["Color"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K113 ["Selected"]
  DUPTABLE R10 K114 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETTABLEKS R11 R3 K28 ["MainBackground"]
  SETTABLEKS R11 R10 K110 ["BottomLineColor"]
  GETTABLEKS R11 R3 K28 ["MainBackground"]
  SETTABLEKS R11 R10 K26 ["BackgroundColor"]
  GETTABLEKS R11 R3 K115 ["Border"]
  SETTABLEKS R11 R10 K107 ["BorderColor"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K116 ["Disabled"]
  DUPTABLE R10 K112 [{"Color"}]
  GETTABLEKS R11 R3 K117 ["ButtonTextDisabled"]
  SETTABLEKS R11 R10 K81 ["Color"]
  SETTABLE R10 R8 R9
  SETTABLE R8 R6 R7
  GETIMPORT R7 K119 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  LOADK R10 K120 ["MaterialGrid"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K120 ["MaterialGrid"]
  DUPTABLE R9 K132 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
  GETTABLEKS R10 R3 K28 ["MainBackground"]
  SETTABLEKS R10 R9 K26 ["BackgroundColor"]
  GETTABLEKS R10 R3 K133 ["Button"]
  SETTABLEKS R10 R9 K121 ["GridItemBackgroundColor"]
  GETTABLEKS R10 R3 K134 ["ButtonHover"]
  SETTABLEKS R10 R9 K122 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R10 R3 K115 ["Border"]
  SETTABLEKS R10 R9 K123 ["GridItemBorderColor"]
  GETTABLEKS R10 R3 K135 ["InputFieldBorderSelected"]
  SETTABLEKS R10 R9 K124 ["GridItemBorderColorSelected"]
  GETIMPORT R10 K119 [UDim.new]
  LOADN R11 0
  LOADN R12 6
  CALL R10 2 1
  SETTABLEKS R10 R9 K125 ["GridItemCornerRadius"]
  LOADN R10 2
  SETTABLEKS R10 R9 K126 ["GridItemPadding"]
  LOADN R10 128
  SETTABLEKS R10 R9 K58 ["GridItemSize"]
  DUPTABLE R10 K139 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R7 R10 K136 ["PaddingBottom"]
  SETTABLEKS R7 R10 K137 ["PaddingLeft"]
  SETTABLEKS R7 R10 K138 ["PaddingRight"]
  SETTABLEKS R10 R9 K127 ["GridItemLabelPadding"]
  LOADN R10 40
  SETTABLEKS R10 R9 K128 ["ListItemHeight"]
  LOADN R10 4
  SETTABLEKS R10 R9 K129 ["ListItemSpacing"]
  LOADK R10 K140 ["CornerBox"]
  SETTABLEKS R10 R9 K130 ["MaterialPreviewStyle"]
  LOADN R10 0
  SETTABLEKS R10 R9 K48 ["Padding"]
  LOADN R10 2
  SETTABLEKS R10 R9 K131 ["ShimmerSizeOffset"]
  LOADN R10 20
  SETTABLEKS R10 R9 K75 ["TextSize"]
  SETTABLE R9 R6 R8
  LOADK R10 K141 ["Note"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K141 ["Note"]
  DUPTABLE R9 K147 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETTABLEKS R10 R3 K28 ["MainBackground"]
  SETTABLEKS R10 R9 K142 ["Background"]
  GETTABLEKS R10 R3 K148 ["DimmedText"]
  SETTABLEKS R10 R9 K143 ["KeyBackground"]
  LOADN R10 2
  SETTABLEKS R10 R9 K144 ["EdgePadding"]
  LOADN R10 3
  SETTABLEKS R10 R9 K145 ["FramePadding"]
  LOADN R10 2
  SETTABLEKS R10 R9 K146 ["TextMargin"]
  SETTABLE R9 R6 R8
  LOADK R10 K149 ["BrushSizeRenderer"]
  NAMECALL R8 R5 K14 ["add"]
  CALL R8 2 0
  GETTABLEKS R8 R5 K149 ["BrushSizeRenderer"]
  DUPTABLE R9 K155 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
  LOADN R10 20
  SETTABLEKS R10 R9 K150 ["LabelWidth"]
  LOADN R10 26
  SETTABLEKS R10 R9 K151 ["LockButtonWidth"]
  LOADN R10 24
  SETTABLEKS R10 R9 K152 ["RowHeight"]
  GETTABLEKS R10 R3 K153 ["Locked"]
  SETTABLEKS R10 R9 K153 ["Locked"]
  GETTABLEKS R10 R3 K154 ["Unlocked"]
  SETTABLEKS R10 R9 K154 ["Unlocked"]
  SETTABLE R9 R6 R8
  RETURN R6 1
