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
  GETTABLEKS R11 R7 K17 ["Button"]
  GETTABLEKS R10 R11 K16 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R7 K18 ["DropdownMenu"]
  GETTABLEKS R11 R12 K16 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R7 K19 ["Image"]
  GETTABLEKS R12 R13 K16 ["style"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R7 K20 ["Pane"]
  GETTABLEKS R13 R14 K16 ["style"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R7 K21 ["ScrollingFrame"]
  GETTABLEKS R14 R15 K16 ["style"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R7 K22 ["SelectInput"]
  GETTABLEKS R15 R16 K16 ["style"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R7 K23 ["Separator"]
  GETTABLEKS R16 R17 K16 ["style"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R7 K24 ["SimpleTab"]
  GETTABLEKS R17 R18 K16 ["style"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R7 K25 ["Tooltip"]
  GETTABLEKS R18 R19 K16 ["style"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K26 ["Src"]
  GETTABLEKS R20 R21 K27 ["Flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K26 ["Src"]
  GETTABLEKS R21 R22 K27 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K26 ["Src"]
  GETTABLEKS R22 R23 K27 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerPickTabsMenu"]
  CALL R20 1 1
  GETTABLEKS R22 R2 K31 ["SharedFlags"]
  GETTABLEKS R21 R22 K32 ["getFFlagDevFrameworkAssetRenderModelEnableSky"]
  CALL R21 0 1
  GETIMPORT R22 K34 [game]
  LOADK R24 K35 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R25 0
  NAMECALL R22 R22 K36 ["DefineFastFlag"]
  CALL R22 3 1
  NEWTABLE R23 0 0
  LOADK R26 K37 ["AddItemButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K37 ["AddItemButton"]
  DUPTABLE R25 K46 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R26 42
  SETTABLEKS R26 R25 K39 ["Height"]
  LOADK R26 K47 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R26 R25 K19 ["Image"]
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
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K53 ["AnimationControllerDisplay"]
  DUPTABLE R25 K57 [{"Padding", "Position", "Size"}]
  LOADN R26 30
  SETTABLEKS R26 R25 K54 ["Padding"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  LOADN R30 244
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 32
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K60 ["AnimationPlaybackSlider"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K60 ["AnimationPlaybackSlider"]
  DUPTABLE R25 K65 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R26 R4 K61 ["PlayImage"]
  SETTABLEKS R26 R25 K61 ["PlayImage"]
  LOADK R26 K66 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R26 R25 K62 ["PauseImage"]
  LOADN R26 20
  SETTABLEKS R26 R25 K63 ["PlayButtonWidth"]
  LOADN R26 60
  SETTABLEKS R26 R25 K64 ["PlayTimeLabelWidth"]
  LOADN R26 12
  SETTABLEKS R26 R25 K54 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K67 ["AnimationPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K67 ["AnimationPreview"]
  NEWTABLE R25 4 0
  LOADK R26 K68 [0.5]
  SETTABLEKS R26 R25 K69 ["PausedAnimationAlpha"]
  DUPTABLE R26 K71 [{"FrontRightAngleLerp"}]
  LOADK R27 K72 [0.4]
  SETTABLEKS R27 R26 K70 ["FrontRightAngleLerp"]
  SETTABLEKS R26 R25 K73 ["&BodyPreview"]
  DUPTABLE R26 K76 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R27 30
  SETTABLEKS R27 R26 K74 ["FieldOfView"]
  LOADK R27 K77 [0.08]
  SETTABLEKS R27 R26 K70 ["FrontRightAngleLerp"]
  LOADK R27 K78 [2.8]
  SETTABLEKS R27 R26 K75 ["InitialDistance"]
  SETTABLEKS R26 R25 K79 ["&FacePreview"]
  SETTABLE R25 R23 R24
  LOADK R26 K80 ["AssetPalettes"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K80 ["AssetPalettes"]
  DUPTABLE R25 K83 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
  GETTABLEKS R26 R4 K84 ["SubBackground2"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K85 ["ActionHover"]
  SETTABLEKS R26 R25 K82 ["BackgroundColorHover"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R13
  DUPTABLE R28 K92 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R29 R4 K84 ["SubBackground2"]
  SETTABLEKS R29 R28 K88 ["BackgroundColor3"]
  LOADN R29 0
  SETTABLEKS R29 R28 K89 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K54 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K90 ["ScrollBarThickness"]
  GETIMPORT R29 K52 [UDim.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K91 ["Spacing"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["ScrollingFrame"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 24
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K93 ["AutoSetupScreen"]
  NAMECALL R24 R6 K38 ["add"]
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
  GETIMPORT R26 K59 [UDim2.new]
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
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K100 ["AvatarScreen"]
  DUPTABLE R25 K102 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R26 K106 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R27 R4 K84 ["SubBackground2"]
  SETTABLEKS R27 R26 K81 ["BackgroundColor"]
  GETTABLEKS R27 R4 K107 ["SubBackground"]
  SETTABLEKS R27 R26 K103 ["SeparatorColor"]
  LOADN R27 4
  SETTABLEKS R27 R26 K104 ["SeparatorWidth"]
  LOADN R27 122
  SETTABLEKS R27 R26 K105 ["Width"]
  SETTABLEKS R26 R25 K80 ["AssetPalettes"]
  DUPTABLE R26 K109 [{"Height", "VerticalOffset"}]
  LOADN R27 64
  SETTABLEKS R27 R26 K39 ["Height"]
  LOADN R27 252
  SETTABLEKS R27 R26 K108 ["VerticalOffset"]
  SETTABLEKS R26 R25 K101 ["Tabs"]
  SETTABLE R25 R23 R24
  LOADK R26 K110 ["Background"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K110 ["Background"]
  DUPTABLE R25 K111 [{"Image"}]
  GETTABLEKS R26 R4 K112 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K19 ["Image"]
  SETTABLE R25 R23 R24
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+18]
  LOADK R26 K113 ["BodyPointsTool"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K113 ["BodyPointsTool"]
  DUPTABLE R25 K116 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K118 ["projection.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K114 ["ProjectionImage"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K119 ["symmetry.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K115 ["SymmetricalImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K120 ["Catalog"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K120 ["Catalog"]
  DUPTABLE R25 K123 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R13
  DUPTABLE R28 K126 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R29 R4 K127 ["Border"]
  SETTABLEKS R29 R28 K124 ["BorderColor3"]
  LOADN R29 10
  SETTABLEKS R29 R28 K54 ["Padding"]
  GETIMPORT R29 K131 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R29 R28 K125 ["VerticalScrollBarInset"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["ScrollingFrame"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 1
  LOADN R28 214
  CALL R26 2 1
  SETTABLEKS R26 R25 K121 ["ScrollingFrameHeight"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 90
  LOADN R28 90
  CALL R26 2 1
  SETTABLEKS R26 R25 K122 ["CellSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K134 ["CatalogItemButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K134 ["CatalogItemButton"]
  DUPTABLE R25 K139 [{"HoverX", "AccessoryTypeImage", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R26 K142 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K140 ["Color"]
  LOADK R27 K143 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K135 ["HoverX"]
  DUPTABLE R26 K148 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K140 ["Color"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 4
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADK R27 K149 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R27 R26 K146 ["LayeredImage"]
  LOADK R27 K150 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R27 R26 K147 ["RigidImage"]
  SETTABLEKS R26 R25 K136 ["AccessoryTypeImage"]
  DUPTABLE R26 K142 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K140 ["Color"]
  LOADK R27 K151 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 1
  LOADN R31 236
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
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
  LOADK R26 K152 ["ContextualSurveyDialogButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K152 ["ContextualSurveyDialogButton"]
  DUPTABLE R25 K153 [{"Image", "Position", "Size"}]
  GETTABLEKS R26 R4 K154 ["SendFeedback"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 0
  LOADN R28 28
  LOADN R29 1
  LOADN R30 196
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+42]
  LOADK R26 K155 ["DummyPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K155 ["DummyPreview"]
  DUPTABLE R25 K162 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K156 ["Ambient"]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K157 ["LightColor"]
  LOADK R27 K68 [0.5]
  LOADN R28 255
  LOADK R29 K166 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K168 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K158 ["LightDirection"]
  LOADK R26 K169 [0.25]
  SETTABLEKS R26 R25 K159 ["PanSpeedMultiplier"]
  LOADK R26 K170 [0.2]
  SETTABLEKS R26 R25 K160 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K161 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K171 ["EquippedItemsSidebar"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K171 ["EquippedItemsSidebar"]
  DUPTABLE R25 K177 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "PositionOffset", "ScrollingFrameSizeOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 50
  LOADN R28 50
  CALL R26 2 1
  SETTABLEKS R26 R25 K122 ["CellSize"]
  LOADN R26 50
  SETTABLEKS R26 R25 K172 ["FrameSizeOffset"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 2
  CALL R26 2 1
  SETTABLEKS R26 R25 K173 ["ItemSpacing"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K174 ["PositionOffset"]
  LOADN R26 83
  SETTABLEKS R26 R25 K175 ["ScrollingFrameSizeOffset"]
  LOADN R26 10
  SETTABLEKS R26 R25 K176 ["SidebarSpacing"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 0
  LOADN R28 50
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K178 ["EquippedItemPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K178 ["EquippedItemPreview"]
  DUPTABLE R25 K183 [{"HoverX", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R26 K184 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R27 K143 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K135 ["HoverX"]
  GETTABLEKS R26 R4 K127 ["Border"]
  SETTABLEKS R26 R25 K179 ["StrokeColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K180 ["StrokeThickness"]
  LOADK R26 K185 [0.7]
  SETTABLEKS R26 R25 K181 ["ItemHiddenTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K182 ["ItemWornTransparency"]
  SETTABLE R25 R23 R24
  LOADK R26 K186 ["EquippedItemSideMenu"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K186 ["EquippedItemSideMenu"]
  DUPTABLE R25 K191 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K187 ["DotsBackground"]
  GETTABLEKS R26 R4 K192 ["TextContrast"]
  SETTABLEKS R26 R25 K188 ["DotsBackgroundHover"]
  LOADN R26 16
  SETTABLEKS R26 R25 K189 ["IconSize"]
  LOADN R26 1
  SETTABLEKS R26 R25 K190 ["Margin"]
  SETTABLE R25 R23 R24
  LOADK R26 K193 ["ImportPage"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K193 ["ImportPage"]
  DUPTABLE R25 K201 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R26 K202 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R26 R25 K194 ["ArrowImage"]
  GETTABLEKS R26 R4 K203 ["TextPrimary"]
  SETTABLEKS R26 R25 K195 ["ArrowColor"]
  DUPTABLE R26 K209 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R27 75
  SETTABLEKS R27 R26 K189 ["IconSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K204 ["InnerPadding"]
  LOADN R27 16
  SETTABLEKS R27 R26 K205 ["NameFontSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K206 ["NameLines"]
  LOADN R27 4
  SETTABLEKS R27 R26 K54 ["Padding"]
  GETTABLEKS R27 R4 K210 ["TextLink"]
  SETTABLEKS R27 R26 K207 ["TitleColor"]
  GETIMPORT R27 K211 [Color3.new]
  LOADK R28 K72 [0.4]
  LOADK R29 K72 [0.4]
  LOADK R30 K72 [0.4]
  CALL R27 3 1
  SETTABLEKS R27 R26 K208 ["PreviewAmbient"]
  SETTABLEKS R26 R25 K196 ["Avatar"]
  DUPTABLE R26 K212 [{"Size", "IconSize"}]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADN R27 12
  SETTABLEKS R27 R26 K189 ["IconSize"]
  SETTABLEKS R26 R25 K197 ["BackButton"]
  LOADN R26 35
  SETTABLEKS R26 R25 K198 ["HeaderHeight"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 15
  CALL R26 2 1
  SETTABLEKS R26 R25 K199 ["GridPadding"]
  GETIMPORT R26 K52 [UDim.new]
  LOADK R27 K213 [0.8]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K200 ["SearchBarHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K214 ["ItemDataPreviewModel"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K214 ["ItemDataPreviewModel"]
  DUPTABLE R25 K216 [{"InstanceAmbient"}]
  GETIMPORT R26 K211 [Color3.new]
  LOADK R27 K72 [0.4]
  LOADK R28 K72 [0.4]
  LOADK R29 K72 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K215 ["InstanceAmbient"]
  SETTABLE R25 R23 R24
  LOADK R26 K217 ["ModelPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K217 ["ModelPreview"]
  DUPTABLE R25 K219 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K156 ["Ambient"]
  LOADB R26 1
  SETTABLEKS R26 R25 K218 ["EnableSky"]
  JUMPIFNOT R21 [+7]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 221
  LOADN R28 242
  LOADN R29 242
  CALL R26 3 1
  JUMP [+6]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K157 ["LightColor"]
  JUMPIFNOT R21 [+8]
  LOADK R27 K72 [0.4]
  LOADK R28 K220 [-0.5]
  LOADK R29 K221 [0.6]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K168 [Vector3.new]
  CALL R26 3 1
  JUMP [+7]
  LOADK R27 K68 [0.5]
  LOADN R28 255
  LOADK R29 K166 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K168 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K158 ["LightDirection"]
  LOADK R26 K169 [0.25]
  SETTABLEKS R26 R25 K159 ["PanSpeedMultiplier"]
  LOADK R26 K170 [0.2]
  SETTABLEKS R26 R25 K160 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K161 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K222 ["Notice"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K222 ["Notice"]
  DUPTABLE R25 K226 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R26 R4 K107 ["SubBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K223 ["CornerRadius"]
  GETTABLEKS R26 R4 K203 ["TextPrimary"]
  SETTABLEKS R26 R25 K224 ["TextColor"]
  LOADN R26 20
  SETTABLEKS R26 R25 K225 ["TextSize"]
  DUPTABLE R26 K231 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R27 8
  SETTABLEKS R27 R26 K227 ["Left"]
  LOADN R27 8
  SETTABLEKS R27 R26 K228 ["Right"]
  LOADN R27 4
  SETTABLEKS R27 R26 K229 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K230 ["Bottom"]
  SETTABLEKS R26 R25 K54 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K232 ["PickTabMenu"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+34]
  GETTABLEKS R24 R6 K232 ["PickTabMenu"]
  DUPTABLE R25 K233 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K223 ["CornerRadius"]
  GETTABLEKS R26 R4 K203 ["TextPrimary"]
  SETTABLEKS R26 R25 K40 ["ImageColor"]
  LOADN R26 6
  SETTABLEKS R26 R25 K54 ["Padding"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 224
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+12]
  LOADK R26 K234 ["PrimaryDummyPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K234 ["PrimaryDummyPreview"]
  DUPTABLE R25 K236 [{"BackgroundImage"}]
  GETTABLEKS R26 R4 K112 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K235 ["BackgroundImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K237 ["ResetCameraButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K237 ["ResetCameraButton"]
  DUPTABLE R25 K238 [{"Size", "Spacing", "Image"}]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  LOADN R26 5
  SETTABLEKS R26 R25 K91 ["Spacing"]
  GETTABLEKS R26 R4 K239 ["ResetCameraImage"]
  SETTABLEKS R26 R25 K19 ["Image"]
  SETTABLE R25 R23 R24
  LOADK R26 K240 ["SelectScreen"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K240 ["SelectScreen"]
  DUPTABLE R25 K242 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K241 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K243 ["SkinPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K243 ["SkinPreview"]
  DUPTABLE R25 K249 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R26 R4 K250 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R26 R25 K244 ["HoveredBorderColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K245 ["HoveredBorderThickness"]
  GETTABLEKS R26 R4 K251 ["PrimaryMain"]
  SETTABLEKS R26 R25 K246 ["SelectedBorderColor"]
  LOADN R26 2
  SETTABLEKS R26 R25 K247 ["SelectedBorderThickness"]
  GETIMPORT R26 K165 [Color3.fromRGB]
  LOADN R27 76
  LOADN R28 76
  LOADN R29 76
  CALL R26 3 1
  SETTABLEKS R26 R25 K248 ["DisabledColorToBlend"]
  SETTABLE R25 R23 R24
  LOADK R26 K252 ["StageSelector"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K252 ["StageSelector"]
  DUPTABLE R25 K256 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R26 R4 K257 ["MainBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K258 ["ButtonHover"]
  SETTABLEKS R26 R25 K253 ["ButtonSelectedBackgroundColor"]
  LOADN R26 32
  SETTABLEKS R26 R25 K241 ["ButtonHeight"]
  GETTABLEKS R26 R4 K259 ["MainText"]
  SETTABLEKS R26 R25 K254 ["IconColor"]
  GETTABLEKS R26 R4 K260 ["MainTextDisabled"]
  SETTABLEKS R26 R25 K255 ["IconColorDisabled"]
  LOADN R26 18
  SETTABLEKS R26 R25 K189 ["IconSize"]
  LOADN R26 64
  SETTABLEKS R26 R25 K105 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K5 [require]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K261 ["Stars"]
  DUPTABLE R25 K268 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R26 R4 K259 ["MainText"]
  SETTABLEKS R26 R25 K262 ["StarColor"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 16
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K263 ["StarSize"]
  GETTABLEKS R26 R4 K269 ["Star"]
  SETTABLEKS R26 R25 K264 ["StarFilled"]
  GETTABLEKS R26 R4 K265 ["StarUnfilled"]
  SETTABLEKS R26 R25 K265 ["StarUnfilled"]
  LOADN R26 4
  SETTABLEKS R26 R25 K266 ["StarSpacing"]
  LOADN R26 10
  SETTABLEKS R26 R25 K267 ["RatingSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K14 ["UIData"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K270 ["SubmitDialog"]
  DUPTABLE R25 K271 [{"Width"}]
  LOADN R26 244
  SETTABLEKS R26 R25 K105 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K16 ["style"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K272 ["SubmitInner"]
  DUPTABLE R25 K276 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K273 ["CallToActionSpacing"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K274 ["CheckboxSpacing"]
  LOADN R26 40
  SETTABLEKS R26 R25 K275 ["ContentPadding"]
  SETTABLE R25 R23 R24
  LOADK R26 K21 ["ScrollingFrame"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K277 ["Survey"]
  DUPTABLE R25 K280 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R26 22
  SETTABLEKS R26 R25 K278 ["HeadIndent"]
  LOADN R26 10
  SETTABLEKS R26 R25 K91 ["Spacing"]
  LOADN R26 96
  SETTABLEKS R26 R25 K279 ["MessageHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K25 ["Tooltip"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K281 ["SurveyDialog"]
  DUPTABLE R25 K283 [{"Width", "FinishDialogSize"}]
  LOADN R26 184
  SETTABLEKS R26 R25 K105 ["Width"]
  GETIMPORT R26 K145 [Vector2.new]
  LOADN R27 250
  LOADN R28 30
  CALL R26 2 1
  SETTABLEKS R26 R25 K282 ["FinishDialogSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K28 ["getFFlagAvatarPreviewerAutoSetup"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+12]
  GETTABLEKS R24 R6 K284 ["TabBar"]
  DUPTABLE R25 K285 [{"BackgroundColor", "BackgroundColorHover"}]
  GETTABLEKS R26 R4 K107 ["SubBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K85 ["ActionHover"]
  SETTABLEKS R26 R25 K82 ["BackgroundColorHover"]
  SETTABLE R25 R23 R24
  LOADK R26 K30 ["getFFlagAvatarPreviewerPickTabsMenu"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K286 ["TestingScreen"]
  DUPTABLE R25 K242 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K241 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K31 ["SharedFlags"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K287 ["UGCValidationErrorDialog"]
  DUPTABLE R25 K295 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K288 ["DetailsSpacing"]
  LOADN R26 4
  SETTABLEKS R26 R25 K289 ["IconTextSpacing"]
  LOADN R26 26
  SETTABLEKS R26 R25 K290 ["TitleDetailsSpacing"]
  GETIMPORT R26 K145 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K291 ["AlertMinContentSize"]
  LOADN R26 18
  SETTABLEKS R26 R25 K225 ["TextSize"]
  GETTABLEKS R26 R4 K296 ["WarningText"]
  SETTABLEKS R26 R25 K292 ["WarningColor"]
  GETIMPORT R26 K299 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R26 R25 K293 ["WarningFont"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K44 ["PaddingBottom"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K294 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K45 ["FailureDialogSpacing"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K301 ["UGCValidationNotice"]
  DUPTABLE R25 K303 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 8
  LOADN R28 252
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 192
  LOADN R29 0
  LOADN R30 48
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  GETIMPORT R26 K133 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K302 ["ValidationIconSize"]
  GETTABLEKS R26 R4 K296 ["WarningText"]
  SETTABLEKS R26 R25 K292 ["WarningColor"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K44 ["PaddingBottom"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K294 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K48 ["TextSecondary"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  DUPTABLE R24 K305 [{"Color", "Position", "Size"}]
  GETIMPORT R25 K211 [Color3.new]
  LOADN R26 1
  LOADN R27 1
  LOADN R28 1
  CALL R25 3 1
  SETTABLEKS R25 R24 K140 ["Color"]
  GETIMPORT R25 K133 [UDim2.fromOffset]
  LOADN R26 4
  LOADN R27 14
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K133 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  GETTABLEKS R25 R6 K304 ["UGCValidationStatusIcon"]
  NEWTABLE R26 2 0
  GETTABLEKS R28 R1 K86 ["Dictionary"]
  GETTABLEKS R27 R28 K87 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K306 [{"Color", "Image"}]
  GETTABLEKS R30 R4 K296 ["WarningText"]
  SETTABLEKS R30 R29 K140 ["Color"]
  LOADK R31 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R32 K44 ["PaddingBottom"]
  CONCAT R30 R31 R32
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K307 ["&Failure"]
  GETTABLEKS R28 R1 K86 ["Dictionary"]
  GETTABLEKS R27 R28 K87 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K308 ["UGCValidationSuccessImage"]
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K309 ["&Success"]
  SETTABLE R26 R23 R25
  LOADK R27 K54 ["Padding"]
  NAMECALL R25 R6 K38 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K310 ["DisambiguationMenu"]
  DUPTABLE R26 K320 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 244
  LOADN R29 44
  CALL R27 2 1
  SETTABLEKS R27 R26 K311 ["MinContentSize"]
  GETIMPORT R27 K145 [Vector2.new]
  LOADN R28 200
  LOADN R29 150
  CALL R27 2 1
  SETTABLEKS R27 R26 K312 ["ConfirmCancelContentSize"]
  LOADN R27 8
  SETTABLEKS R27 R26 K313 ["HorizontalSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K314 ["VerticalSpacing"]
  LOADN R27 24
  SETTABLEKS R27 R26 K315 ["TitleContentsSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K316 ["TextSpacing"]
  LOADN R27 150
  SETTABLEKS R27 R26 K317 ["DropdownWidth"]
  LOADN R27 120
  SETTABLEKS R27 R26 K318 ["AttachmentDropdownWidth"]
  GETTABLEKS R27 R4 K107 ["SubBackground"]
  SETTABLEKS R27 R26 K319 ["IconBackground"]
  GETIMPORT R27 K133 [UDim2.fromOffset]
  LOADN R28 72
  LOADN R29 72
  CALL R27 2 1
  SETTABLEKS R27 R26 K189 ["IconSize"]
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K15 ["Alert"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R8
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K86 ["Dictionary"]
  GETTABLEKS R29 R30 K87 ["join"]
  GETTABLEKS R30 R8 K321 ["&Warning"]
  DUPTABLE R31 K323 [{"MaxWidth"}]
  LOADN R32 132
  SETTABLEKS R32 R31 K322 ["MaxWidth"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K324 ["&WarningLong"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  MOVE R25 R19
  CALL R25 0 1
  JUMPIFNOT R25 [+65]
  GETTABLEKS R25 R6 K17 ["Button"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R9
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K86 ["Dictionary"]
  GETTABLEKS R29 R30 K87 ["join"]
  GETTABLEKS R30 R9 K325 ["&Round"]
  NEWTABLE R31 2 0
  GETTABLEKS R33 R1 K86 ["Dictionary"]
  GETTABLEKS R32 R33 K87 ["join"]
  GETTABLEKS R33 R9 K326 ["BackgroundStyle"]
  DUPTABLE R34 K328 [{"BorderColor"}]
  GETTABLEKS R35 R4 K329 ["SubText"]
  SETTABLEKS R35 R34 K327 ["BorderColor"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K326 ["BackgroundStyle"]
  GETTABLEKS R32 R5 K330 ["Hover"]
  GETTABLEKS R34 R1 K86 ["Dictionary"]
  GETTABLEKS R33 R34 K87 ["join"]
  GETTABLEKS R35 R5 K330 ["Hover"]
  GETTABLE R34 R9 R35
  DUPTABLE R35 K331 [{"BackgroundStyle"}]
  GETTABLEKS R37 R1 K86 ["Dictionary"]
  GETTABLEKS R36 R37 K87 ["join"]
  GETTABLEKS R39 R5 K330 ["Hover"]
  GETTABLE R38 R9 R39
  GETTABLEKS R37 R38 K326 ["BackgroundStyle"]
  DUPTABLE R38 K328 [{"BorderColor"}]
  GETTABLEKS R39 R4 K329 ["SubText"]
  SETTABLEKS R39 R38 K327 ["BorderColor"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K326 ["BackgroundStyle"]
  CALL R33 2 1
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K332 ["&RoundHighlighted"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  JUMPIFNOT R22 [+36]
  GETTABLEKS R25 R6 K18 ["DropdownMenu"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R10
  DUPTABLE R28 K334 [{"MaxHeight"}]
  LOADK R29 K79 ["&FacePreview"]
  SETTABLEKS R29 R28 K333 ["MaxHeight"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K22 ["SelectInput"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R14
  DUPTABLE R28 K336 [{"DropdownMenu"}]
  GETTABLEKS R30 R1 K86 ["Dictionary"]
  GETTABLEKS R29 R30 K87 ["join"]
  GETTABLEKS R30 R14 K18 ["DropdownMenu"]
  DUPTABLE R31 K334 [{"MaxHeight"}]
  LOADK R32 K79 ["&FacePreview"]
  SETTABLEKS R32 R31 K333 ["MaxHeight"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K18 ["DropdownMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K19 ["Image"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R11
  NEWTABLE R28 8 0
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K337 ["Hide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K338 ["&EquippedItemHideIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K339 ["HideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K340 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K341 ["HoverMenu"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K342 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K343 ["Unhide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K344 ["&EquippedItemUnhideIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K345 ["UnhideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K346 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K347 ["HoverMenuDisabled"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K348 ["&EquippedItemDisabledBackground"]
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K349 ["Dots"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETTABLEKS R30 R4 K17 ["Button"]
  SETTABLEKS R30 R29 K350 ["ImageColor3"]
  GETTABLEKS R30 R5 K330 ["Hover"]
  DUPTABLE R31 K351 [{"ImageColor3"}]
  GETTABLEKS R32 R4 K352 ["ImageButtonHover"]
  SETTABLEKS R32 R31 K350 ["ImageColor3"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K353 ["&EquippedItemDotsIcon"]
  DUPTABLE R29 K354 [{"Image", "Size"}]
  GETTABLEKS R30 R4 K355 ["DotsVertical"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K133 [UDim2.fromOffset]
  LOADN R31 20
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K56 ["Size"]
  SETTABLEKS R29 R28 K356 ["&PickTabMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K23 ["Separator"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R15
  NEWTABLE R28 1 0
  DUPTABLE R29 K358 [{"StretchMargin"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K357 ["StretchMargin"]
  SETTABLEKS R29 R28 K359 ["&SelectScreenSeparator"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K20 ["Pane"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R12
  NEWTABLE R28 4 0
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K17 ["Button"]
  SETTABLEKS R30 R29 K110 ["Background"]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K223 ["CornerRadius"]
  GETTABLEKS R30 R5 K330 ["Hover"]
  DUPTABLE R31 K360 [{"Background"}]
  GETTABLEKS R32 R4 K258 ["ButtonHover"]
  SETTABLEKS R32 R31 K110 ["Background"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R5 K361 ["Disabled"]
  DUPTABLE R31 K360 [{"Background"}]
  GETTABLEKS R32 R4 K362 ["ButtonPressed"]
  SETTABLEKS R32 R31 K110 ["Background"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K363 ["&EquippedItemPreview"]
  DUPTABLE R29 K364 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K223 ["CornerRadius"]
  SETTABLEKS R29 R28 K365 ["&EquippedItemPreviewInner"]
  DUPTABLE R29 K360 [{"Background"}]
  GETTABLEKS R30 R4 K366 ["ForegroundMuted"]
  SETTABLEKS R30 R29 K110 ["Background"]
  SETTABLEKS R29 R28 K367 ["&EquippedItemHoverMenu"]
  DUPTABLE R29 K364 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K223 ["CornerRadius"]
  SETTABLEKS R29 R28 K368 ["&SkinPreview"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K24 ["SimpleTab"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R16
  NEWTABLE R28 2 0
  NEWTABLE R29 8 0
  GETTABLEKS R30 R4 K84 ["SubBackground2"]
  SETTABLEKS R30 R29 K81 ["BackgroundColor"]
  LOADN R30 1
  SETTABLEKS R30 R29 K89 ["BackgroundTransparency"]
  LOADN R30 0
  SETTABLEKS R30 R29 K369 ["BorderSize"]
  DUPTABLE R30 K370 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R31 12
  SETTABLEKS R31 R30 K227 ["Left"]
  LOADN R31 2
  SETTABLEKS R31 R30 K229 ["Top"]
  LOADN R31 0
  SETTABLEKS R31 R30 K230 ["Bottom"]
  LOADN R31 12
  SETTABLEKS R31 R30 K228 ["Right"]
  SETTABLEKS R30 R29 K54 ["Padding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K371 ["TopLineHeight"]
  GETTABLEKS R30 R5 K372 ["Selected"]
  DUPTABLE R31 K373 [{"BackgroundColor", "Font"}]
  GETTABLEKS R32 R4 K84 ["SubBackground2"]
  SETTABLEKS R32 R31 K81 ["BackgroundColor"]
  GETIMPORT R32 K375 [Enum.Font.SourceSansBold]
  SETTABLEKS R32 R31 K297 ["Font"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K376 ["&AssetPaletteTab"]
  DUPTABLE R29 K377 [{"BorderSize"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K369 ["BorderSize"]
  SETTABLEKS R29 R28 K378 ["&CategoryTab"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K25 ["Tooltip"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R17
  NEWTABLE R28 1 0
  DUPTABLE R29 K380 [{"ShowDelay"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K379 ["ShowDelay"]
  SETTABLEKS R29 R28 K381 ["&NoDelay"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  RETURN R23 1
