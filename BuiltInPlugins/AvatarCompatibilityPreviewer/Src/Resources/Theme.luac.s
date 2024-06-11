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
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+23]
  LOADK R26 K120 ["CageEditingTool"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K120 ["CageEditingTool"]
  DUPTABLE R25 K124 [{"FalloffImage", "RadiusImage", "SymmetryImage"}]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K125 ["radius@2x.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K121 ["FalloffImage"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K125 ["radius@2x.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K122 ["RadiusImage"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K126 ["symmetry@2x.png"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K123 ["SymmetryImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K127 ["Catalog"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K127 ["Catalog"]
  DUPTABLE R25 K130 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R13
  DUPTABLE R28 K133 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R29 R4 K134 ["Border"]
  SETTABLEKS R29 R28 K131 ["BorderColor3"]
  LOADN R29 10
  SETTABLEKS R29 R28 K54 ["Padding"]
  GETIMPORT R29 K138 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R29 R28 K132 ["VerticalScrollBarInset"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["ScrollingFrame"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 1
  LOADN R28 214
  CALL R26 2 1
  SETTABLEKS R26 R25 K128 ["ScrollingFrameHeight"]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 90
  LOADN R28 90
  CALL R26 2 1
  SETTABLEKS R26 R25 K129 ["CellSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K141 ["CatalogItemButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K141 ["CatalogItemButton"]
  DUPTABLE R25 K146 [{"HoverX", "AccessoryTypeImage", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R26 K149 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K147 ["Color"]
  LOADK R27 K150 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K142 ["HoverX"]
  DUPTABLE R26 K155 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K147 ["Color"]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["AnchorPoint"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 4
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADK R27 K156 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R27 R26 K153 ["LayeredImage"]
  LOADK R27 K157 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R27 R26 K154 ["RigidImage"]
  SETTABLEKS R26 R25 K143 ["AccessoryTypeImage"]
  DUPTABLE R26 K149 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K48 ["TextSecondary"]
  SETTABLEKS R27 R26 K147 ["Color"]
  LOADK R27 K158 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 1
  LOADN R31 236
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K144 ["UserImage"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 12
  CALL R26 2 1
  SETTABLEKS R26 R25 K145 ["ItemNamePaddingBottom"]
  SETTABLE R25 R23 R24
  LOADK R26 K159 ["ContextualSurveyDialogButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K159 ["ContextualSurveyDialogButton"]
  DUPTABLE R25 K160 [{"Image", "Position", "Size"}]
  GETTABLEKS R26 R4 K161 ["SendFeedback"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 0
  LOADN R28 28
  LOADN R29 1
  LOADN R30 196
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+42]
  LOADK R26 K162 ["DummyPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K162 ["DummyPreview"]
  DUPTABLE R25 K169 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K163 ["Ambient"]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K164 ["LightColor"]
  LOADK R27 K68 [0.5]
  LOADN R28 255
  LOADK R29 K173 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K175 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K165 ["LightDirection"]
  LOADK R26 K176 [0.25]
  SETTABLEKS R26 R25 K166 ["PanSpeedMultiplier"]
  LOADK R26 K177 [0.2]
  SETTABLEKS R26 R25 K167 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K168 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K178 ["EquippedItemsSidebar"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K178 ["EquippedItemsSidebar"]
  DUPTABLE R25 K184 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "PositionOffset", "ScrollingFrameSizeOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 50
  LOADN R28 50
  CALL R26 2 1
  SETTABLEKS R26 R25 K129 ["CellSize"]
  LOADN R26 50
  SETTABLEKS R26 R25 K179 ["FrameSizeOffset"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 2
  CALL R26 2 1
  SETTABLEKS R26 R25 K180 ["ItemSpacing"]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K181 ["PositionOffset"]
  LOADN R26 83
  SETTABLEKS R26 R25 K182 ["ScrollingFrameSizeOffset"]
  LOADN R26 10
  SETTABLEKS R26 R25 K183 ["SidebarSpacing"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 0
  LOADN R28 50
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K185 ["EquippedItemPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K185 ["EquippedItemPreview"]
  DUPTABLE R25 K190 [{"HoverX", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R26 K191 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R27 K150 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["AnchorPoint"]
  GETIMPORT R27 K59 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  SETTABLEKS R26 R25 K142 ["HoverX"]
  GETTABLEKS R26 R4 K134 ["Border"]
  SETTABLEKS R26 R25 K186 ["StrokeColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K187 ["StrokeThickness"]
  LOADK R26 K192 [0.7]
  SETTABLEKS R26 R25 K188 ["ItemHiddenTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K189 ["ItemWornTransparency"]
  SETTABLE R25 R23 R24
  LOADK R26 K193 ["EquippedItemSideMenu"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K193 ["EquippedItemSideMenu"]
  DUPTABLE R25 K198 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K194 ["DotsBackground"]
  GETTABLEKS R26 R4 K199 ["TextContrast"]
  SETTABLEKS R26 R25 K195 ["DotsBackgroundHover"]
  LOADN R26 16
  SETTABLEKS R26 R25 K196 ["IconSize"]
  LOADN R26 1
  SETTABLEKS R26 R25 K197 ["Margin"]
  SETTABLE R25 R23 R24
  LOADK R26 K200 ["ImportPage"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K200 ["ImportPage"]
  DUPTABLE R25 K208 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R26 K209 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R26 R25 K201 ["ArrowImage"]
  GETTABLEKS R26 R4 K210 ["TextPrimary"]
  SETTABLEKS R26 R25 K202 ["ArrowColor"]
  DUPTABLE R26 K216 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R27 75
  SETTABLEKS R27 R26 K196 ["IconSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K211 ["InnerPadding"]
  LOADN R27 16
  SETTABLEKS R27 R26 K212 ["NameFontSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K213 ["NameLines"]
  LOADN R27 4
  SETTABLEKS R27 R26 K54 ["Padding"]
  GETTABLEKS R27 R4 K217 ["TextLink"]
  SETTABLEKS R27 R26 K214 ["TitleColor"]
  GETIMPORT R27 K218 [Color3.new]
  LOADK R28 K72 [0.4]
  LOADK R29 K72 [0.4]
  LOADK R30 K72 [0.4]
  CALL R27 3 1
  SETTABLEKS R27 R26 K215 ["PreviewAmbient"]
  SETTABLEKS R26 R25 K203 ["Avatar"]
  DUPTABLE R26 K219 [{"Size", "IconSize"}]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADN R27 12
  SETTABLEKS R27 R26 K196 ["IconSize"]
  SETTABLEKS R26 R25 K204 ["BackButton"]
  LOADN R26 35
  SETTABLEKS R26 R25 K205 ["HeaderHeight"]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 15
  CALL R26 2 1
  SETTABLEKS R26 R25 K206 ["GridPadding"]
  GETIMPORT R26 K52 [UDim.new]
  LOADK R27 K220 [0.8]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K207 ["SearchBarHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K221 ["ItemDataPreviewModel"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K221 ["ItemDataPreviewModel"]
  DUPTABLE R25 K223 [{"InstanceAmbient"}]
  GETIMPORT R26 K218 [Color3.new]
  LOADK R27 K72 [0.4]
  LOADK R28 K72 [0.4]
  LOADK R29 K72 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K222 ["InstanceAmbient"]
  SETTABLE R25 R23 R24
  LOADK R26 K224 ["ModelPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K224 ["ModelPreview"]
  DUPTABLE R25 K226 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K163 ["Ambient"]
  LOADB R26 1
  SETTABLEKS R26 R25 K225 ["EnableSky"]
  JUMPIFNOT R21 [+7]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 221
  LOADN R28 242
  LOADN R29 242
  CALL R26 3 1
  JUMP [+6]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K164 ["LightColor"]
  JUMPIFNOT R21 [+8]
  LOADK R27 K72 [0.4]
  LOADK R28 K227 [-0.5]
  LOADK R29 K228 [0.6]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K175 [Vector3.new]
  CALL R26 3 1
  JUMP [+7]
  LOADK R27 K68 [0.5]
  LOADN R28 255
  LOADK R29 K173 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K175 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K165 ["LightDirection"]
  LOADK R26 K176 [0.25]
  SETTABLEKS R26 R25 K166 ["PanSpeedMultiplier"]
  LOADK R26 K177 [0.2]
  SETTABLEKS R26 R25 K167 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K168 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K229 ["Notice"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K229 ["Notice"]
  DUPTABLE R25 K233 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R26 R4 K107 ["SubBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K230 ["CornerRadius"]
  GETTABLEKS R26 R4 K210 ["TextPrimary"]
  SETTABLEKS R26 R25 K231 ["TextColor"]
  LOADN R26 20
  SETTABLEKS R26 R25 K232 ["TextSize"]
  DUPTABLE R26 K238 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R27 8
  SETTABLEKS R27 R26 K234 ["Left"]
  LOADN R27 8
  SETTABLEKS R27 R26 K235 ["Right"]
  LOADN R27 4
  SETTABLEKS R27 R26 K236 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K237 ["Bottom"]
  SETTABLEKS R26 R25 K54 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K239 ["PickTabMenu"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+34]
  GETTABLEKS R24 R6 K239 ["PickTabMenu"]
  DUPTABLE R25 K240 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K230 ["CornerRadius"]
  GETTABLEKS R26 R4 K210 ["TextPrimary"]
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
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+12]
  LOADK R26 K241 ["PrimaryDummyPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K241 ["PrimaryDummyPreview"]
  DUPTABLE R25 K243 [{"BackgroundImage"}]
  GETTABLEKS R26 R4 K112 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K242 ["BackgroundImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K244 ["ResetCameraButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K244 ["ResetCameraButton"]
  DUPTABLE R25 K245 [{"Size", "Spacing", "Image"}]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  LOADN R26 5
  SETTABLEKS R26 R25 K91 ["Spacing"]
  GETTABLEKS R26 R4 K246 ["ResetCameraImage"]
  SETTABLEKS R26 R25 K19 ["Image"]
  SETTABLE R25 R23 R24
  LOADK R26 K247 ["SelectScreen"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K247 ["SelectScreen"]
  DUPTABLE R25 K249 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K248 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K250 ["SkinPreview"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K250 ["SkinPreview"]
  DUPTABLE R25 K256 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R26 R4 K257 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R26 R25 K251 ["HoveredBorderColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K252 ["HoveredBorderThickness"]
  GETTABLEKS R26 R4 K258 ["PrimaryMain"]
  SETTABLEKS R26 R25 K253 ["SelectedBorderColor"]
  LOADN R26 2
  SETTABLEKS R26 R25 K254 ["SelectedBorderThickness"]
  GETIMPORT R26 K172 [Color3.fromRGB]
  LOADN R27 76
  LOADN R28 76
  LOADN R29 76
  CALL R26 3 1
  SETTABLEKS R26 R25 K255 ["DisabledColorToBlend"]
  SETTABLE R25 R23 R24
  LOADK R26 K3 ["FindFirstAncestor"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K259 ["StageSelector"]
  DUPTABLE R25 K263 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R26 R4 K264 ["MainBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K265 ["ButtonHover"]
  SETTABLEKS R26 R25 K260 ["ButtonSelectedBackgroundColor"]
  LOADN R26 32
  SETTABLEKS R26 R25 K248 ["ButtonHeight"]
  GETTABLEKS R26 R4 K266 ["MainText"]
  SETTABLEKS R26 R25 K261 ["IconColor"]
  GETTABLEKS R26 R4 K267 ["MainTextDisabled"]
  SETTABLEKS R26 R25 K262 ["IconColorDisabled"]
  LOADN R26 18
  SETTABLEKS R26 R25 K196 ["IconSize"]
  LOADN R26 64
  SETTABLEKS R26 R25 K105 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K12 ["StyleModifier"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K268 ["Stars"]
  DUPTABLE R25 K275 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R26 R4 K266 ["MainText"]
  SETTABLEKS R26 R25 K269 ["StarColor"]
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 16
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K270 ["StarSize"]
  GETTABLEKS R26 R4 K276 ["Star"]
  SETTABLEKS R26 R25 K271 ["StarFilled"]
  GETTABLEKS R26 R4 K272 ["StarUnfilled"]
  SETTABLEKS R26 R25 K272 ["StarUnfilled"]
  LOADN R26 4
  SETTABLEKS R26 R25 K273 ["StarSpacing"]
  LOADN R26 10
  SETTABLEKS R26 R25 K274 ["RatingSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K21 ["ScrollingFrame"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K277 ["SubmitDialog"]
  DUPTABLE R25 K278 [{"Width"}]
  LOADN R26 244
  SETTABLEKS R26 R25 K105 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K23 ["Separator"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K279 ["SubmitInner"]
  DUPTABLE R25 K283 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K280 ["CallToActionSpacing"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K281 ["CheckboxSpacing"]
  LOADN R26 40
  SETTABLEKS R26 R25 K282 ["ContentPadding"]
  SETTABLE R25 R23 R24
  LOADK R26 K28 ["getFFlagAvatarPreviewerAutoSetup"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K284 ["Survey"]
  DUPTABLE R25 K287 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R26 22
  SETTABLEKS R26 R25 K285 ["HeadIndent"]
  LOADN R26 10
  SETTABLEKS R26 R25 K91 ["Spacing"]
  LOADN R26 96
  SETTABLEKS R26 R25 K286 ["MessageHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K32 ["getFFlagDevFrameworkAssetRenderModelEnableSky"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K288 ["SurveyDialog"]
  DUPTABLE R25 K290 [{"Width", "FinishDialogSize"}]
  LOADN R26 184
  SETTABLEKS R26 R25 K105 ["Width"]
  GETIMPORT R26 K152 [Vector2.new]
  LOADN R27 250
  LOADN R28 30
  CALL R26 2 1
  SETTABLEKS R26 R25 K289 ["FinishDialogSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K35 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+12]
  GETTABLEKS R24 R6 K291 ["TabBar"]
  DUPTABLE R25 K292 [{"BackgroundColor", "BackgroundColorHover"}]
  GETTABLEKS R26 R4 K107 ["SubBackground"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K85 ["ActionHover"]
  SETTABLEKS R26 R25 K82 ["BackgroundColorHover"]
  SETTABLE R25 R23 R24
  LOADK R26 K37 ["AddItemButton"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K293 ["TestingScreen"]
  DUPTABLE R25 K249 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K248 ["ButtonHeight"]
  GETIMPORT R26 K52 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K38 ["add"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K294 ["UGCValidationErrorDialog"]
  DUPTABLE R25 K302 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K295 ["DetailsSpacing"]
  LOADN R26 4
  SETTABLEKS R26 R25 K296 ["IconTextSpacing"]
  LOADN R26 26
  SETTABLEKS R26 R25 K297 ["TitleDetailsSpacing"]
  GETIMPORT R26 K152 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K298 ["AlertMinContentSize"]
  LOADN R26 18
  SETTABLEKS R26 R25 K232 ["TextSize"]
  GETTABLEKS R26 R4 K303 ["WarningText"]
  SETTABLEKS R26 R25 K299 ["WarningColor"]
  GETIMPORT R26 K306 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R26 R25 K300 ["WarningFont"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K51 ["new"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K301 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K52 [UDim.new]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K308 ["UGCValidationNotice"]
  DUPTABLE R25 K310 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R26 K140 [UDim2.fromOffset]
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
  GETIMPORT R26 K140 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K309 ["ValidationIconSize"]
  GETTABLEKS R26 R4 K303 ["WarningText"]
  SETTABLEKS R26 R25 K299 ["WarningColor"]
  LOADK R27 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R28 K51 ["new"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K301 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K55 ["Position"]
  NAMECALL R24 R6 K38 ["add"]
  CALL R24 2 0
  DUPTABLE R24 K312 [{"Color", "Position", "Size"}]
  GETIMPORT R25 K218 [Color3.new]
  LOADN R26 1
  LOADN R27 1
  LOADN R28 1
  CALL R25 3 1
  SETTABLEKS R25 R24 K147 ["Color"]
  GETIMPORT R25 K140 [UDim2.fromOffset]
  LOADN R26 4
  LOADN R27 14
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K140 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  GETTABLEKS R25 R6 K311 ["UGCValidationStatusIcon"]
  NEWTABLE R26 2 0
  GETTABLEKS R28 R1 K86 ["Dictionary"]
  GETTABLEKS R27 R28 K87 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K313 [{"Color", "Image"}]
  GETTABLEKS R30 R4 K303 ["WarningText"]
  SETTABLEKS R30 R29 K147 ["Color"]
  LOADK R31 K117 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R32 K51 ["new"]
  CONCAT R30 R31 R32
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K314 ["&Failure"]
  GETTABLEKS R28 R1 K86 ["Dictionary"]
  GETTABLEKS R27 R28 K87 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K315 ["UGCValidationSuccessImage"]
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K316 ["&Success"]
  SETTABLE R26 R23 R25
  LOADK R27 K61 ["PlayImage"]
  NAMECALL R25 R6 K38 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K317 ["DisambiguationMenu"]
  DUPTABLE R26 K327 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 244
  LOADN R29 44
  CALL R27 2 1
  SETTABLEKS R27 R26 K318 ["MinContentSize"]
  GETIMPORT R27 K152 [Vector2.new]
  LOADN R28 200
  LOADN R29 150
  CALL R27 2 1
  SETTABLEKS R27 R26 K319 ["ConfirmCancelContentSize"]
  LOADN R27 8
  SETTABLEKS R27 R26 K320 ["HorizontalSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K321 ["VerticalSpacing"]
  LOADN R27 24
  SETTABLEKS R27 R26 K322 ["TitleContentsSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K323 ["TextSpacing"]
  LOADN R27 150
  SETTABLEKS R27 R26 K324 ["DropdownWidth"]
  LOADN R27 120
  SETTABLEKS R27 R26 K325 ["AttachmentDropdownWidth"]
  GETTABLEKS R27 R4 K107 ["SubBackground"]
  SETTABLEKS R27 R26 K326 ["IconBackground"]
  GETIMPORT R27 K140 [UDim2.fromOffset]
  LOADN R28 72
  LOADN R29 72
  CALL R27 2 1
  SETTABLEKS R27 R26 K196 ["IconSize"]
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K15 ["Alert"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R8
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K86 ["Dictionary"]
  GETTABLEKS R29 R30 K87 ["join"]
  GETTABLEKS R30 R8 K328 ["&Warning"]
  DUPTABLE R31 K330 [{"MaxWidth"}]
  LOADN R32 132
  SETTABLEKS R32 R31 K329 ["MaxWidth"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K331 ["&WarningLong"]
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
  GETTABLEKS R30 R9 K332 ["&Round"]
  NEWTABLE R31 2 0
  GETTABLEKS R33 R1 K86 ["Dictionary"]
  GETTABLEKS R32 R33 K87 ["join"]
  GETTABLEKS R33 R9 K333 ["BackgroundStyle"]
  DUPTABLE R34 K335 [{"BorderColor"}]
  GETTABLEKS R35 R4 K336 ["SubText"]
  SETTABLEKS R35 R34 K334 ["BorderColor"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K333 ["BackgroundStyle"]
  GETTABLEKS R32 R5 K337 ["Hover"]
  GETTABLEKS R34 R1 K86 ["Dictionary"]
  GETTABLEKS R33 R34 K87 ["join"]
  GETTABLEKS R35 R5 K337 ["Hover"]
  GETTABLE R34 R9 R35
  DUPTABLE R35 K338 [{"BackgroundStyle"}]
  GETTABLEKS R37 R1 K86 ["Dictionary"]
  GETTABLEKS R36 R37 K87 ["join"]
  GETTABLEKS R39 R5 K337 ["Hover"]
  GETTABLE R38 R9 R39
  GETTABLEKS R37 R38 K333 ["BackgroundStyle"]
  DUPTABLE R38 K335 [{"BorderColor"}]
  GETTABLEKS R39 R4 K336 ["SubText"]
  SETTABLEKS R39 R38 K334 ["BorderColor"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K333 ["BackgroundStyle"]
  CALL R33 2 1
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K339 ["&RoundHighlighted"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  JUMPIFNOT R22 [+36]
  GETTABLEKS R25 R6 K18 ["DropdownMenu"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R10
  DUPTABLE R28 K341 [{"MaxHeight"}]
  LOADK R29 K86 ["Dictionary"]
  SETTABLEKS R29 R28 K340 ["MaxHeight"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K22 ["SelectInput"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R14
  DUPTABLE R28 K343 [{"DropdownMenu"}]
  GETTABLEKS R30 R1 K86 ["Dictionary"]
  GETTABLEKS R29 R30 K87 ["join"]
  GETTABLEKS R30 R14 K18 ["DropdownMenu"]
  DUPTABLE R31 K341 [{"MaxHeight"}]
  LOADK R32 K86 ["Dictionary"]
  SETTABLEKS R32 R31 K340 ["MaxHeight"]
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
  GETTABLEKS R30 R4 K344 ["Hide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K345 ["&EquippedItemHideIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K346 ["HideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K347 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K348 ["HoverMenu"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K349 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K350 ["Unhide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K351 ["&EquippedItemUnhideIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K352 ["UnhideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K353 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R29 K111 [{"Image"}]
  GETTABLEKS R30 R4 K354 ["HoverMenuDisabled"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K355 ["&EquippedItemDisabledBackground"]
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K356 ["Dots"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETTABLEKS R30 R4 K17 ["Button"]
  SETTABLEKS R30 R29 K357 ["ImageColor3"]
  GETTABLEKS R30 R5 K337 ["Hover"]
  DUPTABLE R31 K358 [{"ImageColor3"}]
  GETTABLEKS R32 R4 K359 ["ImageButtonHover"]
  SETTABLEKS R32 R31 K357 ["ImageColor3"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K360 ["&EquippedItemDotsIcon"]
  DUPTABLE R29 K361 [{"Image", "Size"}]
  GETTABLEKS R30 R4 K362 ["DotsVertical"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K140 [UDim2.fromOffset]
  LOADN R31 20
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K56 ["Size"]
  SETTABLEKS R29 R28 K363 ["&PickTabMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K23 ["Separator"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R15
  NEWTABLE R28 1 0
  DUPTABLE R29 K365 [{"StretchMargin"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K364 ["StretchMargin"]
  SETTABLEKS R29 R28 K366 ["&SelectScreenSeparator"]
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
  SETTABLEKS R30 R29 K230 ["CornerRadius"]
  GETTABLEKS R30 R5 K337 ["Hover"]
  DUPTABLE R31 K367 [{"Background"}]
  GETTABLEKS R32 R4 K265 ["ButtonHover"]
  SETTABLEKS R32 R31 K110 ["Background"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R5 K368 ["Disabled"]
  DUPTABLE R31 K367 [{"Background"}]
  GETTABLEKS R32 R4 K369 ["ButtonPressed"]
  SETTABLEKS R32 R31 K110 ["Background"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K370 ["&EquippedItemPreview"]
  DUPTABLE R29 K371 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K230 ["CornerRadius"]
  SETTABLEKS R29 R28 K372 ["&EquippedItemPreviewInner"]
  DUPTABLE R29 K367 [{"Background"}]
  GETTABLEKS R30 R4 K373 ["ForegroundMuted"]
  SETTABLEKS R30 R29 K110 ["Background"]
  SETTABLEKS R29 R28 K374 ["&EquippedItemHoverMenu"]
  DUPTABLE R29 K371 [{"CornerRadius"}]
  GETIMPORT R30 K52 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K230 ["CornerRadius"]
  SETTABLEKS R29 R28 K375 ["&SkinPreview"]
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
  SETTABLEKS R30 R29 K376 ["BorderSize"]
  DUPTABLE R30 K377 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R31 12
  SETTABLEKS R31 R30 K234 ["Left"]
  LOADN R31 2
  SETTABLEKS R31 R30 K236 ["Top"]
  LOADN R31 0
  SETTABLEKS R31 R30 K237 ["Bottom"]
  LOADN R31 12
  SETTABLEKS R31 R30 K235 ["Right"]
  SETTABLEKS R30 R29 K54 ["Padding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K378 ["TopLineHeight"]
  GETTABLEKS R30 R5 K379 ["Selected"]
  DUPTABLE R31 K380 [{"BackgroundColor", "Font"}]
  GETTABLEKS R32 R4 K84 ["SubBackground2"]
  SETTABLEKS R32 R31 K81 ["BackgroundColor"]
  GETIMPORT R32 K382 [Enum.Font.SourceSansBold]
  SETTABLEKS R32 R31 K304 ["Font"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K383 ["&AssetPaletteTab"]
  DUPTABLE R29 K384 [{"BorderSize"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K376 ["BorderSize"]
  SETTABLEKS R29 R28 K385 ["&CategoryTab"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K25 ["Tooltip"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R17
  NEWTABLE R28 1 0
  DUPTABLE R29 K387 [{"ShowDelay"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K386 ["ShowDelay"]
  SETTABLEKS R29 R28 K388 ["&NoDelay"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  RETURN R23 1
