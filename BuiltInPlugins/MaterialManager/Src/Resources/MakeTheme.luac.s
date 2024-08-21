PROTO_0:
  GETIMPORT R0 K3 [Enum.Font.SourceSansBold]
  GETIMPORT R1 K3 [Enum.Font.SourceSansBold]
  GETIMPORT R2 K6 [UDim2.fromOffset]
  LOADN R3 20
  LOADN R4 20
  CALL R2 2 1
  GETIMPORT R3 K6 [UDim2.fromOffset]
  LOADN R4 5
  LOADN R5 5
  CALL R3 2 1
  GETIMPORT R4 K6 [UDim2.fromOffset]
  LOADN R5 20
  LOADN R6 20
  CALL R4 2 1
  GETIMPORT R5 K9 [UDim.new]
  LOADN R6 0
  LOADN R7 108
  CALL R5 2 1
  GETIMPORT R6 K9 [UDim.new]
  LOADN R7 0
  LOADN R8 89
  CALL R6 2 1
  GETIMPORT R7 K10 [UDim2.new]
  LOADN R8 1
  LOADN R9 226
  LOADN R10 0
  LOADN R11 5
  CALL R7 4 1
  GETIMPORT R8 K6 [UDim2.fromOffset]
  LOADN R9 30
  LOADN R10 30
  CALL R8 2 1
  GETIMPORT R9 K10 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 30
  CALL R9 4 1
  DUPTABLE R10 K34 [{"MaterialBrowser", "MaterialPreview", "GeneralSettings", "TextureSettings", "PhysicalSettings", "LabeledElement", "CustomSelectInput", "CustomExpandablePane", "MaterialGrid", "MaterialListItem", "MaterialTileItem", "MaterialHeader", "MaterialInformation", "MaterialOverrides", "OverrideSettings", "TerrainDetailsEditor", "TerrainDetailsSettings", "TilingSettings", "StatusIcon", "TopBar", "PromptSelectorWithPreview", "ViewTypeButton", "ActionButton"}]
  DUPTABLE R11 K48 [{"BackgroundColor", "GridBackgroundColor", "HideIcon", "IconColor", "IconSize", "MainViewSize", "MaterialEditorSize", "MaterialEditorWidth", "MaterialGridSize", "MaterialTileWidth", "MinSideBarWidth", "Padding", "TopBarSize"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K49 ["MainBackground"]
  SETTABLEKS R12 R11 K35 ["BackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R12 R11 K36 ["GridBackgroundColor"]
  LOADK R12 K51 ["rbxasset://textures/MaterialManager/chevrons-left.png"]
  SETTABLEKS R12 R11 K37 ["HideIcon"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K52 ["ButtonText"]
  SETTABLEKS R12 R11 K38 ["IconColor"]
  SETTABLEKS R2 R11 K39 ["IconSize"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 220
  CALL R12 4 1
  SETTABLEKS R12 R11 K40 ["MainViewSize"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 59
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K41 ["MaterialEditorSize"]
  LOADN R12 59
  SETTABLEKS R12 R11 K42 ["MaterialEditorWidth"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 197
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K43 ["MaterialGridSize"]
  LOADN R12 200
  SETTABLEKS R12 R11 K44 ["MaterialTileWidth"]
  LOADN R12 120
  SETTABLEKS R12 R11 K45 ["MinSideBarWidth"]
  LOADN R12 10
  SETTABLEKS R12 R11 K46 ["Padding"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 36
  CALL R12 4 1
  SETTABLEKS R12 R11 K47 ["TopBarSize"]
  SETTABLEKS R11 R10 K11 ["MaterialBrowser"]
  DUPTABLE R11 K57 [{"Ambient", "BackgroundColor", "BackgroundColorHover", "LightColor", "LightDirection"}]
  GETUPVAL R13 1
  CALL R13 0 1
  JUMPIFNOT R13 [+7]
  GETIMPORT R12 K60 [Color3.fromRGB]
  LOADN R13 120
  LOADN R14 120
  LOADN R15 135
  CALL R12 3 1
  JUMP [+6]
  GETIMPORT R12 K61 [Color3.new]
  LOADK R13 K62 [0.274]
  LOADK R14 K62 [0.274]
  LOADK R15 K62 [0.274]
  CALL R12 3 1
  SETTABLEKS R12 R11 K53 ["Ambient"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K63 ["Button"]
  SETTABLEKS R12 R11 K35 ["BackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K64 ["ButtonHover"]
  SETTABLEKS R12 R11 K54 ["BackgroundColorHover"]
  GETUPVAL R13 1
  CALL R13 0 1
  JUMPIFNOT R13 [+7]
  GETIMPORT R12 K60 [Color3.fromRGB]
  LOADN R13 60
  LOADN R14 60
  LOADN R15 75
  CALL R12 3 1
  JUMP [+6]
  GETIMPORT R12 K61 [Color3.new]
  LOADN R13 1
  LOADN R14 1
  LOADN R15 1
  CALL R12 3 1
  SETTABLEKS R12 R11 K55 ["LightColor"]
  LOADK R12 K65 [{-10, -10, 5}]
  SETTABLEKS R12 R11 K56 ["LightDirection"]
  SETTABLEKS R11 R10 K12 ["MaterialPreview"]
  DUPTABLE R11 K70 [{"DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 145
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K66 ["DialogColumnSize"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  SETTABLEKS R11 R10 K13 ["GeneralSettings"]
  DUPTABLE R11 K73 [{"ColumnWidth", "ContentPadding", "ItemSpacing", "LabelColumnWidth", "LabelWidth"}]
  LOADN R12 145
  SETTABLEKS R12 R11 K71 ["ColumnWidth"]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  SETTABLEKS R6 R11 K72 ["LabelWidth"]
  SETTABLEKS R11 R10 K14 ["TextureSettings"]
  DUPTABLE R11 K76 [{"ButtonPadding", "ButtonSize", "DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
  LOADN R12 18
  SETTABLEKS R12 R11 K74 ["ButtonPadding"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 250
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K75 ["ButtonSize"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 145
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K66 ["DialogColumnSize"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  SETTABLEKS R11 R10 K15 ["PhysicalSettings"]
  DUPTABLE R11 K81 [{"FillDirection", "ImageSize", "LabelYSize", "TextXAlignment"}]
  GETIMPORT R12 K83 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K77 ["FillDirection"]
  SETTABLEKS R4 R11 K78 ["ImageSize"]
  GETIMPORT R12 K9 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K79 ["LabelYSize"]
  GETIMPORT R12 K85 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K80 ["TextXAlignment"]
  SETTABLEKS R11 R10 K16 ["LabeledElement"]
  GETUPVAL R11 2
  GETUPVAL R12 3
  DUPTABLE R13 K88 [{"PlaceholderTextColor", "BackgroundStyle"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K52 ["ButtonText"]
  SETTABLEKS R14 R13 K86 ["PlaceholderTextColor"]
  GETUPVAL R14 2
  GETUPVAL R15 4
  DUPTABLE R16 K90 [{"Color"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K91 ["SelectInputBackgroundColor"]
  SETTABLEKS R17 R16 K89 ["Color"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K87 ["BackgroundStyle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["CustomSelectInput"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K92 ["joinDeep"]
  GETUPVAL R12 6
  DUPTABLE R13 K94 [{"Header"}]
  DUPTABLE R14 K97 [{"Background", "Text"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K98 ["Titlebar"]
  SETTABLEKS R15 R14 K95 ["Background"]
  DUPTABLE R15 K100 [{"Font", "TextSize"}]
  SETTABLEKS R0 R15 K1 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K99 ["TextSize"]
  SETTABLEKS R15 R14 K96 ["Text"]
  SETTABLEKS R14 R13 K93 ["Header"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["CustomExpandablePane"]
  DUPTABLE R11 K106 [{"BackgroundColor", "ChevronRight", "GridPadding", "IconColor", "IconSize", "ListHeight", "ListPadding", "Padding", "ShowIcon"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R12 R11 K35 ["BackgroundColor"]
  LOADK R12 K107 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
  SETTABLEKS R12 R11 K101 ["ChevronRight"]
  LOADN R12 4
  SETTABLEKS R12 R11 K102 ["GridPadding"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K52 ["ButtonText"]
  SETTABLEKS R12 R11 K38 ["IconColor"]
  SETTABLEKS R2 R11 K39 ["IconSize"]
  LOADN R12 40
  SETTABLEKS R12 R11 K103 ["ListHeight"]
  LOADN R12 2
  SETTABLEKS R12 R11 K104 ["ListPadding"]
  LOADN R12 5
  SETTABLEKS R12 R11 K46 ["Padding"]
  LOADK R12 K107 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
  SETTABLEKS R12 R11 K105 ["ShowIcon"]
  SETTABLEKS R11 R10 K19 ["MaterialGrid"]
  DUPTABLE R11 K113 [{"ApplyIcon", "ApplyIconPosition", "ButtonSize", "Height", "IconSize", "MaterialVariantIcon", "Spacing", "TextSize"}]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K108 ["ApplyIcon"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 252
  LOADN R15 0
  LOADN R16 4
  CALL R12 4 1
  SETTABLEKS R12 R11 K109 ["ApplyIconPosition"]
  GETIMPORT R12 K6 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K75 ["ButtonSize"]
  LOADN R12 40
  SETTABLEKS R12 R11 K110 ["Height"]
  SETTABLEKS R2 R11 K39 ["IconSize"]
  DUPTABLE R12 K118 [{"Image"}]
  LOADK R13 K119 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  SETTABLEKS R12 R11 K111 ["MaterialVariantIcon"]
  LOADN R12 4
  SETTABLEKS R12 R11 K112 ["Spacing"]
  LOADN R12 20
  SETTABLEKS R12 R11 K99 ["TextSize"]
  SETTABLEKS R11 R10 K20 ["MaterialListItem"]
  DUPTABLE R11 K128 [{"ApplyIcon", "ApplyIconPosition", "ApplyIconAnchorPoint", "ButtonSize", "Gradient", "GradientHover", "GradientPosition", "GradientSize", "IconSize", "MaterialVariantIcon", "MaterialVariantIconAnchorPoint", "MaterialVariantIconPosition", "Padding", "StatusIconPosition", "TextSize"}]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K108 ["ApplyIcon"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 252
  LOADN R15 0
  LOADN R16 4
  CALL R12 4 1
  SETTABLEKS R12 R11 K109 ["ApplyIconPosition"]
  GETIMPORT R12 K130 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K120 ["ApplyIconAnchorPoint"]
  GETIMPORT R12 K6 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K75 ["ButtonSize"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K121 ["Gradient"]
  SETTABLEKS R12 R11 K121 ["Gradient"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K122 ["GradientHover"]
  SETTABLEKS R12 R11 K122 ["GradientHover"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADK R13 K131 [0.5]
  LOADN R14 0
  LOADN R15 1
  LOADN R16 254
  CALL R12 4 1
  SETTABLEKS R12 R11 K123 ["GradientPosition"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 248
  LOADN R15 0
  LOADN R16 24
  CALL R12 4 1
  SETTABLEKS R12 R11 K124 ["GradientSize"]
  SETTABLEKS R2 R11 K39 ["IconSize"]
  DUPTABLE R12 K118 [{"Image"}]
  LOADK R13 K119 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  SETTABLEKS R12 R11 K111 ["MaterialVariantIcon"]
  GETIMPORT R12 K130 [Vector2.new]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K125 ["MaterialVariantIconAnchorPoint"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 252
  LOADN R15 1
  LOADN R16 252
  CALL R12 4 1
  SETTABLEKS R12 R11 K126 ["MaterialVariantIconPosition"]
  LOADN R12 6
  SETTABLEKS R12 R11 K46 ["Padding"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 10
  LOADN R15 0
  LOADN R16 10
  CALL R12 4 1
  SETTABLEKS R12 R11 K127 ["StatusIconPosition"]
  LOADN R12 20
  SETTABLEKS R12 R11 K99 ["TextSize"]
  SETTABLEKS R11 R10 K21 ["MaterialTileItem"]
  DUPTABLE R11 K138 [{"ButtonPosition", "ButtonSize", "ButtonStyle", "Close", "HeaderBackground", "HeaderSize", "ImagePosition", "ImageSize"}]
  SETTABLEKS R7 R11 K132 ["ButtonPosition"]
  SETTABLEKS R8 R11 K75 ["ButtonSize"]
  LOADK R12 K139 ["RoundSubtle"]
  SETTABLEKS R12 R11 K133 ["ButtonStyle"]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K140 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K134 ["Close"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R12 R11 K135 ["HeaderBackground"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 44
  CALL R12 4 1
  SETTABLEKS R12 R11 K136 ["HeaderSize"]
  SETTABLEKS R3 R11 K137 ["ImagePosition"]
  SETTABLEKS R4 R11 K78 ["ImageSize"]
  SETTABLEKS R11 R10 K22 ["MaterialHeader"]
  DUPTABLE R11 K147 [{"ApplyToSelection", "ButtonPosition", "ButtonSize", "ButtonStyle", "CreateVariant", "Delete", "HeaderFont", "ImagePosition", "ImageSize", "LabelRowSize", "Padding", "TitleTextSize"}]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K141 ["ApplyToSelection"]
  SETTABLEKS R7 R11 K132 ["ButtonPosition"]
  SETTABLEKS R8 R11 K75 ["ButtonSize"]
  LOADK R12 K139 ["RoundSubtle"]
  SETTABLEKS R12 R11 K133 ["ButtonStyle"]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K148 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K142 ["CreateVariant"]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K149 ["rbxasset://textures/MaterialManager/Delete.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K143 ["Delete"]
  SETTABLEKS R1 R11 K144 ["HeaderFont"]
  SETTABLEKS R3 R11 K137 ["ImagePosition"]
  SETTABLEKS R4 R11 K78 ["ImageSize"]
  SETTABLEKS R9 R11 K145 ["LabelRowSize"]
  LOADN R12 10
  SETTABLEKS R12 R11 K46 ["Padding"]
  LOADN R12 22
  SETTABLEKS R12 R11 K146 ["TitleTextSize"]
  SETTABLEKS R11 R10 K23 ["MaterialInformation"]
  DUPTABLE R11 K152 [{"HeaderFont", "ImageSize", "LabelRowSize", "OverrideSize", "Padding", "SectionHeaderTextSize", "Spacing"}]
  SETTABLEKS R1 R11 K144 ["HeaderFont"]
  SETTABLEKS R4 R11 K78 ["ImageSize"]
  SETTABLEKS R9 R11 K145 ["LabelRowSize"]
  GETIMPORT R12 K6 [UDim2.fromOffset]
  LOADN R13 140
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K150 ["OverrideSize"]
  LOADN R12 10
  SETTABLEKS R12 R11 K46 ["Padding"]
  LOADN R12 18
  SETTABLEKS R12 R11 K151 ["SectionHeaderTextSize"]
  LOADN R12 20
  SETTABLEKS R12 R11 K112 ["Spacing"]
  SETTABLEKS R11 R10 K24 ["MaterialOverrides"]
  DUPTABLE R11 K153 [{"ContentPadding", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  SETTABLEKS R11 R10 K25 ["OverrideSettings"]
  DUPTABLE R11 K155 [{"ButtonSize", "ButtonStyle", "Delete", "DialogColumnSize", "ImagePosition", "ImageSize", "LabelColumnWidth", "NameLabelSize"}]
  SETTABLEKS R8 R11 K75 ["ButtonSize"]
  LOADK R12 K139 ["RoundSubtle"]
  SETTABLEKS R12 R11 K133 ["ButtonStyle"]
  DUPTABLE R12 K115 [{"Image", "Color"}]
  LOADK R13 K149 ["rbxasset://textures/MaterialManager/Delete.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  SETTABLEKS R12 R11 K143 ["Delete"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 145
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K66 ["DialogColumnSize"]
  SETTABLEKS R3 R11 K137 ["ImagePosition"]
  SETTABLEKS R4 R11 K78 ["ImageSize"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 110
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K154 ["NameLabelSize"]
  SETTABLEKS R11 R10 K26 ["TerrainDetailsEditor"]
  DUPTABLE R11 K156 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 145
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K66 ["DialogColumnSize"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  SETTABLEKS R11 R10 K27 ["TerrainDetailsSettings"]
  DUPTABLE R11 K156 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R12 5
  SETTABLEKS R12 R11 K69 ["ContentPadding"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 145
  LOADN R15 0
  LOADN R16 25
  CALL R12 4 1
  SETTABLEKS R12 R11 K66 ["DialogColumnSize"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["ItemSpacing"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  SETTABLEKS R11 R10 K28 ["TilingSettings"]
  DUPTABLE R11 K159 [{"Error", "Warning"}]
  DUPTABLE R12 K118 [{"Image"}]
  LOADK R13 K160 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  SETTABLEKS R12 R11 K157 ["Error"]
  DUPTABLE R12 K118 [{"Image"}]
  LOADK R13 K161 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  SETTABLEKS R12 R11 K158 ["Warning"]
  SETTABLEKS R11 R10 K29 ["StatusIcon"]
  DUPTABLE R11 K170 [{"CreateNewVariant", "ShowInExplorer", "DEPRECATED_MaterialAsToolMouseIcon", "TopBarButtonWidth", "BackgroundColor", "ViewTypeBackground", "ButtonSize", "Padding", "SearchBarMaxWidth", "SpacerWidth", "ViewTypeSize"}]
  DUPTABLE R12 K173 [{"Image", "Color", "Position", "Size"}]
  LOADK R13 K148 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 6
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K171 ["Position"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K172 ["Size"]
  SETTABLEKS R12 R11 K162 ["CreateNewVariant"]
  NEWTABLE R12 8 0
  LOADK R13 K174 ["rbxasset://textures/MaterialManager/Show_In_Explorer.png"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 6
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K171 ["Position"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K172 ["Size"]
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K175 ["Disabled"]
  DUPTABLE R14 K177 [{"Transparency"}]
  LOADK R15 K131 [0.5]
  SETTABLEKS R15 R14 K176 ["Transparency"]
  SETTABLE R14 R12 R13
  SETTABLEKS R12 R11 K163 ["ShowInExplorer"]
  NEWTABLE R12 8 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K178 ["FillBucket"]
  SETTABLEKS R13 R12 K114 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K117 ["BrightText"]
  SETTABLEKS R13 R12 K89 ["Color"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 3
  LOADN R15 3
  CALL R13 2 1
  SETTABLEKS R13 R12 K171 ["Position"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 20
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K172 ["Size"]
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K175 ["Disabled"]
  DUPTABLE R14 K177 [{"Transparency"}]
  LOADK R15 K131 [0.5]
  SETTABLEKS R15 R14 K176 ["Transparency"]
  SETTABLE R14 R12 R13
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K179 ["Pressed"]
  DUPTABLE R14 K180 [{"BackgroundColor"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K181 ["ButtonPressed"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor"]
  SETTABLE R14 R12 R13
  SETTABLEKS R12 R11 K164 ["DEPRECATED_MaterialAsToolMouseIcon"]
  LOADN R12 28
  SETTABLEKS R12 R11 K165 ["TopBarButtonWidth"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K98 ["Titlebar"]
  SETTABLEKS R12 R11 K35 ["BackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K63 ["Button"]
  SETTABLEKS R12 R11 K166 ["ViewTypeBackground"]
  GETIMPORT R12 K6 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K75 ["ButtonSize"]
  LOADN R12 4
  SETTABLEKS R12 R11 K46 ["Padding"]
  LOADN R12 88
  SETTABLEKS R12 R11 K167 ["SearchBarMaxWidth"]
  LOADN R12 12
  SETTABLEKS R12 R11 K168 ["SpacerWidth"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 50
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K169 ["ViewTypeSize"]
  SETTABLEKS R11 R10 K30 ["TopBar"]
  DUPTABLE R11 K204 [{"ExpandIcon", "ClearIcon", "ImportIcon", "PreviewBackgroundColor", "PreviewBorderColor", "ImportIconColor", "ImportImageBackground", "ButtonColor", "ButtonHeight", "ButtonIconColor", "ButtonIconHoveredColor", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight", "ColumnWidth", "LabelColumnWidth", "PreviewSize", "PaddingVertical", "PaddingHorizontal", "TextHeight", "ExpandedPreviewDefaultSize", "ExpandedPreviewMinSize", "ExpandedPreviewPadding"}]
  LOADK R12 K205 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R12 R11 K182 ["ExpandIcon"]
  LOADK R12 K206 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R12 R11 K183 ["ClearIcon"]
  LOADK R12 K207 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R12 R11 K184 ["ImportIcon"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R12 R11 K185 ["PreviewBackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K208 ["Border"]
  SETTABLEKS R12 R11 K186 ["PreviewBorderColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K52 ["ButtonText"]
  SETTABLEKS R12 R11 K187 ["ImportIconColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K188 ["ImportImageBackground"]
  SETTABLEKS R12 R11 K188 ["ImportImageBackground"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K63 ["Button"]
  SETTABLEKS R12 R11 K189 ["ButtonColor"]
  LOADN R12 24
  SETTABLEKS R12 R11 K190 ["ButtonHeight"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K209 ["Icon"]
  SETTABLEKS R12 R11 K191 ["ButtonIconColor"]
  GETIMPORT R12 K60 [Color3.fromRGB]
  LOADN R13 255
  LOADN R14 255
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K192 ["ButtonIconHoveredColor"]
  LOADK R12 K210 [0.4]
  SETTABLEKS R12 R11 K193 ["ToolbarTransparency"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K194 ["ToolbarBackgroundColor"]
  SETTABLEKS R12 R11 K194 ["ToolbarBackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K195 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R12 R11 K195 ["ToolbarButtonBackgroundColor"]
  LOADN R12 32
  SETTABLEKS R12 R11 K196 ["ToolbarHeight"]
  LOADN R12 145
  SETTABLEKS R12 R11 K71 ["ColumnWidth"]
  SETTABLEKS R5 R11 K67 ["LabelColumnWidth"]
  LOADN R12 74
  SETTABLEKS R12 R11 K197 ["PreviewSize"]
  LOADN R12 4
  SETTABLEKS R12 R11 K198 ["PaddingVertical"]
  LOADN R12 21
  SETTABLEKS R12 R11 K199 ["PaddingHorizontal"]
  LOADN R12 16
  SETTABLEKS R12 R11 K200 ["TextHeight"]
  GETIMPORT R12 K130 [Vector2.new]
  LOADN R13 144
  LOADN R14 144
  CALL R12 2 1
  SETTABLEKS R12 R11 K201 ["ExpandedPreviewDefaultSize"]
  GETIMPORT R12 K130 [Vector2.new]
  LOADN R13 100
  LOADN R14 100
  CALL R12 2 1
  SETTABLEKS R12 R11 K202 ["ExpandedPreviewMinSize"]
  GETIMPORT R12 K9 [UDim.new]
  LOADN R13 0
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K203 ["ExpandedPreviewPadding"]
  SETTABLEKS R11 R10 K31 ["PromptSelectorWithPreview"]
  DUPTABLE R11 K213 [{"Grid", "List", "ViewTypeBackground", "ViewTypeSize"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K214 ["GridIcon"]
  SETTABLEKS R12 R11 K211 ["Grid"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K215 ["ListIcon"]
  SETTABLEKS R12 R11 K212 ["List"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K63 ["Button"]
  SETTABLEKS R12 R11 K166 ["ViewTypeBackground"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 50
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K169 ["ViewTypeSize"]
  SETTABLEKS R11 R10 K32 ["ViewTypeButton"]
  DUPTABLE R11 K216 [{"ButtonSize"}]
  GETIMPORT R12 K6 [UDim2.fromOffset]
  LOADN R13 28
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K75 ["ButtonSize"]
  SETTABLEKS R11 R10 K33 ["ActionButton"]
  RETURN R10 1

PROTO_1:
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 8 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R6 K3 [Color3.fromRGB]
  LOADN R7 41
  LOADN R8 41
  LOADN R9 41
  CALL R6 3 1
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["SelectInputBackgroundColor"]
  GETIMPORT R6 K3 [Color3.fromRGB]
  LOADN R7 60
  LOADN R8 60
  LOADN R9 60
  CALL R6 3 1
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["ImportImageBackground"]
  GETIMPORT R6 K3 [Color3.fromRGB]
  LOADN R7 34
  LOADN R8 34
  LOADN R9 34
  CALL R6 3 1
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["GridIcon"]
  LOADK R6 K7 ["rbxasset://textures/MaterialManager/Grid_DT.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["ListIcon"]
  LOADK R6 K9 ["rbxasset://textures/MaterialManager/List_DT.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["Gradient"]
  LOADK R6 K11 ["rbxasset://textures/MaterialManager/Gradient_DT.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["GradientHover"]
  LOADK R6 K13 ["rbxasset://textures/MaterialManager/Gradient_Hover_DT.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["FillBucket"]
  LOADK R6 K15 ["rbxasset://textures/MaterialManager/Fill.png"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R3 0
  GETUPVAL R4 3
  NEWTABLE R5 8 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R7 K3 [Color3.fromRGB]
  LOADN R8 245
  LOADN R9 245
  LOADN R10 245
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["SelectInputBackgroundColor"]
  GETIMPORT R7 K3 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["ImportImageBackground"]
  GETIMPORT R7 K3 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["GridIcon"]
  LOADK R7 K16 ["rbxasset://textures/MaterialManager/Grid_LT.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["ListIcon"]
  LOADK R7 K17 ["rbxasset://textures/MaterialManager/List_LT.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Gradient"]
  LOADK R7 K18 ["rbxasset://textures/MaterialManager/Gradient_LT.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["GradientHover"]
  LOADK R7 K19 ["rbxasset://textures/MaterialManager/Gradient_Hover_LT.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["FillBucket"]
  LOADK R7 K20 ["rbxasset://textures/MaterialManager/Fill-lighttheme.png"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["mock"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  JUMP [+7]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K22 ["new"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 5
  CALL R6 0 1
  NAMECALL R4 R1 K23 ["extend"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R3 R2 K8 ["getRawComponentStyle"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["getFFlagBetterMaterialManagerPreviews"]
  GETTABLEKS R6 R1 K12 ["Dash"]
  GETTABLEKS R8 R1 K12 ["Dash"]
  GETTABLEKS R7 R8 K13 ["join"]
  GETTABLEKS R8 R1 K14 ["Util"]
  GETTABLEKS R9 R8 K15 ["StyleModifier"]
  GETTABLEKS R10 R8 K16 ["deepCopy"]
  GETTABLEKS R11 R1 K7 ["Style"]
  GETTABLEKS R13 R11 K17 ["Themes"]
  GETTABLEKS R12 R13 K18 ["StudioTheme"]
  GETTABLEKS R14 R11 K17 ["Themes"]
  GETTABLEKS R13 R14 K19 ["DarkTheme"]
  GETTABLEKS R15 R11 K17 ["Themes"]
  GETTABLEKS R14 R15 K20 ["LightTheme"]
  GETTABLEKS R15 R11 K21 ["StyleKey"]
  MOVE R16 R3
  LOADK R17 K22 ["RoundBox"]
  CALL R16 1 1
  MOVE R17 R3
  LOADK R18 K23 ["SelectInput"]
  CALL R17 1 1
  MOVE R18 R3
  LOADK R19 K24 ["ExpandablePane"]
  CALL R18 1 1
  MOVE R19 R10
  MOVE R20 R16
  CALL R19 1 1
  MOVE R20 R10
  MOVE R21 R17
  CALL R20 1 1
  MOVE R21 R10
  MOVE R22 R18
  CALL R21 1 1
  DUPCLOSURE R22 K25 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R21
  CAPTURE VAL R9
  DUPCLOSURE R23 K26 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R22
  RETURN R23 1
