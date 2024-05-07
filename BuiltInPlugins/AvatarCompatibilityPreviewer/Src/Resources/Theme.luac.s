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
  GETTABLEKS R21 R2 K30 ["SharedFlags"]
  GETTABLEKS R20 R21 K31 ["getFFlagDevFrameworkAssetRenderModelEnableSky"]
  CALL R20 0 1
  GETIMPORT R21 K33 [game]
  LOADK R23 K34 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R24 0
  NAMECALL R21 R21 K35 ["DefineFastFlag"]
  CALL R21 3 1
  NEWTABLE R22 0 0
  LOADK R25 K36 ["AddItemButton"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K36 ["AddItemButton"]
  DUPTABLE R24 K45 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R25 42
  SETTABLEKS R25 R24 K38 ["Height"]
  LOADK R25 K46 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R25 R24 K19 ["Image"]
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
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K52 ["AnimationControllerDisplay"]
  DUPTABLE R24 K56 [{"Padding", "Position", "Size"}]
  LOADN R25 30
  SETTABLEKS R25 R24 K53 ["Padding"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 244
  CALL R25 4 1
  SETTABLEKS R25 R24 K54 ["Position"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 32
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K59 ["AnimationPlaybackSlider"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K59 ["AnimationPlaybackSlider"]
  DUPTABLE R24 K64 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R25 R4 K60 ["PlayImage"]
  SETTABLEKS R25 R24 K60 ["PlayImage"]
  LOADK R25 K65 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R25 R24 K61 ["PauseImage"]
  LOADN R25 20
  SETTABLEKS R25 R24 K62 ["PlayButtonWidth"]
  LOADN R25 60
  SETTABLEKS R25 R24 K63 ["PlayTimeLabelWidth"]
  LOADN R25 12
  SETTABLEKS R25 R24 K53 ["Padding"]
  SETTABLE R24 R22 R23
  LOADK R25 K66 ["AnimationPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K66 ["AnimationPreview"]
  NEWTABLE R24 4 0
  LOADK R25 K67 [0.5]
  SETTABLEKS R25 R24 K68 ["PausedAnimationAlpha"]
  DUPTABLE R25 K70 [{"FrontRightAngleLerp"}]
  LOADK R26 K71 [0.4]
  SETTABLEKS R26 R25 K69 ["FrontRightAngleLerp"]
  SETTABLEKS R25 R24 K72 ["&BodyPreview"]
  DUPTABLE R25 K75 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R26 30
  SETTABLEKS R26 R25 K73 ["FieldOfView"]
  LOADK R26 K76 [0.08]
  SETTABLEKS R26 R25 K69 ["FrontRightAngleLerp"]
  LOADK R26 K77 [2.8]
  SETTABLEKS R26 R25 K74 ["InitialDistance"]
  SETTABLEKS R25 R24 K78 ["&FacePreview"]
  SETTABLE R24 R22 R23
  LOADK R25 K79 ["AssetPalettes"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K79 ["AssetPalettes"]
  DUPTABLE R24 K80 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R13
  DUPTABLE R27 K87 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R28 R4 K88 ["SubBackground2"]
  SETTABLEKS R28 R27 K83 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K84 ["BackgroundTransparency"]
  LOADN R28 0
  SETTABLEKS R28 R27 K53 ["Padding"]
  LOADN R28 0
  SETTABLEKS R28 R27 K85 ["ScrollBarThickness"]
  GETIMPORT R28 K51 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K86 ["Spacing"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K21 ["ScrollingFrame"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 24
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K89 ["AutoSetupScreen"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K89 ["AutoSetupScreen"]
  DUPTABLE R24 K94 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K90 ["AlertPaddingHorizontal"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K91 ["AlertPaddingVertical"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 1
  LOADN R27 240
  LOADN R28 1
  LOADN R29 240
  CALL R25 4 1
  SETTABLEKS R25 R24 K92 ["ControlsPosition"]
  LOADK R25 K95 [-0.25]
  SETTABLEKS R25 R24 K93 ["SpinRate"]
  SETTABLE R24 R22 R23
  LOADK R25 K96 ["AvatarScreen"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K96 ["AvatarScreen"]
  DUPTABLE R24 K98 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R25 K103 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R26 R4 K88 ["SubBackground2"]
  SETTABLEKS R26 R25 K99 ["BackgroundColor"]
  GETTABLEKS R26 R4 K104 ["SubBackground"]
  SETTABLEKS R26 R25 K100 ["SeparatorColor"]
  LOADN R26 4
  SETTABLEKS R26 R25 K101 ["SeparatorWidth"]
  LOADN R26 122
  SETTABLEKS R26 R25 K102 ["Width"]
  SETTABLEKS R25 R24 K79 ["AssetPalettes"]
  DUPTABLE R25 K106 [{"Height", "VerticalOffset"}]
  LOADN R26 64
  SETTABLEKS R26 R25 K38 ["Height"]
  LOADN R26 252
  SETTABLEKS R26 R25 K105 ["VerticalOffset"]
  SETTABLEKS R25 R24 K97 ["Tabs"]
  SETTABLE R24 R22 R23
  LOADK R25 K107 ["Background"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K107 ["Background"]
  DUPTABLE R24 K108 [{"Image"}]
  GETTABLEKS R25 R4 K109 ["PreviewerBackgroundImage"]
  SETTABLEKS R25 R24 K19 ["Image"]
  SETTABLE R24 R22 R23
  MOVE R23 R19
  CALL R23 0 1
  JUMPIFNOT R23 [+18]
  LOADK R25 K110 ["BodyPointsTool"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K110 ["BodyPointsTool"]
  DUPTABLE R24 K113 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R26 K114 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K115 ["projection.png"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K111 ["ProjectionImage"]
  LOADK R26 K114 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K116 ["symmetry.png"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K112 ["SymmetricalImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K117 ["Catalog"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K117 ["Catalog"]
  DUPTABLE R24 K120 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R13
  DUPTABLE R27 K123 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R28 R4 K124 ["Border"]
  SETTABLEKS R28 R27 K121 ["BorderColor3"]
  LOADN R28 10
  SETTABLEKS R28 R27 K53 ["Padding"]
  GETIMPORT R28 K128 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R28 R27 K122 ["VerticalScrollBarInset"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K21 ["ScrollingFrame"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 1
  LOADN R27 214
  CALL R25 2 1
  SETTABLEKS R25 R24 K118 ["ScrollingFrameHeight"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 90
  LOADN R27 90
  CALL R25 2 1
  SETTABLEKS R25 R24 K119 ["CellSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K131 ["CatalogItemButton"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K131 ["CatalogItemButton"]
  DUPTABLE R24 K136 [{"HoverX", "AccessoryTypeImage", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R25 K139 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K137 ["Color"]
  LOADK R26 K140 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K138 ["AnchorPoint"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLEKS R25 R24 K132 ["HoverX"]
  DUPTABLE R25 K145 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K137 ["Color"]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K138 ["AnchorPoint"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 4
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  LOADK R26 K146 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R26 R25 K143 ["LayeredImage"]
  LOADK R26 K147 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R26 R25 K144 ["RigidImage"]
  SETTABLEKS R25 R24 K133 ["AccessoryTypeImage"]
  DUPTABLE R25 K139 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K137 ["Color"]
  LOADK R26 K148 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K138 ["AnchorPoint"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLEKS R25 R24 K134 ["UserImage"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 12
  CALL R25 2 1
  SETTABLEKS R25 R24 K135 ["ItemNamePaddingBottom"]
  SETTABLE R24 R22 R23
  LOADK R25 K149 ["ContextualSurveyDialogButton"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K149 ["ContextualSurveyDialogButton"]
  DUPTABLE R24 K150 [{"Image", "Position", "Size"}]
  GETTABLEKS R25 R4 K151 ["SendFeedback"]
  SETTABLEKS R25 R24 K19 ["Image"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 0
  LOADN R27 28
  LOADN R28 1
  LOADN R29 196
  CALL R25 4 1
  SETTABLEKS R25 R24 K54 ["Position"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Size"]
  SETTABLE R24 R22 R23
  MOVE R23 R18
  CALL R23 0 1
  JUMPIF R23 [+42]
  LOADK R25 K152 ["DummyPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K152 ["DummyPreview"]
  DUPTABLE R24 K159 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 185
  LOADN R28 200
  CALL R25 3 1
  SETTABLEKS R25 R24 K153 ["Ambient"]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 242
  LOADN R27 236
  LOADN R28 227
  CALL R25 3 1
  SETTABLEKS R25 R24 K154 ["LightColor"]
  LOADK R26 K67 [0.5]
  LOADN R27 255
  LOADK R28 K163 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K165 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K155 ["LightDirection"]
  LOADK R25 K166 [0.25]
  SETTABLEKS R25 R24 K156 ["PanSpeedMultiplier"]
  LOADK R25 K167 [0.2]
  SETTABLEKS R25 R24 K157 ["PlatformHeight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K158 ["PlatformSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K168 ["EquippedItemsSidebar"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K168 ["EquippedItemsSidebar"]
  DUPTABLE R24 K174 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "PositionOffset", "ScrollingFrameSizeOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 50
  LOADN R27 50
  CALL R25 2 1
  SETTABLEKS R25 R24 K119 ["CellSize"]
  LOADN R25 50
  SETTABLEKS R25 R24 K169 ["FrameSizeOffset"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K170 ["ItemSpacing"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 5
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K171 ["PositionOffset"]
  LOADN R25 83
  SETTABLEKS R25 R24 K172 ["ScrollingFrameSizeOffset"]
  LOADN R25 10
  SETTABLEKS R25 R24 K173 ["SidebarSpacing"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 0
  LOADN R27 50
  LOADN R28 1
  LOADN R29 236
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K175 ["EquippedItemPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K175 ["EquippedItemPreview"]
  DUPTABLE R24 K180 [{"HoverX", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R25 K181 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R26 K140 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K138 ["AnchorPoint"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLEKS R25 R24 K132 ["HoverX"]
  GETTABLEKS R25 R4 K124 ["Border"]
  SETTABLEKS R25 R24 K176 ["StrokeColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K177 ["StrokeThickness"]
  LOADK R25 K182 [0.7]
  SETTABLEKS R25 R24 K178 ["ItemHiddenTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K179 ["ItemWornTransparency"]
  SETTABLE R24 R22 R23
  LOADK R25 K183 ["EquippedItemSideMenu"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K183 ["EquippedItemSideMenu"]
  DUPTABLE R24 K188 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R25 R4 K47 ["TextSecondary"]
  SETTABLEKS R25 R24 K184 ["DotsBackground"]
  GETTABLEKS R25 R4 K189 ["TextContrast"]
  SETTABLEKS R25 R24 K185 ["DotsBackgroundHover"]
  LOADN R25 16
  SETTABLEKS R25 R24 K186 ["IconSize"]
  LOADN R25 1
  SETTABLEKS R25 R24 K187 ["Margin"]
  SETTABLE R24 R22 R23
  LOADK R25 K190 ["ImportPage"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K190 ["ImportPage"]
  DUPTABLE R24 K198 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R25 K199 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R25 R24 K191 ["ArrowImage"]
  GETTABLEKS R25 R4 K200 ["TextPrimary"]
  SETTABLEKS R25 R24 K192 ["ArrowColor"]
  DUPTABLE R25 K206 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R26 75
  SETTABLEKS R26 R25 K186 ["IconSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K201 ["InnerPadding"]
  LOADN R26 16
  SETTABLEKS R26 R25 K202 ["NameFontSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K203 ["NameLines"]
  LOADN R26 4
  SETTABLEKS R26 R25 K53 ["Padding"]
  GETTABLEKS R26 R4 K207 ["TextLink"]
  SETTABLEKS R26 R25 K204 ["TitleColor"]
  GETIMPORT R26 K208 [Color3.new]
  LOADK R27 K71 [0.4]
  LOADK R28 K71 [0.4]
  LOADK R29 K71 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K205 ["PreviewAmbient"]
  SETTABLEKS R25 R24 K193 ["Avatar"]
  DUPTABLE R25 K209 [{"Size", "IconSize"}]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  LOADN R26 12
  SETTABLEKS R26 R25 K186 ["IconSize"]
  SETTABLEKS R25 R24 K194 ["BackButton"]
  LOADN R25 35
  SETTABLEKS R25 R24 K195 ["HeaderHeight"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 5
  LOADN R27 15
  CALL R25 2 1
  SETTABLEKS R25 R24 K196 ["GridPadding"]
  GETIMPORT R25 K51 [UDim.new]
  LOADK R26 K210 [0.8]
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K197 ["SearchBarHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K211 ["ItemDataPreviewModel"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K211 ["ItemDataPreviewModel"]
  DUPTABLE R24 K213 [{"InstanceAmbient"}]
  GETIMPORT R25 K208 [Color3.new]
  LOADK R26 K71 [0.4]
  LOADK R27 K71 [0.4]
  LOADK R28 K71 [0.4]
  CALL R25 3 1
  SETTABLEKS R25 R24 K212 ["InstanceAmbient"]
  SETTABLE R24 R22 R23
  LOADK R25 K214 ["ModelPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K214 ["ModelPreview"]
  DUPTABLE R24 K216 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 185
  LOADN R28 200
  CALL R25 3 1
  SETTABLEKS R25 R24 K153 ["Ambient"]
  LOADB R25 1
  SETTABLEKS R25 R24 K215 ["EnableSky"]
  JUMPIFNOT R20 [+7]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 221
  LOADN R27 242
  LOADN R28 242
  CALL R25 3 1
  JUMP [+6]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 242
  LOADN R27 236
  LOADN R28 227
  CALL R25 3 1
  SETTABLEKS R25 R24 K154 ["LightColor"]
  JUMPIFNOT R20 [+8]
  LOADK R26 K71 [0.4]
  LOADK R27 K217 [-0.5]
  LOADK R28 K218 [0.6]
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K165 [Vector3.new]
  CALL R25 3 1
  JUMP [+7]
  LOADK R26 K67 [0.5]
  LOADN R27 255
  LOADK R28 K163 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K165 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K155 ["LightDirection"]
  LOADK R25 K166 [0.25]
  SETTABLEKS R25 R24 K156 ["PanSpeedMultiplier"]
  LOADK R25 K167 [0.2]
  SETTABLEKS R25 R24 K157 ["PlatformHeight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K158 ["PlatformSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K219 ["Notice"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K219 ["Notice"]
  DUPTABLE R24 K223 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R25 R4 K104 ["SubBackground"]
  SETTABLEKS R25 R24 K99 ["BackgroundColor"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 6
  CALL R25 2 1
  SETTABLEKS R25 R24 K220 ["CornerRadius"]
  GETTABLEKS R25 R4 K200 ["TextPrimary"]
  SETTABLEKS R25 R24 K221 ["TextColor"]
  LOADN R25 20
  SETTABLEKS R25 R24 K222 ["TextSize"]
  DUPTABLE R25 K228 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R26 8
  SETTABLEKS R26 R25 K224 ["Left"]
  LOADN R26 8
  SETTABLEKS R26 R25 K225 ["Right"]
  LOADN R26 4
  SETTABLEKS R26 R25 K226 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K227 ["Bottom"]
  SETTABLEKS R25 R24 K53 ["Padding"]
  SETTABLE R24 R22 R23
  MOVE R23 R18
  CALL R23 0 1
  JUMPIF R23 [+12]
  LOADK R25 K229 ["PrimaryDummyPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K229 ["PrimaryDummyPreview"]
  DUPTABLE R24 K231 [{"BackgroundImage"}]
  GETTABLEKS R25 R4 K109 ["PreviewerBackgroundImage"]
  SETTABLEKS R25 R24 K230 ["BackgroundImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K232 ["ResetCameraButton"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K232 ["ResetCameraButton"]
  DUPTABLE R24 K233 [{"Size", "Spacing", "Image"}]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 32
  LOADN R27 32
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Size"]
  LOADN R25 5
  SETTABLEKS R25 R24 K86 ["Spacing"]
  GETTABLEKS R25 R4 K234 ["ResetCameraImage"]
  SETTABLEKS R25 R24 K19 ["Image"]
  SETTABLE R24 R22 R23
  LOADK R25 K235 ["SelectScreen"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K235 ["SelectScreen"]
  DUPTABLE R24 K237 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K236 ["ButtonHeight"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K86 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K238 ["SkinPreview"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K238 ["SkinPreview"]
  DUPTABLE R24 K244 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R25 R4 K245 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R25 R24 K239 ["HoveredBorderColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K240 ["HoveredBorderThickness"]
  GETTABLEKS R25 R4 K246 ["PrimaryMain"]
  SETTABLEKS R25 R24 K241 ["SelectedBorderColor"]
  LOADN R25 2
  SETTABLEKS R25 R24 K242 ["SelectedBorderThickness"]
  GETIMPORT R25 K162 [Color3.fromRGB]
  LOADN R26 76
  LOADN R27 76
  LOADN R28 76
  CALL R25 3 1
  SETTABLEKS R25 R24 K243 ["DisabledColorToBlend"]
  SETTABLE R24 R22 R23
  LOADK R25 K247 ["StageSelector"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K247 ["StageSelector"]
  DUPTABLE R24 K251 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R25 R4 K252 ["MainBackground"]
  SETTABLEKS R25 R24 K99 ["BackgroundColor"]
  GETTABLEKS R25 R4 K253 ["ButtonHover"]
  SETTABLEKS R25 R24 K248 ["ButtonSelectedBackgroundColor"]
  LOADN R25 32
  SETTABLEKS R25 R24 K236 ["ButtonHeight"]
  GETTABLEKS R25 R4 K254 ["MainText"]
  SETTABLEKS R25 R24 K249 ["IconColor"]
  GETTABLEKS R25 R4 K255 ["MainTextDisabled"]
  SETTABLEKS R25 R24 K250 ["IconColorDisabled"]
  LOADN R25 18
  SETTABLEKS R25 R24 K186 ["IconSize"]
  LOADN R25 64
  SETTABLEKS R25 R24 K102 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K0 ["script"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K256 ["Stars"]
  DUPTABLE R24 K263 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R25 R4 K254 ["MainText"]
  SETTABLEKS R25 R24 K257 ["StarColor"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 16
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K258 ["StarSize"]
  GETTABLEKS R25 R4 K264 ["Star"]
  SETTABLEKS R25 R24 K259 ["StarFilled"]
  GETTABLEKS R25 R4 K260 ["StarUnfilled"]
  SETTABLEKS R25 R24 K260 ["StarUnfilled"]
  LOADN R25 4
  SETTABLEKS R25 R24 K261 ["StarSpacing"]
  LOADN R25 10
  SETTABLEKS R25 R24 K262 ["RatingSpacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K9 ["Style"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K265 ["SubmitDialog"]
  DUPTABLE R24 K266 [{"Width"}]
  LOADN R25 244
  SETTABLEKS R25 R24 K102 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K11 ["Util"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K267 ["SubmitInner"]
  DUPTABLE R24 K271 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K268 ["CallToActionSpacing"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K269 ["CheckboxSpacing"]
  LOADN R25 40
  SETTABLEKS R25 R24 K270 ["ContentPadding"]
  SETTABLE R24 R22 R23
  LOADK R25 K16 ["style"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K272 ["Survey"]
  DUPTABLE R24 K275 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R25 22
  SETTABLEKS R25 R24 K273 ["HeadIndent"]
  LOADN R25 10
  SETTABLEKS R25 R24 K86 ["Spacing"]
  LOADN R25 96
  SETTABLEKS R25 R24 K274 ["MessageHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K20 ["Pane"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K276 ["SurveyDialog"]
  DUPTABLE R24 K278 [{"Width", "FinishDialogSize"}]
  LOADN R25 184
  SETTABLEKS R25 R24 K102 ["Width"]
  GETIMPORT R25 K142 [Vector2.new]
  LOADN R26 250
  LOADN R27 30
  CALL R25 2 1
  SETTABLEKS R25 R24 K277 ["FinishDialogSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K23 ["Separator"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K279 ["TestingScreen"]
  DUPTABLE R24 K237 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K236 ["ButtonHeight"]
  GETIMPORT R25 K51 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K86 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K24 ["SimpleTab"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K280 ["UGCValidationErrorDialog"]
  DUPTABLE R24 K288 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R25 12
  SETTABLEKS R25 R24 K281 ["DetailsSpacing"]
  LOADN R25 4
  SETTABLEKS R25 R24 K282 ["IconTextSpacing"]
  LOADN R25 26
  SETTABLEKS R25 R24 K283 ["TitleDetailsSpacing"]
  GETIMPORT R25 K142 [Vector2.new]
  LOADN R26 244
  LOADN R27 44
  CALL R25 2 1
  SETTABLEKS R25 R24 K284 ["AlertMinContentSize"]
  LOADN R25 18
  SETTABLEKS R25 R24 K222 ["TextSize"]
  GETTABLEKS R25 R4 K289 ["WarningText"]
  SETTABLEKS R25 R24 K285 ["WarningColor"]
  GETIMPORT R25 K292 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R25 R24 K286 ["WarningFont"]
  LOADK R26 K114 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K37 ["add"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K287 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K38 ["Height"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K294 ["UGCValidationNotice"]
  DUPTABLE R24 K296 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 8
  LOADN R27 252
  CALL R25 2 1
  SETTABLEKS R25 R24 K54 ["Position"]
  GETIMPORT R25 K58 [UDim2.new]
  LOADN R26 1
  LOADN R27 192
  LOADN R28 0
  LOADN R29 48
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Size"]
  GETIMPORT R25 K130 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K295 ["ValidationIconSize"]
  GETTABLEKS R25 R4 K289 ["WarningText"]
  SETTABLEKS R25 R24 K285 ["WarningColor"]
  LOADK R26 K114 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R27 K37 ["add"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K287 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K41 ["ImageSize"]
  NAMECALL R23 R6 K37 ["add"]
  CALL R23 2 0
  DUPTABLE R23 K298 [{"Color", "Position", "Size"}]
  GETIMPORT R24 K208 [Color3.new]
  LOADN R25 1
  LOADN R26 1
  LOADN R27 1
  CALL R24 3 1
  SETTABLEKS R24 R23 K137 ["Color"]
  GETIMPORT R24 K130 [UDim2.fromOffset]
  LOADN R25 4
  LOADN R26 14
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["Position"]
  GETIMPORT R24 K130 [UDim2.fromOffset]
  LOADN R25 24
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["Size"]
  GETTABLEKS R24 R6 K297 ["UGCValidationStatusIcon"]
  NEWTABLE R25 2 0
  GETTABLEKS R27 R1 K81 ["Dictionary"]
  GETTABLEKS R26 R27 K82 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K299 [{"Color", "Image"}]
  GETTABLEKS R29 R4 K289 ["WarningText"]
  SETTABLEKS R29 R28 K137 ["Color"]
  LOADK R30 K114 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K37 ["add"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K19 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K300 ["&Failure"]
  GETTABLEKS R27 R1 K81 ["Dictionary"]
  GETTABLEKS R26 R27 K82 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K301 ["UGCValidationSuccessImage"]
  SETTABLEKS R29 R28 K19 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K302 ["&Success"]
  SETTABLE R25 R22 R24
  LOADK R26 K47 ["TextSecondary"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K303 ["DisambiguationMenu"]
  DUPTABLE R25 K313 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K304 ["MinContentSize"]
  GETIMPORT R26 K142 [Vector2.new]
  LOADN R27 200
  LOADN R28 150
  CALL R26 2 1
  SETTABLEKS R26 R25 K305 ["ConfirmCancelContentSize"]
  LOADN R26 8
  SETTABLEKS R26 R25 K306 ["HorizontalSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K307 ["VerticalSpacing"]
  LOADN R26 24
  SETTABLEKS R26 R25 K308 ["TitleContentsSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K309 ["TextSpacing"]
  LOADN R26 150
  SETTABLEKS R26 R25 K310 ["DropdownWidth"]
  LOADN R26 120
  SETTABLEKS R26 R25 K311 ["AttachmentDropdownWidth"]
  GETTABLEKS R26 R4 K104 ["SubBackground"]
  SETTABLEKS R26 R25 K312 ["IconBackground"]
  GETIMPORT R26 K130 [UDim2.fromOffset]
  LOADN R27 72
  LOADN R28 72
  CALL R26 2 1
  SETTABLEKS R26 R25 K186 ["IconSize"]
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K15 ["Alert"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R8
  NEWTABLE R27 1 0
  GETTABLEKS R29 R1 K81 ["Dictionary"]
  GETTABLEKS R28 R29 K82 ["join"]
  GETTABLEKS R29 R8 K314 ["&Warning"]
  DUPTABLE R30 K316 [{"MaxWidth"}]
  LOADN R31 132
  SETTABLEKS R31 R30 K315 ["MaxWidth"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K317 ["&WarningLong"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+65]
  GETTABLEKS R24 R6 K17 ["Button"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R9
  NEWTABLE R27 1 0
  GETTABLEKS R29 R1 K81 ["Dictionary"]
  GETTABLEKS R28 R29 K82 ["join"]
  GETTABLEKS R29 R9 K318 ["&Round"]
  NEWTABLE R30 2 0
  GETTABLEKS R32 R1 K81 ["Dictionary"]
  GETTABLEKS R31 R32 K82 ["join"]
  GETTABLEKS R32 R9 K319 ["BackgroundStyle"]
  DUPTABLE R33 K321 [{"BorderColor"}]
  GETTABLEKS R34 R4 K322 ["SubText"]
  SETTABLEKS R34 R33 K320 ["BorderColor"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K319 ["BackgroundStyle"]
  GETTABLEKS R31 R5 K323 ["Hover"]
  GETTABLEKS R33 R1 K81 ["Dictionary"]
  GETTABLEKS R32 R33 K82 ["join"]
  GETTABLEKS R34 R5 K323 ["Hover"]
  GETTABLE R33 R9 R34
  DUPTABLE R34 K324 [{"BackgroundStyle"}]
  GETTABLEKS R36 R1 K81 ["Dictionary"]
  GETTABLEKS R35 R36 K82 ["join"]
  GETTABLEKS R38 R5 K323 ["Hover"]
  GETTABLE R37 R9 R38
  GETTABLEKS R36 R37 K319 ["BackgroundStyle"]
  DUPTABLE R37 K321 [{"BorderColor"}]
  GETTABLEKS R38 R4 K322 ["SubText"]
  SETTABLEKS R38 R37 K320 ["BorderColor"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K319 ["BackgroundStyle"]
  CALL R32 2 1
  SETTABLE R32 R30 R31
  CALL R28 2 1
  SETTABLEKS R28 R27 K325 ["&RoundHighlighted"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  JUMPIFNOT R21 [+36]
  GETTABLEKS R24 R6 K18 ["DropdownMenu"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R10
  DUPTABLE R27 K327 [{"MaxHeight"}]
  LOADK R28 K72 ["&BodyPreview"]
  SETTABLEKS R28 R27 K326 ["MaxHeight"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K22 ["SelectInput"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R14
  DUPTABLE R27 K329 [{"DropdownMenu"}]
  GETTABLEKS R29 R1 K81 ["Dictionary"]
  GETTABLEKS R28 R29 K82 ["join"]
  GETTABLEKS R29 R14 K18 ["DropdownMenu"]
  DUPTABLE R30 K327 [{"MaxHeight"}]
  LOADK R31 K72 ["&BodyPreview"]
  SETTABLEKS R31 R30 K326 ["MaxHeight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K18 ["DropdownMenu"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K19 ["Image"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R11
  NEWTABLE R27 8 0
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K330 ["Hide"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K331 ["&EquippedItemHideIcon"]
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K332 ["HideHover"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K333 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K334 ["HoverMenu"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K335 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K336 ["Unhide"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K337 ["&EquippedItemUnhideIcon"]
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K338 ["UnhideHover"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K339 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R28 K108 [{"Image"}]
  GETTABLEKS R29 R4 K340 ["HoverMenuDisabled"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLEKS R28 R27 K341 ["&EquippedItemDisabledBackground"]
  NEWTABLE R28 4 0
  GETTABLEKS R29 R4 K342 ["Dots"]
  SETTABLEKS R29 R28 K19 ["Image"]
  GETTABLEKS R29 R4 K17 ["Button"]
  SETTABLEKS R29 R28 K343 ["ImageColor3"]
  GETTABLEKS R29 R5 K323 ["Hover"]
  DUPTABLE R30 K344 [{"ImageColor3"}]
  GETTABLEKS R31 R4 K345 ["ImageButtonHover"]
  SETTABLEKS R31 R30 K343 ["ImageColor3"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K346 ["&EquippedItemDotsIcon"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K23 ["Separator"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R15
  NEWTABLE R27 1 0
  DUPTABLE R28 K348 [{"StretchMargin"}]
  LOADN R29 5
  SETTABLEKS R29 R28 K347 ["StretchMargin"]
  SETTABLEKS R28 R27 K349 ["&SelectScreenSeparator"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K20 ["Pane"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R12
  NEWTABLE R27 4 0
  NEWTABLE R28 4 0
  GETTABLEKS R29 R4 K17 ["Button"]
  SETTABLEKS R29 R28 K107 ["Background"]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K220 ["CornerRadius"]
  GETTABLEKS R29 R5 K323 ["Hover"]
  DUPTABLE R30 K350 [{"Background"}]
  GETTABLEKS R31 R4 K253 ["ButtonHover"]
  SETTABLEKS R31 R30 K107 ["Background"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R5 K351 ["Disabled"]
  DUPTABLE R30 K350 [{"Background"}]
  GETTABLEKS R31 R4 K352 ["ButtonPressed"]
  SETTABLEKS R31 R30 K107 ["Background"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K353 ["&EquippedItemPreview"]
  DUPTABLE R28 K354 [{"CornerRadius"}]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K220 ["CornerRadius"]
  SETTABLEKS R28 R27 K355 ["&EquippedItemPreviewInner"]
  DUPTABLE R28 K350 [{"Background"}]
  GETTABLEKS R29 R4 K356 ["ForegroundMuted"]
  SETTABLEKS R29 R28 K107 ["Background"]
  SETTABLEKS R28 R27 K357 ["&EquippedItemHoverMenu"]
  DUPTABLE R28 K354 [{"CornerRadius"}]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K220 ["CornerRadius"]
  SETTABLEKS R28 R27 K358 ["&SkinPreview"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K24 ["SimpleTab"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R16
  NEWTABLE R27 1 0
  NEWTABLE R28 8 0
  GETTABLEKS R29 R4 K88 ["SubBackground2"]
  SETTABLEKS R29 R28 K99 ["BackgroundColor"]
  LOADN R29 1
  SETTABLEKS R29 R28 K84 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K359 ["BorderSize"]
  DUPTABLE R29 K360 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R30 12
  SETTABLEKS R30 R29 K224 ["Left"]
  LOADN R30 2
  SETTABLEKS R30 R29 K226 ["Top"]
  LOADN R30 0
  SETTABLEKS R30 R29 K227 ["Bottom"]
  LOADN R30 12
  SETTABLEKS R30 R29 K225 ["Right"]
  SETTABLEKS R29 R28 K53 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K361 ["TopLineHeight"]
  GETTABLEKS R29 R5 K362 ["Selected"]
  DUPTABLE R30 K363 [{"BackgroundColor", "Font"}]
  GETTABLEKS R31 R4 K88 ["SubBackground2"]
  SETTABLEKS R31 R30 K99 ["BackgroundColor"]
  GETIMPORT R31 K365 [Enum.Font.SourceSansBold]
  SETTABLEKS R31 R30 K290 ["Font"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K366 ["&AssetPaletteTab"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K25 ["Tooltip"]
  GETTABLEKS R26 R1 K81 ["Dictionary"]
  GETTABLEKS R25 R26 K82 ["join"]
  MOVE R26 R17
  NEWTABLE R27 1 0
  DUPTABLE R28 K368 [{"ShowDelay"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K367 ["ShowDelay"]
  SETTABLEKS R28 R27 K369 ["&NoDelay"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  RETURN R22 1
