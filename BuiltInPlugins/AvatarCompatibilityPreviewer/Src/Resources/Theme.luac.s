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
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerFixSurveyOverlap"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K25 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K24 ["Src"]
  GETTABLEKS R22 R23 K25 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R20 1 1
  GETIMPORT R21 K32 [game]
  LOADK R23 K33 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R24 0
  NAMECALL R21 R21 K34 ["DefineFastFlag"]
  CALL R21 3 1
  GETIMPORT R22 K32 [game]
  LOADK R24 K35 ["AvatarPreviewerFixAnimationPadding"]
  LOADB R25 0
  NAMECALL R22 R22 K34 ["DefineFastFlag"]
  CALL R22 3 1
  NEWTABLE R23 0 0
  LOADK R26 K36 ["AddItemButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K36 ["AddItemButton"]
  DUPTABLE R25 K46 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R26 42
  SETTABLEKS R26 R25 K38 ["Height"]
  LOADK R26 K47 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R26 R25 K39 ["Image"]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K40 ["ImageColor"]
  GETTABLEKS R26 R4 K49 ["TextDisabled"]
  SETTABLEKS R26 R25 K41 ["ImageColorDisabled"]
  LOADN R26 20
  SETTABLEKS R26 R25 K42 ["ImageSize"]
  LOADN R26 3
  SETTABLEKS R26 R25 K43 ["PaddingTop"]
  LOADN R26 3
  SETTABLEKS R26 R25 K44 ["PaddingBottom"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K45 ["FailureDialogSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K53 ["AnimationControllerDisplay"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K53 ["AnimationControllerDisplay"]
  DUPTABLE R25 K57 [{"Padding", "Position", "Size"}]
  JUMPIFNOT R22 [+2]
  LOADN R26 30
  JUMP [+7]
  DUPTABLE R26 K60 [{"Left", "Right"}]
  LOADN R27 30
  SETTABLEKS R27 R26 K58 ["Left"]
  LOADN R27 30
  SETTABLEKS R27 R26 K59 ["Right"]
  SETTABLEKS R26 R25 K54 ["Padding"]
  MOVE R27 R18
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  LOADN R30 244
  CALL R26 4 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K55 ["Position"]
  MOVE R27 R18
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 32
  CALL R26 4 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K63 ["AnimationPlaybackSlider"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K63 ["AnimationPlaybackSlider"]
  DUPTABLE R25 K68 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R26 R4 K64 ["PlayImage"]
  SETTABLEKS R26 R25 K64 ["PlayImage"]
  LOADK R26 K69 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R26 R25 K65 ["PauseImage"]
  LOADN R26 20
  SETTABLEKS R26 R25 K66 ["PlayButtonWidth"]
  LOADN R26 60
  SETTABLEKS R26 R25 K67 ["PlayTimeLabelWidth"]
  LOADN R26 12
  SETTABLEKS R26 R25 K54 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K70 ["AnimationPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K70 ["AnimationPreview"]
  NEWTABLE R25 4 0
  LOADK R26 K71 [0.5]
  SETTABLEKS R26 R25 K72 ["PausedAnimationAlpha"]
  DUPTABLE R26 K74 [{"FrontRightAngleLerp"}]
  LOADK R27 K75 [0.4]
  SETTABLEKS R27 R26 K73 ["FrontRightAngleLerp"]
  SETTABLEKS R26 R25 K76 ["&BodyPreview"]
  DUPTABLE R26 K79 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R27 30
  SETTABLEKS R27 R26 K77 ["FieldOfView"]
  LOADK R27 K80 [0.08]
  SETTABLEKS R27 R26 K73 ["FrontRightAngleLerp"]
  LOADK R27 K81 [2.8]
  SETTABLEKS R27 R26 K78 ["InitialDistance"]
  SETTABLEKS R26 R25 K82 ["&FacePreview"]
  SETTABLE R25 R23 R24
  LOADK R26 K83 ["AssetPalettes"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K83 ["AssetPalettes"]
  DUPTABLE R25 K84 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R11
  DUPTABLE R28 K91 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R29 R4 K92 ["SubBackground2"]
  SETTABLEKS R29 R28 K87 ["BackgroundColor3"]
  LOADN R29 0
  SETTABLEKS R29 R28 K88 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K54 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K89 ["ScrollBarThickness"]
  GETIMPORT R29 K52 [UDim.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K90 ["Spacing"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K19 ["ScrollingFrame"]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 24
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K93 ["AutoSetupScreen"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K93 ["AutoSetupScreen"]
  DUPTABLE R25 K98 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K94 ["AlertPaddingHorizontal"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K95 ["AlertPaddingVertical"]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 1
  LOADN R28 240
  LOADN R29 1
  LOADN R30 240
  CALL R26 4 1
  SETTABLEKS R26 R25 K96 ["ControlsPosition"]
  LOADK R26 K99 [-0.25]
  SETTABLEKS R26 R25 K97 ["SpinRate"]
  SETTABLE R25 R23 R24
  LOADK R26 K100 ["AvatarScreen"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K100 ["AvatarScreen"]
  DUPTABLE R25 K102 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R26 K107 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R27 R4 K92 ["SubBackground2"]
  SETTABLEKS R27 R26 K103 ["BackgroundColor"]
  GETTABLEKS R27 R4 K108 ["SubBackground"]
  SETTABLEKS R27 R26 K104 ["SeparatorColor"]
  LOADN R27 4
  SETTABLEKS R27 R26 K105 ["SeparatorWidth"]
  LOADN R27 122
  SETTABLEKS R27 R26 K106 ["Width"]
  SETTABLEKS R26 R25 K83 ["AssetPalettes"]
  DUPTABLE R26 K110 [{"Height", "VerticalOffset"}]
  LOADN R27 64
  SETTABLEKS R27 R26 K38 ["Height"]
  LOADN R27 252
  SETTABLEKS R27 R26 K109 ["VerticalOffset"]
  SETTABLEKS R26 R25 K101 ["Tabs"]
  SETTABLE R25 R23 R24
  LOADK R26 K111 ["Background"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K111 ["Background"]
  DUPTABLE R25 K112 [{"Image"}]
  GETTABLEKS R26 R4 K113 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K39 ["Image"]
  SETTABLE R25 R23 R24
  MOVE R24 R17
  CALL R24 0 1
  JUMPIFNOT R24 [+18]
  LOADK R26 K114 ["BodyPointsTool"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K114 ["BodyPointsTool"]
  DUPTABLE R25 K117 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R27 K118 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K119 ["projection.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K115 ["ProjectionImage"]
  LOADK R27 K118 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K120 ["symmetry.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K116 ["SymmetricalImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K121 ["Catalog"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K121 ["Catalog"]
  DUPTABLE R25 K124 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R11
  DUPTABLE R28 K127 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R29 R4 K128 ["Border"]
  SETTABLEKS R29 R28 K125 ["BorderColor3"]
  LOADN R29 10
  SETTABLEKS R29 R28 K54 ["Padding"]
  GETIMPORT R29 K132 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R29 R28 K126 ["VerticalScrollBarInset"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K19 ["ScrollingFrame"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 1
  LOADN R28 214
  CALL R26 2 1
  SETTABLEKS R26 R25 K122 ["ScrollingFrameHeight"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 90
  LOADN R28 90
  CALL R26 2 1
  SETTABLEKS R26 R25 K123 ["CellSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K135 ["CatalogItemButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K135 ["CatalogItemButton"]
  DUPTABLE R25 K139 [{"HoverX", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R26 K142 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K140 ["Color"]
  LOADK R27 K143 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K39 ["Image"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  GETIMPORT R27 K62 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K134 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K136 ["HoverX"]
  DUPTABLE R26 K142 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K140 ["Color"]
  LOADK R27 K146 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R27 R26 K39 ["Image"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  MOVE R28 R19
  CALL R28 0 1
  JUMPIFNOT R28 [+8]
  GETIMPORT R27 K62 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 1
  LOADN R31 236
  CALL R27 4 1
  JUMP [+7]
  GETIMPORT R27 K62 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K134 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K137 ["UserImage"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 12
  CALL R26 2 1
  SETTABLEKS R26 R25 K138 ["ItemNamePaddingBottom"]
  SETTABLE R25 R23 R24
  LOADK R26 K147 ["ContextualSurveyDialogButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K147 ["ContextualSurveyDialogButton"]
  DUPTABLE R25 K148 [{"Image", "Position", "Size"}]
  GETTABLEKS R26 R4 K149 ["SendFeedback"]
  SETTABLEKS R26 R25 K39 ["Image"]
  MOVE R27 R18
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 0
  LOADN R28 28
  LOADN R29 1
  LOADN R30 196
  CALL R26 4 1
  JUMP [+7]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 0
  LOADN R28 17
  LOADN R29 1
  LOADN R30 220
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R16
  CALL R24 0 1
  JUMPIF R24 [+42]
  LOADK R26 K150 ["DummyPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K150 ["DummyPreview"]
  DUPTABLE R25 K157 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K160 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K151 ["Ambient"]
  GETIMPORT R26 K160 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K152 ["LightColor"]
  LOADK R27 K71 [0.5]
  LOADN R28 255
  LOADK R29 K161 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K163 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K153 ["LightDirection"]
  LOADK R26 K164 [0.25]
  SETTABLEKS R26 R25 K154 ["PanSpeedMultiplier"]
  LOADK R26 K165 [0.2]
  SETTABLEKS R26 R25 K155 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K156 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K166 ["EquippedItemsSidebar"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K166 ["EquippedItemsSidebar"]
  DUPTABLE R25 K170 [{"CellSize", "ItemSpacing", "PositionOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 50
  LOADN R28 50
  CALL R26 2 1
  SETTABLEKS R26 R25 K123 ["CellSize"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 2
  CALL R26 2 1
  SETTABLEKS R26 R25 K167 ["ItemSpacing"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K168 ["PositionOffset"]
  LOADN R26 10
  SETTABLEKS R26 R25 K169 ["SidebarSpacing"]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 0
  LOADN R28 50
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K171 ["EquippedItemPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K171 ["EquippedItemPreview"]
  DUPTABLE R25 K174 [{"StrokeColor", "StrokeThickness"}]
  GETTABLEKS R26 R4 K128 ["Border"]
  SETTABLEKS R26 R25 K172 ["StrokeColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K173 ["StrokeThickness"]
  SETTABLE R25 R23 R24
  LOADK R26 K175 ["ImportPage"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K175 ["ImportPage"]
  DUPTABLE R25 K183 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R26 K184 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R26 R25 K176 ["ArrowImage"]
  GETTABLEKS R26 R4 K185 ["TextPrimary"]
  SETTABLEKS R26 R25 K177 ["ArrowColor"]
  DUPTABLE R26 K192 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R27 75
  SETTABLEKS R27 R26 K186 ["IconSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K187 ["InnerPadding"]
  LOADN R27 16
  SETTABLEKS R27 R26 K188 ["NameFontSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K189 ["NameLines"]
  LOADN R27 4
  SETTABLEKS R27 R26 K54 ["Padding"]
  GETTABLEKS R27 R4 K193 ["TextLink"]
  SETTABLEKS R27 R26 K190 ["TitleColor"]
  GETIMPORT R27 K194 [Color3.new]
  LOADK R28 K75 [0.4]
  LOADK R29 K75 [0.4]
  LOADK R30 K75 [0.4]
  CALL R27 3 1
  SETTABLEKS R27 R26 K191 ["PreviewAmbient"]
  SETTABLEKS R26 R25 K178 ["Avatar"]
  DUPTABLE R26 K195 [{"Size", "IconSize"}]
  GETIMPORT R27 K134 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADN R27 12
  SETTABLEKS R27 R26 K186 ["IconSize"]
  SETTABLEKS R26 R25 K179 ["BackButton"]
  LOADN R26 35
  SETTABLEKS R26 R25 K180 ["HeaderHeight"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 15
  CALL R26 2 1
  SETTABLEKS R26 R25 K181 ["GridPadding"]
  GETIMPORT R26 K52 [UDim.new]
  LOADK R27 K196 [0.8]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K182 ["SearchBarHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K197 ["ItemDataPreviewModel"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K197 ["ItemDataPreviewModel"]
  DUPTABLE R25 K199 [{"InstanceAmbient"}]
  GETIMPORT R26 K194 [Color3.new]
  LOADK R27 K75 [0.4]
  LOADK R28 K75 [0.4]
  LOADK R29 K75 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K198 ["InstanceAmbient"]
  SETTABLE R25 R23 R24
  LOADK R26 K200 ["ModelPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K200 ["ModelPreview"]
  DUPTABLE R25 K157 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K160 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K151 ["Ambient"]
  GETIMPORT R26 K160 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K152 ["LightColor"]
  LOADK R27 K71 [0.5]
  LOADN R28 255
  LOADK R29 K161 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K163 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K153 ["LightDirection"]
  LOADK R26 K164 [0.25]
  SETTABLEKS R26 R25 K154 ["PanSpeedMultiplier"]
  LOADK R26 K165 [0.2]
  SETTABLEKS R26 R25 K155 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K156 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K201 ["Notice"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K201 ["Notice"]
  DUPTABLE R25 K205 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R26 R4 K108 ["SubBackground"]
  SETTABLEKS R26 R25 K103 ["BackgroundColor"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K202 ["CornerRadius"]
  GETTABLEKS R26 R4 K185 ["TextPrimary"]
  SETTABLEKS R26 R25 K203 ["TextColor"]
  LOADN R26 20
  SETTABLEKS R26 R25 K204 ["TextSize"]
  DUPTABLE R26 K208 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R27 8
  SETTABLEKS R27 R26 K58 ["Left"]
  LOADN R27 8
  SETTABLEKS R27 R26 K59 ["Right"]
  LOADN R27 4
  SETTABLEKS R27 R26 K206 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K207 ["Bottom"]
  SETTABLEKS R26 R25 K54 ["Padding"]
  SETTABLE R25 R23 R24
  MOVE R24 R16
  CALL R24 0 1
  JUMPIF R24 [+12]
  LOADK R26 K209 ["PrimaryDummyPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K209 ["PrimaryDummyPreview"]
  DUPTABLE R25 K211 [{"BackgroundImage"}]
  GETTABLEKS R26 R4 K113 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K210 ["BackgroundImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K212 ["ResetCameraButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K212 ["ResetCameraButton"]
  DUPTABLE R25 K213 [{"Position", "Size", "Spacing", "Image"}]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 1
  LOADN R28 246
  LOADN R29 0
  LOADN R30 15
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  LOADN R26 5
  SETTABLEKS R26 R25 K90 ["Spacing"]
  GETTABLEKS R26 R4 K214 ["ResetCameraImage"]
  SETTABLEKS R26 R25 K39 ["Image"]
  SETTABLE R25 R23 R24
  LOADK R26 K215 ["SelectScreen"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K215 ["SelectScreen"]
  DUPTABLE R25 K217 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K216 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K90 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K218 ["SkinPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K218 ["SkinPreview"]
  DUPTABLE R25 K223 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R26 R4 K224 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R26 R25 K219 ["HoveredBorderColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K220 ["HoveredBorderThickness"]
  GETTABLEKS R26 R4 K225 ["PrimaryMain"]
  SETTABLEKS R26 R25 K221 ["SelectedBorderColor"]
  LOADN R26 2
  SETTABLEKS R26 R25 K222 ["SelectedBorderThickness"]
  SETTABLE R25 R23 R24
  LOADK R26 K226 ["StageSelector"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K226 ["StageSelector"]
  DUPTABLE R25 K229 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconSize", "Width"}]
  GETTABLEKS R26 R4 K230 ["MainBackground"]
  SETTABLEKS R26 R25 K103 ["BackgroundColor"]
  GETTABLEKS R26 R4 K231 ["ButtonHover"]
  SETTABLEKS R26 R25 K227 ["ButtonSelectedBackgroundColor"]
  LOADN R26 32
  SETTABLEKS R26 R25 K216 ["ButtonHeight"]
  GETTABLEKS R26 R4 K232 ["MainText"]
  SETTABLEKS R26 R25 K228 ["IconColor"]
  LOADN R26 18
  SETTABLEKS R26 R25 K186 ["IconSize"]
  LOADN R26 64
  SETTABLEKS R26 R25 K106 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K233 ["Stars"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K233 ["Stars"]
  DUPTABLE R25 K240 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R26 R4 K232 ["MainText"]
  SETTABLEKS R26 R25 K234 ["StarColor"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 16
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K235 ["StarSize"]
  GETTABLEKS R26 R4 K241 ["Star"]
  SETTABLEKS R26 R25 K236 ["StarFilled"]
  GETTABLEKS R26 R4 K237 ["StarUnfilled"]
  SETTABLEKS R26 R25 K237 ["StarUnfilled"]
  LOADN R26 4
  SETTABLEKS R26 R25 K238 ["StarSpacing"]
  LOADN R26 10
  SETTABLEKS R26 R25 K239 ["RatingSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K242 ["SubmitDialog"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K242 ["SubmitDialog"]
  DUPTABLE R25 K243 [{"Width"}]
  LOADN R26 244
  SETTABLEKS R26 R25 K106 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K244 ["SubmitInner"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K244 ["SubmitInner"]
  DUPTABLE R25 K248 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K245 ["CallToActionSpacing"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K246 ["CheckboxSpacing"]
  LOADN R26 40
  SETTABLEKS R26 R25 K247 ["ContentPadding"]
  SETTABLE R25 R23 R24
  LOADK R26 K249 ["Survey"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K249 ["Survey"]
  DUPTABLE R25 K252 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R26 22
  SETTABLEKS R26 R25 K250 ["HeadIndent"]
  LOADN R26 10
  SETTABLEKS R26 R25 K90 ["Spacing"]
  LOADN R26 96
  SETTABLEKS R26 R25 K251 ["MessageHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K253 ["SurveyDialog"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K253 ["SurveyDialog"]
  DUPTABLE R25 K255 [{"Width", "FinishDialogSize"}]
  LOADN R26 184
  SETTABLEKS R26 R25 K106 ["Width"]
  GETIMPORT R26 K145 [Vector2.new]
  LOADN R27 250
  LOADN R28 30
  CALL R26 2 1
  SETTABLEKS R26 R25 K254 ["FinishDialogSize"]
  SETTABLE R25 R23 R24
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+18]
  LOADK R26 K0 ["script"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K256 ["TestingScreen"]
  DUPTABLE R25 K217 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K216 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K90 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K1 [script]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K257 ["UGCValidationErrorDialog"]
  DUPTABLE R25 K265 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K258 ["DetailsSpacing"]
  LOADN R26 4
  SETTABLEKS R26 R25 K259 ["IconTextSpacing"]
  LOADN R26 26
  SETTABLEKS R26 R25 K260 ["TitleDetailsSpacing"]
  GETIMPORT R26 K145 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K261 ["AlertMinContentSize"]
  LOADN R26 18
  SETTABLEKS R26 R25 K204 ["TextSize"]
  GETTABLEKS R26 R4 K266 ["WarningText"]
  SETTABLEKS R26 R25 K262 ["WarningColor"]
  GETIMPORT R26 K269 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R26 R25 K263 ["WarningFont"]
  LOADK R27 K118 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K14 ["UIData"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K264 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K15 ["Alert"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K271 ["UGCValidationNotice"]
  DUPTABLE R25 K273 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 8
  LOADN R28 252
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K62 [UDim2.new]
  LOADN R27 1
  LOADN R28 192
  LOADN R29 0
  LOADN R30 48
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  GETIMPORT R26 K134 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K272 ["ValidationIconSize"]
  GETTABLEKS R26 R4 K266 ["WarningText"]
  SETTABLEKS R26 R25 K262 ["WarningColor"]
  LOADK R27 K118 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K14 ["UIData"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K264 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K18 ["Pane"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  DUPTABLE R24 K275 [{"Color", "Position", "Size"}]
  GETIMPORT R25 K194 [Color3.new]
  LOADN R26 1
  LOADN R27 1
  LOADN R28 1
  CALL R25 3 1
  SETTABLEKS R25 R24 K140 ["Color"]
  GETIMPORT R25 K134 [UDim2.fromOffset]
  LOADN R26 4
  LOADN R27 14
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K134 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  GETTABLEKS R25 R6 K274 ["UGCValidationStatusIcon"]
  NEWTABLE R26 2 0
  GETTABLEKS R28 R1 K85 ["Dictionary"]
  GETTABLEKS R27 R28 K86 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K276 [{"Color", "Image"}]
  GETTABLEKS R30 R4 K266 ["WarningText"]
  SETTABLEKS R30 R29 K140 ["Color"]
  LOADK R31 K118 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R32 K14 ["UIData"]
  CONCAT R30 R31 R32
  SETTABLEKS R30 R29 K39 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K277 ["&Failure"]
  GETTABLEKS R28 R1 K85 ["Dictionary"]
  GETTABLEKS R27 R28 K86 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K112 [{"Image"}]
  GETTABLEKS R30 R4 K278 ["UGCValidationSuccessImage"]
  SETTABLEKS R30 R29 K39 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K279 ["&Success"]
  SETTABLE R26 R23 R25
  LOADK R27 K24 ["Src"]
  NAMECALL R25 R6 K37 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K280 ["DisambiguationMenu"]
  DUPTABLE R26 K290 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 244
  LOADN R29 44
  CALL R27 2 1
  SETTABLEKS R27 R26 K281 ["MinContentSize"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 200
  LOADN R29 150
  CALL R27 2 1
  SETTABLEKS R27 R26 K282 ["ConfirmCancelContentSize"]
  LOADN R27 8
  SETTABLEKS R27 R26 K283 ["HorizontalSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K284 ["VerticalSpacing"]
  LOADN R27 24
  SETTABLEKS R27 R26 K285 ["TitleContentsSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K286 ["TextSpacing"]
  LOADN R27 150
  SETTABLEKS R27 R26 K287 ["DropdownWidth"]
  LOADN R27 120
  SETTABLEKS R27 R26 K288 ["AttachmentDropdownWidth"]
  GETTABLEKS R27 R4 K108 ["SubBackground"]
  SETTABLEKS R27 R26 K289 ["IconBackground"]
  GETIMPORT R27 K134 [UDim2.fromOffset]
  LOADN R28 72
  LOADN R29 72
  CALL R27 2 1
  SETTABLEKS R27 R26 K186 ["IconSize"]
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K15 ["Alert"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R8
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K85 ["Dictionary"]
  GETTABLEKS R29 R30 K86 ["join"]
  GETTABLEKS R30 R8 K291 ["&Warning"]
  DUPTABLE R31 K293 [{"MaxWidth"}]
  LOADN R32 132
  SETTABLEKS R32 R31 K292 ["MaxWidth"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K294 ["&WarningLong"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  JUMPIFNOT R21 [+36]
  GETTABLEKS R25 R6 K17 ["DropdownMenu"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R9
  DUPTABLE R28 K296 [{"MaxHeight"}]
  LOADK R29 K41 ["ImageColorDisabled"]
  SETTABLEKS R29 R28 K295 ["MaxHeight"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K20 ["SelectInput"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R12
  DUPTABLE R28 K298 [{"DropdownMenu"}]
  GETTABLEKS R30 R1 K85 ["Dictionary"]
  GETTABLEKS R29 R30 K86 ["join"]
  GETTABLEKS R30 R12 K17 ["DropdownMenu"]
  DUPTABLE R31 K296 [{"MaxHeight"}]
  LOADK R32 K41 ["ImageColorDisabled"]
  SETTABLEKS R32 R31 K295 ["MaxHeight"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K17 ["DropdownMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K21 ["Separator"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R13
  NEWTABLE R28 1 0
  DUPTABLE R29 K300 [{"StretchMargin"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K299 ["StretchMargin"]
  SETTABLEKS R29 R28 K301 ["&SelectScreenSeparator"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K18 ["Pane"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R10
  NEWTABLE R28 4 0
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K302 ["Button"]
  SETTABLEKS R30 R29 K111 ["Background"]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K202 ["CornerRadius"]
  GETTABLEKS R30 R5 K303 ["Hover"]
  DUPTABLE R31 K304 [{"Background"}]
  GETTABLEKS R32 R4 K231 ["ButtonHover"]
  SETTABLEKS R32 R31 K111 ["Background"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K305 ["&EquippedItemPreview"]
  DUPTABLE R29 K306 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K202 ["CornerRadius"]
  SETTABLEKS R29 R28 K307 ["&EquippedItemPreviewInner"]
  DUPTABLE R29 K306 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K202 ["CornerRadius"]
  SETTABLEKS R29 R28 K308 ["&SkinPreview"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K22 ["SimpleTab"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R14
  NEWTABLE R28 1 0
  NEWTABLE R29 8 0
  GETTABLEKS R30 R4 K92 ["SubBackground2"]
  SETTABLEKS R30 R29 K103 ["BackgroundColor"]
  LOADN R30 1
  SETTABLEKS R30 R29 K88 ["BackgroundTransparency"]
  LOADN R30 0
  SETTABLEKS R30 R29 K309 ["BorderSize"]
  DUPTABLE R30 K310 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R31 12
  SETTABLEKS R31 R30 K58 ["Left"]
  LOADN R31 2
  SETTABLEKS R31 R30 K206 ["Top"]
  LOADN R31 0
  SETTABLEKS R31 R30 K207 ["Bottom"]
  LOADN R31 12
  SETTABLEKS R31 R30 K59 ["Right"]
  SETTABLEKS R30 R29 K54 ["Padding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K311 ["TopLineHeight"]
  GETTABLEKS R30 R5 K312 ["Selected"]
  DUPTABLE R31 K313 [{"BackgroundColor", "Font"}]
  GETTABLEKS R32 R4 K92 ["SubBackground2"]
  SETTABLEKS R32 R31 K103 ["BackgroundColor"]
  GETIMPORT R32 K315 [Enum.Font.SourceSansBold]
  SETTABLEKS R32 R31 K267 ["Font"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K316 ["&AssetPaletteTab"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K23 ["Tooltip"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R15
  NEWTABLE R28 1 0
  DUPTABLE R29 K318 [{"ShowDelay"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K317 ["ShowDelay"]
  SETTABLEKS R29 R28 K319 ["&NoDelay"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  RETURN R23 1
