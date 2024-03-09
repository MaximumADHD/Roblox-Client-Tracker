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
  GETTABLEKS R17 R18 K26 ["getFFlagAvatarPreviewerAlignResetCameraButton"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K24 ["Src"]
  GETTABLEKS R19 R20 K25 ["Flags"]
  GETTABLEKS R18 R19 K27 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K25 ["Flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K25 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerFixSurveyOverlap"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K24 ["Src"]
  GETTABLEKS R22 R23 K25 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CALL R20 1 1
  GETTABLEKS R22 R2 K31 ["SharedFlags"]
  GETTABLEKS R21 R22 K32 ["getFFlagDevFrameworkAssetRenderModelEnableSky"]
  CALL R21 0 1
  GETIMPORT R22 K34 [game]
  LOADK R24 K35 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R25 0
  NAMECALL R22 R22 K36 ["DefineFastFlag"]
  CALL R22 3 1
  GETIMPORT R23 K34 [game]
  LOADK R25 K37 ["AvatarPreviewerFixAnimationPadding"]
  LOADB R26 0
  NAMECALL R23 R23 K36 ["DefineFastFlag"]
  CALL R23 3 1
  NEWTABLE R24 0 0
  LOADK R27 K38 ["AddItemButton"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K38 ["AddItemButton"]
  DUPTABLE R26 K48 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R27 42
  SETTABLEKS R27 R26 K40 ["Height"]
  LOADK R27 K49 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R27 R26 K41 ["Image"]
  GETTABLEKS R27 R4 K50 ["TextSecondary"]
  SETTABLEKS R27 R26 K42 ["ImageColor"]
  GETTABLEKS R27 R4 K51 ["TextDisabled"]
  SETTABLEKS R27 R26 K43 ["ImageColorDisabled"]
  LOADN R27 20
  SETTABLEKS R27 R26 K44 ["ImageSize"]
  LOADN R27 3
  SETTABLEKS R27 R26 K45 ["PaddingTop"]
  LOADN R27 3
  SETTABLEKS R27 R26 K46 ["PaddingBottom"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K47 ["FailureDialogSpacing"]
  SETTABLE R26 R24 R25
  LOADK R27 K55 ["AnimationControllerDisplay"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K55 ["AnimationControllerDisplay"]
  DUPTABLE R26 K59 [{"Padding", "Position", "Size"}]
  JUMPIFNOT R23 [+2]
  LOADN R27 30
  JUMP [+7]
  DUPTABLE R27 K62 [{"Left", "Right"}]
  LOADN R28 30
  SETTABLEKS R28 R27 K60 ["Left"]
  LOADN R28 30
  SETTABLEKS R28 R27 K61 ["Right"]
  SETTABLEKS R27 R26 K56 ["Padding"]
  MOVE R28 R19
  CALL R28 0 1
  JUMPIFNOT R28 [+8]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 1
  LOADN R31 244
  CALL R27 4 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K57 ["Position"]
  MOVE R28 R19
  CALL R28 0 1
  JUMPIFNOT R28 [+8]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 32
  CALL R27 4 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K58 ["Size"]
  SETTABLE R26 R24 R25
  LOADK R27 K65 ["AnimationPlaybackSlider"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K65 ["AnimationPlaybackSlider"]
  DUPTABLE R26 K70 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R27 R4 K66 ["PlayImage"]
  SETTABLEKS R27 R26 K66 ["PlayImage"]
  LOADK R27 K71 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R27 R26 K67 ["PauseImage"]
  LOADN R27 20
  SETTABLEKS R27 R26 K68 ["PlayButtonWidth"]
  LOADN R27 60
  SETTABLEKS R27 R26 K69 ["PlayTimeLabelWidth"]
  LOADN R27 12
  SETTABLEKS R27 R26 K56 ["Padding"]
  SETTABLE R26 R24 R25
  LOADK R27 K72 ["AnimationPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K72 ["AnimationPreview"]
  NEWTABLE R26 4 0
  LOADK R27 K73 [0.5]
  SETTABLEKS R27 R26 K74 ["PausedAnimationAlpha"]
  DUPTABLE R27 K76 [{"FrontRightAngleLerp"}]
  LOADK R28 K77 [0.4]
  SETTABLEKS R28 R27 K75 ["FrontRightAngleLerp"]
  SETTABLEKS R27 R26 K78 ["&BodyPreview"]
  DUPTABLE R27 K81 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R28 30
  SETTABLEKS R28 R27 K79 ["FieldOfView"]
  LOADK R28 K82 [0.08]
  SETTABLEKS R28 R27 K75 ["FrontRightAngleLerp"]
  LOADK R28 K83 [2.8]
  SETTABLEKS R28 R27 K80 ["InitialDistance"]
  SETTABLEKS R27 R26 K84 ["&FacePreview"]
  SETTABLE R26 R24 R25
  LOADK R27 K85 ["AssetPalettes"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K85 ["AssetPalettes"]
  DUPTABLE R26 K86 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R11
  DUPTABLE R29 K93 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R30 R4 K94 ["SubBackground2"]
  SETTABLEKS R30 R29 K89 ["BackgroundColor3"]
  LOADN R30 0
  SETTABLEKS R30 R29 K90 ["BackgroundTransparency"]
  LOADN R30 0
  SETTABLEKS R30 R29 K56 ["Padding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K91 ["ScrollBarThickness"]
  GETIMPORT R30 K54 [UDim.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K92 ["Spacing"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K19 ["ScrollingFrame"]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 24
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Size"]
  SETTABLE R26 R24 R25
  LOADK R27 K95 ["AutoSetupScreen"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K95 ["AutoSetupScreen"]
  DUPTABLE R26 K100 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K96 ["AlertPaddingHorizontal"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K97 ["AlertPaddingVertical"]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 240
  LOADN R30 1
  LOADN R31 240
  CALL R27 4 1
  SETTABLEKS R27 R26 K98 ["ControlsPosition"]
  LOADK R27 K101 [-0.25]
  SETTABLEKS R27 R26 K99 ["SpinRate"]
  SETTABLE R26 R24 R25
  LOADK R27 K102 ["AvatarScreen"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K102 ["AvatarScreen"]
  DUPTABLE R26 K104 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R27 K109 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R28 R4 K94 ["SubBackground2"]
  SETTABLEKS R28 R27 K105 ["BackgroundColor"]
  GETTABLEKS R28 R4 K110 ["SubBackground"]
  SETTABLEKS R28 R27 K106 ["SeparatorColor"]
  LOADN R28 4
  SETTABLEKS R28 R27 K107 ["SeparatorWidth"]
  LOADN R28 122
  SETTABLEKS R28 R27 K108 ["Width"]
  SETTABLEKS R27 R26 K85 ["AssetPalettes"]
  DUPTABLE R27 K112 [{"Height", "VerticalOffset"}]
  LOADN R28 64
  SETTABLEKS R28 R27 K40 ["Height"]
  LOADN R28 252
  SETTABLEKS R28 R27 K111 ["VerticalOffset"]
  SETTABLEKS R27 R26 K103 ["Tabs"]
  SETTABLE R26 R24 R25
  LOADK R27 K113 ["Background"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K113 ["Background"]
  DUPTABLE R26 K114 [{"Image"}]
  GETTABLEKS R27 R4 K115 ["PreviewerBackgroundImage"]
  SETTABLEKS R27 R26 K41 ["Image"]
  SETTABLE R26 R24 R25
  MOVE R25 R18
  CALL R25 0 1
  JUMPIFNOT R25 [+18]
  LOADK R27 K116 ["BodyPointsTool"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K116 ["BodyPointsTool"]
  DUPTABLE R26 K119 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R28 K120 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R29 K121 ["projection.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K117 ["ProjectionImage"]
  LOADK R28 K120 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R29 K122 ["symmetry.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K118 ["SymmetricalImage"]
  SETTABLE R26 R24 R25
  LOADK R27 K123 ["Catalog"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K123 ["Catalog"]
  DUPTABLE R26 K126 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R11
  DUPTABLE R29 K129 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R30 R4 K130 ["Border"]
  SETTABLEKS R30 R29 K127 ["BorderColor3"]
  LOADN R30 10
  SETTABLEKS R30 R29 K56 ["Padding"]
  GETIMPORT R30 K134 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R30 R29 K128 ["VerticalScrollBarInset"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K19 ["ScrollingFrame"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 1
  LOADN R29 214
  CALL R27 2 1
  SETTABLEKS R27 R26 K124 ["ScrollingFrameHeight"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 90
  LOADN R29 90
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["CellSize"]
  SETTABLE R26 R24 R25
  LOADK R27 K137 ["CatalogItemButton"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K137 ["CatalogItemButton"]
  DUPTABLE R26 K141 [{"HoverX", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R27 K144 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R28 R4 K50 ["TextSecondary"]
  SETTABLEKS R28 R27 K142 ["Color"]
  LOADK R28 K145 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R28 R27 K41 ["Image"]
  GETIMPORT R28 K147 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K143 ["AnchorPoint"]
  GETIMPORT R28 K64 [UDim2.new]
  LOADN R29 1
  LOADN R30 252
  LOADN R31 0
  LOADN R32 4
  CALL R28 4 1
  SETTABLEKS R28 R27 K57 ["Position"]
  GETIMPORT R28 K136 [UDim2.fromOffset]
  LOADN R29 13
  LOADN R30 13
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Size"]
  SETTABLEKS R27 R26 K138 ["HoverX"]
  DUPTABLE R27 K144 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R28 R4 K50 ["TextSecondary"]
  SETTABLEKS R28 R27 K142 ["Color"]
  LOADK R28 K148 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R28 R27 K41 ["Image"]
  GETIMPORT R28 K147 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K143 ["AnchorPoint"]
  MOVE R29 R20
  CALL R29 0 1
  JUMPIFNOT R29 [+8]
  GETIMPORT R28 K64 [UDim2.new]
  LOADN R29 1
  LOADN R30 252
  LOADN R31 1
  LOADN R32 236
  CALL R28 4 1
  JUMP [+7]
  GETIMPORT R28 K64 [UDim2.new]
  LOADN R29 1
  LOADN R30 252
  LOADN R31 0
  LOADN R32 4
  CALL R28 4 1
  SETTABLEKS R28 R27 K57 ["Position"]
  GETIMPORT R28 K136 [UDim2.fromOffset]
  LOADN R29 13
  LOADN R30 16
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Size"]
  SETTABLEKS R27 R26 K139 ["UserImage"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 12
  CALL R27 2 1
  SETTABLEKS R27 R26 K140 ["ItemNamePaddingBottom"]
  SETTABLE R26 R24 R25
  LOADK R27 K149 ["ContextualSurveyDialogButton"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K149 ["ContextualSurveyDialogButton"]
  DUPTABLE R26 K150 [{"Image", "Position", "Size"}]
  GETTABLEKS R27 R4 K151 ["SendFeedback"]
  SETTABLEKS R27 R26 K41 ["Image"]
  MOVE R28 R19
  CALL R28 0 1
  JUMPIFNOT R28 [+8]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 0
  LOADN R29 28
  LOADN R30 1
  LOADN R31 196
  CALL R27 4 1
  JUMP [+7]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 0
  LOADN R29 17
  LOADN R30 1
  LOADN R31 220
  CALL R27 4 1
  SETTABLEKS R27 R26 K57 ["Position"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K58 ["Size"]
  SETTABLE R26 R24 R25
  MOVE R25 R17
  CALL R25 0 1
  JUMPIF R25 [+42]
  LOADK R27 K152 ["DummyPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K152 ["DummyPreview"]
  DUPTABLE R26 K159 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R27 K162 [Color3.fromRGB]
  LOADN R28 170
  LOADN R29 185
  LOADN R30 200
  CALL R27 3 1
  SETTABLEKS R27 R26 K153 ["Ambient"]
  GETIMPORT R27 K162 [Color3.fromRGB]
  LOADN R28 242
  LOADN R29 236
  LOADN R30 227
  CALL R27 3 1
  SETTABLEKS R27 R26 K154 ["LightColor"]
  LOADK R28 K73 [0.5]
  LOADN R29 255
  LOADK R30 K163 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K165 [Vector3.new]
  CALL R27 3 1
  SETTABLEKS R27 R26 K155 ["LightDirection"]
  LOADK R27 K166 [0.25]
  SETTABLEKS R27 R26 K156 ["PanSpeedMultiplier"]
  LOADK R27 K167 [0.2]
  SETTABLEKS R27 R26 K157 ["PlatformHeight"]
  LOADN R27 5
  SETTABLEKS R27 R26 K158 ["PlatformSize"]
  SETTABLE R26 R24 R25
  LOADK R27 K168 ["EquippedItemsSidebar"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K168 ["EquippedItemsSidebar"]
  DUPTABLE R26 K172 [{"CellSize", "ItemSpacing", "PositionOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 50
  LOADN R29 50
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["CellSize"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K169 ["ItemSpacing"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 5
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K170 ["PositionOffset"]
  LOADN R27 10
  SETTABLEKS R27 R26 K171 ["SidebarSpacing"]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 0
  LOADN R29 50
  LOADN R30 1
  LOADN R31 236
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Size"]
  SETTABLE R26 R24 R25
  LOADK R27 K173 ["EquippedItemPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K173 ["EquippedItemPreview"]
  DUPTABLE R26 K176 [{"HoverX", "StrokeColor", "StrokeThickness"}]
  DUPTABLE R27 K177 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R28 K145 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R28 R27 K41 ["Image"]
  GETIMPORT R28 K147 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K143 ["AnchorPoint"]
  GETIMPORT R28 K64 [UDim2.new]
  LOADN R29 1
  LOADN R30 252
  LOADN R31 0
  LOADN R32 4
  CALL R28 4 1
  SETTABLEKS R28 R27 K57 ["Position"]
  GETIMPORT R28 K136 [UDim2.fromOffset]
  LOADN R29 13
  LOADN R30 13
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Size"]
  SETTABLEKS R27 R26 K138 ["HoverX"]
  GETTABLEKS R27 R4 K130 ["Border"]
  SETTABLEKS R27 R26 K174 ["StrokeColor"]
  LOADN R27 1
  SETTABLEKS R27 R26 K175 ["StrokeThickness"]
  SETTABLE R26 R24 R25
  LOADK R27 K178 ["ImportPage"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K178 ["ImportPage"]
  DUPTABLE R26 K186 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R27 K187 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R27 R26 K179 ["ArrowImage"]
  GETTABLEKS R27 R4 K188 ["TextPrimary"]
  SETTABLEKS R27 R26 K180 ["ArrowColor"]
  DUPTABLE R27 K195 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R28 75
  SETTABLEKS R28 R27 K189 ["IconSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K190 ["InnerPadding"]
  LOADN R28 16
  SETTABLEKS R28 R27 K191 ["NameFontSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K192 ["NameLines"]
  LOADN R28 4
  SETTABLEKS R28 R27 K56 ["Padding"]
  GETTABLEKS R28 R4 K196 ["TextLink"]
  SETTABLEKS R28 R27 K193 ["TitleColor"]
  GETIMPORT R28 K197 [Color3.new]
  LOADK R29 K77 [0.4]
  LOADK R30 K77 [0.4]
  LOADK R31 K77 [0.4]
  CALL R28 3 1
  SETTABLEKS R28 R27 K194 ["PreviewAmbient"]
  SETTABLEKS R27 R26 K181 ["Avatar"]
  DUPTABLE R27 K198 [{"Size", "IconSize"}]
  GETIMPORT R28 K136 [UDim2.fromOffset]
  LOADN R29 24
  LOADN R30 24
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Size"]
  LOADN R28 12
  SETTABLEKS R28 R27 K189 ["IconSize"]
  SETTABLEKS R27 R26 K182 ["BackButton"]
  LOADN R27 35
  SETTABLEKS R27 R26 K183 ["HeaderHeight"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 5
  LOADN R29 15
  CALL R27 2 1
  SETTABLEKS R27 R26 K184 ["GridPadding"]
  GETIMPORT R27 K54 [UDim.new]
  LOADK R28 K199 [0.8]
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K185 ["SearchBarHeight"]
  SETTABLE R26 R24 R25
  LOADK R27 K200 ["ItemDataPreviewModel"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K200 ["ItemDataPreviewModel"]
  DUPTABLE R26 K202 [{"InstanceAmbient"}]
  GETIMPORT R27 K197 [Color3.new]
  LOADK R28 K77 [0.4]
  LOADK R29 K77 [0.4]
  LOADK R30 K77 [0.4]
  CALL R27 3 1
  SETTABLEKS R27 R26 K201 ["InstanceAmbient"]
  SETTABLE R26 R24 R25
  LOADK R27 K203 ["ModelPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K203 ["ModelPreview"]
  DUPTABLE R26 K205 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R27 K162 [Color3.fromRGB]
  LOADN R28 170
  LOADN R29 185
  LOADN R30 200
  CALL R27 3 1
  SETTABLEKS R27 R26 K153 ["Ambient"]
  LOADB R27 1
  SETTABLEKS R27 R26 K204 ["EnableSky"]
  JUMPIFNOT R21 [+7]
  GETIMPORT R27 K162 [Color3.fromRGB]
  LOADN R28 221
  LOADN R29 242
  LOADN R30 242
  CALL R27 3 1
  JUMP [+6]
  GETIMPORT R27 K162 [Color3.fromRGB]
  LOADN R28 242
  LOADN R29 236
  LOADN R30 227
  CALL R27 3 1
  SETTABLEKS R27 R26 K154 ["LightColor"]
  JUMPIFNOT R21 [+8]
  LOADK R28 K77 [0.4]
  LOADK R29 K206 [-0.5]
  LOADK R30 K207 [0.6]
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K165 [Vector3.new]
  CALL R27 3 1
  JUMP [+7]
  LOADK R28 K73 [0.5]
  LOADN R29 255
  LOADK R30 K163 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K165 [Vector3.new]
  CALL R27 3 1
  SETTABLEKS R27 R26 K155 ["LightDirection"]
  LOADK R27 K166 [0.25]
  SETTABLEKS R27 R26 K156 ["PanSpeedMultiplier"]
  LOADK R27 K167 [0.2]
  SETTABLEKS R27 R26 K157 ["PlatformHeight"]
  LOADN R27 5
  SETTABLEKS R27 R26 K158 ["PlatformSize"]
  SETTABLE R26 R24 R25
  LOADK R27 K208 ["Notice"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K208 ["Notice"]
  DUPTABLE R26 K212 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R27 R4 K110 ["SubBackground"]
  SETTABLEKS R27 R26 K105 ["BackgroundColor"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 6
  CALL R27 2 1
  SETTABLEKS R27 R26 K209 ["CornerRadius"]
  GETTABLEKS R27 R4 K188 ["TextPrimary"]
  SETTABLEKS R27 R26 K210 ["TextColor"]
  LOADN R27 20
  SETTABLEKS R27 R26 K211 ["TextSize"]
  DUPTABLE R27 K215 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R28 8
  SETTABLEKS R28 R27 K60 ["Left"]
  LOADN R28 8
  SETTABLEKS R28 R27 K61 ["Right"]
  LOADN R28 4
  SETTABLEKS R28 R27 K213 ["Top"]
  LOADN R28 4
  SETTABLEKS R28 R27 K214 ["Bottom"]
  SETTABLEKS R27 R26 K56 ["Padding"]
  SETTABLE R26 R24 R25
  MOVE R25 R17
  CALL R25 0 1
  JUMPIF R25 [+12]
  LOADK R27 K216 ["PrimaryDummyPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K216 ["PrimaryDummyPreview"]
  DUPTABLE R26 K218 [{"BackgroundImage"}]
  GETTABLEKS R27 R4 K115 ["PreviewerBackgroundImage"]
  SETTABLEKS R27 R26 K217 ["BackgroundImage"]
  SETTABLE R26 R24 R25
  LOADK R27 K219 ["ResetCameraButton"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K219 ["ResetCameraButton"]
  DUPTABLE R26 K220 [{"Position", "Size", "Spacing", "Image"}]
  MOVE R28 R16
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADNIL R27
  JUMP [+7]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 246
  LOADN R30 0
  LOADN R31 15
  CALL R27 4 1
  SETTABLEKS R27 R26 K57 ["Position"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 32
  LOADN R29 32
  CALL R27 2 1
  SETTABLEKS R27 R26 K58 ["Size"]
  LOADN R27 5
  SETTABLEKS R27 R26 K92 ["Spacing"]
  GETTABLEKS R27 R4 K221 ["ResetCameraImage"]
  SETTABLEKS R27 R26 K41 ["Image"]
  SETTABLE R26 R24 R25
  LOADK R27 K222 ["SelectScreen"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K222 ["SelectScreen"]
  DUPTABLE R26 K224 [{"ButtonHeight", "Spacing"}]
  LOADN R27 24
  SETTABLEKS R27 R26 K223 ["ButtonHeight"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 18
  CALL R27 2 1
  SETTABLEKS R27 R26 K92 ["Spacing"]
  SETTABLE R26 R24 R25
  LOADK R27 K225 ["SkinPreview"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K225 ["SkinPreview"]
  DUPTABLE R26 K230 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R27 R4 K231 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R27 R26 K226 ["HoveredBorderColor"]
  LOADN R27 1
  SETTABLEKS R27 R26 K227 ["HoveredBorderThickness"]
  GETTABLEKS R27 R4 K232 ["PrimaryMain"]
  SETTABLEKS R27 R26 K228 ["SelectedBorderColor"]
  LOADN R27 2
  SETTABLEKS R27 R26 K229 ["SelectedBorderThickness"]
  SETTABLE R26 R24 R25
  LOADK R27 K233 ["StageSelector"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K233 ["StageSelector"]
  DUPTABLE R26 K237 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R27 R4 K238 ["MainBackground"]
  SETTABLEKS R27 R26 K105 ["BackgroundColor"]
  GETTABLEKS R27 R4 K239 ["ButtonHover"]
  SETTABLEKS R27 R26 K234 ["ButtonSelectedBackgroundColor"]
  LOADN R27 32
  SETTABLEKS R27 R26 K223 ["ButtonHeight"]
  GETTABLEKS R27 R4 K240 ["MainText"]
  SETTABLEKS R27 R26 K235 ["IconColor"]
  GETTABLEKS R27 R4 K241 ["MainTextDisabled"]
  SETTABLEKS R27 R26 K236 ["IconColorDisabled"]
  LOADN R27 18
  SETTABLEKS R27 R26 K189 ["IconSize"]
  LOADN R27 64
  SETTABLEKS R27 R26 K108 ["Width"]
  SETTABLE R26 R24 R25
  LOADK R27 K242 ["Stars"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K242 ["Stars"]
  DUPTABLE R26 K249 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R27 R4 K240 ["MainText"]
  SETTABLEKS R27 R26 K243 ["StarColor"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 16
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K244 ["StarSize"]
  GETTABLEKS R27 R4 K250 ["Star"]
  SETTABLEKS R27 R26 K245 ["StarFilled"]
  GETTABLEKS R27 R4 K246 ["StarUnfilled"]
  SETTABLEKS R27 R26 K246 ["StarUnfilled"]
  LOADN R27 4
  SETTABLEKS R27 R26 K247 ["StarSpacing"]
  LOADN R27 10
  SETTABLEKS R27 R26 K248 ["RatingSpacing"]
  SETTABLE R26 R24 R25
  LOADK R27 K251 ["SubmitDialog"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K251 ["SubmitDialog"]
  DUPTABLE R26 K252 [{"Width"}]
  LOADN R27 244
  SETTABLEKS R27 R26 K108 ["Width"]
  SETTABLE R26 R24 R25
  LOADK R27 K253 ["SubmitInner"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K253 ["SubmitInner"]
  DUPTABLE R26 K257 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 18
  CALL R27 2 1
  SETTABLEKS R27 R26 K254 ["CallToActionSpacing"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K255 ["CheckboxSpacing"]
  LOADN R27 40
  SETTABLEKS R27 R26 K256 ["ContentPadding"]
  SETTABLE R26 R24 R25
  LOADK R27 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K258 ["Survey"]
  DUPTABLE R26 K261 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R27 22
  SETTABLEKS R27 R26 K259 ["HeadIndent"]
  LOADN R27 10
  SETTABLEKS R27 R26 K92 ["Spacing"]
  LOADN R27 96
  SETTABLEKS R27 R26 K260 ["MessageHeight"]
  SETTABLE R26 R24 R25
  LOADK R27 K6 ["Packages"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K262 ["SurveyDialog"]
  DUPTABLE R26 K264 [{"Width", "FinishDialogSize"}]
  LOADN R27 184
  SETTABLEKS R27 R26 K108 ["Width"]
  GETIMPORT R27 K147 [Vector2.new]
  LOADN R28 250
  LOADN R29 30
  CALL R27 2 1
  SETTABLEKS R27 R26 K263 ["FinishDialogSize"]
  SETTABLE R26 R24 R25
  LOADK R27 K9 ["Style"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K265 ["TestingScreen"]
  DUPTABLE R26 K224 [{"ButtonHeight", "Spacing"}]
  LOADN R27 24
  SETTABLEKS R27 R26 K223 ["ButtonHeight"]
  GETIMPORT R27 K54 [UDim.new]
  LOADN R28 0
  LOADN R29 18
  CALL R27 2 1
  SETTABLEKS R27 R26 K92 ["Spacing"]
  SETTABLE R26 R24 R25
  LOADK R27 K10 ["StyleKey"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K266 ["UGCValidationErrorDialog"]
  DUPTABLE R26 K274 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K267 ["DetailsSpacing"]
  LOADN R27 4
  SETTABLEKS R27 R26 K268 ["IconTextSpacing"]
  LOADN R27 26
  SETTABLEKS R27 R26 K269 ["TitleDetailsSpacing"]
  GETIMPORT R27 K147 [Vector2.new]
  LOADN R28 244
  LOADN R29 44
  CALL R27 2 1
  SETTABLEKS R27 R26 K270 ["AlertMinContentSize"]
  LOADN R27 18
  SETTABLEKS R27 R26 K211 ["TextSize"]
  GETTABLEKS R27 R4 K275 ["WarningText"]
  SETTABLEKS R27 R26 K271 ["WarningColor"]
  GETIMPORT R27 K278 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R27 R26 K272 ["WarningFont"]
  LOADK R28 K120 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R29 K23 ["Tooltip"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K273 ["WarningImage"]
  SETTABLE R26 R24 R25
  LOADK R27 K24 ["Src"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K280 ["UGCValidationNotice"]
  DUPTABLE R26 K282 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 8
  LOADN R29 252
  CALL R27 2 1
  SETTABLEKS R27 R26 K57 ["Position"]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 192
  LOADN R30 0
  LOADN R31 48
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Size"]
  GETIMPORT R27 K136 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K281 ["ValidationIconSize"]
  GETTABLEKS R27 R4 K275 ["WarningText"]
  SETTABLEKS R27 R26 K271 ["WarningColor"]
  LOADK R28 K120 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R29 K23 ["Tooltip"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K273 ["WarningImage"]
  SETTABLE R26 R24 R25
  LOADK R27 K27 ["getFFlagAvatarPreviewerAutoSetup"]
  NAMECALL R25 R6 K39 ["add"]
  CALL R25 2 0
  DUPTABLE R25 K284 [{"Color", "Position", "Size"}]
  GETIMPORT R26 K197 [Color3.new]
  LOADN R27 1
  LOADN R28 1
  LOADN R29 1
  CALL R26 3 1
  SETTABLEKS R26 R25 K142 ["Color"]
  GETIMPORT R26 K136 [UDim2.fromOffset]
  LOADN R27 4
  LOADN R28 14
  CALL R26 2 1
  SETTABLEKS R26 R25 K57 ["Position"]
  GETIMPORT R26 K136 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K58 ["Size"]
  GETTABLEKS R26 R6 K283 ["UGCValidationStatusIcon"]
  NEWTABLE R27 2 0
  GETTABLEKS R29 R1 K87 ["Dictionary"]
  GETTABLEKS R28 R29 K88 ["join"]
  MOVE R29 R25
  DUPTABLE R30 K285 [{"Color", "Image"}]
  GETTABLEKS R31 R4 K275 ["WarningText"]
  SETTABLEKS R31 R30 K142 ["Color"]
  LOADK R32 K120 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R33 K23 ["Tooltip"]
  CONCAT R31 R32 R33
  SETTABLEKS R31 R30 K41 ["Image"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K286 ["&Failure"]
  GETTABLEKS R29 R1 K87 ["Dictionary"]
  GETTABLEKS R28 R29 K88 ["join"]
  MOVE R29 R25
  DUPTABLE R30 K114 [{"Image"}]
  GETTABLEKS R31 R4 K287 ["UGCValidationSuccessImage"]
  SETTABLEKS R31 R30 K41 ["Image"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K288 ["&Success"]
  SETTABLE R27 R24 R26
  LOADK R28 K33 ["game"]
  NAMECALL R26 R6 K39 ["add"]
  CALL R26 2 0
  GETTABLEKS R26 R6 K289 ["DisambiguationMenu"]
  DUPTABLE R27 K299 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R28 K147 [Vector2.new]
  LOADN R29 244
  LOADN R30 44
  CALL R28 2 1
  SETTABLEKS R28 R27 K290 ["MinContentSize"]
  GETIMPORT R28 K147 [Vector2.new]
  LOADN R29 200
  LOADN R30 150
  CALL R28 2 1
  SETTABLEKS R28 R27 K291 ["ConfirmCancelContentSize"]
  LOADN R28 8
  SETTABLEKS R28 R27 K292 ["HorizontalSpacing"]
  LOADN R28 8
  SETTABLEKS R28 R27 K293 ["VerticalSpacing"]
  LOADN R28 24
  SETTABLEKS R28 R27 K294 ["TitleContentsSpacing"]
  LOADN R28 8
  SETTABLEKS R28 R27 K295 ["TextSpacing"]
  LOADN R28 150
  SETTABLEKS R28 R27 K296 ["DropdownWidth"]
  LOADN R28 120
  SETTABLEKS R28 R27 K297 ["AttachmentDropdownWidth"]
  GETTABLEKS R28 R4 K110 ["SubBackground"]
  SETTABLEKS R28 R27 K298 ["IconBackground"]
  GETIMPORT R28 K136 [UDim2.fromOffset]
  LOADN R29 72
  LOADN R30 72
  CALL R28 2 1
  SETTABLEKS R28 R27 K189 ["IconSize"]
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K15 ["Alert"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R8
  NEWTABLE R29 1 0
  GETTABLEKS R31 R1 K87 ["Dictionary"]
  GETTABLEKS R30 R31 K88 ["join"]
  GETTABLEKS R31 R8 K300 ["&Warning"]
  DUPTABLE R32 K302 [{"MaxWidth"}]
  LOADN R33 132
  SETTABLEKS R33 R32 K301 ["MaxWidth"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K303 ["&WarningLong"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  JUMPIFNOT R22 [+36]
  GETTABLEKS R26 R6 K17 ["DropdownMenu"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R9
  DUPTABLE R29 K305 [{"MaxHeight"}]
  LOADK R30 K50 ["TextSecondary"]
  SETTABLEKS R30 R29 K304 ["MaxHeight"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K20 ["SelectInput"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R12
  DUPTABLE R29 K307 [{"DropdownMenu"}]
  GETTABLEKS R31 R1 K87 ["Dictionary"]
  GETTABLEKS R30 R31 K88 ["join"]
  GETTABLEKS R31 R12 K17 ["DropdownMenu"]
  DUPTABLE R32 K305 [{"MaxHeight"}]
  LOADK R33 K50 ["TextSecondary"]
  SETTABLEKS R33 R32 K304 ["MaxHeight"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K17 ["DropdownMenu"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K21 ["Separator"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R13
  NEWTABLE R29 1 0
  DUPTABLE R30 K309 [{"StretchMargin"}]
  LOADN R31 5
  SETTABLEKS R31 R30 K308 ["StretchMargin"]
  SETTABLEKS R30 R29 K310 ["&SelectScreenSeparator"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K18 ["Pane"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R10
  NEWTABLE R29 4 0
  NEWTABLE R30 4 0
  GETTABLEKS R31 R4 K311 ["Button"]
  SETTABLEKS R31 R30 K113 ["Background"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K209 ["CornerRadius"]
  GETTABLEKS R31 R5 K312 ["Hover"]
  DUPTABLE R32 K313 [{"Background"}]
  GETTABLEKS R33 R4 K239 ["ButtonHover"]
  SETTABLEKS R33 R32 K113 ["Background"]
  SETTABLE R32 R30 R31
  SETTABLEKS R30 R29 K314 ["&EquippedItemPreview"]
  DUPTABLE R30 K315 [{"CornerRadius"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K209 ["CornerRadius"]
  SETTABLEKS R30 R29 K316 ["&EquippedItemPreviewInner"]
  DUPTABLE R30 K315 [{"CornerRadius"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K209 ["CornerRadius"]
  SETTABLEKS R30 R29 K317 ["&SkinPreview"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K22 ["SimpleTab"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R14
  NEWTABLE R29 1 0
  NEWTABLE R30 8 0
  GETTABLEKS R31 R4 K94 ["SubBackground2"]
  SETTABLEKS R31 R30 K105 ["BackgroundColor"]
  LOADN R31 1
  SETTABLEKS R31 R30 K90 ["BackgroundTransparency"]
  LOADN R31 0
  SETTABLEKS R31 R30 K318 ["BorderSize"]
  DUPTABLE R31 K319 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R32 12
  SETTABLEKS R32 R31 K60 ["Left"]
  LOADN R32 2
  SETTABLEKS R32 R31 K213 ["Top"]
  LOADN R32 0
  SETTABLEKS R32 R31 K214 ["Bottom"]
  LOADN R32 12
  SETTABLEKS R32 R31 K61 ["Right"]
  SETTABLEKS R31 R30 K56 ["Padding"]
  LOADN R31 0
  SETTABLEKS R31 R30 K320 ["TopLineHeight"]
  GETTABLEKS R31 R5 K321 ["Selected"]
  DUPTABLE R32 K322 [{"BackgroundColor", "Font"}]
  GETTABLEKS R33 R4 K94 ["SubBackground2"]
  SETTABLEKS R33 R32 K105 ["BackgroundColor"]
  GETIMPORT R33 K324 [Enum.Font.SourceSansBold]
  SETTABLEKS R33 R32 K276 ["Font"]
  SETTABLE R32 R30 R31
  SETTABLEKS R30 R29 K325 ["&AssetPaletteTab"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  GETTABLEKS R26 R6 K23 ["Tooltip"]
  GETTABLEKS R28 R1 K87 ["Dictionary"]
  GETTABLEKS R27 R28 K88 ["join"]
  MOVE R28 R15
  NEWTABLE R29 1 0
  DUPTABLE R30 K327 [{"ShowDelay"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K326 ["ShowDelay"]
  SETTABLEKS R30 R29 K328 ["&NoDelay"]
  CALL R27 2 1
  SETTABLE R27 R24 R26
  RETURN R24 1
