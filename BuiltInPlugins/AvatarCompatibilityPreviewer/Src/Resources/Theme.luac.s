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
  GETTABLEKS R19 R20 K28 ["getFFlagAvatarPreviewerAlignResetCameraButton"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K26 ["Src"]
  GETTABLEKS R21 R22 K27 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K26 ["Src"]
  GETTABLEKS R22 R23 K27 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K26 ["Src"]
  GETTABLEKS R23 R24 K27 ["Flags"]
  GETTABLEKS R22 R23 K31 ["getFFlagAvatarPreviewerFixSurveyOverlap"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K26 ["Src"]
  GETTABLEKS R24 R25 K27 ["Flags"]
  GETTABLEKS R23 R24 K32 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CALL R22 1 1
  GETTABLEKS R24 R2 K33 ["SharedFlags"]
  GETTABLEKS R23 R24 K34 ["getFFlagDevFrameworkAssetRenderModelEnableSky"]
  CALL R23 0 1
  GETIMPORT R24 K36 [game]
  LOADK R26 K37 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R27 0
  NAMECALL R24 R24 K38 ["DefineFastFlag"]
  CALL R24 3 1
  GETIMPORT R25 K36 [game]
  LOADK R27 K39 ["AvatarPreviewerFixAnimationPadding"]
  LOADB R28 0
  NAMECALL R25 R25 K38 ["DefineFastFlag"]
  CALL R25 3 1
  NEWTABLE R26 0 0
  LOADK R29 K40 ["AddItemButton"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K40 ["AddItemButton"]
  DUPTABLE R28 K49 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R29 42
  SETTABLEKS R29 R28 K42 ["Height"]
  LOADK R29 K50 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R29 R28 K19 ["Image"]
  GETTABLEKS R29 R4 K51 ["TextSecondary"]
  SETTABLEKS R29 R28 K43 ["ImageColor"]
  GETTABLEKS R29 R4 K52 ["TextDisabled"]
  SETTABLEKS R29 R28 K44 ["ImageColorDisabled"]
  LOADN R29 20
  SETTABLEKS R29 R28 K45 ["ImageSize"]
  LOADN R29 3
  SETTABLEKS R29 R28 K46 ["PaddingTop"]
  LOADN R29 3
  SETTABLEKS R29 R28 K47 ["PaddingBottom"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K48 ["FailureDialogSpacing"]
  SETTABLE R28 R26 R27
  LOADK R29 K56 ["AnimationControllerDisplay"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K56 ["AnimationControllerDisplay"]
  DUPTABLE R28 K60 [{"Padding", "Position", "Size"}]
  JUMPIFNOT R25 [+2]
  LOADN R29 30
  JUMP [+7]
  DUPTABLE R29 K63 [{"Left", "Right"}]
  LOADN R30 30
  SETTABLEKS R30 R29 K61 ["Left"]
  LOADN R30 30
  SETTABLEKS R30 R29 K62 ["Right"]
  SETTABLEKS R29 R28 K57 ["Padding"]
  MOVE R30 R21
  CALL R30 0 1
  JUMPIFNOT R30 [+8]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  LOADN R33 244
  CALL R29 4 1
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K58 ["Position"]
  MOVE R30 R21
  CALL R30 0 1
  JUMPIFNOT R30 [+8]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 32
  CALL R29 4 1
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K59 ["Size"]
  SETTABLE R28 R26 R27
  LOADK R29 K66 ["AnimationPlaybackSlider"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K66 ["AnimationPlaybackSlider"]
  DUPTABLE R28 K71 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R29 R4 K67 ["PlayImage"]
  SETTABLEKS R29 R28 K67 ["PlayImage"]
  LOADK R29 K72 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R29 R28 K68 ["PauseImage"]
  LOADN R29 20
  SETTABLEKS R29 R28 K69 ["PlayButtonWidth"]
  LOADN R29 60
  SETTABLEKS R29 R28 K70 ["PlayTimeLabelWidth"]
  LOADN R29 12
  SETTABLEKS R29 R28 K57 ["Padding"]
  SETTABLE R28 R26 R27
  LOADK R29 K73 ["AnimationPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K73 ["AnimationPreview"]
  NEWTABLE R28 4 0
  LOADK R29 K74 [0.5]
  SETTABLEKS R29 R28 K75 ["PausedAnimationAlpha"]
  DUPTABLE R29 K77 [{"FrontRightAngleLerp"}]
  LOADK R30 K78 [0.4]
  SETTABLEKS R30 R29 K76 ["FrontRightAngleLerp"]
  SETTABLEKS R29 R28 K79 ["&BodyPreview"]
  DUPTABLE R29 K82 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R30 30
  SETTABLEKS R30 R29 K80 ["FieldOfView"]
  LOADK R30 K83 [0.08]
  SETTABLEKS R30 R29 K76 ["FrontRightAngleLerp"]
  LOADK R30 K84 [2.8]
  SETTABLEKS R30 R29 K81 ["InitialDistance"]
  SETTABLEKS R29 R28 K85 ["&FacePreview"]
  SETTABLE R28 R26 R27
  LOADK R29 K86 ["AssetPalettes"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K86 ["AssetPalettes"]
  DUPTABLE R28 K87 [{"ScrollingFrame", "Size"}]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R13
  DUPTABLE R31 K94 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R32 R4 K95 ["SubBackground2"]
  SETTABLEKS R32 R31 K90 ["BackgroundColor3"]
  LOADN R32 0
  SETTABLEKS R32 R31 K91 ["BackgroundTransparency"]
  LOADN R32 0
  SETTABLEKS R32 R31 K57 ["Padding"]
  LOADN R32 0
  SETTABLEKS R32 R31 K92 ["ScrollBarThickness"]
  GETIMPORT R32 K55 [UDim.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K93 ["Spacing"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K21 ["ScrollingFrame"]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 24
  CALL R29 4 1
  SETTABLEKS R29 R28 K59 ["Size"]
  SETTABLE R28 R26 R27
  LOADK R29 K96 ["AutoSetupScreen"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K96 ["AutoSetupScreen"]
  DUPTABLE R28 K101 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K97 ["AlertPaddingHorizontal"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 8
  CALL R29 2 1
  SETTABLEKS R29 R28 K98 ["AlertPaddingVertical"]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 1
  LOADN R31 240
  LOADN R32 1
  LOADN R33 240
  CALL R29 4 1
  SETTABLEKS R29 R28 K99 ["ControlsPosition"]
  LOADK R29 K102 [-0.25]
  SETTABLEKS R29 R28 K100 ["SpinRate"]
  SETTABLE R28 R26 R27
  LOADK R29 K103 ["AvatarScreen"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K103 ["AvatarScreen"]
  DUPTABLE R28 K105 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R29 K110 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R30 R4 K95 ["SubBackground2"]
  SETTABLEKS R30 R29 K106 ["BackgroundColor"]
  GETTABLEKS R30 R4 K111 ["SubBackground"]
  SETTABLEKS R30 R29 K107 ["SeparatorColor"]
  LOADN R30 4
  SETTABLEKS R30 R29 K108 ["SeparatorWidth"]
  LOADN R30 122
  SETTABLEKS R30 R29 K109 ["Width"]
  SETTABLEKS R29 R28 K86 ["AssetPalettes"]
  DUPTABLE R29 K113 [{"Height", "VerticalOffset"}]
  LOADN R30 64
  SETTABLEKS R30 R29 K42 ["Height"]
  LOADN R30 252
  SETTABLEKS R30 R29 K112 ["VerticalOffset"]
  SETTABLEKS R29 R28 K104 ["Tabs"]
  SETTABLE R28 R26 R27
  LOADK R29 K114 ["Background"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K114 ["Background"]
  DUPTABLE R28 K115 [{"Image"}]
  GETTABLEKS R29 R4 K116 ["PreviewerBackgroundImage"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLE R28 R26 R27
  MOVE R27 R20
  CALL R27 0 1
  JUMPIFNOT R27 [+18]
  LOADK R29 K117 ["BodyPointsTool"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K117 ["BodyPointsTool"]
  DUPTABLE R28 K120 [{"ProjectionImage", "SymmetricalImage"}]
  LOADK R30 K121 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K122 ["projection.png"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K118 ["ProjectionImage"]
  LOADK R30 K121 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K123 ["symmetry.png"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K119 ["SymmetricalImage"]
  SETTABLE R28 R26 R27
  LOADK R29 K124 ["Catalog"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K124 ["Catalog"]
  DUPTABLE R28 K127 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R13
  DUPTABLE R31 K130 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R32 R4 K131 ["Border"]
  SETTABLEKS R32 R31 K128 ["BorderColor3"]
  LOADN R32 10
  SETTABLEKS R32 R31 K57 ["Padding"]
  GETIMPORT R32 K135 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R32 R31 K129 ["VerticalScrollBarInset"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K21 ["ScrollingFrame"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 1
  LOADN R31 214
  CALL R29 2 1
  SETTABLEKS R29 R28 K125 ["ScrollingFrameHeight"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 90
  LOADN R31 90
  CALL R29 2 1
  SETTABLEKS R29 R28 K126 ["CellSize"]
  SETTABLE R28 R26 R27
  LOADK R29 K138 ["CatalogItemButton"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K138 ["CatalogItemButton"]
  DUPTABLE R28 K142 [{"HoverX", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R29 K145 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R30 R4 K51 ["TextSecondary"]
  SETTABLEKS R30 R29 K143 ["Color"]
  LOADK R30 K146 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K148 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K144 ["AnchorPoint"]
  GETIMPORT R30 K65 [UDim2.new]
  LOADN R31 1
  LOADN R32 252
  LOADN R33 0
  LOADN R34 4
  CALL R30 4 1
  SETTABLEKS R30 R29 K58 ["Position"]
  GETIMPORT R30 K137 [UDim2.fromOffset]
  LOADN R31 13
  LOADN R32 13
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["Size"]
  SETTABLEKS R29 R28 K139 ["HoverX"]
  DUPTABLE R29 K145 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R30 R4 K51 ["TextSecondary"]
  SETTABLEKS R30 R29 K143 ["Color"]
  LOADK R30 K149 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K148 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K144 ["AnchorPoint"]
  MOVE R31 R22
  CALL R31 0 1
  JUMPIFNOT R31 [+8]
  GETIMPORT R30 K65 [UDim2.new]
  LOADN R31 1
  LOADN R32 252
  LOADN R33 1
  LOADN R34 236
  CALL R30 4 1
  JUMP [+7]
  GETIMPORT R30 K65 [UDim2.new]
  LOADN R31 1
  LOADN R32 252
  LOADN R33 0
  LOADN R34 4
  CALL R30 4 1
  SETTABLEKS R30 R29 K58 ["Position"]
  GETIMPORT R30 K137 [UDim2.fromOffset]
  LOADN R31 13
  LOADN R32 16
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["Size"]
  SETTABLEKS R29 R28 K140 ["UserImage"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 12
  CALL R29 2 1
  SETTABLEKS R29 R28 K141 ["ItemNamePaddingBottom"]
  SETTABLE R28 R26 R27
  LOADK R29 K150 ["ContextualSurveyDialogButton"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K150 ["ContextualSurveyDialogButton"]
  DUPTABLE R28 K151 [{"Image", "Position", "Size"}]
  GETTABLEKS R29 R4 K152 ["SendFeedback"]
  SETTABLEKS R29 R28 K19 ["Image"]
  MOVE R30 R21
  CALL R30 0 1
  JUMPIFNOT R30 [+8]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 0
  LOADN R31 28
  LOADN R32 1
  LOADN R33 196
  CALL R29 4 1
  JUMP [+7]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 0
  LOADN R31 17
  LOADN R32 1
  LOADN R33 220
  CALL R29 4 1
  SETTABLEKS R29 R28 K58 ["Position"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 24
  LOADN R31 24
  CALL R29 2 1
  SETTABLEKS R29 R28 K59 ["Size"]
  SETTABLE R28 R26 R27
  MOVE R27 R19
  CALL R27 0 1
  JUMPIF R27 [+42]
  LOADK R29 K153 ["DummyPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K153 ["DummyPreview"]
  DUPTABLE R28 K160 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R29 K163 [Color3.fromRGB]
  LOADN R30 170
  LOADN R31 185
  LOADN R32 200
  CALL R29 3 1
  SETTABLEKS R29 R28 K154 ["Ambient"]
  GETIMPORT R29 K163 [Color3.fromRGB]
  LOADN R30 242
  LOADN R31 236
  LOADN R32 227
  CALL R29 3 1
  SETTABLEKS R29 R28 K155 ["LightColor"]
  LOADK R30 K74 [0.5]
  LOADN R31 255
  LOADK R32 K164 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R29 K166 [Vector3.new]
  CALL R29 3 1
  SETTABLEKS R29 R28 K156 ["LightDirection"]
  LOADK R29 K167 [0.25]
  SETTABLEKS R29 R28 K157 ["PanSpeedMultiplier"]
  LOADK R29 K168 [0.2]
  SETTABLEKS R29 R28 K158 ["PlatformHeight"]
  LOADN R29 5
  SETTABLEKS R29 R28 K159 ["PlatformSize"]
  SETTABLE R28 R26 R27
  LOADK R29 K169 ["EquippedItemsSidebar"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K169 ["EquippedItemsSidebar"]
  DUPTABLE R28 K175 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "PositionOffset", "ScrollingFrameSizeOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 50
  LOADN R31 50
  CALL R29 2 1
  SETTABLEKS R29 R28 K126 ["CellSize"]
  LOADN R29 50
  SETTABLEKS R29 R28 K170 ["FrameSizeOffset"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 2
  CALL R29 2 1
  SETTABLEKS R29 R28 K171 ["ItemSpacing"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 5
  LOADN R31 10
  CALL R29 2 1
  SETTABLEKS R29 R28 K172 ["PositionOffset"]
  LOADN R29 83
  SETTABLEKS R29 R28 K173 ["ScrollingFrameSizeOffset"]
  LOADN R29 10
  SETTABLEKS R29 R28 K174 ["SidebarSpacing"]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 0
  LOADN R31 50
  LOADN R32 1
  LOADN R33 236
  CALL R29 4 1
  SETTABLEKS R29 R28 K59 ["Size"]
  SETTABLE R28 R26 R27
  LOADK R29 K176 ["EquippedItemPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K176 ["EquippedItemPreview"]
  DUPTABLE R28 K181 [{"HoverX", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R29 K182 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R30 K146 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K148 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K144 ["AnchorPoint"]
  GETIMPORT R30 K65 [UDim2.new]
  LOADN R31 1
  LOADN R32 252
  LOADN R33 0
  LOADN R34 4
  CALL R30 4 1
  SETTABLEKS R30 R29 K58 ["Position"]
  GETIMPORT R30 K137 [UDim2.fromOffset]
  LOADN R31 13
  LOADN R32 13
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["Size"]
  SETTABLEKS R29 R28 K139 ["HoverX"]
  GETTABLEKS R29 R4 K131 ["Border"]
  SETTABLEKS R29 R28 K177 ["StrokeColor"]
  LOADN R29 1
  SETTABLEKS R29 R28 K178 ["StrokeThickness"]
  LOADK R29 K183 [0.7]
  SETTABLEKS R29 R28 K179 ["ItemHiddenTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K180 ["ItemWornTransparency"]
  SETTABLE R28 R26 R27
  LOADK R29 K184 ["EquippedItemHoverMenu"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K184 ["EquippedItemHoverMenu"]
  DUPTABLE R28 K187 [{"IconSize", "Margin"}]
  LOADN R29 16
  SETTABLEKS R29 R28 K185 ["IconSize"]
  LOADN R29 1
  SETTABLEKS R29 R28 K186 ["Margin"]
  SETTABLE R28 R26 R27
  LOADK R29 K188 ["ImportPage"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K188 ["ImportPage"]
  DUPTABLE R28 K196 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R29 K197 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R29 R28 K189 ["ArrowImage"]
  GETTABLEKS R29 R4 K198 ["TextPrimary"]
  SETTABLEKS R29 R28 K190 ["ArrowColor"]
  DUPTABLE R29 K204 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R30 75
  SETTABLEKS R30 R29 K185 ["IconSize"]
  LOADN R30 2
  SETTABLEKS R30 R29 K199 ["InnerPadding"]
  LOADN R30 16
  SETTABLEKS R30 R29 K200 ["NameFontSize"]
  LOADN R30 2
  SETTABLEKS R30 R29 K201 ["NameLines"]
  LOADN R30 4
  SETTABLEKS R30 R29 K57 ["Padding"]
  GETTABLEKS R30 R4 K205 ["TextLink"]
  SETTABLEKS R30 R29 K202 ["TitleColor"]
  GETIMPORT R30 K206 [Color3.new]
  LOADK R31 K78 [0.4]
  LOADK R32 K78 [0.4]
  LOADK R33 K78 [0.4]
  CALL R30 3 1
  SETTABLEKS R30 R29 K203 ["PreviewAmbient"]
  SETTABLEKS R29 R28 K191 ["Avatar"]
  DUPTABLE R29 K207 [{"Size", "IconSize"}]
  GETIMPORT R30 K137 [UDim2.fromOffset]
  LOADN R31 24
  LOADN R32 24
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["Size"]
  LOADN R30 12
  SETTABLEKS R30 R29 K185 ["IconSize"]
  SETTABLEKS R29 R28 K192 ["BackButton"]
  LOADN R29 35
  SETTABLEKS R29 R28 K193 ["HeaderHeight"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 5
  LOADN R31 15
  CALL R29 2 1
  SETTABLEKS R29 R28 K194 ["GridPadding"]
  GETIMPORT R29 K55 [UDim.new]
  LOADK R30 K208 [0.8]
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K195 ["SearchBarHeight"]
  SETTABLE R28 R26 R27
  LOADK R29 K209 ["ItemDataPreviewModel"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K209 ["ItemDataPreviewModel"]
  DUPTABLE R28 K211 [{"InstanceAmbient"}]
  GETIMPORT R29 K206 [Color3.new]
  LOADK R30 K78 [0.4]
  LOADK R31 K78 [0.4]
  LOADK R32 K78 [0.4]
  CALL R29 3 1
  SETTABLEKS R29 R28 K210 ["InstanceAmbient"]
  SETTABLE R28 R26 R27
  LOADK R29 K212 ["ModelPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K212 ["ModelPreview"]
  DUPTABLE R28 K214 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R29 K163 [Color3.fromRGB]
  LOADN R30 170
  LOADN R31 185
  LOADN R32 200
  CALL R29 3 1
  SETTABLEKS R29 R28 K154 ["Ambient"]
  LOADB R29 1
  SETTABLEKS R29 R28 K213 ["EnableSky"]
  JUMPIFNOT R23 [+7]
  GETIMPORT R29 K163 [Color3.fromRGB]
  LOADN R30 221
  LOADN R31 242
  LOADN R32 242
  CALL R29 3 1
  JUMP [+6]
  GETIMPORT R29 K163 [Color3.fromRGB]
  LOADN R30 242
  LOADN R31 236
  LOADN R32 227
  CALL R29 3 1
  SETTABLEKS R29 R28 K155 ["LightColor"]
  JUMPIFNOT R23 [+8]
  LOADK R30 K78 [0.4]
  LOADK R31 K215 [-0.5]
  LOADK R32 K216 [0.6]
  FASTCALL VECTOR [+2]
  GETIMPORT R29 K166 [Vector3.new]
  CALL R29 3 1
  JUMP [+7]
  LOADK R30 K74 [0.5]
  LOADN R31 255
  LOADK R32 K164 [0.1]
  FASTCALL VECTOR [+2]
  GETIMPORT R29 K166 [Vector3.new]
  CALL R29 3 1
  SETTABLEKS R29 R28 K156 ["LightDirection"]
  LOADK R29 K167 [0.25]
  SETTABLEKS R29 R28 K157 ["PanSpeedMultiplier"]
  LOADK R29 K168 [0.2]
  SETTABLEKS R29 R28 K158 ["PlatformHeight"]
  LOADN R29 5
  SETTABLEKS R29 R28 K159 ["PlatformSize"]
  SETTABLE R28 R26 R27
  LOADK R29 K217 ["Notice"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K217 ["Notice"]
  DUPTABLE R28 K221 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R29 R4 K111 ["SubBackground"]
  SETTABLEKS R29 R28 K106 ["BackgroundColor"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 6
  CALL R29 2 1
  SETTABLEKS R29 R28 K218 ["CornerRadius"]
  GETTABLEKS R29 R4 K198 ["TextPrimary"]
  SETTABLEKS R29 R28 K219 ["TextColor"]
  LOADN R29 20
  SETTABLEKS R29 R28 K220 ["TextSize"]
  DUPTABLE R29 K224 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R30 8
  SETTABLEKS R30 R29 K61 ["Left"]
  LOADN R30 8
  SETTABLEKS R30 R29 K62 ["Right"]
  LOADN R30 4
  SETTABLEKS R30 R29 K222 ["Top"]
  LOADN R30 4
  SETTABLEKS R30 R29 K223 ["Bottom"]
  SETTABLEKS R29 R28 K57 ["Padding"]
  SETTABLE R28 R26 R27
  MOVE R27 R19
  CALL R27 0 1
  JUMPIF R27 [+12]
  LOADK R29 K225 ["PrimaryDummyPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K225 ["PrimaryDummyPreview"]
  DUPTABLE R28 K227 [{"BackgroundImage"}]
  GETTABLEKS R29 R4 K116 ["PreviewerBackgroundImage"]
  SETTABLEKS R29 R28 K226 ["BackgroundImage"]
  SETTABLE R28 R26 R27
  LOADK R29 K228 ["ResetCameraButton"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K228 ["ResetCameraButton"]
  DUPTABLE R28 K229 [{"Position", "Size", "Spacing", "Image"}]
  MOVE R30 R18
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  LOADNIL R29
  JUMP [+7]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 1
  LOADN R31 246
  LOADN R32 0
  LOADN R33 15
  CALL R29 4 1
  SETTABLEKS R29 R28 K58 ["Position"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 32
  LOADN R31 32
  CALL R29 2 1
  SETTABLEKS R29 R28 K59 ["Size"]
  LOADN R29 5
  SETTABLEKS R29 R28 K93 ["Spacing"]
  GETTABLEKS R29 R4 K230 ["ResetCameraImage"]
  SETTABLEKS R29 R28 K19 ["Image"]
  SETTABLE R28 R26 R27
  LOADK R29 K231 ["SelectScreen"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K231 ["SelectScreen"]
  DUPTABLE R28 K233 [{"ButtonHeight", "Spacing"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K232 ["ButtonHeight"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 18
  CALL R29 2 1
  SETTABLEKS R29 R28 K93 ["Spacing"]
  SETTABLE R28 R26 R27
  LOADK R29 K234 ["SkinPreview"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K234 ["SkinPreview"]
  DUPTABLE R28 K239 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness"}]
  GETTABLEKS R29 R4 K240 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R29 R28 K235 ["HoveredBorderColor"]
  LOADN R29 1
  SETTABLEKS R29 R28 K236 ["HoveredBorderThickness"]
  GETTABLEKS R29 R4 K241 ["PrimaryMain"]
  SETTABLEKS R29 R28 K237 ["SelectedBorderColor"]
  LOADN R29 2
  SETTABLEKS R29 R28 K238 ["SelectedBorderThickness"]
  SETTABLE R28 R26 R27
  LOADK R29 K242 ["StageSelector"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K242 ["StageSelector"]
  DUPTABLE R28 K246 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R29 R4 K247 ["MainBackground"]
  SETTABLEKS R29 R28 K106 ["BackgroundColor"]
  GETTABLEKS R29 R4 K248 ["ButtonHover"]
  SETTABLEKS R29 R28 K243 ["ButtonSelectedBackgroundColor"]
  LOADN R29 32
  SETTABLEKS R29 R28 K232 ["ButtonHeight"]
  GETTABLEKS R29 R4 K249 ["MainText"]
  SETTABLEKS R29 R28 K244 ["IconColor"]
  GETTABLEKS R29 R4 K250 ["MainTextDisabled"]
  SETTABLEKS R29 R28 K245 ["IconColorDisabled"]
  LOADN R29 18
  SETTABLEKS R29 R28 K185 ["IconSize"]
  LOADN R29 64
  SETTABLEKS R29 R28 K109 ["Width"]
  SETTABLE R28 R26 R27
  LOADK R29 K251 ["Stars"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K251 ["Stars"]
  DUPTABLE R28 K258 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R29 R4 K249 ["MainText"]
  SETTABLEKS R29 R28 K252 ["StarColor"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 16
  LOADN R31 16
  CALL R29 2 1
  SETTABLEKS R29 R28 K253 ["StarSize"]
  GETTABLEKS R29 R4 K259 ["Star"]
  SETTABLEKS R29 R28 K254 ["StarFilled"]
  GETTABLEKS R29 R4 K255 ["StarUnfilled"]
  SETTABLEKS R29 R28 K255 ["StarUnfilled"]
  LOADN R29 4
  SETTABLEKS R29 R28 K256 ["StarSpacing"]
  LOADN R29 10
  SETTABLEKS R29 R28 K257 ["RatingSpacing"]
  SETTABLE R28 R26 R27
  LOADK R29 K4 ["require"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K260 ["SubmitDialog"]
  DUPTABLE R28 K261 [{"Width"}]
  LOADN R29 244
  SETTABLEKS R29 R28 K109 ["Width"]
  SETTABLE R28 R26 R27
  LOADK R29 K6 ["Packages"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K262 ["SubmitInner"]
  DUPTABLE R28 K266 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 18
  CALL R29 2 1
  SETTABLEKS R29 R28 K263 ["CallToActionSpacing"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K264 ["CheckboxSpacing"]
  LOADN R29 40
  SETTABLEKS R29 R28 K265 ["ContentPadding"]
  SETTABLE R28 R26 R27
  LOADK R29 K11 ["Util"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K267 ["Survey"]
  DUPTABLE R28 K270 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R29 22
  SETTABLEKS R29 R28 K268 ["HeadIndent"]
  LOADN R29 10
  SETTABLEKS R29 R28 K93 ["Spacing"]
  LOADN R29 96
  SETTABLEKS R29 R28 K269 ["MessageHeight"]
  SETTABLE R28 R26 R27
  LOADK R29 K15 ["Alert"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K271 ["SurveyDialog"]
  DUPTABLE R28 K273 [{"Width", "FinishDialogSize"}]
  LOADN R29 184
  SETTABLEKS R29 R28 K109 ["Width"]
  GETIMPORT R29 K148 [Vector2.new]
  LOADN R30 250
  LOADN R31 30
  CALL R29 2 1
  SETTABLEKS R29 R28 K272 ["FinishDialogSize"]
  SETTABLE R28 R26 R27
  LOADK R29 K18 ["DropdownMenu"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K274 ["TestingScreen"]
  DUPTABLE R28 K233 [{"ButtonHeight", "Spacing"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K232 ["ButtonHeight"]
  GETIMPORT R29 K55 [UDim.new]
  LOADN R30 0
  LOADN R31 18
  CALL R29 2 1
  SETTABLEKS R29 R28 K93 ["Spacing"]
  SETTABLE R28 R26 R27
  LOADK R29 K19 ["Image"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K275 ["UGCValidationErrorDialog"]
  DUPTABLE R28 K283 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R29 12
  SETTABLEKS R29 R28 K276 ["DetailsSpacing"]
  LOADN R29 4
  SETTABLEKS R29 R28 K277 ["IconTextSpacing"]
  LOADN R29 26
  SETTABLEKS R29 R28 K278 ["TitleDetailsSpacing"]
  GETIMPORT R29 K148 [Vector2.new]
  LOADN R30 244
  LOADN R31 44
  CALL R29 2 1
  SETTABLEKS R29 R28 K279 ["AlertMinContentSize"]
  LOADN R29 18
  SETTABLEKS R29 R28 K220 ["TextSize"]
  GETTABLEKS R29 R4 K284 ["WarningText"]
  SETTABLEKS R29 R28 K280 ["WarningColor"]
  GETIMPORT R29 K287 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R29 R28 K281 ["WarningFont"]
  LOADK R30 K121 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K32 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K282 ["WarningImage"]
  SETTABLE R28 R26 R27
  LOADK R29 K33 ["SharedFlags"]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  GETTABLEKS R27 R6 K289 ["UGCValidationNotice"]
  DUPTABLE R28 K291 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 8
  LOADN R31 252
  CALL R29 2 1
  SETTABLEKS R29 R28 K58 ["Position"]
  GETIMPORT R29 K65 [UDim2.new]
  LOADN R30 1
  LOADN R31 192
  LOADN R32 0
  LOADN R33 48
  CALL R29 4 1
  SETTABLEKS R29 R28 K59 ["Size"]
  GETIMPORT R29 K137 [UDim2.fromOffset]
  LOADN R30 24
  LOADN R31 24
  CALL R29 2 1
  SETTABLEKS R29 R28 K290 ["ValidationIconSize"]
  GETTABLEKS R29 R4 K284 ["WarningText"]
  SETTABLEKS R29 R28 K280 ["WarningColor"]
  LOADK R30 K121 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R31 K32 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K282 ["WarningImage"]
  SETTABLE R28 R26 R27
  LOADK R29 K36 [game]
  NAMECALL R27 R6 K41 ["add"]
  CALL R27 2 0
  DUPTABLE R27 K293 [{"Color", "Position", "Size"}]
  GETIMPORT R28 K206 [Color3.new]
  LOADN R29 1
  LOADN R30 1
  LOADN R31 1
  CALL R28 3 1
  SETTABLEKS R28 R27 K143 ["Color"]
  GETIMPORT R28 K137 [UDim2.fromOffset]
  LOADN R29 4
  LOADN R30 14
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Position"]
  GETIMPORT R28 K137 [UDim2.fromOffset]
  LOADN R29 24
  LOADN R30 24
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["Size"]
  GETTABLEKS R28 R6 K292 ["UGCValidationStatusIcon"]
  NEWTABLE R29 2 0
  GETTABLEKS R31 R1 K88 ["Dictionary"]
  GETTABLEKS R30 R31 K89 ["join"]
  MOVE R31 R27
  DUPTABLE R32 K294 [{"Color", "Image"}]
  GETTABLEKS R33 R4 K284 ["WarningText"]
  SETTABLEKS R33 R32 K143 ["Color"]
  LOADK R34 K121 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R35 K32 ["getFFlagAvatarPreviewerRemoveItemsFromPalette"]
  CONCAT R33 R34 R35
  SETTABLEKS R33 R32 K19 ["Image"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K295 ["&Failure"]
  GETTABLEKS R31 R1 K88 ["Dictionary"]
  GETTABLEKS R30 R31 K89 ["join"]
  MOVE R31 R27
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K296 ["UGCValidationSuccessImage"]
  SETTABLEKS R33 R32 K19 ["Image"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K297 ["&Success"]
  SETTABLE R29 R26 R28
  LOADK R30 K42 ["Height"]
  NAMECALL R28 R6 K41 ["add"]
  CALL R28 2 0
  GETTABLEKS R28 R6 K298 ["DisambiguationMenu"]
  DUPTABLE R29 K308 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R30 K148 [Vector2.new]
  LOADN R31 244
  LOADN R32 44
  CALL R30 2 1
  SETTABLEKS R30 R29 K299 ["MinContentSize"]
  GETIMPORT R30 K148 [Vector2.new]
  LOADN R31 200
  LOADN R32 150
  CALL R30 2 1
  SETTABLEKS R30 R29 K300 ["ConfirmCancelContentSize"]
  LOADN R30 8
  SETTABLEKS R30 R29 K301 ["HorizontalSpacing"]
  LOADN R30 8
  SETTABLEKS R30 R29 K302 ["VerticalSpacing"]
  LOADN R30 24
  SETTABLEKS R30 R29 K303 ["TitleContentsSpacing"]
  LOADN R30 8
  SETTABLEKS R30 R29 K304 ["TextSpacing"]
  LOADN R30 150
  SETTABLEKS R30 R29 K305 ["DropdownWidth"]
  LOADN R30 120
  SETTABLEKS R30 R29 K306 ["AttachmentDropdownWidth"]
  GETTABLEKS R30 R4 K111 ["SubBackground"]
  SETTABLEKS R30 R29 K307 ["IconBackground"]
  GETIMPORT R30 K137 [UDim2.fromOffset]
  LOADN R31 72
  LOADN R32 72
  CALL R30 2 1
  SETTABLEKS R30 R29 K185 ["IconSize"]
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K15 ["Alert"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R8
  NEWTABLE R31 1 0
  GETTABLEKS R33 R1 K88 ["Dictionary"]
  GETTABLEKS R32 R33 K89 ["join"]
  GETTABLEKS R33 R8 K309 ["&Warning"]
  DUPTABLE R34 K311 [{"MaxWidth"}]
  LOADN R35 132
  SETTABLEKS R35 R34 K310 ["MaxWidth"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K312 ["&WarningLong"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  MOVE R28 R20
  CALL R28 0 1
  JUMPIFNOT R28 [+65]
  GETTABLEKS R28 R6 K17 ["Button"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R9
  NEWTABLE R31 1 0
  GETTABLEKS R33 R1 K88 ["Dictionary"]
  GETTABLEKS R32 R33 K89 ["join"]
  GETTABLEKS R33 R9 K313 ["&Round"]
  NEWTABLE R34 2 0
  GETTABLEKS R36 R1 K88 ["Dictionary"]
  GETTABLEKS R35 R36 K89 ["join"]
  GETTABLEKS R36 R9 K314 ["BackgroundStyle"]
  DUPTABLE R37 K316 [{"BorderColor"}]
  GETTABLEKS R38 R4 K317 ["SubText"]
  SETTABLEKS R38 R37 K315 ["BorderColor"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K314 ["BackgroundStyle"]
  GETTABLEKS R35 R5 K318 ["Hover"]
  GETTABLEKS R37 R1 K88 ["Dictionary"]
  GETTABLEKS R36 R37 K89 ["join"]
  GETTABLEKS R38 R5 K318 ["Hover"]
  GETTABLE R37 R9 R38
  DUPTABLE R38 K319 [{"BackgroundStyle"}]
  GETTABLEKS R40 R1 K88 ["Dictionary"]
  GETTABLEKS R39 R40 K89 ["join"]
  GETTABLEKS R42 R5 K318 ["Hover"]
  GETTABLE R41 R9 R42
  GETTABLEKS R40 R41 K314 ["BackgroundStyle"]
  DUPTABLE R41 K316 [{"BorderColor"}]
  GETTABLEKS R42 R4 K317 ["SubText"]
  SETTABLEKS R42 R41 K315 ["BorderColor"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K314 ["BackgroundStyle"]
  CALL R36 2 1
  SETTABLE R36 R34 R35
  CALL R32 2 1
  SETTABLEKS R32 R31 K320 ["&RoundHighlighted"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  JUMPIFNOT R24 [+36]
  GETTABLEKS R28 R6 K18 ["DropdownMenu"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R10
  DUPTABLE R31 K322 [{"MaxHeight"}]
  LOADK R32 K67 ["PlayImage"]
  SETTABLEKS R32 R31 K321 ["MaxHeight"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K22 ["SelectInput"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R14
  DUPTABLE R31 K324 [{"DropdownMenu"}]
  GETTABLEKS R33 R1 K88 ["Dictionary"]
  GETTABLEKS R32 R33 K89 ["join"]
  GETTABLEKS R33 R14 K18 ["DropdownMenu"]
  DUPTABLE R34 K322 [{"MaxHeight"}]
  LOADK R35 K67 ["PlayImage"]
  SETTABLEKS R35 R34 K321 ["MaxHeight"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K18 ["DropdownMenu"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K19 ["Image"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R11
  NEWTABLE R31 8 0
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K325 ["Hide"]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K326 ["&EquippedItemHideIcon"]
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K327 ["HideHover"]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K328 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K329 ["Unhide"]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K330 ["&EquippedItemUnhideIcon"]
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K331 ["UnhideHover"]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K332 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R32 K115 [{"Image"}]
  GETTABLEKS R33 R4 K333 ["Dots"]
  SETTABLEKS R33 R32 K19 ["Image"]
  SETTABLEKS R32 R31 K334 ["&EquippedItemDotsIcon"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K23 ["Separator"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R15
  NEWTABLE R31 1 0
  DUPTABLE R32 K336 [{"StretchMargin"}]
  LOADN R33 5
  SETTABLEKS R33 R32 K335 ["StretchMargin"]
  SETTABLEKS R32 R31 K337 ["&SelectScreenSeparator"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K20 ["Pane"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R12
  NEWTABLE R31 4 0
  NEWTABLE R32 4 0
  GETTABLEKS R33 R4 K17 ["Button"]
  SETTABLEKS R33 R32 K114 ["Background"]
  GETIMPORT R33 K55 [UDim.new]
  LOADN R34 0
  LOADN R35 4
  CALL R33 2 1
  SETTABLEKS R33 R32 K218 ["CornerRadius"]
  GETTABLEKS R33 R5 K318 ["Hover"]
  DUPTABLE R34 K338 [{"Background"}]
  GETTABLEKS R35 R4 K248 ["ButtonHover"]
  SETTABLEKS R35 R34 K114 ["Background"]
  SETTABLE R34 R32 R33
  GETTABLEKS R33 R5 K339 ["Disabled"]
  DUPTABLE R34 K338 [{"Background"}]
  GETTABLEKS R35 R4 K340 ["ButtonPressed"]
  SETTABLEKS R35 R34 K114 ["Background"]
  SETTABLE R34 R32 R33
  SETTABLEKS R32 R31 K341 ["&EquippedItemPreview"]
  DUPTABLE R32 K342 [{"CornerRadius"}]
  GETIMPORT R33 K55 [UDim.new]
  LOADN R34 0
  LOADN R35 4
  CALL R33 2 1
  SETTABLEKS R33 R32 K218 ["CornerRadius"]
  SETTABLEKS R32 R31 K343 ["&EquippedItemPreviewInner"]
  DUPTABLE R32 K338 [{"Background"}]
  GETTABLEKS R33 R4 K344 ["ForegroundMuted"]
  SETTABLEKS R33 R32 K114 ["Background"]
  SETTABLEKS R32 R31 K345 ["&EquippedItemHoverMenu"]
  DUPTABLE R32 K342 [{"CornerRadius"}]
  GETIMPORT R33 K55 [UDim.new]
  LOADN R34 0
  LOADN R35 4
  CALL R33 2 1
  SETTABLEKS R33 R32 K218 ["CornerRadius"]
  SETTABLEKS R32 R31 K346 ["&SkinPreview"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K24 ["SimpleTab"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R16
  NEWTABLE R31 1 0
  NEWTABLE R32 8 0
  GETTABLEKS R33 R4 K95 ["SubBackground2"]
  SETTABLEKS R33 R32 K106 ["BackgroundColor"]
  LOADN R33 1
  SETTABLEKS R33 R32 K91 ["BackgroundTransparency"]
  LOADN R33 0
  SETTABLEKS R33 R32 K347 ["BorderSize"]
  DUPTABLE R33 K348 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R34 12
  SETTABLEKS R34 R33 K61 ["Left"]
  LOADN R34 2
  SETTABLEKS R34 R33 K222 ["Top"]
  LOADN R34 0
  SETTABLEKS R34 R33 K223 ["Bottom"]
  LOADN R34 12
  SETTABLEKS R34 R33 K62 ["Right"]
  SETTABLEKS R33 R32 K57 ["Padding"]
  LOADN R33 0
  SETTABLEKS R33 R32 K349 ["TopLineHeight"]
  GETTABLEKS R33 R5 K350 ["Selected"]
  DUPTABLE R34 K351 [{"BackgroundColor", "Font"}]
  GETTABLEKS R35 R4 K95 ["SubBackground2"]
  SETTABLEKS R35 R34 K106 ["BackgroundColor"]
  GETIMPORT R35 K353 [Enum.Font.SourceSansBold]
  SETTABLEKS R35 R34 K285 ["Font"]
  SETTABLE R34 R32 R33
  SETTABLEKS R32 R31 K354 ["&AssetPaletteTab"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  GETTABLEKS R28 R6 K25 ["Tooltip"]
  GETTABLEKS R30 R1 K88 ["Dictionary"]
  GETTABLEKS R29 R30 K89 ["join"]
  MOVE R30 R17
  NEWTABLE R31 1 0
  DUPTABLE R32 K356 [{"ShowDelay"}]
  LOADN R33 0
  SETTABLEKS R33 R32 K355 ["ShowDelay"]
  SETTABLEKS R32 R31 K357 ["&NoDelay"]
  CALL R29 2 1
  SETTABLE R29 R26 R28
  RETURN R26 1
