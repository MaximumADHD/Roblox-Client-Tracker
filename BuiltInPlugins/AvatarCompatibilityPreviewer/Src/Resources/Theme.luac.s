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
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R18 1 1
  GETIMPORT R19 K30 [game]
  LOADK R21 K31 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R22 0
  NAMECALL R19 R19 K32 ["DefineFastFlag"]
  CALL R19 3 1
  NEWTABLE R20 0 0
  LOADK R23 K33 ["AddItemButton"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K33 ["AddItemButton"]
  DUPTABLE R22 K43 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R23 42
  SETTABLEKS R23 R22 K35 ["Height"]
  LOADK R23 K44 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R23 R22 K36 ["Image"]
  GETTABLEKS R23 R4 K45 ["TextSecondary"]
  SETTABLEKS R23 R22 K37 ["ImageColor"]
  GETTABLEKS R23 R4 K46 ["TextDisabled"]
  SETTABLEKS R23 R22 K38 ["ImageColorDisabled"]
  LOADN R23 20
  SETTABLEKS R23 R22 K39 ["ImageSize"]
  LOADN R23 3
  SETTABLEKS R23 R22 K40 ["PaddingTop"]
  LOADN R23 3
  SETTABLEKS R23 R22 K41 ["PaddingBottom"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K42 ["FailureDialogSpacing"]
  SETTABLE R22 R20 R21
  LOADK R23 K50 ["AnimationControllerDisplay"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K50 ["AnimationControllerDisplay"]
  DUPTABLE R22 K52 [{"Padding"}]
  LOADN R23 30
  SETTABLEKS R23 R22 K51 ["Padding"]
  SETTABLE R22 R20 R21
  LOADK R23 K53 ["AnimationPlaybackSlider"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K53 ["AnimationPlaybackSlider"]
  DUPTABLE R22 K58 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R23 R4 K54 ["PlayImage"]
  SETTABLEKS R23 R22 K54 ["PlayImage"]
  LOADK R23 K59 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R23 R22 K55 ["PauseImage"]
  LOADN R23 20
  SETTABLEKS R23 R22 K56 ["PlayButtonWidth"]
  LOADN R23 60
  SETTABLEKS R23 R22 K57 ["PlayTimeLabelWidth"]
  LOADN R23 12
  SETTABLEKS R23 R22 K51 ["Padding"]
  SETTABLE R22 R20 R21
  LOADK R23 K60 ["AnimationPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K60 ["AnimationPreview"]
  NEWTABLE R22 4 0
  LOADK R23 K61 [0.5]
  SETTABLEKS R23 R22 K62 ["PausedAnimationAlpha"]
  DUPTABLE R23 K64 [{"FrontRightAngleLerp"}]
  LOADK R24 K65 [0.4]
  SETTABLEKS R24 R23 K63 ["FrontRightAngleLerp"]
  SETTABLEKS R23 R22 K66 ["&BodyPreview"]
  DUPTABLE R23 K69 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R24 30
  SETTABLEKS R24 R23 K67 ["FieldOfView"]
  LOADK R24 K70 [0.08]
  SETTABLEKS R24 R23 K63 ["FrontRightAngleLerp"]
  LOADK R24 K71 [2.8]
  SETTABLEKS R24 R23 K68 ["InitialDistance"]
  SETTABLEKS R23 R22 K72 ["&FacePreview"]
  SETTABLE R22 R20 R21
  LOADK R23 K73 ["AssetPalettes"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K73 ["AssetPalettes"]
  DUPTABLE R22 K75 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R11
  DUPTABLE R25 K82 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R26 R4 K83 ["SubBackground2"]
  SETTABLEKS R26 R25 K78 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K79 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K51 ["Padding"]
  LOADN R26 0
  SETTABLEKS R26 R25 K80 ["ScrollBarThickness"]
  GETIMPORT R26 K49 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K81 ["Spacing"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K19 ["ScrollingFrame"]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 24
  CALL R23 4 1
  SETTABLEKS R23 R22 K74 ["Size"]
  SETTABLE R22 R20 R21
  LOADK R23 K86 ["AutoSetupScreen"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K86 ["AutoSetupScreen"]
  DUPTABLE R22 K91 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K87 ["AlertPaddingHorizontal"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K88 ["AlertPaddingVertical"]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 1
  LOADN R25 240
  LOADN R26 1
  LOADN R27 240
  CALL R23 4 1
  SETTABLEKS R23 R22 K89 ["ControlsPosition"]
  LOADK R23 K92 [-0.25]
  SETTABLEKS R23 R22 K90 ["SpinRate"]
  SETTABLE R22 R20 R21
  LOADK R23 K93 ["AvatarScreen"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K93 ["AvatarScreen"]
  DUPTABLE R22 K95 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R23 K100 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R24 R4 K83 ["SubBackground2"]
  SETTABLEKS R24 R23 K96 ["BackgroundColor"]
  GETTABLEKS R24 R4 K101 ["SubBackground"]
  SETTABLEKS R24 R23 K97 ["SeparatorColor"]
  LOADN R24 4
  SETTABLEKS R24 R23 K98 ["SeparatorWidth"]
  LOADN R24 122
  SETTABLEKS R24 R23 K99 ["Width"]
  SETTABLEKS R23 R22 K73 ["AssetPalettes"]
  DUPTABLE R23 K103 [{"Height", "VerticalOffset"}]
  LOADN R24 64
  SETTABLEKS R24 R23 K35 ["Height"]
  LOADN R24 252
  SETTABLEKS R24 R23 K102 ["VerticalOffset"]
  SETTABLEKS R23 R22 K94 ["Tabs"]
  SETTABLE R22 R20 R21
  LOADK R23 K104 ["Background"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K104 ["Background"]
  DUPTABLE R22 K105 [{"Image"}]
  GETTABLEKS R23 R4 K106 ["PreviewerBackgroundImage"]
  SETTABLEKS R23 R22 K36 ["Image"]
  SETTABLE R22 R20 R21
  MOVE R21 R17
  CALL R21 0 1
  JUMPIFNOT R21 [+18]
  LOADK R23 K107 ["BodyPointsTool"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K107 ["BodyPointsTool"]
  DUPTABLE R22 K110 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R24 K111 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R25 K112 ["projection.png"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K108 ["ProjectionImage"]
  LOADK R24 K111 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R25 K113 ["symmetry.png"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K109 ["SymmetricalImage"]
  SETTABLE R22 R20 R21
  LOADK R23 K114 ["Catalog"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K114 ["Catalog"]
  DUPTABLE R22 K117 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R11
  DUPTABLE R25 K120 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R26 R4 K121 ["Border"]
  SETTABLEKS R26 R25 K118 ["BorderColor3"]
  LOADN R26 10
  SETTABLEKS R26 R25 K51 ["Padding"]
  GETIMPORT R26 K125 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R26 R25 K119 ["VerticalScrollBarInset"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K19 ["ScrollingFrame"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 1
  LOADN R25 214
  CALL R23 2 1
  SETTABLEKS R23 R22 K115 ["ScrollingFrameHeight"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 90
  LOADN R25 90
  CALL R23 2 1
  SETTABLEKS R23 R22 K116 ["CellSize"]
  SETTABLE R22 R20 R21
  LOADK R23 K128 ["CatalogItemButton"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K128 ["CatalogItemButton"]
  DUPTABLE R22 K131 [{"UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R23 K135 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R24 R4 K45 ["TextSecondary"]
  SETTABLEKS R24 R23 K132 ["Color"]
  LOADK R24 K136 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R24 R23 K36 ["Image"]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K133 ["AnchorPoint"]
  GETIMPORT R24 K85 [UDim2.new]
  LOADN R25 1
  LOADN R26 252
  LOADN R27 0
  LOADN R28 4
  CALL R24 4 1
  SETTABLEKS R24 R23 K134 ["Position"]
  GETIMPORT R24 K127 [UDim2.fromOffset]
  LOADN R25 13
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K74 ["Size"]
  SETTABLEKS R23 R22 K129 ["UserImage"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K130 ["ItemNamePaddingBottom"]
  SETTABLE R22 R20 R21
  LOADK R23 K139 ["ContextualSurveyDialogButton"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K139 ["ContextualSurveyDialogButton"]
  DUPTABLE R22 K140 [{"Image", "Position", "Size"}]
  GETTABLEKS R23 R4 K141 ["SendFeedback"]
  SETTABLEKS R23 R22 K36 ["Image"]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 0
  LOADN R25 17
  LOADN R26 1
  LOADN R27 220
  CALL R23 4 1
  SETTABLEKS R23 R22 K134 ["Position"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 24
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K74 ["Size"]
  SETTABLE R22 R20 R21
  MOVE R21 R16
  CALL R21 0 1
  JUMPIF R21 [+42]
  LOADK R23 K142 ["DummyPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K142 ["DummyPreview"]
  DUPTABLE R22 K149 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R23 K152 [Color3.fromRGB]
  LOADN R24 170
  LOADN R25 185
  LOADN R26 200
  CALL R23 3 1
  SETTABLEKS R23 R22 K143 ["Ambient"]
  GETIMPORT R23 K152 [Color3.fromRGB]
  LOADN R24 242
  LOADN R25 236
  LOADN R26 227
  CALL R23 3 1
  SETTABLEKS R23 R22 K144 ["LightColor"]
  LOADK R24 K61 [0.5]
  LOADN R25 255
  LOADK R26 K153 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R23 K155 [Vector3.new]
  CALL R23 3 1
  SETTABLEKS R23 R22 K145 ["LightDirection"]
  LOADK R23 K156 [0.25]
  SETTABLEKS R23 R22 K146 ["PanSpeedMultiplier"]
  LOADK R23 K157 [0.2]
  SETTABLEKS R23 R22 K147 ["PlatformHeight"]
  LOADN R23 5
  SETTABLEKS R23 R22 K148 ["PlatformSize"]
  SETTABLE R22 R20 R21
  LOADK R23 K158 ["EquippedItemsSidebar"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K158 ["EquippedItemsSidebar"]
  DUPTABLE R22 K162 [{"CellSize", "ItemSpacing", "PositionOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 50
  LOADN R25 50
  CALL R23 2 1
  SETTABLEKS R23 R22 K116 ["CellSize"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 2
  CALL R23 2 1
  SETTABLEKS R23 R22 K159 ["ItemSpacing"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 5
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K160 ["PositionOffset"]
  LOADN R23 10
  SETTABLEKS R23 R22 K161 ["SidebarSpacing"]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 0
  LOADN R25 50
  LOADN R26 1
  LOADN R27 236
  CALL R23 4 1
  SETTABLEKS R23 R22 K74 ["Size"]
  SETTABLE R22 R20 R21
  LOADK R23 K163 ["EquippedItemPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K163 ["EquippedItemPreview"]
  DUPTABLE R22 K166 [{"StrokeColor", "StrokeThickness"}]
  GETTABLEKS R23 R4 K121 ["Border"]
  SETTABLEKS R23 R22 K164 ["StrokeColor"]
  LOADN R23 1
  SETTABLEKS R23 R22 K165 ["StrokeThickness"]
  SETTABLE R22 R20 R21
  LOADK R23 K167 ["ImportPage"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K167 ["ImportPage"]
  DUPTABLE R22 K175 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R23 K176 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R23 R22 K168 ["ArrowImage"]
  GETTABLEKS R23 R4 K177 ["TextPrimary"]
  SETTABLEKS R23 R22 K169 ["ArrowColor"]
  DUPTABLE R23 K184 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R24 75
  SETTABLEKS R24 R23 K178 ["IconSize"]
  LOADN R24 2
  SETTABLEKS R24 R23 K179 ["InnerPadding"]
  LOADN R24 16
  SETTABLEKS R24 R23 K180 ["NameFontSize"]
  LOADN R24 2
  SETTABLEKS R24 R23 K181 ["NameLines"]
  LOADN R24 4
  SETTABLEKS R24 R23 K51 ["Padding"]
  GETTABLEKS R24 R4 K185 ["TextLink"]
  SETTABLEKS R24 R23 K182 ["TitleColor"]
  GETIMPORT R24 K186 [Color3.new]
  LOADK R25 K65 [0.4]
  LOADK R26 K65 [0.4]
  LOADK R27 K65 [0.4]
  CALL R24 3 1
  SETTABLEKS R24 R23 K183 ["PreviewAmbient"]
  SETTABLEKS R23 R22 K170 ["Avatar"]
  DUPTABLE R23 K187 [{"Size", "IconSize"}]
  GETIMPORT R24 K127 [UDim2.fromOffset]
  LOADN R25 24
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K74 ["Size"]
  LOADN R24 12
  SETTABLEKS R24 R23 K178 ["IconSize"]
  SETTABLEKS R23 R22 K171 ["BackButton"]
  LOADN R23 35
  SETTABLEKS R23 R22 K172 ["HeaderHeight"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 5
  LOADN R25 15
  CALL R23 2 1
  SETTABLEKS R23 R22 K173 ["GridPadding"]
  GETIMPORT R23 K49 [UDim.new]
  LOADK R24 K188 [0.8]
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K174 ["SearchBarHeight"]
  SETTABLE R22 R20 R21
  LOADK R23 K189 ["ItemDataPreviewModel"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K189 ["ItemDataPreviewModel"]
  DUPTABLE R22 K191 [{"InstanceAmbient"}]
  GETIMPORT R23 K186 [Color3.new]
  LOADK R24 K65 [0.4]
  LOADK R25 K65 [0.4]
  LOADK R26 K65 [0.4]
  CALL R23 3 1
  SETTABLEKS R23 R22 K190 ["InstanceAmbient"]
  SETTABLE R22 R20 R21
  LOADK R23 K192 ["ModelPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K192 ["ModelPreview"]
  DUPTABLE R22 K149 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R23 K152 [Color3.fromRGB]
  LOADN R24 170
  LOADN R25 185
  LOADN R26 200
  CALL R23 3 1
  SETTABLEKS R23 R22 K143 ["Ambient"]
  GETIMPORT R23 K152 [Color3.fromRGB]
  LOADN R24 242
  LOADN R25 236
  LOADN R26 227
  CALL R23 3 1
  SETTABLEKS R23 R22 K144 ["LightColor"]
  LOADK R24 K61 [0.5]
  LOADN R25 255
  LOADK R26 K153 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R23 K155 [Vector3.new]
  CALL R23 3 1
  SETTABLEKS R23 R22 K145 ["LightDirection"]
  LOADK R23 K156 [0.25]
  SETTABLEKS R23 R22 K146 ["PanSpeedMultiplier"]
  LOADK R23 K157 [0.2]
  SETTABLEKS R23 R22 K147 ["PlatformHeight"]
  LOADN R23 5
  SETTABLEKS R23 R22 K148 ["PlatformSize"]
  SETTABLE R22 R20 R21
  LOADK R23 K193 ["Notice"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K193 ["Notice"]
  DUPTABLE R22 K197 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R23 R4 K101 ["SubBackground"]
  SETTABLEKS R23 R22 K96 ["BackgroundColor"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 6
  CALL R23 2 1
  SETTABLEKS R23 R22 K194 ["CornerRadius"]
  GETTABLEKS R23 R4 K177 ["TextPrimary"]
  SETTABLEKS R23 R22 K195 ["TextColor"]
  LOADN R23 20
  SETTABLEKS R23 R22 K196 ["TextSize"]
  DUPTABLE R23 K202 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R24 8
  SETTABLEKS R24 R23 K198 ["Left"]
  LOADN R24 8
  SETTABLEKS R24 R23 K199 ["Right"]
  LOADN R24 4
  SETTABLEKS R24 R23 K200 ["Top"]
  LOADN R24 4
  SETTABLEKS R24 R23 K201 ["Bottom"]
  SETTABLEKS R23 R22 K51 ["Padding"]
  SETTABLE R22 R20 R21
  MOVE R21 R16
  CALL R21 0 1
  JUMPIF R21 [+12]
  LOADK R23 K203 ["PrimaryDummyPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K203 ["PrimaryDummyPreview"]
  DUPTABLE R22 K205 [{"BackgroundImage"}]
  GETTABLEKS R23 R4 K106 ["PreviewerBackgroundImage"]
  SETTABLEKS R23 R22 K204 ["BackgroundImage"]
  SETTABLE R22 R20 R21
  LOADK R23 K206 ["ResetCameraButton"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K206 ["ResetCameraButton"]
  DUPTABLE R22 K207 [{"Position", "Size", "Spacing", "Image"}]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 1
  LOADN R25 246
  LOADN R26 0
  LOADN R27 15
  CALL R23 4 1
  SETTABLEKS R23 R22 K134 ["Position"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 32
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K74 ["Size"]
  LOADN R23 5
  SETTABLEKS R23 R22 K81 ["Spacing"]
  GETTABLEKS R23 R4 K208 ["ResetCameraImage"]
  SETTABLEKS R23 R22 K36 ["Image"]
  SETTABLE R22 R20 R21
  LOADK R23 K209 ["SelectScreen"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K209 ["SelectScreen"]
  DUPTABLE R22 K211 [{"ButtonHeight", "Spacing"}]
  LOADN R23 24
  SETTABLEKS R23 R22 K210 ["ButtonHeight"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 18
  CALL R23 2 1
  SETTABLEKS R23 R22 K81 ["Spacing"]
  SETTABLE R22 R20 R21
  LOADK R23 K212 ["SkinPreview"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K212 ["SkinPreview"]
  DUPTABLE R22 K217 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R23 R4 K218 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R23 R22 K213 ["HoveredBorderColor"]
  LOADN R23 1
  SETTABLEKS R23 R22 K214 ["HoveredBorderThickness"]
  GETTABLEKS R23 R4 K219 ["PrimaryMain"]
  SETTABLEKS R23 R22 K215 ["SelectedBorderColor"]
  LOADN R23 2
  SETTABLEKS R23 R22 K216 ["SelectedBorderThickness"]
  SETTABLE R22 R20 R21
  LOADK R23 K220 ["StageSelector"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K220 ["StageSelector"]
  DUPTABLE R22 K223 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconSize", "Width"}]
  GETTABLEKS R23 R4 K224 ["MainBackground"]
  SETTABLEKS R23 R22 K96 ["BackgroundColor"]
  GETTABLEKS R23 R4 K225 ["ButtonHover"]
  SETTABLEKS R23 R22 K221 ["ButtonSelectedBackgroundColor"]
  LOADN R23 32
  SETTABLEKS R23 R22 K210 ["ButtonHeight"]
  GETTABLEKS R23 R4 K226 ["MainText"]
  SETTABLEKS R23 R22 K222 ["IconColor"]
  LOADN R23 18
  SETTABLEKS R23 R22 K178 ["IconSize"]
  LOADN R23 64
  SETTABLEKS R23 R22 K99 ["Width"]
  SETTABLE R22 R20 R21
  LOADK R23 K227 ["Stars"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K227 ["Stars"]
  DUPTABLE R22 K234 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R23 R4 K226 ["MainText"]
  SETTABLEKS R23 R22 K228 ["StarColor"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K229 ["StarSize"]
  GETTABLEKS R23 R4 K235 ["Star"]
  SETTABLEKS R23 R22 K230 ["StarFilled"]
  GETTABLEKS R23 R4 K231 ["StarUnfilled"]
  SETTABLEKS R23 R22 K231 ["StarUnfilled"]
  LOADN R23 4
  SETTABLEKS R23 R22 K232 ["StarSpacing"]
  LOADN R23 10
  SETTABLEKS R23 R22 K233 ["RatingSpacing"]
  SETTABLE R22 R20 R21
  LOADK R23 K236 ["SubmitDialog"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K236 ["SubmitDialog"]
  DUPTABLE R22 K237 [{"Width"}]
  LOADN R23 244
  SETTABLEKS R23 R22 K99 ["Width"]
  SETTABLE R22 R20 R21
  LOADK R23 K238 ["SubmitInner"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K238 ["SubmitInner"]
  DUPTABLE R22 K242 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 18
  CALL R23 2 1
  SETTABLEKS R23 R22 K239 ["CallToActionSpacing"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K240 ["CheckboxSpacing"]
  LOADN R23 40
  SETTABLEKS R23 R22 K241 ["ContentPadding"]
  SETTABLE R22 R20 R21
  LOADK R23 K243 ["Survey"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K243 ["Survey"]
  DUPTABLE R22 K246 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R23 22
  SETTABLEKS R23 R22 K244 ["HeadIndent"]
  LOADN R23 10
  SETTABLEKS R23 R22 K81 ["Spacing"]
  LOADN R23 96
  SETTABLEKS R23 R22 K245 ["MessageHeight"]
  SETTABLE R22 R20 R21
  LOADK R23 K247 ["SurveyDialog"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K247 ["SurveyDialog"]
  DUPTABLE R22 K249 [{"Width", "FinishDialogSize"}]
  LOADN R23 184
  SETTABLEKS R23 R22 K99 ["Width"]
  GETIMPORT R23 K138 [Vector2.new]
  LOADN R24 250
  LOADN R25 30
  CALL R23 2 1
  SETTABLEKS R23 R22 K248 ["FinishDialogSize"]
  SETTABLE R22 R20 R21
  MOVE R21 R18
  CALL R21 0 1
  JUMPIFNOT R21 [+18]
  LOADK R23 K250 ["TestingScreen"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K250 ["TestingScreen"]
  DUPTABLE R22 K211 [{"ButtonHeight", "Spacing"}]
  LOADN R23 24
  SETTABLEKS R23 R22 K210 ["ButtonHeight"]
  GETIMPORT R23 K49 [UDim.new]
  LOADN R24 0
  LOADN R25 18
  CALL R23 2 1
  SETTABLEKS R23 R22 K81 ["Spacing"]
  SETTABLE R22 R20 R21
  LOADK R23 K251 ["UGCValidationErrorDialog"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K251 ["UGCValidationErrorDialog"]
  DUPTABLE R22 K259 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R23 12
  SETTABLEKS R23 R22 K252 ["DetailsSpacing"]
  LOADN R23 4
  SETTABLEKS R23 R22 K253 ["IconTextSpacing"]
  LOADN R23 26
  SETTABLEKS R23 R22 K254 ["TitleDetailsSpacing"]
  GETIMPORT R23 K138 [Vector2.new]
  LOADN R24 244
  LOADN R25 44
  CALL R23 2 1
  SETTABLEKS R23 R22 K255 ["AlertMinContentSize"]
  LOADN R23 18
  SETTABLEKS R23 R22 K196 ["TextSize"]
  GETTABLEKS R23 R4 K260 ["WarningText"]
  SETTABLEKS R23 R22 K256 ["WarningColor"]
  GETIMPORT R23 K263 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R23 R22 K257 ["WarningFont"]
  LOADK R24 K111 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R25 K8 ["Framework"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K258 ["WarningImage"]
  SETTABLE R22 R20 R21
  LOADK R23 K9 ["Style"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K265 ["UGCValidationNotice"]
  DUPTABLE R22 K267 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 8
  LOADN R25 252
  CALL R23 2 1
  SETTABLEKS R23 R22 K134 ["Position"]
  GETIMPORT R23 K85 [UDim2.new]
  LOADN R24 1
  LOADN R25 192
  LOADN R26 0
  LOADN R27 48
  CALL R23 4 1
  SETTABLEKS R23 R22 K74 ["Size"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 24
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K266 ["ValidationIconSize"]
  GETTABLEKS R23 R4 K260 ["WarningText"]
  SETTABLEKS R23 R22 K256 ["WarningColor"]
  LOADK R24 K111 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R25 K8 ["Framework"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K258 ["WarningImage"]
  SETTABLE R22 R20 R21
  LOADK R23 K12 ["StyleModifier"]
  NAMECALL R21 R6 K34 ["add"]
  CALL R21 2 0
  DUPTABLE R21 K269 [{"Color", "Position", "Size"}]
  GETIMPORT R22 K186 [Color3.new]
  LOADN R23 1
  LOADN R24 1
  LOADN R25 1
  CALL R22 3 1
  SETTABLEKS R22 R21 K132 ["Color"]
  GETIMPORT R22 K127 [UDim2.fromOffset]
  LOADN R23 4
  LOADN R24 14
  CALL R22 2 1
  SETTABLEKS R22 R21 K134 ["Position"]
  GETIMPORT R22 K127 [UDim2.fromOffset]
  LOADN R23 24
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K74 ["Size"]
  GETTABLEKS R22 R6 K268 ["UGCValidationStatusIcon"]
  NEWTABLE R23 2 0
  GETTABLEKS R25 R1 K76 ["Dictionary"]
  GETTABLEKS R24 R25 K77 ["join"]
  MOVE R25 R21
  DUPTABLE R26 K270 [{"Color", "Image"}]
  GETTABLEKS R27 R4 K260 ["WarningText"]
  SETTABLEKS R27 R26 K132 ["Color"]
  LOADK R28 K111 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R29 K8 ["Framework"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K36 ["Image"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K271 ["&Failure"]
  GETTABLEKS R25 R1 K76 ["Dictionary"]
  GETTABLEKS R24 R25 K77 ["join"]
  MOVE R25 R21
  DUPTABLE R26 K105 [{"Image"}]
  GETTABLEKS R27 R4 K272 ["UGCValidationSuccessImage"]
  SETTABLEKS R27 R26 K36 ["Image"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K273 ["&Success"]
  SETTABLE R23 R20 R22
  LOADK R24 K18 ["Pane"]
  NAMECALL R22 R6 K34 ["add"]
  CALL R22 2 0
  GETTABLEKS R22 R6 K274 ["DisambiguationMenu"]
  DUPTABLE R23 K284 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 244
  LOADN R26 44
  CALL R24 2 1
  SETTABLEKS R24 R23 K275 ["MinContentSize"]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 200
  LOADN R26 150
  CALL R24 2 1
  SETTABLEKS R24 R23 K276 ["ConfirmCancelContentSize"]
  LOADN R24 8
  SETTABLEKS R24 R23 K277 ["HorizontalSpacing"]
  LOADN R24 8
  SETTABLEKS R24 R23 K278 ["VerticalSpacing"]
  LOADN R24 24
  SETTABLEKS R24 R23 K279 ["TitleContentsSpacing"]
  LOADN R24 8
  SETTABLEKS R24 R23 K280 ["TextSpacing"]
  LOADN R24 150
  SETTABLEKS R24 R23 K281 ["DropdownWidth"]
  LOADN R24 120
  SETTABLEKS R24 R23 K282 ["AttachmentDropdownWidth"]
  GETTABLEKS R24 R4 K101 ["SubBackground"]
  SETTABLEKS R24 R23 K283 ["IconBackground"]
  GETIMPORT R24 K127 [UDim2.fromOffset]
  LOADN R25 72
  LOADN R26 72
  CALL R24 2 1
  SETTABLEKS R24 R23 K178 ["IconSize"]
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K15 ["Alert"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R8
  NEWTABLE R25 1 0
  GETTABLEKS R27 R1 K76 ["Dictionary"]
  GETTABLEKS R26 R27 K77 ["join"]
  GETTABLEKS R27 R8 K285 ["&Warning"]
  DUPTABLE R28 K287 [{"MaxWidth"}]
  LOADN R29 132
  SETTABLEKS R29 R28 K286 ["MaxWidth"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K288 ["&WarningLong"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  JUMPIFNOT R19 [+36]
  GETTABLEKS R22 R6 K17 ["DropdownMenu"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R9
  DUPTABLE R25 K290 [{"MaxHeight"}]
  LOADK R26 K35 ["Height"]
  SETTABLEKS R26 R25 K289 ["MaxHeight"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K20 ["SelectInput"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R12
  DUPTABLE R25 K292 [{"DropdownMenu"}]
  GETTABLEKS R27 R1 K76 ["Dictionary"]
  GETTABLEKS R26 R27 K77 ["join"]
  GETTABLEKS R27 R12 K17 ["DropdownMenu"]
  DUPTABLE R28 K290 [{"MaxHeight"}]
  LOADK R29 K35 ["Height"]
  SETTABLEKS R29 R28 K289 ["MaxHeight"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K17 ["DropdownMenu"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K21 ["Separator"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R13
  NEWTABLE R25 1 0
  DUPTABLE R26 K294 [{"StretchMargin"}]
  LOADN R27 5
  SETTABLEKS R27 R26 K293 ["StretchMargin"]
  SETTABLEKS R26 R25 K295 ["&SelectScreenSeparator"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K18 ["Pane"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R10
  NEWTABLE R25 4 0
  NEWTABLE R26 4 0
  GETTABLEKS R27 R4 K296 ["Button"]
  SETTABLEKS R27 R26 K104 ["Background"]
  GETIMPORT R27 K49 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K194 ["CornerRadius"]
  GETTABLEKS R27 R5 K297 ["Hover"]
  DUPTABLE R28 K298 [{"Background"}]
  GETTABLEKS R29 R4 K225 ["ButtonHover"]
  SETTABLEKS R29 R28 K104 ["Background"]
  SETTABLE R28 R26 R27
  SETTABLEKS R26 R25 K299 ["&EquippedItemPreview"]
  DUPTABLE R26 K300 [{"CornerRadius"}]
  GETIMPORT R27 K49 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K194 ["CornerRadius"]
  SETTABLEKS R26 R25 K301 ["&EquippedItemPreviewInner"]
  DUPTABLE R26 K300 [{"CornerRadius"}]
  GETIMPORT R27 K49 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K194 ["CornerRadius"]
  SETTABLEKS R26 R25 K302 ["&SkinPreview"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K22 ["SimpleTab"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R14
  NEWTABLE R25 1 0
  NEWTABLE R26 8 0
  GETTABLEKS R27 R4 K83 ["SubBackground2"]
  SETTABLEKS R27 R26 K96 ["BackgroundColor"]
  LOADN R27 1
  SETTABLEKS R27 R26 K79 ["BackgroundTransparency"]
  LOADN R27 0
  SETTABLEKS R27 R26 K303 ["BorderSize"]
  DUPTABLE R27 K304 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R28 12
  SETTABLEKS R28 R27 K198 ["Left"]
  LOADN R28 2
  SETTABLEKS R28 R27 K200 ["Top"]
  LOADN R28 0
  SETTABLEKS R28 R27 K201 ["Bottom"]
  LOADN R28 12
  SETTABLEKS R28 R27 K199 ["Right"]
  SETTABLEKS R27 R26 K51 ["Padding"]
  LOADN R27 0
  SETTABLEKS R27 R26 K305 ["TopLineHeight"]
  GETTABLEKS R27 R5 K306 ["Selected"]
  DUPTABLE R28 K307 [{"BackgroundColor", "Font"}]
  GETTABLEKS R29 R4 K83 ["SubBackground2"]
  SETTABLEKS R29 R28 K96 ["BackgroundColor"]
  GETIMPORT R29 K309 [Enum.Font.SourceSansBold]
  SETTABLEKS R29 R28 K261 ["Font"]
  SETTABLE R28 R26 R27
  SETTABLEKS R26 R25 K310 ["&AssetPaletteTab"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K23 ["Tooltip"]
  GETTABLEKS R24 R1 K76 ["Dictionary"]
  GETTABLEKS R23 R24 K77 ["join"]
  MOVE R24 R15
  NEWTABLE R25 1 0
  DUPTABLE R26 K312 [{"ShowDelay"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K311 ["ShowDelay"]
  SETTABLEKS R26 R25 K313 ["&NoDelay"]
  CALL R23 2 1
  SETTABLE R23 R20 R22
  RETURN R20 1
