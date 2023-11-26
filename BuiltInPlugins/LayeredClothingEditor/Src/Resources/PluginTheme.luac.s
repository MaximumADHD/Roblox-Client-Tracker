PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
  SETTABLEKS R1 R0 K1 ["PlayImage"]
  GETUPVAL R0 0
  LOADK R1 K2 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
  SETTABLEKS R1 R0 K3 ["AddMoreImage"]
  GETUPVAL R0 0
  LOADK R1 K4 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
  SETTABLEKS R1 R0 K5 ["MoreActionsImage"]
  GETUPVAL R0 0
  LOADK R1 K6 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
  SETTABLEKS R1 R0 K7 ["AddMoreBigImage"]
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R0 [+16]
  GETUPVAL R1 0
  LOADK R2 K0 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
  SETTABLEKS R2 R1 K1 ["PlayImage"]
  GETUPVAL R1 0
  LOADK R2 K2 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
  SETTABLEKS R2 R1 K3 ["AddMoreImage"]
  GETUPVAL R1 0
  LOADK R2 K4 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
  SETTABLEKS R2 R1 K5 ["MoreActionsImage"]
  GETUPVAL R1 0
  LOADK R2 K6 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
  SETTABLEKS R2 R1 K7 ["AddMoreBigImage"]
  GETUPVAL R1 1
  LOADK R2 K8 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  DUPTABLE R3 K11 [{"SpriteSize", "NumSprites"}]
  LOADN R4 12
  SETTABLEKS R4 R3 K9 ["SpriteSize"]
  LOADN R4 4
  SETTABLEKS R4 R3 K10 ["NumSprites"]
  CALL R1 2 1
  GETTABLEN R2 R1 3
  GETUPVAL R3 2
  LOADK R4 K12 ["TextInput"]
  CALL R3 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["Dictionary"]
  GETTABLEKS R4 R5 K14 ["join"]
  MOVE R5 R3
  NEWTABLE R6 4 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["DimmedText"]
  SETTABLEKS R7 R6 K16 ["PlaceholderTextColor"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["MainText"]
  SETTABLEKS R7 R6 K18 ["TextColor"]
  DUPTABLE R7 K21 [{"Padding", "BackgroundStyle"}]
  DUPTABLE R8 K26 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R9 10
  SETTABLEKS R9 R8 K22 ["Left"]
  LOADN R9 5
  SETTABLEKS R9 R8 K23 ["Top"]
  LOADN R9 10
  SETTABLEKS R9 R8 K24 ["Right"]
  LOADN R9 5
  SETTABLEKS R9 R8 K25 ["Bottom"]
  SETTABLEKS R8 R7 K19 ["Padding"]
  DUPTABLE R8 K34 [{"Color", "BorderColor", "Transparency", "BorderTransparency", "BackgroundImage", "BorderImage", "SliceCenter"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K35 ["RibbonTab"]
  SETTABLEKS R9 R8 K27 ["Color"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K35 ["RibbonTab"]
  SETTABLEKS R9 R8 K28 ["BorderColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K29 ["Transparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K30 ["BorderTransparency"]
  LOADK R9 K36 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R9 R8 K31 ["BackgroundImage"]
  LOADK R9 K37 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R9 R8 K32 ["BorderImage"]
  GETIMPORT R9 K40 [Rect.new]
  LOADN R10 3
  LOADN R11 3
  LOADN R12 13
  LOADN R13 13
  CALL R9 4 1
  SETTABLEKS R9 R8 K33 ["SliceCenter"]
  SETTABLEKS R8 R7 K20 ["BackgroundStyle"]
  SETTABLEKS R7 R6 K41 ["&RoundedBorder"]
  CALL R4 2 1
  DUPTABLE R5 K43 [{"Size"}]
  GETIMPORT R6 K46 [UDim2.fromOffset]
  LOADN R7 240
  LOADN R8 80
  CALL R6 2 1
  SETTABLEKS R6 R5 K42 ["Size"]
  DUPTABLE R6 K54 [{"Padding", "ButtonSize", "CageModeIcon", "InnerCageIcon", "OuterCageIcon", "AutoWeightIcon", "OptionsIcon", "ButtonStyle"}]
  LOADN R7 6
  SETTABLEKS R7 R6 K19 ["Padding"]
  LOADN R7 32
  SETTABLEKS R7 R6 K47 ["ButtonSize"]
  LOADK R7 K55 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Mode.png"]
  SETTABLEKS R7 R6 K48 ["CageModeIcon"]
  LOADK R7 K56 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Inner Cage.png"]
  SETTABLEKS R7 R6 K49 ["InnerCageIcon"]
  LOADK R7 K57 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Outer Cage.png"]
  SETTABLEKS R7 R6 K50 ["OuterCageIcon"]
  LOADK R7 K58 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Auto-Weight.png"]
  SETTABLEKS R7 R6 K51 ["AutoWeightIcon"]
  LOADK R7 K59 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png"]
  SETTABLEKS R7 R6 K52 ["OptionsIcon"]
  NEWTABLE R7 8 0
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["Padding"]
  GETUPVAL R8 4
  SETTABLEKS R8 R7 K60 ["Background"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K13 ["Dictionary"]
  GETTABLEKS R8 R9 K14 ["join"]
  GETUPVAL R9 5
  DUPTABLE R10 K61 [{"Color"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K62 ["Button"]
  SETTABLEKS R11 R10 K27 ["Color"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["BackgroundStyle"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K63 ["Hover"]
  DUPTABLE R9 K64 [{"BackgroundStyle"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K13 ["Dictionary"]
  GETTABLEKS R10 R11 K14 ["join"]
  GETUPVAL R11 5
  DUPTABLE R12 K61 [{"Color"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K65 ["ButtonHover"]
  SETTABLEKS R13 R12 K27 ["Color"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["BackgroundStyle"]
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K66 ["Disabled"]
  DUPTABLE R9 K67 [{"BackgroundStyle", "TextColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K13 ["Dictionary"]
  GETTABLEKS R10 R11 K14 ["join"]
  GETUPVAL R11 5
  DUPTABLE R12 K61 [{"Color"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K68 ["ButtonDisabled"]
  SETTABLEKS R13 R12 K27 ["Color"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["BackgroundStyle"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K69 ["ButtonTextDisabled"]
  SETTABLEKS R10 R9 K18 ["TextColor"]
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K70 ["Pressed"]
  DUPTABLE R9 K64 [{"BackgroundStyle"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K13 ["Dictionary"]
  GETTABLEKS R10 R11 K14 ["join"]
  GETUPVAL R11 5
  DUPTABLE R12 K61 [{"Color"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K71 ["DialogMainButton"]
  SETTABLEKS R13 R12 K27 ["Color"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["BackgroundStyle"]
  SETTABLE R9 R7 R8
  SETTABLEKS R7 R6 K53 ["ButtonStyle"]
  DUPTABLE R7 K76 [{"Padding", "PaddingSmall", "ButtonSize", "CageVisibilityIcon", "MeshPartVisibilityIcon", "OptionsIcon", "FocusMannequinIcon"}]
  LOADN R8 6
  SETTABLEKS R8 R7 K19 ["Padding"]
  LOADN R8 2
  SETTABLEKS R8 R7 K72 ["PaddingSmall"]
  LOADN R8 32
  SETTABLEKS R8 R7 K47 ["ButtonSize"]
  LOADK R8 K77 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Visibility.png"]
  SETTABLEKS R8 R7 K73 ["CageVisibilityIcon"]
  LOADK R8 K78 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Mesh Visibility Icon.png"]
  SETTABLEKS R8 R7 K74 ["MeshPartVisibilityIcon"]
  LOADK R8 K59 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png"]
  SETTABLEKS R8 R7 K52 ["OptionsIcon"]
  LOADK R8 K79 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png"]
  SETTABLEKS R8 R7 K75 ["FocusMannequinIcon"]
  DUPTABLE R8 K82 [{"ButtonSize", "VisibilityControlsOffset", "PaneOffsetY"}]
  LOADN R9 32
  SETTABLEKS R9 R8 K47 ["ButtonSize"]
  LOADN R9 128
  SETTABLEKS R9 R8 K80 ["VisibilityControlsOffset"]
  LOADN R9 20
  SETTABLEKS R9 R8 K81 ["PaneOffsetY"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K13 ["Dictionary"]
  GETTABLEKS R9 R10 K14 ["join"]
  MOVE R10 R2
  DUPTABLE R11 K90 [{"Size", "Color", "AnchorPoint", "Position", "Padding", "DropdownFramePadding", "ArrowSize", "DropdownFrameWidth", "Font", "TextSize"}]
  GETIMPORT R12 K91 [UDim2.new]
  LOADN R13 0
  LOADN R14 10
  LOADN R15 0
  LOADN R16 10
  CALL R12 4 1
  SETTABLEKS R12 R11 K42 ["Size"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["MainText"]
  SETTABLEKS R12 R11 K27 ["Color"]
  GETIMPORT R12 K93 [Vector2.new]
  LOADN R13 1
  LOADK R14 K94 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K83 ["AnchorPoint"]
  GETIMPORT R12 K91 [UDim2.new]
  LOADN R13 1
  LOADN R14 250
  LOADK R15 K94 [0.5]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K84 ["Position"]
  LOADN R12 96
  SETTABLEKS R12 R11 K19 ["Padding"]
  LOADN R12 12
  SETTABLEKS R12 R11 K85 ["DropdownFramePadding"]
  LOADN R12 24
  SETTABLEKS R12 R11 K86 ["ArrowSize"]
  LOADN R12 216
  SETTABLEKS R12 R11 K87 ["DropdownFrameWidth"]
  GETIMPORT R12 K97 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K88 ["Font"]
  LOADN R12 18
  SETTABLEKS R12 R11 K89 ["TextSize"]
  CALL R9 2 1
  DUPTABLE R10 K100 [{"ContentHeight", "ContentSpacing"}]
  LOADN R11 120
  SETTABLEKS R11 R10 K98 ["ContentHeight"]
  LOADN R11 16
  SETTABLEKS R11 R10 K99 ["ContentSpacing"]
  DUPTABLE R11 K103 [{"PreviewHeight", "GenerateHeight"}]
  LOADN R12 94
  SETTABLEKS R12 R11 K101 ["PreviewHeight"]
  LOADN R12 56
  SETTABLEKS R12 R11 K102 ["GenerateHeight"]
  DUPTABLE R12 K113 [{"GenerateDropdownButtonWidth", "GenerateButtonWidth", "BackButtonWidth", "GenerateDropdownButtonHeight", "ButtonHeight", "ArrowWidth", "WarningIcon", "IconSize", "DropdownItemHeight"}]
  LOADN R13 228
  SETTABLEKS R13 R12 K104 ["GenerateDropdownButtonWidth"]
  LOADN R13 150
  SETTABLEKS R13 R12 K105 ["GenerateButtonWidth"]
  LOADN R13 96
  SETTABLEKS R13 R12 K106 ["BackButtonWidth"]
  LOADN R13 36
  SETTABLEKS R13 R12 K107 ["GenerateDropdownButtonHeight"]
  LOADN R13 48
  SETTABLEKS R13 R12 K108 ["ButtonHeight"]
  LOADN R13 24
  SETTABLEKS R13 R12 K109 ["ArrowWidth"]
  LOADK R13 K114 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R13 R12 K110 ["WarningIcon"]
  LOADN R13 16
  SETTABLEKS R13 R12 K111 ["IconSize"]
  LOADN R13 22
  SETTABLEKS R13 R12 K112 ["DropdownItemHeight"]
  DUPTABLE R13 K117 [{"TextBoxHeight", "LabelWidth"}]
  LOADN R14 24
  SETTABLEKS R14 R13 K115 ["TextBoxHeight"]
  LOADN R14 64
  SETTABLEKS R14 R13 K116 ["LabelWidth"]
  DUPTABLE R14 K122 [{"UIPadding", "Height", "ButtonWidth", "LayoutPadding"}]
  LOADN R15 24
  SETTABLEKS R15 R14 K118 ["UIPadding"]
  LOADN R15 24
  SETTABLEKS R15 R14 K119 ["Height"]
  LOADN R15 64
  SETTABLEKS R15 R14 K120 ["ButtonWidth"]
  LOADN R15 6
  SETTABLEKS R15 R14 K121 ["LayoutPadding"]
  DUPTABLE R15 K128 [{"DefaultPointSize", "DefaultColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight"}]
  LOADK R16 K129 [0.015]
  SETTABLEKS R16 R15 K123 ["DefaultPointSize"]
  GETIMPORT R16 K131 [Color3.new]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 1
  CALL R16 3 1
  SETTABLEKS R16 R15 K124 ["DefaultColor"]
  GETIMPORT R16 K131 [Color3.new]
  LOADN R17 1
  LOADN R18 1
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K125 ["HoveredColor"]
  GETIMPORT R16 K131 [Color3.new]
  LOADN R17 1
  LOADN R18 1
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K126 ["SelectedColor"]
  GETIMPORT R16 K131 [Color3.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K127 ["SelectedColorNoWeight"]
  DUPTABLE R16 K132 [{"DefaultPointSize"}]
  LOADK R17 K129 [0.015]
  SETTABLEKS R17 R16 K123 ["DefaultPointSize"]
  DUPTABLE R17 K134 [{"Transparency", "PointSize", "DefaultColor", "HoveredColor", "SelectedColor"}]
  LOADK R18 K135 [0.7]
  SETTABLEKS R18 R17 K29 ["Transparency"]
  LOADK R18 K136 [0.1]
  SETTABLEKS R18 R17 K133 ["PointSize"]
  GETIMPORT R18 K131 [Color3.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  CALL R18 3 1
  SETTABLEKS R18 R17 K124 ["DefaultColor"]
  GETIMPORT R18 K131 [Color3.new]
  LOADN R19 1
  LOADN R20 1
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K125 ["HoveredColor"]
  GETIMPORT R18 K131 [Color3.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K126 ["SelectedColor"]
  DUPTABLE R18 K138 [{"TitleHeight"}]
  LOADN R19 32
  SETTABLEKS R19 R18 K137 ["TitleHeight"]
  DUPTABLE R19 K142 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["PlayImage"]
  SETTABLEKS R20 R19 K1 ["PlayImage"]
  LOADK R20 K143 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R20 R19 K139 ["PauseImage"]
  LOADN R20 20
  SETTABLEKS R20 R19 K140 ["PlayButtonWidth"]
  LOADN R20 60
  SETTABLEKS R20 R19 K141 ["PlayTimeLabelWidth"]
  LOADN R20 24
  SETTABLEKS R20 R19 K19 ["Padding"]
  DUPTABLE R20 K145 [{"HoverLineThickness"}]
  LOADK R21 K146 [0.02]
  SETTABLEKS R21 R20 K144 ["HoverLineThickness"]
  DUPTABLE R21 K150 [{"AddFromExploreButtonFrameHeight", "AddFromExploreButtonImage", "AddFromExploreButtonSize"}]
  LOADN R22 25
  SETTABLEKS R22 R21 K147 ["AddFromExploreButtonFrameHeight"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K3 ["AddMoreImage"]
  SETTABLEKS R22 R21 K148 ["AddFromExploreButtonImage"]
  GETIMPORT R22 K91 [UDim2.new]
  LOADN R23 0
  LOADN R24 20
  LOADN R25 0
  LOADN R26 20
  CALL R22 4 1
  SETTABLEKS R22 R21 K149 ["AddFromExploreButtonSize"]
  DUPTABLE R22 K152 [{"CageRowTextLabelSize"}]
  LOADK R23 K153 [0.3]
  SETTABLEKS R23 R22 K151 ["CageRowTextLabelSize"]
  DUPTABLE R23 K154 [{"AddFromExploreButtonFrameHeight"}]
  LOADN R24 25
  SETTABLEKS R24 R23 K147 ["AddFromExploreButtonFrameHeight"]
  DUPTABLE R24 K156 [{"SelectItemListScrollingFrameStyle"}]
  DUPTABLE R25 K163 [{"BackgroundColor3", "ScrollBarThickness", "BorderSizePixel", "AutoSizeCanvas", "AutoSizeLayoutElement", "ScrollingDirection"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K164 ["CategoryItem"]
  SETTABLEKS R26 R25 K157 ["BackgroundColor3"]
  LOADN R26 7
  SETTABLEKS R26 R25 K158 ["ScrollBarThickness"]
  LOADN R26 0
  SETTABLEKS R26 R25 K159 ["BorderSizePixel"]
  LOADB R26 1
  SETTABLEKS R26 R25 K160 ["AutoSizeCanvas"]
  LOADK R26 K165 ["UIListLayout"]
  SETTABLEKS R26 R25 K161 ["AutoSizeLayoutElement"]
  GETIMPORT R26 K167 [Enum.ScrollingDirection.Y]
  SETTABLEKS R26 R25 K162 ["ScrollingDirection"]
  SETTABLEKS R25 R24 K155 ["SelectItemListScrollingFrameStyle"]
  DUPTABLE R25 K170 [{"MoreButtonSize", "SelectableRowStyle"}]
  LOADN R26 20
  SETTABLEKS R26 R25 K168 ["MoreButtonSize"]
  NEWTABLE R26 4 0
  GETUPVAL R27 7
  SETTABLEKS R27 R26 K60 ["Background"]
  DUPTABLE R27 K172 [{"BorderSize", "Transparency"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K171 ["BorderSize"]
  LOADN R28 1
  SETTABLEKS R28 R27 K29 ["Transparency"]
  SETTABLEKS R27 R26 K20 ["BackgroundStyle"]
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K63 ["Hover"]
  DUPTABLE R28 K64 [{"BackgroundStyle"}]
  DUPTABLE R29 K173 [{"Color", "Transparency"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K65 ["ButtonHover"]
  SETTABLEKS R30 R29 K27 ["Color"]
  LOADN R30 0
  SETTABLEKS R30 R29 K29 ["Transparency"]
  SETTABLEKS R29 R28 K20 ["BackgroundStyle"]
  SETTABLE R28 R26 R27
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K174 ["Selected"]
  DUPTABLE R28 K64 [{"BackgroundStyle"}]
  DUPTABLE R29 K173 [{"Color", "Transparency"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K175 ["DialogMainButtonSelected"]
  SETTABLEKS R30 R29 K27 ["Color"]
  LOADN R30 0
  SETTABLEKS R30 R29 K29 ["Transparency"]
  SETTABLEKS R29 R28 K20 ["BackgroundStyle"]
  SETTABLE R28 R26 R27
  SETTABLEKS R26 R25 K169 ["SelectableRowStyle"]
  DUPTABLE R26 K177 [{"MoreButtonImage", "MoreButtonSize"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K5 ["MoreActionsImage"]
  SETTABLEKS R27 R26 K176 ["MoreButtonImage"]
  LOADN R27 20
  SETTABLEKS R27 R26 K168 ["MoreButtonSize"]
  DUPTABLE R27 K185 [{"TileSize", "TileInnerBorder", "ImageFrameSize", "ImageSize", "TextLabelSize", "ButtonBackgroundColor", "TextSize", "ImageBackgroundColor"}]
  GETIMPORT R28 K91 [UDim2.new]
  LOADN R29 0
  LOADN R30 140
  LOADN R31 0
  LOADN R32 160
  CALL R28 4 1
  SETTABLEKS R28 R27 K178 ["TileSize"]
  GETIMPORT R28 K93 [Vector2.new]
  LOADN R29 10
  LOADN R30 10
  CALL R28 2 1
  SETTABLEKS R28 R27 K179 ["TileInnerBorder"]
  GETIMPORT R28 K91 [UDim2.new]
  LOADN R29 0
  LOADN R30 120
  LOADN R31 0
  LOADN R32 118
  CALL R28 4 1
  SETTABLEKS R28 R27 K180 ["ImageFrameSize"]
  GETIMPORT R28 K91 [UDim2.new]
  LOADN R29 0
  LOADN R30 100
  LOADN R31 0
  LOADN R32 98
  CALL R28 4 1
  SETTABLEKS R28 R27 K181 ["ImageSize"]
  GETIMPORT R28 K91 [UDim2.new]
  LOADN R29 0
  LOADN R30 120
  LOADN R31 0
  LOADN R32 22
  CALL R28 4 1
  SETTABLEKS R28 R27 K182 ["TextLabelSize"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K186 ["ButtonPressed"]
  SETTABLEKS R28 R27 K183 ["ButtonBackgroundColor"]
  LOADN R28 18
  SETTABLEKS R28 R27 K89 ["TextSize"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K164 ["CategoryItem"]
  SETTABLEKS R28 R27 K184 ["ImageBackgroundColor"]
  DUPTABLE R28 K187 [{"Padding"}]
  LOADN R29 8
  SETTABLEKS R29 R28 K19 ["Padding"]
  DUPTABLE R29 K191 [{"Padding", "GridContainerSpacing", "GridContainerPadding", "Height", "GridContainerBackgroundColor"}]
  LOADN R30 6
  SETTABLEKS R30 R29 K19 ["Padding"]
  LOADN R30 4
  SETTABLEKS R30 R29 K188 ["GridContainerSpacing"]
  LOADN R30 8
  SETTABLEKS R30 R29 K189 ["GridContainerPadding"]
  LOADN R30 94
  SETTABLEKS R30 R29 K119 ["Height"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K192 ["SubBackground2"]
  SETTABLEKS R30 R29 K190 ["GridContainerBackgroundColor"]
  DUPTABLE R30 K197 [{"TileSize", "TilePadding", "TileInnerBorder", "ImageFrameSize", "ImageSize", "TextLabelSize", "ButtonBackgroundColor", "TextSize", "DefaultTileImages", "AddNewImage", "SmallImageSize", "ImageBackgroundColor"}]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 120
  LOADN R34 0
  LOADN R35 120
  CALL R31 4 1
  SETTABLEKS R31 R30 K178 ["TileSize"]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 6
  LOADN R34 0
  LOADN R35 6
  CALL R31 4 1
  SETTABLEKS R31 R30 K193 ["TilePadding"]
  GETIMPORT R31 K93 [Vector2.new]
  LOADN R32 10
  LOADN R33 10
  CALL R31 2 1
  SETTABLEKS R31 R30 K179 ["TileInnerBorder"]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 120
  LOADN R34 0
  LOADN R35 118
  CALL R31 4 1
  SETTABLEKS R31 R30 K180 ["ImageFrameSize"]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 100
  LOADN R34 0
  LOADN R35 98
  CALL R31 4 1
  SETTABLEKS R31 R30 K181 ["ImageSize"]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 120
  LOADN R34 0
  LOADN R35 22
  CALL R31 4 1
  SETTABLEKS R31 R30 K182 ["TextLabelSize"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K186 ["ButtonPressed"]
  SETTABLEKS R31 R30 K183 ["ButtonBackgroundColor"]
  LOADN R31 18
  SETTABLEKS R31 R30 K89 ["TextSize"]
  NEWTABLE R31 4 0
  GETUPVAL R34 8
  GETTABLEKS R33 R34 K198 ["TABS_KEYS"]
  GETTABLEKS R32 R33 K199 ["Avatars"]
  LOADK R33 K200 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Avatars.png"]
  SETTABLE R33 R31 R32
  GETUPVAL R34 8
  GETTABLEKS R33 R34 K198 ["TABS_KEYS"]
  GETTABLEKS R32 R33 K201 ["Clothing"]
  LOADK R33 K202 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Clothing.png"]
  SETTABLE R33 R31 R32
  GETUPVAL R34 8
  GETTABLEKS R33 R34 K198 ["TABS_KEYS"]
  GETTABLEKS R32 R33 K203 ["Animations"]
  LOADK R33 K204 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Animation.png"]
  SETTABLE R33 R31 R32
  SETTABLEKS R31 R30 K194 ["DefaultTileImages"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K7 ["AddMoreBigImage"]
  SETTABLEKS R31 R30 K195 ["AddNewImage"]
  GETIMPORT R31 K91 [UDim2.new]
  LOADN R32 0
  LOADN R33 46
  LOADN R34 0
  LOADN R35 42
  CALL R31 4 1
  SETTABLEKS R31 R30 K196 ["SmallImageSize"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K164 ["CategoryItem"]
  SETTABLEKS R31 R30 K184 ["ImageBackgroundColor"]
  DUPTABLE R31 K206 [{"LinkColor"}]
  GETIMPORT R32 K131 [Color3.new]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  CALL R32 3 1
  SETTABLEKS R32 R31 K205 ["LinkColor"]
  DUPTABLE R32 K209 [{"WireColorInner", "WireColorOuter"}]
  GETIMPORT R33 K211 [Color3.fromRGB]
  LOADN R34 68
  LOADN R35 103
  LOADN R36 128
  CALL R33 3 1
  SETTABLEKS R33 R32 K207 ["WireColorInner"]
  GETIMPORT R33 K211 [Color3.fromRGB]
  LOADN R34 140
  LOADN R35 65
  LOADN R36 168
  CALL R33 3 1
  SETTABLEKS R33 R32 K208 ["WireColorOuter"]
  DUPTABLE R33 K212 [{"ButtonHeight"}]
  LOADN R34 36
  SETTABLEKS R34 R33 K108 ["ButtonHeight"]
  DUPTABLE R34 K212 [{"ButtonHeight"}]
  LOADN R35 36
  SETTABLEKS R35 R34 K108 ["ButtonHeight"]
  DUPTABLE R35 K217 [{"Transparency", "InBoundsColor", "OutBoundsColor", "LineThickness", "LineColor"}]
  LOADK R36 K218 [0.8]
  SETTABLEKS R36 R35 K29 ["Transparency"]
  GETIMPORT R36 K131 [Color3.new]
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  CALL R36 3 1
  SETTABLEKS R36 R35 K213 ["InBoundsColor"]
  GETIMPORT R36 K131 [Color3.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  CALL R36 3 1
  SETTABLEKS R36 R35 K214 ["OutBoundsColor"]
  LOADN R36 5
  SETTABLEKS R36 R35 K215 ["LineThickness"]
  GETIMPORT R36 K131 [Color3.new]
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  CALL R36 3 1
  SETTABLEKS R36 R35 K216 ["LineColor"]
  DUPTABLE R36 K222 [{"DropdownHeight", "DropdownWidth", "Spacing"}]
  LOADN R37 24
  SETTABLEKS R37 R36 K219 ["DropdownHeight"]
  LOADN R37 160
  SETTABLEKS R37 R36 K220 ["DropdownWidth"]
  LOADN R37 6
  SETTABLEKS R37 R36 K221 ["Spacing"]
  DUPTABLE R37 K246 [{"BackgroundColor", "ButtonColor", "RibbonTab", "ProgressBarColor", "ScrollBarColor", "HoverColor", "BorderColor", "SubTextColor", "InfoTextColor", "TitleTextColor", "TextColor", "TextDisabledColor", "ErrorColor", "LinkColor", "Green", "White", "DisabledColor", "ScrollbarTransparency", "ScrollbarSize", "TextSize", "RowHeight", "Font", "FontBold", "PopupMessageSize", "MainPadding", "HeaderPadding", "SliderHeight", "ScrollBarThickness", "TabHeight", "BorderSize", "PreviewViewportFrameHeight"}]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K247 ["MainBackground"]
  SETTABLEKS R38 R37 K223 ["BackgroundColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K62 ["Button"]
  SETTABLEKS R38 R37 K224 ["ButtonColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K35 ["RibbonTab"]
  SETTABLEKS R38 R37 K35 ["RibbonTab"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K175 ["DialogMainButtonSelected"]
  SETTABLEKS R38 R37 K225 ["ProgressBarColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K248 ["ScrollBar"]
  SETTABLEKS R38 R37 K226 ["ScrollBarColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K65 ["ButtonHover"]
  SETTABLEKS R38 R37 K227 ["HoverColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K249 ["Border"]
  SETTABLEKS R38 R37 K28 ["BorderColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K250 ["SubText"]
  SETTABLEKS R38 R37 K228 ["SubTextColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K15 ["DimmedText"]
  SETTABLEKS R38 R37 K229 ["InfoTextColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K251 ["TitlebarText"]
  SETTABLEKS R38 R37 K230 ["TitleTextColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K17 ["MainText"]
  SETTABLEKS R38 R37 K18 ["TextColor"]
  GETIMPORT R38 K211 [Color3.fromRGB]
  LOADN R39 148
  LOADN R40 148
  LOADN R41 148
  CALL R38 3 1
  SETTABLEKS R38 R37 K231 ["TextDisabledColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K252 ["ErrorText"]
  SETTABLEKS R38 R37 K232 ["ErrorColor"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K253 ["LinkText"]
  SETTABLEKS R38 R37 K205 ["LinkColor"]
  GETIMPORT R38 K211 [Color3.fromRGB]
  LOADN R39 64
  LOADN R40 166
  LOADN R41 81
  CALL R38 3 1
  SETTABLEKS R38 R37 K233 ["Green"]
  GETIMPORT R38 K211 [Color3.fromRGB]
  LOADN R39 255
  LOADN R40 255
  LOADN R41 255
  CALL R38 3 1
  SETTABLEKS R38 R37 K234 ["White"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K254 ["MainTextDisabled"]
  SETTABLEKS R38 R37 K235 ["DisabledColor"]
  LOADK R38 K135 [0.7]
  SETTABLEKS R38 R37 K236 ["ScrollbarTransparency"]
  LOADN R38 7
  SETTABLEKS R38 R37 K237 ["ScrollbarSize"]
  LOADN R38 18
  SETTABLEKS R38 R37 K89 ["TextSize"]
  LOADN R38 32
  SETTABLEKS R38 R37 K238 ["RowHeight"]
  GETIMPORT R38 K97 [Enum.Font.SourceSans]
  SETTABLEKS R38 R37 K88 ["Font"]
  GETIMPORT R38 K256 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R38 R37 K239 ["FontBold"]
  GETIMPORT R38 K93 [Vector2.new]
  LOADN R39 200
  LOADN R40 100
  CALL R38 2 1
  SETTABLEKS R38 R37 K240 ["PopupMessageSize"]
  LOADN R38 20
  SETTABLEKS R38 R37 K241 ["MainPadding"]
  LOADN R38 8
  SETTABLEKS R38 R37 K242 ["HeaderPadding"]
  LOADN R38 32
  SETTABLEKS R38 R37 K243 ["SliderHeight"]
  LOADN R38 8
  SETTABLEKS R38 R37 K158 ["ScrollBarThickness"]
  LOADN R38 32
  SETTABLEKS R38 R37 K244 ["TabHeight"]
  LOADN R38 1
  SETTABLEKS R38 R37 K171 ["BorderSize"]
  LOADN R38 250
  SETTABLEKS R38 R37 K245 ["PreviewViewportFrameHeight"]
  NEWTABLE R38 64 0
  SETTABLEKS R10 R38 K257 ["AssetTypeScreen"]
  SETTABLEKS R6 R38 K258 ["CageControls"]
  SETTABLEKS R7 R38 K259 ["VisibilityControls"]
  SETTABLEKS R8 R38 K260 ["WorkspaceEditorControls"]
  SETTABLEKS R11 R38 K261 ["EditorScreen"]
  SETTABLEKS R12 R38 K262 ["GenerateScreen"]
  SETTABLEKS R29 R38 K263 ["PreviewFrame"]
  SETTABLEKS R9 R38 K264 ["DeformerDropdownMenu"]
  SETTABLEKS R14 R38 K265 ["LatticeToolSettings"]
  SETTABLEKS R21 R38 K266 ["AddItemFromExplorerButton"]
  SETTABLEKS R22 R38 K267 ["EditingModeFrame"]
  SETTABLEKS R28 R38 K268 ["EditingModeRadioButtonList"]
  SETTABLEKS R5 R38 K269 ["InExperiencePreviewerFrame"]
  SETTABLEKS R23 R38 K270 ["SelectItemFrame"]
  SETTABLEKS R24 R38 K271 ["SelectItemList"]
  SETTABLEKS R25 R38 K272 ["SelectItemListRow"]
  SETTABLEKS R26 R38 K273 ["SelectItemMoreButton"]
  SETTABLEKS R30 R38 K274 ["PreviewGrid"]
  SETTABLEKS R18 R38 K275 ["EditTransparencyView"]
  SETTABLEKS R19 R38 K276 ["AnimPlaybackSlider"]
  SETTABLEKS R36 R38 K277 ["ScaleTypeDropdown"]
  SETTABLEKS R27 R38 K278 ["Tile"]
  SETTABLEKS R13 R38 K279 ["SelectFrame"]
  SETTABLEKS R16 R38 K280 ["PointTool"]
  SETTABLEKS R15 R38 K281 ["Point"]
  SETTABLEKS R17 R38 K282 ["ControlPoint"]
  SETTABLEKS R31 R38 K283 ["Lattice"]
  SETTABLEKS R32 R38 K284 ["Wireframe"]
  SETTABLEKS R33 R38 K285 ["ResetSettings"]
  SETTABLEKS R34 R38 K286 ["PreviewToStarterCharacterButton"]
  SETTABLEKS R4 R38 K12 ["TextInput"]
  SETTABLEKS R20 R38 K287 ["InstanceSelector"]
  SETTABLEKS R35 R38 K288 ["MeshPartTool"]
  RETURN R37 2

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SimpleTab"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  GETUPVAL R3 2
  LOADK R4 K0 ["SimpleTab"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["ButtonText"]
  SETTABLEKS R5 R4 K4 ["Color"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["MainBackground"]
  SETTABLEKS R5 R4 K6 ["BackgroundColor"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["MainBackground"]
  SETTABLEKS R5 R4 K7 ["BorderColor"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["DialogMainButton"]
  SETTABLEKS R5 R4 K9 ["TopLineColor"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["Border"]
  SETTABLEKS R5 R4 K11 ["BottomLineColor"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K12 ["Hover"]
  DUPTABLE R6 K13 [{"Color"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["DialogMainButton"]
  SETTABLEKS R7 R6 K4 ["Color"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K14 ["Selected"]
  DUPTABLE R6 K15 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["MainBackground"]
  SETTABLEKS R7 R6 K11 ["BottomLineColor"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["MainBackground"]
  SETTABLEKS R7 R6 K6 ["BackgroundColor"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["Border"]
  SETTABLEKS R7 R6 K7 ["BorderColor"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K16 ["Disabled"]
  DUPTABLE R6 K13 [{"Color"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K17 ["ButtonTextDisabled"]
  SETTABLEKS R7 R6 K4 ["Color"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 2
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R9 1
  MOVE R11 R7
  NAMECALL R9 R9 K2 ["add"]
  CALL R9 2 1
  SETTABLE R8 R3 R9
  FORGLOOP R4 2 [-7]
  GETUPVAL R4 2
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 1
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["StyleRoot"]
  GETUPVAL R3 5
  CALL R3 0 1
  MOVE R4 R0
  CALL R1 3 1
  CALL R1 0 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["mock"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 1
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["StyleRoot"]
  GETUPVAL R3 5
  LOADB R4 1
  CALL R3 1 1
  MOVE R4 R0
  CALL R1 3 1
  CALL R1 0 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mock"]
  CALL R1 0 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["AvatarToolsShared"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R4 R3 K10 ["PreviewConstants"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K8 ["Util"]
  GETTABLEKS R7 R6 K12 ["StyleModifier"]
  GETTABLEKS R8 R6 K13 ["deepCopy"]
  GETTABLEKS R9 R5 K14 ["UI"]
  GETTABLEKS R11 R5 K8 ["Util"]
  GETTABLEKS R10 R11 K15 ["Spritesheet"]
  GETTABLEKS R11 R5 K16 ["Style"]
  GETTABLEKS R12 R11 K17 ["makeTheme"]
  GETTABLEKS R14 R11 K18 ["Themes"]
  GETTABLEKS R13 R14 K19 ["StudioTheme"]
  GETTABLEKS R14 R11 K20 ["StyleKey"]
  GETTABLEKS R15 R11 K21 ["ComponentSymbols"]
  GETTABLEKS R16 R11 K22 ["getRawComponentStyle"]
  GETTABLEKS R17 R9 K23 ["Box"]
  GETTABLEKS R18 R9 K24 ["RoundBox"]
  MOVE R19 R16
  LOADK R20 K24 ["RoundBox"]
  CALL R19 1 1
  MOVE R20 R8
  MOVE R21 R19
  CALL R20 1 1
  GETTABLEKS R22 R11 K18 ["Themes"]
  GETTABLEKS R21 R22 K25 ["DarkTheme"]
  GETTABLEKS R23 R11 K18 ["Themes"]
  GETTABLEKS R22 R23 K26 ["LightTheme"]
  GETTABLEKS R24 R1 K27 ["Dictionary"]
  GETTABLEKS R23 R24 K28 ["join"]
  MOVE R24 R21
  NEWTABLE R25 4 0
  GETTABLEKS R26 R14 K29 ["PlayImage"]
  LOADK R27 K30 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R14 K31 ["AddMoreImage"]
  LOADK R27 K32 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Light.png"]
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R14 K33 ["MoreActionsImage"]
  LOADK R27 K34 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Light.png"]
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R14 K35 ["AddMoreBigImage"]
  LOADK R27 K36 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Light.png"]
  SETTABLE R27 R25 R26
  CALL R23 2 1
  GETTABLEKS R25 R1 K27 ["Dictionary"]
  GETTABLEKS R24 R25 K28 ["join"]
  MOVE R25 R22
  NEWTABLE R26 4 0
  GETTABLEKS R27 R14 K29 ["PlayImage"]
  LOADK R28 K37 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K31 ["AddMoreImage"]
  LOADK R28 K38 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K33 ["MoreActionsImage"]
  LOADK R28 K39 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K35 ["AddMoreBigImage"]
  LOADK R28 K40 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
  SETTABLE R28 R26 R27
  CALL R24 2 1
  DUPCLOSURE R25 K41 [PROTO_0]
  CAPTURE VAL R14
  DUPCLOSURE R26 K42 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R4
  DUPCLOSURE R27 K43 [PROTO_2]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R7
  DUPCLOSURE R28 K44 [PROTO_3]
  CAPTURE VAL R26
  CAPTURE VAL R15
  CAPTURE VAL R27
  CAPTURE VAL R1
  NEWTABLE R29 4 0
  DUPCLOSURE R30 K45 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K46 ["makePluginTheme"]
  DUPCLOSURE R30 K47 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K48 ["mock"]
  DUPCLOSURE R30 K49 [PROTO_6]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K50 ["getMockTheme"]
  RETURN R29 1
