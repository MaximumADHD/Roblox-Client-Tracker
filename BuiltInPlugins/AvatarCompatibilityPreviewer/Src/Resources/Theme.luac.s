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
  GETTABLEKS R18 R19 K27 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R17 1 1
  GETIMPORT R18 K29 [game]
  LOADK R20 K30 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R21 0
  NAMECALL R18 R18 K31 ["DefineFastFlag"]
  CALL R18 3 1
  NEWTABLE R19 0 0
  LOADK R22 K32 ["AddItemButton"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K32 ["AddItemButton"]
  DUPTABLE R21 K41 [{"Height", "Image", "ImageColor", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R22 42
  SETTABLEKS R22 R21 K34 ["Height"]
  LOADK R22 K42 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R22 R21 K35 ["Image"]
  GETTABLEKS R22 R4 K43 ["TextSecondary"]
  SETTABLEKS R22 R21 K36 ["ImageColor"]
  LOADN R22 20
  SETTABLEKS R22 R21 K37 ["ImageSize"]
  LOADN R22 3
  SETTABLEKS R22 R21 K38 ["PaddingTop"]
  LOADN R22 3
  SETTABLEKS R22 R21 K39 ["PaddingBottom"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K40 ["FailureDialogSpacing"]
  SETTABLE R21 R19 R20
  LOADK R22 K47 ["AnimationControllerDisplay"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K47 ["AnimationControllerDisplay"]
  DUPTABLE R21 K49 [{"Padding"}]
  LOADN R22 30
  SETTABLEKS R22 R21 K48 ["Padding"]
  SETTABLE R21 R19 R20
  LOADK R22 K50 ["AnimationPlaybackSlider"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K50 ["AnimationPlaybackSlider"]
  DUPTABLE R21 K55 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R22 R4 K51 ["PlayImage"]
  SETTABLEKS R22 R21 K51 ["PlayImage"]
  LOADK R22 K56 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R22 R21 K52 ["PauseImage"]
  LOADN R22 20
  SETTABLEKS R22 R21 K53 ["PlayButtonWidth"]
  LOADN R22 60
  SETTABLEKS R22 R21 K54 ["PlayTimeLabelWidth"]
  LOADN R22 12
  SETTABLEKS R22 R21 K48 ["Padding"]
  SETTABLE R21 R19 R20
  LOADK R22 K57 ["AnimationPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K57 ["AnimationPreview"]
  NEWTABLE R21 4 0
  LOADK R22 K58 [0.5]
  SETTABLEKS R22 R21 K59 ["PausedAnimationAlpha"]
  DUPTABLE R22 K61 [{"FrontRightAngleLerp"}]
  LOADK R23 K62 [0.4]
  SETTABLEKS R23 R22 K60 ["FrontRightAngleLerp"]
  SETTABLEKS R22 R21 K63 ["&BodyPreview"]
  DUPTABLE R22 K66 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R23 30
  SETTABLEKS R23 R22 K64 ["FieldOfView"]
  LOADK R23 K67 [0.08]
  SETTABLEKS R23 R22 K60 ["FrontRightAngleLerp"]
  LOADK R23 K68 [2.8]
  SETTABLEKS R23 R22 K65 ["InitialDistance"]
  SETTABLEKS R22 R21 K69 ["&FacePreview"]
  SETTABLE R21 R19 R20
  LOADK R22 K70 ["AssetPalettes"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K70 ["AssetPalettes"]
  DUPTABLE R21 K72 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R11
  DUPTABLE R24 K79 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R25 R4 K80 ["SubBackground2"]
  SETTABLEKS R25 R24 K75 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K76 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K48 ["Padding"]
  LOADN R25 0
  SETTABLEKS R25 R24 K77 ["ScrollBarThickness"]
  GETIMPORT R25 K46 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K78 ["Spacing"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K19 ["ScrollingFrame"]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 24
  CALL R22 4 1
  SETTABLEKS R22 R21 K71 ["Size"]
  SETTABLE R21 R19 R20
  LOADK R22 K83 ["AutoSetupScreen"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K83 ["AutoSetupScreen"]
  DUPTABLE R21 K88 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K84 ["AlertPaddingHorizontal"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K85 ["AlertPaddingVertical"]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 1
  LOADN R24 240
  LOADN R25 1
  LOADN R26 240
  CALL R22 4 1
  SETTABLEKS R22 R21 K86 ["ControlsPosition"]
  LOADK R22 K89 [-0.25]
  SETTABLEKS R22 R21 K87 ["SpinRate"]
  SETTABLE R21 R19 R20
  LOADK R22 K90 ["AvatarScreen"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K90 ["AvatarScreen"]
  DUPTABLE R21 K92 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R22 K97 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R23 R4 K80 ["SubBackground2"]
  SETTABLEKS R23 R22 K93 ["BackgroundColor"]
  GETTABLEKS R23 R4 K98 ["SubBackground"]
  SETTABLEKS R23 R22 K94 ["SeparatorColor"]
  LOADN R23 4
  SETTABLEKS R23 R22 K95 ["SeparatorWidth"]
  LOADN R23 122
  SETTABLEKS R23 R22 K96 ["Width"]
  SETTABLEKS R22 R21 K70 ["AssetPalettes"]
  DUPTABLE R22 K100 [{"Height", "VerticalOffset"}]
  LOADN R23 64
  SETTABLEKS R23 R22 K34 ["Height"]
  LOADN R23 252
  SETTABLEKS R23 R22 K99 ["VerticalOffset"]
  SETTABLEKS R22 R21 K91 ["Tabs"]
  SETTABLE R21 R19 R20
  LOADK R22 K101 ["Background"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K101 ["Background"]
  DUPTABLE R21 K102 [{"Image"}]
  GETTABLEKS R22 R4 K103 ["PreviewerBackgroundImage"]
  SETTABLEKS R22 R21 K35 ["Image"]
  SETTABLE R21 R19 R20
  LOADK R22 K104 ["Catalog"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K104 ["Catalog"]
  DUPTABLE R21 K107 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R11
  DUPTABLE R24 K110 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R25 R4 K111 ["Border"]
  SETTABLEKS R25 R24 K108 ["BorderColor3"]
  LOADN R25 10
  SETTABLEKS R25 R24 K48 ["Padding"]
  GETIMPORT R25 K115 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R25 R24 K109 ["VerticalScrollBarInset"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K19 ["ScrollingFrame"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 1
  LOADN R24 214
  CALL R22 2 1
  SETTABLEKS R22 R21 K105 ["ScrollingFrameHeight"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 90
  LOADN R24 90
  CALL R22 2 1
  SETTABLEKS R22 R21 K106 ["CellSize"]
  SETTABLE R21 R19 R20
  LOADK R22 K118 ["CatalogItemButton"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K118 ["CatalogItemButton"]
  DUPTABLE R21 K121 [{"UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R22 K125 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R23 R4 K43 ["TextSecondary"]
  SETTABLEKS R23 R22 K122 ["Color"]
  LOADK R23 K126 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R23 R22 K35 ["Image"]
  GETIMPORT R23 K128 [Vector2.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K123 ["AnchorPoint"]
  GETIMPORT R23 K82 [UDim2.new]
  LOADN R24 1
  LOADN R25 252
  LOADN R26 0
  LOADN R27 4
  CALL R23 4 1
  SETTABLEKS R23 R22 K124 ["Position"]
  GETIMPORT R23 K117 [UDim2.fromOffset]
  LOADN R24 13
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K71 ["Size"]
  SETTABLEKS R22 R21 K119 ["UserImage"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K120 ["ItemNamePaddingBottom"]
  SETTABLE R21 R19 R20
  LOADK R22 K129 ["ContextualSurveyDialogButton"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K129 ["ContextualSurveyDialogButton"]
  DUPTABLE R21 K130 [{"Image", "Position", "Size"}]
  GETTABLEKS R22 R4 K131 ["SendFeedback"]
  SETTABLEKS R22 R21 K35 ["Image"]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 0
  LOADN R24 17
  LOADN R25 1
  LOADN R26 220
  CALL R22 4 1
  SETTABLEKS R22 R21 K124 ["Position"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 24
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["Size"]
  SETTABLE R21 R19 R20
  MOVE R20 R16
  CALL R20 0 1
  JUMPIF R20 [+42]
  LOADK R22 K132 ["DummyPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K132 ["DummyPreview"]
  DUPTABLE R21 K139 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R22 K142 [Color3.fromRGB]
  LOADN R23 170
  LOADN R24 185
  LOADN R25 200
  CALL R22 3 1
  SETTABLEKS R22 R21 K133 ["Ambient"]
  GETIMPORT R22 K142 [Color3.fromRGB]
  LOADN R23 242
  LOADN R24 236
  LOADN R25 227
  CALL R22 3 1
  SETTABLEKS R22 R21 K134 ["LightColor"]
  LOADK R23 K58 [0.5]
  LOADN R24 255
  LOADK R25 K143 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K145 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K135 ["LightDirection"]
  LOADK R22 K146 [0.25]
  SETTABLEKS R22 R21 K136 ["PanSpeedMultiplier"]
  LOADK R22 K147 [0.2]
  SETTABLEKS R22 R21 K137 ["PlatformHeight"]
  LOADN R22 5
  SETTABLEKS R22 R21 K138 ["PlatformSize"]
  SETTABLE R21 R19 R20
  LOADK R22 K148 ["EquippedItemsSidebar"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K148 ["EquippedItemsSidebar"]
  DUPTABLE R21 K152 [{"CellSize", "ItemSpacing", "PositionOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 50
  LOADN R24 50
  CALL R22 2 1
  SETTABLEKS R22 R21 K106 ["CellSize"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 2
  CALL R22 2 1
  SETTABLEKS R22 R21 K149 ["ItemSpacing"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 5
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K150 ["PositionOffset"]
  LOADN R22 10
  SETTABLEKS R22 R21 K151 ["SidebarSpacing"]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 0
  LOADN R24 50
  LOADN R25 1
  LOADN R26 236
  CALL R22 4 1
  SETTABLEKS R22 R21 K71 ["Size"]
  SETTABLE R21 R19 R20
  LOADK R22 K153 ["EquippedItemPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K153 ["EquippedItemPreview"]
  DUPTABLE R21 K156 [{"StrokeColor", "StrokeThickness"}]
  GETTABLEKS R22 R4 K111 ["Border"]
  SETTABLEKS R22 R21 K154 ["StrokeColor"]
  LOADN R22 1
  SETTABLEKS R22 R21 K155 ["StrokeThickness"]
  SETTABLE R21 R19 R20
  LOADK R22 K157 ["ImportPage"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K157 ["ImportPage"]
  DUPTABLE R21 K165 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R22 K166 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R22 R21 K158 ["ArrowImage"]
  GETTABLEKS R22 R4 K167 ["TextPrimary"]
  SETTABLEKS R22 R21 K159 ["ArrowColor"]
  DUPTABLE R22 K174 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K168 ["IconSize"]
  LOADN R23 2
  SETTABLEKS R23 R22 K169 ["InnerPadding"]
  LOADN R23 16
  SETTABLEKS R23 R22 K170 ["NameFontSize"]
  LOADN R23 2
  SETTABLEKS R23 R22 K171 ["NameLines"]
  LOADN R23 4
  SETTABLEKS R23 R22 K48 ["Padding"]
  GETTABLEKS R23 R4 K175 ["TextLink"]
  SETTABLEKS R23 R22 K172 ["TitleColor"]
  GETIMPORT R23 K176 [Color3.new]
  LOADK R24 K62 [0.4]
  LOADK R25 K62 [0.4]
  LOADK R26 K62 [0.4]
  CALL R23 3 1
  SETTABLEKS R23 R22 K173 ["PreviewAmbient"]
  SETTABLEKS R22 R21 K160 ["Avatar"]
  DUPTABLE R22 K177 [{"Size", "IconSize"}]
  GETIMPORT R23 K117 [UDim2.fromOffset]
  LOADN R24 24
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K71 ["Size"]
  LOADN R23 12
  SETTABLEKS R23 R22 K168 ["IconSize"]
  SETTABLEKS R22 R21 K161 ["BackButton"]
  LOADN R22 35
  SETTABLEKS R22 R21 K162 ["HeaderHeight"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 5
  LOADN R24 15
  CALL R22 2 1
  SETTABLEKS R22 R21 K163 ["GridPadding"]
  GETIMPORT R22 K46 [UDim.new]
  LOADK R23 K178 [0.8]
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K164 ["SearchBarHeight"]
  SETTABLE R21 R19 R20
  LOADK R22 K179 ["ItemDataPreviewModel"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K179 ["ItemDataPreviewModel"]
  DUPTABLE R21 K181 [{"InstanceAmbient"}]
  GETIMPORT R22 K176 [Color3.new]
  LOADK R23 K62 [0.4]
  LOADK R24 K62 [0.4]
  LOADK R25 K62 [0.4]
  CALL R22 3 1
  SETTABLEKS R22 R21 K180 ["InstanceAmbient"]
  SETTABLE R21 R19 R20
  LOADK R22 K182 ["ModelPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K182 ["ModelPreview"]
  DUPTABLE R21 K139 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R22 K142 [Color3.fromRGB]
  LOADN R23 170
  LOADN R24 185
  LOADN R25 200
  CALL R22 3 1
  SETTABLEKS R22 R21 K133 ["Ambient"]
  GETIMPORT R22 K142 [Color3.fromRGB]
  LOADN R23 242
  LOADN R24 236
  LOADN R25 227
  CALL R22 3 1
  SETTABLEKS R22 R21 K134 ["LightColor"]
  LOADK R23 K58 [0.5]
  LOADN R24 255
  LOADK R25 K143 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K145 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K135 ["LightDirection"]
  LOADK R22 K146 [0.25]
  SETTABLEKS R22 R21 K136 ["PanSpeedMultiplier"]
  LOADK R22 K147 [0.2]
  SETTABLEKS R22 R21 K137 ["PlatformHeight"]
  LOADN R22 5
  SETTABLEKS R22 R21 K138 ["PlatformSize"]
  SETTABLE R21 R19 R20
  LOADK R22 K183 ["Notice"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K183 ["Notice"]
  DUPTABLE R21 K187 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R22 R4 K98 ["SubBackground"]
  SETTABLEKS R22 R21 K93 ["BackgroundColor"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 6
  CALL R22 2 1
  SETTABLEKS R22 R21 K184 ["CornerRadius"]
  GETTABLEKS R22 R4 K167 ["TextPrimary"]
  SETTABLEKS R22 R21 K185 ["TextColor"]
  LOADN R22 20
  SETTABLEKS R22 R21 K186 ["TextSize"]
  DUPTABLE R22 K192 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R23 8
  SETTABLEKS R23 R22 K188 ["Left"]
  LOADN R23 8
  SETTABLEKS R23 R22 K189 ["Right"]
  LOADN R23 4
  SETTABLEKS R23 R22 K190 ["Top"]
  LOADN R23 4
  SETTABLEKS R23 R22 K191 ["Bottom"]
  SETTABLEKS R22 R21 K48 ["Padding"]
  SETTABLE R21 R19 R20
  MOVE R20 R16
  CALL R20 0 1
  JUMPIF R20 [+12]
  LOADK R22 K193 ["PrimaryDummyPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K193 ["PrimaryDummyPreview"]
  DUPTABLE R21 K195 [{"BackgroundImage"}]
  GETTABLEKS R22 R4 K103 ["PreviewerBackgroundImage"]
  SETTABLEKS R22 R21 K194 ["BackgroundImage"]
  SETTABLE R21 R19 R20
  LOADK R22 K196 ["ResetCameraButton"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K196 ["ResetCameraButton"]
  DUPTABLE R21 K197 [{"Position", "Size", "Spacing", "Image"}]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 1
  LOADN R24 246
  LOADN R25 0
  LOADN R26 15
  CALL R22 4 1
  SETTABLEKS R22 R21 K124 ["Position"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 32
  LOADN R24 32
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["Size"]
  LOADN R22 5
  SETTABLEKS R22 R21 K78 ["Spacing"]
  GETTABLEKS R22 R4 K198 ["ResetCameraImage"]
  SETTABLEKS R22 R21 K35 ["Image"]
  SETTABLE R21 R19 R20
  LOADK R22 K199 ["SelectScreen"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K199 ["SelectScreen"]
  DUPTABLE R21 K201 [{"ButtonHeight", "Spacing"}]
  LOADN R22 24
  SETTABLEKS R22 R21 K200 ["ButtonHeight"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 18
  CALL R22 2 1
  SETTABLEKS R22 R21 K78 ["Spacing"]
  SETTABLE R21 R19 R20
  LOADK R22 K202 ["SkinPreview"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K202 ["SkinPreview"]
  DUPTABLE R21 K207 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R22 R4 K208 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R22 R21 K203 ["HoveredBorderColor"]
  LOADN R22 1
  SETTABLEKS R22 R21 K204 ["HoveredBorderThickness"]
  GETTABLEKS R22 R4 K209 ["PrimaryMain"]
  SETTABLEKS R22 R21 K205 ["SelectedBorderColor"]
  LOADN R22 2
  SETTABLEKS R22 R21 K206 ["SelectedBorderThickness"]
  SETTABLE R21 R19 R20
  LOADK R22 K210 ["StageSelector"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K210 ["StageSelector"]
  DUPTABLE R21 K213 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconSize", "Width"}]
  GETTABLEKS R22 R4 K214 ["MainBackground"]
  SETTABLEKS R22 R21 K93 ["BackgroundColor"]
  GETTABLEKS R22 R4 K215 ["ButtonHover"]
  SETTABLEKS R22 R21 K211 ["ButtonSelectedBackgroundColor"]
  LOADN R22 32
  SETTABLEKS R22 R21 K200 ["ButtonHeight"]
  GETTABLEKS R22 R4 K216 ["MainText"]
  SETTABLEKS R22 R21 K212 ["IconColor"]
  LOADN R22 18
  SETTABLEKS R22 R21 K168 ["IconSize"]
  LOADN R22 64
  SETTABLEKS R22 R21 K96 ["Width"]
  SETTABLE R21 R19 R20
  LOADK R22 K217 ["Stars"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K217 ["Stars"]
  DUPTABLE R21 K224 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R22 R4 K216 ["MainText"]
  SETTABLEKS R22 R21 K218 ["StarColor"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 16
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K219 ["StarSize"]
  GETTABLEKS R22 R4 K225 ["Star"]
  SETTABLEKS R22 R21 K220 ["StarFilled"]
  GETTABLEKS R22 R4 K221 ["StarUnfilled"]
  SETTABLEKS R22 R21 K221 ["StarUnfilled"]
  LOADN R22 4
  SETTABLEKS R22 R21 K222 ["StarSpacing"]
  LOADN R22 10
  SETTABLEKS R22 R21 K223 ["RatingSpacing"]
  SETTABLE R21 R19 R20
  LOADK R22 K226 ["SubmitDialog"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K226 ["SubmitDialog"]
  DUPTABLE R21 K227 [{"Width"}]
  LOADN R22 244
  SETTABLEKS R22 R21 K96 ["Width"]
  SETTABLE R21 R19 R20
  LOADK R22 K228 ["SubmitInner"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K228 ["SubmitInner"]
  DUPTABLE R21 K232 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 18
  CALL R22 2 1
  SETTABLEKS R22 R21 K229 ["CallToActionSpacing"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K230 ["CheckboxSpacing"]
  LOADN R22 40
  SETTABLEKS R22 R21 K231 ["ContentPadding"]
  SETTABLE R21 R19 R20
  LOADK R22 K233 ["Survey"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K233 ["Survey"]
  DUPTABLE R21 K236 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R22 22
  SETTABLEKS R22 R21 K234 ["HeadIndent"]
  LOADN R22 10
  SETTABLEKS R22 R21 K78 ["Spacing"]
  LOADN R22 96
  SETTABLEKS R22 R21 K235 ["MessageHeight"]
  SETTABLE R21 R19 R20
  LOADK R22 K237 ["SurveyDialog"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K237 ["SurveyDialog"]
  DUPTABLE R21 K239 [{"Width", "FinishDialogSize"}]
  LOADN R22 184
  SETTABLEKS R22 R21 K96 ["Width"]
  GETIMPORT R22 K128 [Vector2.new]
  LOADN R23 250
  LOADN R24 30
  CALL R22 2 1
  SETTABLEKS R22 R21 K238 ["FinishDialogSize"]
  SETTABLE R21 R19 R20
  MOVE R20 R17
  CALL R20 0 1
  JUMPIFNOT R20 [+18]
  LOADK R22 K240 ["TestingScreen"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K240 ["TestingScreen"]
  DUPTABLE R21 K201 [{"ButtonHeight", "Spacing"}]
  LOADN R22 24
  SETTABLEKS R22 R21 K200 ["ButtonHeight"]
  GETIMPORT R22 K46 [UDim.new]
  LOADN R23 0
  LOADN R24 18
  CALL R22 2 1
  SETTABLEKS R22 R21 K78 ["Spacing"]
  SETTABLE R21 R19 R20
  LOADK R22 K241 ["UGCValidationErrorDialog"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K241 ["UGCValidationErrorDialog"]
  DUPTABLE R21 K249 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R22 12
  SETTABLEKS R22 R21 K242 ["DetailsSpacing"]
  LOADN R22 4
  SETTABLEKS R22 R21 K243 ["IconTextSpacing"]
  LOADN R22 26
  SETTABLEKS R22 R21 K244 ["TitleDetailsSpacing"]
  GETIMPORT R22 K128 [Vector2.new]
  LOADN R23 244
  LOADN R24 44
  CALL R22 2 1
  SETTABLEKS R22 R21 K245 ["AlertMinContentSize"]
  LOADN R22 18
  SETTABLEKS R22 R21 K186 ["TextSize"]
  GETTABLEKS R22 R4 K250 ["WarningText"]
  SETTABLEKS R22 R21 K246 ["WarningColor"]
  GETIMPORT R22 K253 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R22 R21 K247 ["WarningFont"]
  LOADK R23 K254 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K255 ["warning.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K248 ["WarningImage"]
  SETTABLE R21 R19 R20
  LOADK R22 K0 ["script"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  GETTABLEKS R20 R6 K256 ["UGCValidationNotice"]
  DUPTABLE R21 K258 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 8
  LOADN R24 252
  CALL R22 2 1
  SETTABLEKS R22 R21 K124 ["Position"]
  GETIMPORT R22 K82 [UDim2.new]
  LOADN R23 1
  LOADN R24 192
  LOADN R25 0
  LOADN R26 48
  CALL R22 4 1
  SETTABLEKS R22 R21 K71 ["Size"]
  GETIMPORT R22 K117 [UDim2.fromOffset]
  LOADN R23 24
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K257 ["ValidationIconSize"]
  GETTABLEKS R22 R4 K250 ["WarningText"]
  SETTABLEKS R22 R21 K246 ["WarningColor"]
  LOADK R23 K254 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K255 ["warning.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K248 ["WarningImage"]
  SETTABLE R21 R19 R20
  LOADK R22 K3 ["FindFirstAncestor"]
  NAMECALL R20 R6 K33 ["add"]
  CALL R20 2 0
  DUPTABLE R20 K260 [{"Color", "Position", "Size"}]
  GETIMPORT R21 K176 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 1
  CALL R21 3 1
  SETTABLEKS R21 R20 K122 ["Color"]
  GETIMPORT R21 K117 [UDim2.fromOffset]
  LOADN R22 4
  LOADN R23 14
  CALL R21 2 1
  SETTABLEKS R21 R20 K124 ["Position"]
  GETIMPORT R21 K117 [UDim2.fromOffset]
  LOADN R22 24
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K71 ["Size"]
  GETTABLEKS R21 R6 K259 ["UGCValidationStatusIcon"]
  NEWTABLE R22 2 0
  GETTABLEKS R24 R1 K73 ["Dictionary"]
  GETTABLEKS R23 R24 K74 ["join"]
  MOVE R24 R20
  DUPTABLE R25 K261 [{"Color", "Image"}]
  GETTABLEKS R26 R4 K250 ["WarningText"]
  SETTABLEKS R26 R25 K122 ["Color"]
  LOADK R27 K254 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K255 ["warning.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K35 ["Image"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K262 ["&Failure"]
  GETTABLEKS R24 R1 K73 ["Dictionary"]
  GETTABLEKS R23 R24 K74 ["join"]
  MOVE R24 R20
  DUPTABLE R25 K102 [{"Image"}]
  GETTABLEKS R26 R4 K263 ["UGCValidationSuccessImage"]
  SETTABLEKS R26 R25 K35 ["Image"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K264 ["&Success"]
  SETTABLE R22 R19 R21
  LOADK R23 K9 ["Style"]
  NAMECALL R21 R6 K33 ["add"]
  CALL R21 2 0
  GETTABLEKS R21 R6 K265 ["DisambiguationMenu"]
  DUPTABLE R22 K275 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R23 K128 [Vector2.new]
  LOADN R24 244
  LOADN R25 44
  CALL R23 2 1
  SETTABLEKS R23 R22 K266 ["MinContentSize"]
  GETIMPORT R23 K128 [Vector2.new]
  LOADN R24 200
  LOADN R25 150
  CALL R23 2 1
  SETTABLEKS R23 R22 K267 ["ConfirmCancelContentSize"]
  LOADN R23 8
  SETTABLEKS R23 R22 K268 ["HorizontalSpacing"]
  LOADN R23 8
  SETTABLEKS R23 R22 K269 ["VerticalSpacing"]
  LOADN R23 24
  SETTABLEKS R23 R22 K270 ["TitleContentsSpacing"]
  LOADN R23 8
  SETTABLEKS R23 R22 K271 ["TextSpacing"]
  LOADN R23 150
  SETTABLEKS R23 R22 K272 ["DropdownWidth"]
  LOADN R23 120
  SETTABLEKS R23 R22 K273 ["AttachmentDropdownWidth"]
  GETTABLEKS R23 R4 K98 ["SubBackground"]
  SETTABLEKS R23 R22 K274 ["IconBackground"]
  GETIMPORT R23 K117 [UDim2.fromOffset]
  LOADN R24 72
  LOADN R25 72
  CALL R23 2 1
  SETTABLEKS R23 R22 K168 ["IconSize"]
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K15 ["Alert"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R8
  NEWTABLE R24 1 0
  GETTABLEKS R26 R1 K73 ["Dictionary"]
  GETTABLEKS R25 R26 K74 ["join"]
  GETTABLEKS R26 R8 K276 ["&Warning"]
  DUPTABLE R27 K278 [{"MaxWidth"}]
  LOADN R28 132
  SETTABLEKS R28 R27 K277 ["MaxWidth"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K279 ["&WarningLong"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  JUMPIFNOT R18 [+36]
  GETTABLEKS R21 R6 K17 ["DropdownMenu"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R9
  DUPTABLE R24 K281 [{"MaxHeight"}]
  LOADK R25 K26 ["getFFlagAvatarPreviewerAutoSetup"]
  SETTABLEKS R25 R24 K280 ["MaxHeight"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K20 ["SelectInput"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R12
  DUPTABLE R24 K283 [{"DropdownMenu"}]
  GETTABLEKS R26 R1 K73 ["Dictionary"]
  GETTABLEKS R25 R26 K74 ["join"]
  GETTABLEKS R26 R12 K17 ["DropdownMenu"]
  DUPTABLE R27 K281 [{"MaxHeight"}]
  LOADK R28 K26 ["getFFlagAvatarPreviewerAutoSetup"]
  SETTABLEKS R28 R27 K280 ["MaxHeight"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K17 ["DropdownMenu"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K21 ["Separator"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R13
  NEWTABLE R24 1 0
  DUPTABLE R25 K285 [{"StretchMargin"}]
  LOADN R26 5
  SETTABLEKS R26 R25 K284 ["StretchMargin"]
  SETTABLEKS R25 R24 K286 ["&SelectScreenSeparator"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K18 ["Pane"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R10
  NEWTABLE R24 4 0
  NEWTABLE R25 4 0
  GETTABLEKS R26 R4 K287 ["Button"]
  SETTABLEKS R26 R25 K101 ["Background"]
  GETIMPORT R26 K46 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K184 ["CornerRadius"]
  GETTABLEKS R26 R5 K288 ["Hover"]
  DUPTABLE R27 K289 [{"Background"}]
  GETTABLEKS R28 R4 K215 ["ButtonHover"]
  SETTABLEKS R28 R27 K101 ["Background"]
  SETTABLE R27 R25 R26
  SETTABLEKS R25 R24 K290 ["&EquippedItemPreview"]
  DUPTABLE R25 K291 [{"CornerRadius"}]
  GETIMPORT R26 K46 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K184 ["CornerRadius"]
  SETTABLEKS R25 R24 K292 ["&EquippedItemPreviewInner"]
  DUPTABLE R25 K291 [{"CornerRadius"}]
  GETIMPORT R26 K46 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K184 ["CornerRadius"]
  SETTABLEKS R25 R24 K293 ["&SkinPreview"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K22 ["SimpleTab"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R14
  NEWTABLE R24 1 0
  NEWTABLE R25 8 0
  GETTABLEKS R26 R4 K80 ["SubBackground2"]
  SETTABLEKS R26 R25 K93 ["BackgroundColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K76 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K294 ["BorderSize"]
  DUPTABLE R26 K295 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K188 ["Left"]
  LOADN R27 2
  SETTABLEKS R27 R26 K190 ["Top"]
  LOADN R27 0
  SETTABLEKS R27 R26 K191 ["Bottom"]
  LOADN R27 12
  SETTABLEKS R27 R26 K189 ["Right"]
  SETTABLEKS R26 R25 K48 ["Padding"]
  LOADN R26 0
  SETTABLEKS R26 R25 K296 ["TopLineHeight"]
  GETTABLEKS R26 R5 K297 ["Selected"]
  DUPTABLE R27 K298 [{"BackgroundColor", "Font"}]
  GETTABLEKS R28 R4 K80 ["SubBackground2"]
  SETTABLEKS R28 R27 K93 ["BackgroundColor"]
  GETIMPORT R28 K300 [Enum.Font.SourceSansBold]
  SETTABLEKS R28 R27 K251 ["Font"]
  SETTABLE R27 R25 R26
  SETTABLEKS R25 R24 K301 ["&AssetPaletteTab"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  GETTABLEKS R21 R6 K23 ["Tooltip"]
  GETTABLEKS R23 R1 K73 ["Dictionary"]
  GETTABLEKS R22 R23 K74 ["join"]
  MOVE R23 R15
  NEWTABLE R24 1 0
  DUPTABLE R25 K303 [{"ShowDelay"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K302 ["ShowDelay"]
  SETTABLEKS R25 R24 K304 ["&NoDelay"]
  CALL R22 2 1
  SETTABLE R22 R19 R21
  RETURN R19 1
