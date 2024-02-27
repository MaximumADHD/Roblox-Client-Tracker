MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Style"]
  GETTABLEKS R4 R3 K10 ["StyleKey"]
  GETTABLEKS R6 R2 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R6 R3 K13 ["ComponentSymbols"]
  GETTABLEKS R7 R2 K14 ["UIData"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R7 K15 ["Alert"]
  GETTABLEKS R9 R10 K16 ["style"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K17 ["DropdownMenu"]
  GETTABLEKS R10 R11 K16 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R7 K18 ["Pane"]
  GETTABLEKS R11 R12 K16 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R7 K19 ["ScrollingFrame"]
  GETTABLEKS R12 R13 K16 ["style"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R7 K20 ["SelectInput"]
  GETTABLEKS R13 R14 K16 ["style"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R7 K21 ["Separator"]
  GETTABLEKS R14 R15 K16 ["style"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R7 K22 ["SimpleTab"]
  GETTABLEKS R15 R16 K16 ["style"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R7 K23 ["Tooltip"]
  GETTABLEKS R16 R17 K16 ["style"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K24 ["Src"]
  GETTABLEKS R18 R19 K25 ["Flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K24 ["Src"]
  GETTABLEKS R19 R20 K25 ["Flags"]
  GETTABLEKS R18 R19 K27 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K25 ["Flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K25 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R19 1 1
  GETIMPORT R20 K31 [game]
  LOADK R22 K32 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R23 0
  NAMECALL R20 R20 K33 ["DefineFastFlag"]
  CALL R20 3 1
  GETIMPORT R21 K31 [game]
  LOADK R23 K34 ["AvatarPreviewerDropdownMenuSmallerMaxHeight"]
  LOADB R24 0
  NAMECALL R21 R21 K33 ["DefineFastFlag"]
  CALL R21 3 1
  NEWTABLE R22 0 0
  LOADK R25 K35 ["AddItemButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K35 ["AddItemButton"]
  DUPTABLE R24 K45 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R25 42
  SETTABLEKS R25 R24 K37 ["Height"]
  LOADK R25 K46 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R25 R24 K38 ["Image"]
  GETTABLEKS R25 R4 K47 ["TextSecondary"]
  SETTABLEKS R25 R24 K39 ["ImageColor"]
  GETTABLEKS R25 R4 K48 ["TextDisabled"]
  SETTABLEKS R25 R24 K40 ["ImageColorDisabled"]
  LOADN R25 20
  SETTABLEKS R25 R24 K41 ["ImageSize"]
  LOADN R25 3
  SETTABLEKS R25 R24 K42 ["PaddingTop"]
  LOADN R25 3
  SETTABLEKS R25 R24 K43 ["PaddingBottom"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["FailureDialogSpacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K52 ["AnimationControllerDisplay"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K52 ["AnimationControllerDisplay"]
  DUPTABLE R24 K54 [{"Padding"}]
  LOADN R25 30
  SETTABLEKS R25 R24 K53 ["Padding"]
  SETTABLE R24 R22 R23
  LOADK R25 K55 ["AnimationPlaybackSlider"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K55 ["AnimationPlaybackSlider"]
  DUPTABLE R24 K60 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R25 R4 K56 ["PlayImage"]
  SETTABLEKS R25 R24 K56 ["PlayImage"]
  LOADK R25 K61 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R25 R24 K57 ["PauseImage"]
  LOADN R25 20
  SETTABLEKS R25 R24 K58 ["PlayButtonWidth"]
  LOADN R25 60
  SETTABLEKS R25 R24 K59 ["PlayTimeLabelWidth"]
  LOADN R25 12
  SETTABLEKS R25 R24 K53 ["Padding"]
  SETTABLE R24 R22 R23
  LOADK R25 K62 ["AnimationPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K62 ["AnimationPreview"]
  NEWTABLE R24 4 0
  LOADK R25 K63 [0.5]
  SETTABLEKS R25 R24 K64 ["PausedAnimationAlpha"]
  DUPTABLE R25 K66 [{"FrontRightAngleLerp"}]
  LOADK R26 K67 [0.4]
  SETTABLEKS R26 R25 K65 ["FrontRightAngleLerp"]
  SETTABLEKS R25 R24 K68 ["&BodyPreview"]
  DUPTABLE R25 K71 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R26 30
  SETTABLEKS R26 R25 K69 ["FieldOfView"]
  LOADK R26 K72 [0.08]
  SETTABLEKS R26 R25 K65 ["FrontRightAngleLerp"]
  LOADK R26 K73 [2.8]
  SETTABLEKS R26 R25 K70 ["InitialDistance"]
  SETTABLEKS R25 R24 K74 ["&FacePreview"]
  SETTABLE R24 R22 R23
  LOADK R25 K75 ["AssetPalettes"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K75 ["AssetPalettes"]
  DUPTABLE R24 K77 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R11
  DUPTABLE R27 K84 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R28 R4 K85 ["SubBackground2"]
  SETTABLEKS R28 R27 K80 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K81 ["BackgroundTransparency"]
  LOADN R28 0
  SETTABLEKS R28 R27 K53 ["Padding"]
  LOADN R28 0
  SETTABLEKS R28 R27 K82 ["ScrollBarThickness"]
  GETIMPORT R28 K51 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K83 ["Spacing"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K19 ["ScrollingFrame"]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 24
  CALL R25 4 1
  SETTABLEKS R25 R24 K76 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K88 ["AutoSetupScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K88 ["AutoSetupScreen"]
  DUPTABLE R24 K93 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K89 ["AlertPaddingHorizontal"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K90 ["AlertPaddingVertical"]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 1
  LOADN R27 240
  LOADN R28 1
  LOADN R29 240
  CALL R25 4 1
  SETTABLEKS R25 R24 K91 ["ControlsPosition"]
  LOADK R25 K94 [-0.25]
  SETTABLEKS R25 R24 K92 ["SpinRate"]
  SETTABLE R24 R22 R23
  LOADK R25 K95 ["AvatarScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K95 ["AvatarScreen"]
  DUPTABLE R24 K97 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R25 K102 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R26 R4 K85 ["SubBackground2"]
  SETTABLEKS R26 R25 K98 ["BackgroundColor"]
  GETTABLEKS R26 R4 K103 ["SubBackground"]
  SETTABLEKS R26 R25 K99 ["SeparatorColor"]
  LOADN R26 4
  SETTABLEKS R26 R25 K100 ["SeparatorWidth"]
  LOADN R26 122
  SETTABLEKS R26 R25 K101 ["Width"]
  SETTABLEKS R25 R24 K75 ["AssetPalettes"]
  DUPTABLE R25 K105 [{"Height", "VerticalOffset"}]
  LOADN R26 64
  SETTABLEKS R26 R25 K37 ["Height"]
  LOADN R26 252
  SETTABLEKS R26 R25 K104 ["VerticalOffset"]
  SETTABLEKS R25 R24 K96 ["Tabs"]
  SETTABLE R24 R22 R23
  LOADK R25 K106 ["Background"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K106 ["Background"]
  DUPTABLE R24 K107 [{"Image"}]
  GETTABLEKS R25 R4 K108 ["PreviewerBackgroundImage"]
  SETTABLEKS R25 R24 K38 ["Image"]
  SETTABLE R24 R22 R23
  MOVE R23 R17
  CALL R23 0 1
  JUMPIFNOT R23 [+18]
  LOADK R25 K109 ["BodyPointsTool"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K109 ["BodyPointsTool"]
  DUPTABLE R24 K112 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R26 K113 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K114 ["projection.png"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K110 ["ProjectionImage"]
  LOADK R26 K113 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K115 ["symmetry.png"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K111 ["SymmetricalImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K116 ["Catalog"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K116 ["Catalog"]
  DUPTABLE R24 K119 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R11
  DUPTABLE R27 K122 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R28 R4 K123 ["Border"]
  SETTABLEKS R28 R27 K120 ["BorderColor3"]
  LOADN R28 10
  SETTABLEKS R28 R27 K53 ["Padding"]
  GETIMPORT R28 K127 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R28 R27 K121 ["VerticalScrollBarInset"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K19 ["ScrollingFrame"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 1
  LOADN R27 214
  CALL R25 2 1
  SETTABLEKS R25 R24 K117 ["ScrollingFrameHeight"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 90
  LOADN R27 90
  CALL R25 2 1
  SETTABLEKS R25 R24 K118 ["CellSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K130 ["CatalogItemButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K130 ["CatalogItemButton"]
  DUPTABLE R24 K134 [{"HoverX", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R25 K138 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K135 ["Color"]
  LOADK R26 K139 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R26 R25 K38 ["Image"]
  GETIMPORT R26 K141 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K136 ["AnchorPoint"]
  GETIMPORT R26 K87 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R25 K137 ["Position"]
  GETIMPORT R26 K129 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K76 ["Size"]
  SETTABLEKS R25 R24 K131 ["HoverX"]
  DUPTABLE R25 K138 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K135 ["Color"]
  LOADK R26 K142 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R26 R25 K38 ["Image"]
  GETIMPORT R26 K141 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K136 ["AnchorPoint"]
  MOVE R27 R18
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETIMPORT R26 K87 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  JUMP [+7]
  GETIMPORT R26 K87 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R25 K137 ["Position"]
  GETIMPORT R26 K129 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K76 ["Size"]
  SETTABLEKS R25 R24 K132 ["UserImage"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 12
  CALL R25 2 1
  SETTABLEKS R25 R24 K133 ["ItemNamePaddingBottom"]
  SETTABLE R24 R22 R23
  LOADK R25 K143 ["ContextualSurveyDialogButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K143 ["ContextualSurveyDialogButton"]
  DUPTABLE R24 K144 [{"Image", "Position", "Size"}]
  GETTABLEKS R25 R4 K145 ["SendFeedback"]
  SETTABLEKS R25 R24 K38 ["Image"]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 0
  LOADN R27 17
  LOADN R28 1
  LOADN R29 220
  CALL R25 4 1
  SETTABLEKS R25 R24 K137 ["Position"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K76 ["Size"]
  SETTABLE R24 R22 R23
  MOVE R23 R16
  CALL R23 0 1
  JUMPIF R23 [+42]
  LOADK R25 K146 ["DummyPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K146 ["DummyPreview"]
  DUPTABLE R24 K153 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R25 K156 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 185
  LOADN R28 200
  CALL R25 3 1
  SETTABLEKS R25 R24 K147 ["Ambient"]
  GETIMPORT R25 K156 [Color3.fromRGB]
  LOADN R26 242
  LOADN R27 236
  LOADN R28 227
  CALL R25 3 1
  SETTABLEKS R25 R24 K148 ["LightColor"]
  LOADK R26 K63 [0.5]
  LOADN R27 255
  LOADK R28 K157 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K159 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K149 ["LightDirection"]
  LOADK R25 K160 [0.25]
  SETTABLEKS R25 R24 K150 ["PanSpeedMultiplier"]
  LOADK R25 K161 [0.2]
  SETTABLEKS R25 R24 K151 ["PlatformHeight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K152 ["PlatformSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K162 ["EquippedItemsSidebar"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K162 ["EquippedItemsSidebar"]
  DUPTABLE R24 K166 [{"CellSize", "ItemSpacing", "PositionOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 50
  LOADN R27 50
  CALL R25 2 1
  SETTABLEKS R25 R24 K118 ["CellSize"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K163 ["ItemSpacing"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 5
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K164 ["PositionOffset"]
  LOADN R25 10
  SETTABLEKS R25 R24 K165 ["SidebarSpacing"]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 0
  LOADN R27 50
  LOADN R28 1
  LOADN R29 236
  CALL R25 4 1
  SETTABLEKS R25 R24 K76 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K167 ["EquippedItemPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K167 ["EquippedItemPreview"]
  DUPTABLE R24 K170 [{"StrokeColor", "StrokeThickness"}]
  GETTABLEKS R25 R4 K123 ["Border"]
  SETTABLEKS R25 R24 K168 ["StrokeColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K169 ["StrokeThickness"]
  SETTABLE R24 R22 R23
  LOADK R25 K171 ["ImportPage"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K171 ["ImportPage"]
  DUPTABLE R24 K179 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R25 K180 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R25 R24 K172 ["ArrowImage"]
  GETTABLEKS R25 R4 K181 ["TextPrimary"]
  SETTABLEKS R25 R24 K173 ["ArrowColor"]
  DUPTABLE R25 K188 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R26 75
  SETTABLEKS R26 R25 K182 ["IconSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K183 ["InnerPadding"]
  LOADN R26 16
  SETTABLEKS R26 R25 K184 ["NameFontSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K185 ["NameLines"]
  LOADN R26 4
  SETTABLEKS R26 R25 K53 ["Padding"]
  GETTABLEKS R26 R4 K189 ["TextLink"]
  SETTABLEKS R26 R25 K186 ["TitleColor"]
  GETIMPORT R26 K190 [Color3.new]
  LOADK R27 K67 [0.4]
  LOADK R28 K67 [0.4]
  LOADK R29 K67 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K187 ["PreviewAmbient"]
  SETTABLEKS R25 R24 K174 ["Avatar"]
  DUPTABLE R25 K191 [{"Size", "IconSize"}]
  GETIMPORT R26 K129 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K76 ["Size"]
  LOADN R26 12
  SETTABLEKS R26 R25 K182 ["IconSize"]
  SETTABLEKS R25 R24 K175 ["BackButton"]
  LOADN R25 35
  SETTABLEKS R25 R24 K176 ["HeaderHeight"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 5
  LOADN R27 15
  CALL R25 2 1
  SETTABLEKS R25 R24 K177 ["GridPadding"]
  GETIMPORT R25 K51 [UDim.new]
  LOADK R26 K192 [0.8]
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K178 ["SearchBarHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K193 ["ItemDataPreviewModel"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K193 ["ItemDataPreviewModel"]
  DUPTABLE R24 K195 [{"InstanceAmbient"}]
  GETIMPORT R25 K190 [Color3.new]
  LOADK R26 K67 [0.4]
  LOADK R27 K67 [0.4]
  LOADK R28 K67 [0.4]
  CALL R25 3 1
  SETTABLEKS R25 R24 K194 ["InstanceAmbient"]
  SETTABLE R24 R22 R23
  LOADK R25 K196 ["ModelPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K196 ["ModelPreview"]
  DUPTABLE R24 K153 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R25 K156 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 185
  LOADN R28 200
  CALL R25 3 1
  SETTABLEKS R25 R24 K147 ["Ambient"]
  GETIMPORT R25 K156 [Color3.fromRGB]
  LOADN R26 242
  LOADN R27 236
  LOADN R28 227
  CALL R25 3 1
  SETTABLEKS R25 R24 K148 ["LightColor"]
  LOADK R26 K63 [0.5]
  LOADN R27 255
  LOADK R28 K157 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K159 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K149 ["LightDirection"]
  LOADK R25 K160 [0.25]
  SETTABLEKS R25 R24 K150 ["PanSpeedMultiplier"]
  LOADK R25 K161 [0.2]
  SETTABLEKS R25 R24 K151 ["PlatformHeight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K152 ["PlatformSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K197 ["Notice"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K197 ["Notice"]
  DUPTABLE R24 K201 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R25 R4 K103 ["SubBackground"]
  SETTABLEKS R25 R24 K98 ["BackgroundColor"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 6
  CALL R25 2 1
  SETTABLEKS R25 R24 K198 ["CornerRadius"]
  GETTABLEKS R25 R4 K181 ["TextPrimary"]
  SETTABLEKS R25 R24 K199 ["TextColor"]
  LOADN R25 20
  SETTABLEKS R25 R24 K200 ["TextSize"]
  DUPTABLE R25 K206 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R26 8
  SETTABLEKS R26 R25 K202 ["Left"]
  LOADN R26 8
  SETTABLEKS R26 R25 K203 ["Right"]
  LOADN R26 4
  SETTABLEKS R26 R25 K204 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K205 ["Bottom"]
  SETTABLEKS R25 R24 K53 ["Padding"]
  SETTABLE R24 R22 R23
  MOVE R23 R16
  CALL R23 0 1
  JUMPIF R23 [+12]
  LOADK R25 K207 ["PrimaryDummyPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K207 ["PrimaryDummyPreview"]
  DUPTABLE R24 K209 [{"BackgroundImage"}]
  GETTABLEKS R25 R4 K108 ["PreviewerBackgroundImage"]
  SETTABLEKS R25 R24 K208 ["BackgroundImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K210 ["ResetCameraButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K210 ["ResetCameraButton"]
  DUPTABLE R24 K211 [{"Position", "Size", "Spacing", "Image"}]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 1
  LOADN R27 246
  LOADN R28 0
  LOADN R29 15
  CALL R25 4 1
  SETTABLEKS R25 R24 K137 ["Position"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 32
  LOADN R27 32
  CALL R25 2 1
  SETTABLEKS R25 R24 K76 ["Size"]
  LOADN R25 5
  SETTABLEKS R25 R24 K83 ["Spacing"]
  GETTABLEKS R25 R4 K212 ["ResetCameraImage"]
  SETTABLEKS R25 R24 K38 ["Image"]
  SETTABLE R24 R22 R23
  LOADK R25 K213 ["SelectScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K213 ["SelectScreen"]
  DUPTABLE R24 K215 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K214 ["ButtonHeight"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K83 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K216 ["SkinPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K216 ["SkinPreview"]
  DUPTABLE R24 K221 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R25 R4 K222 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R25 R24 K217 ["HoveredBorderColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K218 ["HoveredBorderThickness"]
  GETTABLEKS R25 R4 K223 ["PrimaryMain"]
  SETTABLEKS R25 R24 K219 ["SelectedBorderColor"]
  LOADN R25 2
  SETTABLEKS R25 R24 K220 ["SelectedBorderThickness"]
  SETTABLE R24 R22 R23
  LOADK R25 K224 ["StageSelector"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K224 ["StageSelector"]
  DUPTABLE R24 K227 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconSize", "Width"}]
  GETTABLEKS R25 R4 K228 ["MainBackground"]
  SETTABLEKS R25 R24 K98 ["BackgroundColor"]
  GETTABLEKS R25 R4 K229 ["ButtonHover"]
  SETTABLEKS R25 R24 K225 ["ButtonSelectedBackgroundColor"]
  LOADN R25 32
  SETTABLEKS R25 R24 K214 ["ButtonHeight"]
  GETTABLEKS R25 R4 K230 ["MainText"]
  SETTABLEKS R25 R24 K226 ["IconColor"]
  LOADN R25 18
  SETTABLEKS R25 R24 K182 ["IconSize"]
  LOADN R25 64
  SETTABLEKS R25 R24 K101 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K231 ["Stars"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K231 ["Stars"]
  DUPTABLE R24 K238 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R25 R4 K230 ["MainText"]
  SETTABLEKS R25 R24 K232 ["StarColor"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 16
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K233 ["StarSize"]
  GETTABLEKS R25 R4 K239 ["Star"]
  SETTABLEKS R25 R24 K234 ["StarFilled"]
  GETTABLEKS R25 R4 K235 ["StarUnfilled"]
  SETTABLEKS R25 R24 K235 ["StarUnfilled"]
  LOADN R25 4
  SETTABLEKS R25 R24 K236 ["StarSpacing"]
  LOADN R25 10
  SETTABLEKS R25 R24 K237 ["RatingSpacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K240 ["SubmitDialog"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K240 ["SubmitDialog"]
  DUPTABLE R24 K241 [{"Width"}]
  LOADN R25 244
  SETTABLEKS R25 R24 K101 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K242 ["SubmitInner"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K242 ["SubmitInner"]
  DUPTABLE R24 K246 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K243 ["CallToActionSpacing"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K244 ["CheckboxSpacing"]
  LOADN R25 40
  SETTABLEKS R25 R24 K245 ["ContentPadding"]
  SETTABLE R24 R22 R23
  LOADK R25 K247 ["Survey"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K247 ["Survey"]
  DUPTABLE R24 K250 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R25 22
  SETTABLEKS R25 R24 K248 ["HeadIndent"]
  LOADN R25 10
  SETTABLEKS R25 R24 K83 ["Spacing"]
  LOADN R25 96
  SETTABLEKS R25 R24 K249 ["MessageHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K251 ["SurveyDialog"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K251 ["SurveyDialog"]
  DUPTABLE R24 K253 [{"Width", "FinishDialogSize"}]
  LOADN R25 184
  SETTABLEKS R25 R24 K101 ["Width"]
  GETIMPORT R25 K141 [Vector2.new]
  LOADN R26 250
  LOADN R27 30
  CALL R25 2 1
  SETTABLEKS R25 R24 K252 ["FinishDialogSize"]
  SETTABLE R24 R22 R23
  MOVE R23 R19
  CALL R23 0 1
  JUMPIFNOT R23 [+18]
  LOADK R25 K254 ["TestingScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K254 ["TestingScreen"]
  DUPTABLE R24 K215 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K214 ["ButtonHeight"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K83 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K255 ["UGCValidationErrorDialog"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K255 ["UGCValidationErrorDialog"]
  DUPTABLE R24 K263 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R25 12
  SETTABLEKS R25 R24 K256 ["DetailsSpacing"]
  LOADN R25 4
  SETTABLEKS R25 R24 K257 ["IconTextSpacing"]
  LOADN R25 26
  SETTABLEKS R25 R24 K258 ["TitleDetailsSpacing"]
  GETIMPORT R25 K141 [Vector2.new]
  LOADN R26 244
  LOADN R27 44
  CALL R25 2 1
  SETTABLEKS R25 R24 K259 ["AlertMinContentSize"]
  LOADN R25 18
  SETTABLEKS R25 R24 K200 ["TextSize"]
  GETTABLEKS R25 R4 K264 ["WarningText"]
  SETTABLEKS R25 R24 K260 ["WarningColor"]
  GETIMPORT R25 K267 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R25 R24 K261 ["WarningFont"]
  LOADK R26 K113 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K12 ["StyleModifier"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K262 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K13 ["ComponentSymbols"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K269 ["UGCValidationNotice"]
  DUPTABLE R24 K271 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 8
  LOADN R27 252
  CALL R25 2 1
  SETTABLEKS R25 R24 K137 ["Position"]
  GETIMPORT R25 K87 [UDim2.new]
  LOADN R26 1
  LOADN R27 192
  LOADN R28 0
  LOADN R29 48
  CALL R25 4 1
  SETTABLEKS R25 R24 K76 ["Size"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K270 ["ValidationIconSize"]
  GETTABLEKS R25 R4 K264 ["WarningText"]
  SETTABLEKS R25 R24 K260 ["WarningColor"]
  LOADK R26 K113 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K12 ["StyleModifier"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K262 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K16 ["style"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  DUPTABLE R23 K273 [{"Color", "Position", "Size"}]
  GETIMPORT R24 K190 [Color3.new]
  LOADN R25 1
  LOADN R26 1
  LOADN R27 1
  CALL R24 3 1
  SETTABLEKS R24 R23 K135 ["Color"]
  GETIMPORT R24 K129 [UDim2.fromOffset]
  LOADN R25 4
  LOADN R26 14
  CALL R24 2 1
  SETTABLEKS R24 R23 K137 ["Position"]
  GETIMPORT R24 K129 [UDim2.fromOffset]
  LOADN R25 24
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K76 ["Size"]
  GETTABLEKS R24 R6 K272 ["UGCValidationStatusIcon"]
  NEWTABLE R25 2 0
  GETTABLEKS R27 R1 K78 ["Dictionary"]
  GETTABLEKS R26 R27 K79 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K274 [{"Color", "Image"}]
  GETTABLEKS R29 R4 K264 ["WarningText"]
  SETTABLEKS R29 R28 K135 ["Color"]
  LOADK R30 K113 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K12 ["StyleModifier"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K38 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K275 ["&Failure"]
  GETTABLEKS R27 R1 K78 ["Dictionary"]
  GETTABLEKS R26 R27 K79 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K107 [{"Image"}]
  GETTABLEKS R29 R4 K276 ["UGCValidationSuccessImage"]
  SETTABLEKS R29 R28 K38 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K277 ["&Success"]
  SETTABLE R25 R22 R24
  LOADK R26 K22 ["SimpleTab"]
  NAMECALL R24 R6 K36 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K278 ["DisambiguationMenu"]
  DUPTABLE R25 K288 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R26 K141 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K279 ["MinContentSize"]
  GETIMPORT R26 K141 [Vector2.new]
  LOADN R27 200
  LOADN R28 150
  CALL R26 2 1
  SETTABLEKS R26 R25 K280 ["ConfirmCancelContentSize"]
  LOADN R26 8
  SETTABLEKS R26 R25 K281 ["HorizontalSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K282 ["VerticalSpacing"]
  LOADN R26 24
  SETTABLEKS R26 R25 K283 ["TitleContentsSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K284 ["TextSpacing"]
  LOADN R26 150
  SETTABLEKS R26 R25 K285 ["DropdownWidth"]
  LOADN R26 120
  SETTABLEKS R26 R25 K286 ["AttachmentDropdownWidth"]
  GETTABLEKS R26 R4 K103 ["SubBackground"]
  SETTABLEKS R26 R25 K287 ["IconBackground"]
  GETIMPORT R26 K129 [UDim2.fromOffset]
  LOADN R27 72
  LOADN R28 72
  CALL R26 2 1
  SETTABLEKS R26 R25 K182 ["IconSize"]
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K15 ["Alert"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R8
  NEWTABLE R27 1 0
  GETTABLEKS R29 R1 K78 ["Dictionary"]
  GETTABLEKS R28 R29 K79 ["join"]
  GETTABLEKS R29 R8 K289 ["&Warning"]
  DUPTABLE R30 K291 [{"MaxWidth"}]
  LOADN R31 132
  SETTABLEKS R31 R30 K290 ["MaxWidth"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K292 ["&WarningLong"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  JUMPIFNOT R20 [+37]
  GETTABLEKS R24 R6 K17 ["DropdownMenu"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R9
  DUPTABLE R27 K294 [{"MaxHeight"}]
  LOADK R28 K39 ["ImageColor"]
  SETTABLEKS R28 R27 K293 ["MaxHeight"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K20 ["SelectInput"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R12
  DUPTABLE R27 K296 [{"DropdownMenu"}]
  GETTABLEKS R29 R1 K78 ["Dictionary"]
  GETTABLEKS R28 R29 K79 ["join"]
  GETTABLEKS R29 R12 K17 ["DropdownMenu"]
  DUPTABLE R30 K294 [{"MaxHeight"}]
  LOADK R31 K39 ["ImageColor"]
  SETTABLEKS R31 R30 K293 ["MaxHeight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K17 ["DropdownMenu"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  JUMP [+24]
  JUMPIFNOT R21 [+23]
  GETTABLEKS R24 R6 K20 ["SelectInput"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R12
  DUPTABLE R27 K296 [{"DropdownMenu"}]
  GETTABLEKS R29 R1 K78 ["Dictionary"]
  GETTABLEKS R28 R29 K79 ["join"]
  GETTABLEKS R29 R12 K17 ["DropdownMenu"]
  DUPTABLE R30 K294 [{"MaxHeight"}]
  LOADN R31 200
  SETTABLEKS R31 R30 K293 ["MaxHeight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K17 ["DropdownMenu"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K21 ["Separator"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R13
  NEWTABLE R27 1 0
  DUPTABLE R28 K298 [{"StretchMargin"}]
  LOADN R29 5
  SETTABLEKS R29 R28 K297 ["StretchMargin"]
  SETTABLEKS R28 R27 K299 ["&SelectScreenSeparator"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K18 ["Pane"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R10
  NEWTABLE R27 4 0
  NEWTABLE R28 4 0
  GETTABLEKS R29 R4 K300 ["Button"]
  SETTABLEKS R29 R28 K106 ["Background"]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K198 ["CornerRadius"]
  GETTABLEKS R29 R5 K301 ["Hover"]
  DUPTABLE R30 K302 [{"Background"}]
  GETTABLEKS R31 R4 K229 ["ButtonHover"]
  SETTABLEKS R31 R30 K106 ["Background"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K303 ["&EquippedItemPreview"]
  DUPTABLE R28 K304 [{"CornerRadius"}]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K198 ["CornerRadius"]
  SETTABLEKS R28 R27 K305 ["&EquippedItemPreviewInner"]
  DUPTABLE R28 K304 [{"CornerRadius"}]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K198 ["CornerRadius"]
  SETTABLEKS R28 R27 K306 ["&SkinPreview"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K22 ["SimpleTab"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R14
  NEWTABLE R27 1 0
  NEWTABLE R28 8 0
  GETTABLEKS R29 R4 K85 ["SubBackground2"]
  SETTABLEKS R29 R28 K98 ["BackgroundColor"]
  LOADN R29 1
  SETTABLEKS R29 R28 K81 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K307 ["BorderSize"]
  DUPTABLE R29 K308 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R30 12
  SETTABLEKS R30 R29 K202 ["Left"]
  LOADN R30 2
  SETTABLEKS R30 R29 K204 ["Top"]
  LOADN R30 0
  SETTABLEKS R30 R29 K205 ["Bottom"]
  LOADN R30 12
  SETTABLEKS R30 R29 K203 ["Right"]
  SETTABLEKS R29 R28 K53 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K309 ["TopLineHeight"]
  GETTABLEKS R29 R5 K310 ["Selected"]
  DUPTABLE R30 K311 [{"BackgroundColor", "Font"}]
  GETTABLEKS R31 R4 K85 ["SubBackground2"]
  SETTABLEKS R31 R30 K98 ["BackgroundColor"]
  GETIMPORT R31 K313 [Enum.Font.SourceSansBold]
  SETTABLEKS R31 R30 K265 ["Font"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K314 ["&AssetPaletteTab"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K23 ["Tooltip"]
  GETTABLEKS R26 R1 K78 ["Dictionary"]
  GETTABLEKS R25 R26 K79 ["join"]
  MOVE R26 R15
  NEWTABLE R27 1 0
  DUPTABLE R28 K316 [{"ShowDelay"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K315 ["ShowDelay"]
  SETTABLEKS R28 R27 K317 ["&NoDelay"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  RETURN R22 1
