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
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 59
  JUMP [+1]
  LOADN R7 44
  GETIMPORT R8 K10 [UDim2.new]
  LOADN R9 1
  LOADN R10 226
  LOADN R11 0
  LOADN R12 5
  CALL R8 4 1
  GETIMPORT R9 K6 [UDim2.fromOffset]
  LOADN R10 30
  LOADN R11 30
  CALL R9 2 1
  GETIMPORT R10 K10 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 30
  CALL R10 4 1
  DUPTABLE R11 K34 [{"MaterialBrowser", "MaterialPreview", "GeneralSettings", "TextureSettings", "PhysicalSettings", "LabeledElement", "CustomSelectInput", "CustomExpandablePane", "MaterialGrid", "MaterialListItem", "MaterialTileItem", "MaterialHeader", "MaterialInformation", "MaterialOverrides", "OverrideSettings", "TerrainDetailsEditor", "TerrainDetailsSettings", "TilingSettings", "StatusIcon", "TopBar", "PromptSelectorWithPreview", "ViewTypeButton", "ActionButton"}]
  DUPTABLE R12 K48 [{"BackgroundColor", "GridBackgroundColor", "HideIcon", "IconColor", "IconSize", "MainViewSize", "MaterialEditorSize", "MaterialEditorWidth", "MaterialGridSize", "MaterialTileWidth", "MinSideBarWidth", "Padding", "TopBarSize"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K49 ["MainBackground"]
  SETTABLEKS R13 R12 K35 ["BackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R13 R12 K36 ["GridBackgroundColor"]
  LOADK R13 K51 ["rbxasset://textures/MaterialManager/chevrons-left.png"]
  SETTABLEKS R13 R12 K37 ["HideIcon"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K52 ["ButtonText"]
  SETTABLEKS R13 R12 K38 ["IconColor"]
  SETTABLEKS R2 R12 K39 ["IconSize"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 220
  CALL R13 4 1
  SETTABLEKS R13 R12 K40 ["MainViewSize"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  MOVE R15 R7
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K41 ["MaterialEditorSize"]
  SETTABLEKS R7 R12 K42 ["MaterialEditorWidth"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  MINUS R15 R7
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K43 ["MaterialGridSize"]
  LOADN R13 200
  SETTABLEKS R13 R12 K44 ["MaterialTileWidth"]
  LOADN R13 120
  SETTABLEKS R13 R12 K45 ["MinSideBarWidth"]
  LOADN R13 10
  SETTABLEKS R13 R12 K46 ["Padding"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 36
  CALL R13 4 1
  SETTABLEKS R13 R12 K47 ["TopBarSize"]
  SETTABLEKS R12 R11 K11 ["MaterialBrowser"]
  DUPTABLE R12 K57 [{"Ambient", "BackgroundColor", "BackgroundColorHover", "LightColor", "LightDirection"}]
  GETUPVAL R14 2
  CALL R14 0 1
  JUMPIFNOT R14 [+7]
  GETIMPORT R13 K60 [Color3.fromRGB]
  LOADN R14 120
  LOADN R15 120
  LOADN R16 135
  CALL R13 3 1
  JUMP [+6]
  GETIMPORT R13 K61 [Color3.new]
  LOADK R14 K62 [0.274]
  LOADK R15 K62 [0.274]
  LOADK R16 K62 [0.274]
  CALL R13 3 1
  SETTABLEKS R13 R12 K53 ["Ambient"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K63 ["Button"]
  SETTABLEKS R13 R12 K35 ["BackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K64 ["ButtonHover"]
  SETTABLEKS R13 R12 K54 ["BackgroundColorHover"]
  GETUPVAL R14 2
  CALL R14 0 1
  JUMPIFNOT R14 [+7]
  GETIMPORT R13 K60 [Color3.fromRGB]
  LOADN R14 60
  LOADN R15 60
  LOADN R16 75
  CALL R13 3 1
  JUMP [+6]
  GETIMPORT R13 K61 [Color3.new]
  LOADN R14 1
  LOADN R15 1
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K55 ["LightColor"]
  LOADN R14 246
  LOADN R15 246
  LOADN R16 5
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K66 [Vector3.new]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["LightDirection"]
  SETTABLEKS R12 R11 K12 ["MaterialPreview"]
  DUPTABLE R12 K71 [{"DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 145
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K67 ["DialogColumnSize"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  SETTABLEKS R12 R11 K13 ["GeneralSettings"]
  DUPTABLE R12 K74 [{"ColumnWidth", "ContentPadding", "ItemSpacing", "LabelColumnWidth", "LabelWidth"}]
  LOADN R13 145
  SETTABLEKS R13 R12 K72 ["ColumnWidth"]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  SETTABLEKS R6 R12 K73 ["LabelWidth"]
  SETTABLEKS R12 R11 K14 ["TextureSettings"]
  DUPTABLE R12 K77 [{"ButtonPadding", "ButtonSize", "DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
  LOADN R13 18
  SETTABLEKS R13 R12 K75 ["ButtonPadding"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 250
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K76 ["ButtonSize"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 145
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K67 ["DialogColumnSize"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  SETTABLEKS R12 R11 K15 ["PhysicalSettings"]
  DUPTABLE R12 K82 [{"FillDirection", "ImageSize", "LabelYSize", "TextXAlignment"}]
  GETIMPORT R13 K84 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K78 ["FillDirection"]
  SETTABLEKS R4 R12 K79 ["ImageSize"]
  GETIMPORT R13 K9 [UDim.new]
  LOADN R14 0
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K80 ["LabelYSize"]
  GETIMPORT R13 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K81 ["TextXAlignment"]
  SETTABLEKS R12 R11 K16 ["LabeledElement"]
  GETUPVAL R12 3
  GETUPVAL R13 4
  DUPTABLE R14 K89 [{"PlaceholderTextColor", "BackgroundStyle"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K52 ["ButtonText"]
  SETTABLEKS R15 R14 K87 ["PlaceholderTextColor"]
  GETUPVAL R15 3
  GETUPVAL R16 5
  DUPTABLE R17 K91 [{"Color"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K92 ["SelectInputBackgroundColor"]
  SETTABLEKS R18 R17 K90 ["Color"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K88 ["BackgroundStyle"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["CustomSelectInput"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K93 ["joinDeep"]
  GETUPVAL R13 7
  DUPTABLE R14 K95 [{"Header"}]
  DUPTABLE R15 K98 [{"Background", "Text"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K99 ["Titlebar"]
  SETTABLEKS R16 R15 K96 ["Background"]
  DUPTABLE R16 K101 [{"Font", "TextSize"}]
  SETTABLEKS R0 R16 K1 ["Font"]
  LOADN R17 18
  SETTABLEKS R17 R16 K100 ["TextSize"]
  SETTABLEKS R16 R15 K97 ["Text"]
  SETTABLEKS R15 R14 K94 ["Header"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["CustomExpandablePane"]
  DUPTABLE R12 K107 [{"BackgroundColor", "ChevronRight", "GridPadding", "IconColor", "IconSize", "ListHeight", "ListPadding", "Padding", "ShowIcon"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R13 R12 K35 ["BackgroundColor"]
  LOADK R13 K108 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
  SETTABLEKS R13 R12 K102 ["ChevronRight"]
  LOADN R13 4
  SETTABLEKS R13 R12 K103 ["GridPadding"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K52 ["ButtonText"]
  SETTABLEKS R13 R12 K38 ["IconColor"]
  SETTABLEKS R2 R12 K39 ["IconSize"]
  LOADN R13 40
  SETTABLEKS R13 R12 K104 ["ListHeight"]
  LOADN R13 2
  SETTABLEKS R13 R12 K105 ["ListPadding"]
  LOADN R13 5
  SETTABLEKS R13 R12 K46 ["Padding"]
  LOADK R13 K108 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
  SETTABLEKS R13 R12 K106 ["ShowIcon"]
  SETTABLEKS R12 R11 K19 ["MaterialGrid"]
  DUPTABLE R12 K114 [{"ApplyIcon", "ApplyIconPosition", "ButtonSize", "Height", "IconSize", "MaterialVariantIcon", "Spacing", "TextSize"}]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K117 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K109 ["ApplyIcon"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADN R16 0
  LOADN R17 4
  CALL R13 4 1
  SETTABLEKS R13 R12 K110 ["ApplyIconPosition"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K76 ["ButtonSize"]
  LOADN R13 40
  SETTABLEKS R13 R12 K111 ["Height"]
  SETTABLEKS R2 R12 K39 ["IconSize"]
  DUPTABLE R13 K119 [{"Image"}]
  LOADK R14 K120 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  SETTABLEKS R13 R12 K112 ["MaterialVariantIcon"]
  LOADN R13 4
  SETTABLEKS R13 R12 K113 ["Spacing"]
  LOADN R13 20
  SETTABLEKS R13 R12 K100 ["TextSize"]
  SETTABLEKS R12 R11 K20 ["MaterialListItem"]
  DUPTABLE R12 K129 [{"ApplyIcon", "ApplyIconPosition", "ApplyIconAnchorPoint", "ButtonSize", "Gradient", "GradientHover", "GradientPosition", "GradientSize", "IconSize", "MaterialVariantIcon", "MaterialVariantIconAnchorPoint", "MaterialVariantIconPosition", "Padding", "StatusIconPosition", "TextSize"}]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K117 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K109 ["ApplyIcon"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADN R16 0
  LOADN R17 4
  CALL R13 4 1
  SETTABLEKS R13 R12 K110 ["ApplyIconPosition"]
  GETIMPORT R13 K131 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["ApplyIconAnchorPoint"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K76 ["ButtonSize"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K122 ["Gradient"]
  SETTABLEKS R13 R12 K122 ["Gradient"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K123 ["GradientHover"]
  SETTABLEKS R13 R12 K123 ["GradientHover"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADK R14 K132 [0.5]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 254
  CALL R13 4 1
  SETTABLEKS R13 R12 K124 ["GradientPosition"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 248
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K125 ["GradientSize"]
  SETTABLEKS R2 R12 K39 ["IconSize"]
  DUPTABLE R13 K119 [{"Image"}]
  LOADK R14 K120 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  SETTABLEKS R13 R12 K112 ["MaterialVariantIcon"]
  GETIMPORT R13 K131 [Vector2.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K126 ["MaterialVariantIconAnchorPoint"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADN R16 1
  LOADN R17 252
  CALL R13 4 1
  SETTABLEKS R13 R12 K127 ["MaterialVariantIconPosition"]
  LOADN R13 6
  SETTABLEKS R13 R12 K46 ["Padding"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 10
  LOADN R16 0
  LOADN R17 10
  CALL R13 4 1
  SETTABLEKS R13 R12 K128 ["StatusIconPosition"]
  LOADN R13 20
  SETTABLEKS R13 R12 K100 ["TextSize"]
  SETTABLEKS R12 R11 K21 ["MaterialTileItem"]
  DUPTABLE R12 K139 [{"ButtonPosition", "ButtonSize", "ButtonStyle", "Close", "HeaderBackground", "HeaderSize", "ImagePosition", "ImageSize"}]
  SETTABLEKS R8 R12 K133 ["ButtonPosition"]
  SETTABLEKS R9 R12 K76 ["ButtonSize"]
  LOADK R13 K140 ["RoundSubtle"]
  SETTABLEKS R13 R12 K134 ["ButtonStyle"]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K141 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K135 ["Close"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R13 R12 K136 ["HeaderBackground"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 44
  CALL R13 4 1
  SETTABLEKS R13 R12 K137 ["HeaderSize"]
  SETTABLEKS R3 R12 K138 ["ImagePosition"]
  SETTABLEKS R4 R12 K79 ["ImageSize"]
  SETTABLEKS R12 R11 K22 ["MaterialHeader"]
  DUPTABLE R12 K148 [{"ApplyToSelection", "ButtonPosition", "ButtonSize", "ButtonStyle", "CreateVariant", "Delete", "HeaderFont", "ImagePosition", "ImageSize", "LabelRowSize", "Padding", "TitleTextSize"}]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K117 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K142 ["ApplyToSelection"]
  SETTABLEKS R8 R12 K133 ["ButtonPosition"]
  SETTABLEKS R9 R12 K76 ["ButtonSize"]
  LOADK R13 K140 ["RoundSubtle"]
  SETTABLEKS R13 R12 K134 ["ButtonStyle"]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K149 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K143 ["CreateVariant"]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K150 ["rbxasset://textures/MaterialManager/Delete.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K144 ["Delete"]
  SETTABLEKS R1 R12 K145 ["HeaderFont"]
  SETTABLEKS R3 R12 K138 ["ImagePosition"]
  SETTABLEKS R4 R12 K79 ["ImageSize"]
  SETTABLEKS R10 R12 K146 ["LabelRowSize"]
  LOADN R13 10
  SETTABLEKS R13 R12 K46 ["Padding"]
  LOADN R13 22
  SETTABLEKS R13 R12 K147 ["TitleTextSize"]
  SETTABLEKS R12 R11 K23 ["MaterialInformation"]
  DUPTABLE R12 K153 [{"HeaderFont", "ImageSize", "LabelRowSize", "OverrideSize", "Padding", "SectionHeaderTextSize", "Spacing"}]
  SETTABLEKS R1 R12 K145 ["HeaderFont"]
  SETTABLEKS R4 R12 K79 ["ImageSize"]
  SETTABLEKS R10 R12 K146 ["LabelRowSize"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 140
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K151 ["OverrideSize"]
  LOADN R13 10
  SETTABLEKS R13 R12 K46 ["Padding"]
  LOADN R13 18
  SETTABLEKS R13 R12 K152 ["SectionHeaderTextSize"]
  GETUPVAL R14 0
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADN R13 20
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K113 ["Spacing"]
  SETTABLEKS R12 R11 K24 ["MaterialOverrides"]
  DUPTABLE R12 K154 [{"ContentPadding", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  SETTABLEKS R12 R11 K25 ["OverrideSettings"]
  DUPTABLE R12 K156 [{"ButtonSize", "ButtonStyle", "Delete", "DialogColumnSize", "ImagePosition", "ImageSize", "LabelColumnWidth", "NameLabelSize"}]
  SETTABLEKS R9 R12 K76 ["ButtonSize"]
  LOADK R13 K140 ["RoundSubtle"]
  SETTABLEKS R13 R12 K134 ["ButtonStyle"]
  DUPTABLE R13 K116 [{"Image", "Color"}]
  LOADK R14 K150 ["rbxasset://textures/MaterialManager/Delete.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  SETTABLEKS R13 R12 K144 ["Delete"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 145
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K67 ["DialogColumnSize"]
  SETTABLEKS R3 R12 K138 ["ImagePosition"]
  SETTABLEKS R4 R12 K79 ["ImageSize"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 110
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K155 ["NameLabelSize"]
  SETTABLEKS R12 R11 K26 ["TerrainDetailsEditor"]
  DUPTABLE R12 K157 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 145
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K67 ["DialogColumnSize"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  SETTABLEKS R12 R11 K27 ["TerrainDetailsSettings"]
  DUPTABLE R12 K157 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K70 ["ContentPadding"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 145
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K67 ["DialogColumnSize"]
  LOADN R13 3
  SETTABLEKS R13 R12 K69 ["ItemSpacing"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  SETTABLEKS R12 R11 K28 ["TilingSettings"]
  DUPTABLE R12 K160 [{"Error", "Warning"}]
  DUPTABLE R13 K119 [{"Image"}]
  LOADK R14 K161 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  SETTABLEKS R13 R12 K158 ["Error"]
  DUPTABLE R13 K119 [{"Image"}]
  LOADK R14 K162 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  SETTABLEKS R13 R12 K159 ["Warning"]
  SETTABLEKS R12 R11 K29 ["StatusIcon"]
  DUPTABLE R12 K171 [{"CreateNewVariant", "ShowInExplorer", "MaterialAsToolMouseIcon", "TopBarButtonWidth", "BackgroundColor", "ViewTypeBackground", "ButtonSize", "Padding", "SearchBarMaxWidth", "SpacerWidth", "ViewTypeSize"}]
  DUPTABLE R13 K174 [{"Image", "Color", "Position", "Size"}]
  LOADK R14 K149 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 6
  LOADN R16 6
  CALL R14 2 1
  SETTABLEKS R14 R13 K172 ["Position"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K173 ["Size"]
  SETTABLEKS R13 R12 K163 ["CreateNewVariant"]
  NEWTABLE R13 8 0
  LOADK R14 K175 ["rbxasset://textures/MaterialManager/Show_In_Explorer.png"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 6
  LOADN R16 6
  CALL R14 2 1
  SETTABLEKS R14 R13 K172 ["Position"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K173 ["Size"]
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K176 ["Disabled"]
  DUPTABLE R15 K178 [{"Transparency"}]
  LOADK R16 K132 [0.5]
  SETTABLEKS R16 R15 K177 ["Transparency"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K164 ["ShowInExplorer"]
  NEWTABLE R13 8 0
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K179 ["FillBucket"]
  SETTABLEKS R14 R13 K115 ["Image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K118 ["BrightText"]
  SETTABLEKS R14 R13 K90 ["Color"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 3
  LOADN R16 3
  CALL R14 2 1
  SETTABLEKS R14 R13 K172 ["Position"]
  GETIMPORT R14 K6 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K173 ["Size"]
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K176 ["Disabled"]
  DUPTABLE R15 K178 [{"Transparency"}]
  LOADK R16 K132 [0.5]
  SETTABLEKS R16 R15 K177 ["Transparency"]
  SETTABLE R15 R13 R14
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K180 ["Pressed"]
  DUPTABLE R15 K181 [{"BackgroundColor"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K182 ["ButtonPressed"]
  SETTABLEKS R16 R15 K35 ["BackgroundColor"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K165 ["MaterialAsToolMouseIcon"]
  LOADN R13 28
  SETTABLEKS R13 R12 K166 ["TopBarButtonWidth"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K99 ["Titlebar"]
  SETTABLEKS R13 R12 K35 ["BackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K63 ["Button"]
  SETTABLEKS R13 R12 K167 ["ViewTypeBackground"]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K76 ["ButtonSize"]
  LOADN R13 4
  SETTABLEKS R13 R12 K46 ["Padding"]
  LOADN R13 88
  SETTABLEKS R13 R12 K168 ["SearchBarMaxWidth"]
  LOADN R13 12
  SETTABLEKS R13 R12 K169 ["SpacerWidth"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 50
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K170 ["ViewTypeSize"]
  SETTABLEKS R12 R11 K30 ["TopBar"]
  DUPTABLE R12 K205 [{"ExpandIcon", "ClearIcon", "ImportIcon", "PreviewBackgroundColor", "PreviewBorderColor", "ImportIconColor", "ImportImageBackground", "ButtonColor", "ButtonHeight", "ButtonIconColor", "ButtonIconHoveredColor", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight", "ColumnWidth", "LabelColumnWidth", "PreviewSize", "PaddingVertical", "PaddingHorizontal", "TextHeight", "ExpandedPreviewDefaultSize", "ExpandedPreviewMinSize", "ExpandedPreviewPadding"}]
  LOADK R13 K206 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R13 R12 K183 ["ExpandIcon"]
  LOADK R13 K207 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R13 R12 K184 ["ClearIcon"]
  LOADK R13 K208 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R13 R12 K185 ["ImportIcon"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K50 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R13 R12 K186 ["PreviewBackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K209 ["Border"]
  SETTABLEKS R13 R12 K187 ["PreviewBorderColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K52 ["ButtonText"]
  SETTABLEKS R13 R12 K188 ["ImportIconColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K189 ["ImportImageBackground"]
  SETTABLEKS R13 R12 K189 ["ImportImageBackground"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K63 ["Button"]
  SETTABLEKS R13 R12 K190 ["ButtonColor"]
  LOADN R13 24
  SETTABLEKS R13 R12 K191 ["ButtonHeight"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K210 ["Icon"]
  SETTABLEKS R13 R12 K192 ["ButtonIconColor"]
  GETIMPORT R13 K60 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 255
  LOADN R16 255
  CALL R13 3 1
  SETTABLEKS R13 R12 K193 ["ButtonIconHoveredColor"]
  LOADK R13 K211 [0.4]
  SETTABLEKS R13 R12 K194 ["ToolbarTransparency"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K195 ["ToolbarBackgroundColor"]
  SETTABLEKS R13 R12 K195 ["ToolbarBackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K196 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R13 R12 K196 ["ToolbarButtonBackgroundColor"]
  LOADN R13 32
  SETTABLEKS R13 R12 K197 ["ToolbarHeight"]
  LOADN R13 145
  SETTABLEKS R13 R12 K72 ["ColumnWidth"]
  SETTABLEKS R5 R12 K68 ["LabelColumnWidth"]
  LOADN R13 74
  SETTABLEKS R13 R12 K198 ["PreviewSize"]
  LOADN R13 4
  SETTABLEKS R13 R12 K199 ["PaddingVertical"]
  LOADN R13 21
  SETTABLEKS R13 R12 K200 ["PaddingHorizontal"]
  LOADN R13 16
  SETTABLEKS R13 R12 K201 ["TextHeight"]
  GETIMPORT R13 K131 [Vector2.new]
  LOADN R14 144
  LOADN R15 144
  CALL R13 2 1
  SETTABLEKS R13 R12 K202 ["ExpandedPreviewDefaultSize"]
  GETIMPORT R13 K131 [Vector2.new]
  LOADN R14 100
  LOADN R15 100
  CALL R13 2 1
  SETTABLEKS R13 R12 K203 ["ExpandedPreviewMinSize"]
  GETIMPORT R13 K9 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K204 ["ExpandedPreviewPadding"]
  SETTABLEKS R12 R11 K31 ["PromptSelectorWithPreview"]
  DUPTABLE R12 K214 [{"Grid", "List", "ViewTypeBackground", "ViewTypeSize"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K215 ["GridIcon"]
  SETTABLEKS R13 R12 K212 ["Grid"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K216 ["ListIcon"]
  SETTABLEKS R13 R12 K213 ["List"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K63 ["Button"]
  SETTABLEKS R13 R12 K167 ["ViewTypeBackground"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 50
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K170 ["ViewTypeSize"]
  SETTABLEKS R12 R11 K32 ["ViewTypeButton"]
  DUPTABLE R12 K217 [{"ButtonSize"}]
  GETIMPORT R13 K6 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K76 ["ButtonSize"]
  SETTABLEKS R12 R11 K33 ["ActionButton"]
  RETURN R11 1

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
  GETTABLEKS R6 R4 K12 ["getFFlagFixMaterialManagerDEOverflow"]
  GETTABLEKS R7 R1 K13 ["Dash"]
  GETTABLEKS R9 R1 K13 ["Dash"]
  GETTABLEKS R8 R9 K14 ["join"]
  GETTABLEKS R9 R1 K15 ["Util"]
  GETTABLEKS R10 R9 K16 ["StyleModifier"]
  GETTABLEKS R11 R9 K17 ["deepCopy"]
  GETTABLEKS R12 R1 K7 ["Style"]
  GETTABLEKS R14 R12 K18 ["Themes"]
  GETTABLEKS R13 R14 K19 ["StudioTheme"]
  GETTABLEKS R15 R12 K18 ["Themes"]
  GETTABLEKS R14 R15 K20 ["DarkTheme"]
  GETTABLEKS R16 R12 K18 ["Themes"]
  GETTABLEKS R15 R16 K21 ["LightTheme"]
  GETTABLEKS R16 R12 K22 ["StyleKey"]
  MOVE R17 R3
  LOADK R18 K23 ["RoundBox"]
  CALL R17 1 1
  MOVE R18 R3
  LOADK R19 K24 ["SelectInput"]
  CALL R18 1 1
  MOVE R19 R3
  LOADK R20 K25 ["ExpandablePane"]
  CALL R19 1 1
  MOVE R20 R11
  MOVE R21 R17
  CALL R20 1 1
  MOVE R21 R11
  MOVE R22 R18
  CALL R21 1 1
  MOVE R22 R11
  MOVE R23 R19
  CALL R22 1 1
  DUPCLOSURE R23 K26 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R10
  DUPCLOSURE R24 K27 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R23
  RETURN R24 1
