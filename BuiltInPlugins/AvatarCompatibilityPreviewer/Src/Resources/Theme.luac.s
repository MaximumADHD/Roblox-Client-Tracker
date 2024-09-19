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
  GETIMPORT R21 K32 [game]
  LOADK R23 K33 ["AvatarPreviewerTabBarTopLine"]
  LOADB R24 0
  NAMECALL R21 R21 K34 ["DefineFastFlag"]
  CALL R21 3 1
  GETIMPORT R22 K32 [game]
  LOADK R24 K35 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R25 0
  NAMECALL R22 R22 K34 ["DefineFastFlag"]
  CALL R22 3 1
  NEWTABLE R23 0 0
  LOADK R26 K36 ["AddItemButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K36 ["AddItemButton"]
  DUPTABLE R25 K45 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R26 42
  SETTABLEKS R26 R25 K38 ["Height"]
  LOADK R26 K46 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K39 ["ImageColor"]
  GETTABLEKS R26 R4 K48 ["TextDisabled"]
  SETTABLEKS R26 R25 K40 ["ImageColorDisabled"]
  LOADN R26 20
  SETTABLEKS R26 R25 K41 ["ImageSize"]
  LOADN R26 3
  SETTABLEKS R26 R25 K42 ["PaddingTop"]
  LOADN R26 3
  SETTABLEKS R26 R25 K43 ["PaddingBottom"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K44 ["FailureDialogSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K52 ["AnimationControllerDisplay"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K52 ["AnimationControllerDisplay"]
  DUPTABLE R25 K56 [{"Padding", "Position", "Size"}]
  LOADN R26 30
  SETTABLEKS R26 R25 K53 ["Padding"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  LOADN R30 244
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 32
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K59 ["AnimationPlaybackSlider"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K59 ["AnimationPlaybackSlider"]
  DUPTABLE R25 K64 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R26 R4 K60 ["PlayImage"]
  SETTABLEKS R26 R25 K60 ["PlayImage"]
  LOADK R26 K65 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R26 R25 K61 ["PauseImage"]
  LOADN R26 20
  SETTABLEKS R26 R25 K62 ["PlayButtonWidth"]
  LOADN R26 60
  SETTABLEKS R26 R25 K63 ["PlayTimeLabelWidth"]
  LOADN R26 12
  SETTABLEKS R26 R25 K53 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K66 ["AnimationPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K66 ["AnimationPreview"]
  NEWTABLE R25 4 0
  LOADK R26 K67 [0.5]
  SETTABLEKS R26 R25 K68 ["PausedAnimationAlpha"]
  DUPTABLE R26 K70 [{"FrontRightAngleLerp"}]
  LOADK R27 K71 [0.4]
  SETTABLEKS R27 R26 K69 ["FrontRightAngleLerp"]
  SETTABLEKS R26 R25 K72 ["&BodyPreview"]
  DUPTABLE R26 K75 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R27 30
  SETTABLEKS R27 R26 K73 ["FieldOfView"]
  LOADK R27 K76 [0.08]
  SETTABLEKS R27 R26 K69 ["FrontRightAngleLerp"]
  LOADK R27 K77 [2.8]
  SETTABLEKS R27 R26 K74 ["InitialDistance"]
  SETTABLEKS R26 R25 K78 ["&FacePreview"]
  SETTABLE R25 R23 R24
  LOADK R26 K79 ["AssetPalettes"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K79 ["AssetPalettes"]
  DUPTABLE R25 K82 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
  GETTABLEKS R26 R4 K83 ["SubBackground2"]
  SETTABLEKS R26 R25 K80 ["BackgroundColor"]
  GETTABLEKS R26 R4 K84 ["ActionHover"]
  SETTABLEKS R26 R25 K81 ["BackgroundColorHover"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R13
  DUPTABLE R28 K91 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R29 R4 K83 ["SubBackground2"]
  SETTABLEKS R29 R28 K87 ["BackgroundColor3"]
  LOADN R29 0
  SETTABLEKS R29 R28 K88 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K53 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K89 ["ScrollBarThickness"]
  GETIMPORT R29 K51 [UDim.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K90 ["Spacing"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["ScrollingFrame"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 24
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K92 ["AutoSetupScreen"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K92 ["AutoSetupScreen"]
  DUPTABLE R25 K97 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "ControlsPosition", "SpinRate"}]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K93 ["AlertPaddingHorizontal"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K94 ["AlertPaddingVertical"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 240
  LOADN R29 1
  LOADN R30 240
  CALL R26 4 1
  SETTABLEKS R26 R25 K95 ["ControlsPosition"]
  LOADK R26 K98 [-0.25]
  SETTABLEKS R26 R25 K96 ["SpinRate"]
  SETTABLE R25 R23 R24
  LOADK R26 K99 ["AvatarScreen"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K99 ["AvatarScreen"]
  DUPTABLE R25 K101 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R26 K105 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R27 R4 K83 ["SubBackground2"]
  SETTABLEKS R27 R26 K80 ["BackgroundColor"]
  GETTABLEKS R27 R4 K106 ["SubBackground"]
  SETTABLEKS R27 R26 K102 ["SeparatorColor"]
  LOADN R27 4
  SETTABLEKS R27 R26 K103 ["SeparatorWidth"]
  LOADN R27 122
  SETTABLEKS R27 R26 K104 ["Width"]
  SETTABLEKS R26 R25 K79 ["AssetPalettes"]
  DUPTABLE R26 K108 [{"Height", "VerticalOffset"}]
  LOADN R27 64
  SETTABLEKS R27 R26 K38 ["Height"]
  LOADN R27 252
  SETTABLEKS R27 R26 K107 ["VerticalOffset"]
  SETTABLEKS R26 R25 K100 ["Tabs"]
  SETTABLE R25 R23 R24
  LOADK R26 K109 ["Background"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K109 ["Background"]
  DUPTABLE R25 K110 [{"Image"}]
  GETTABLEKS R26 R4 K111 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K19 ["Image"]
  SETTABLE R25 R23 R24
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+16]
  LOADK R26 K112 ["BodyPointsTool"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K112 ["BodyPointsTool"]
  DUPTABLE R25 K115 [{"ProjectionImage", "SymmetricalImage"}]
  GETTABLEKS R26 R4 K116 ["Projection"]
  SETTABLEKS R26 R25 K113 ["ProjectionImage"]
  GETTABLEKS R26 R4 K117 ["Symmetry"]
  SETTABLEKS R26 R25 K114 ["SymmetricalImage"]
  SETTABLE R25 R23 R24
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+32]
  LOADK R26 K118 ["CageEditingTool"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K118 ["CageEditingTool"]
  DUPTABLE R25 K125 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
  GETTABLEKS R26 R4 K126 ["Falloff"]
  SETTABLEKS R26 R25 K119 ["FalloffImage"]
  GETTABLEKS R26 R4 K127 ["MirrorToLeft"]
  SETTABLEKS R26 R25 K120 ["MirrorToLeftImage"]
  GETTABLEKS R26 R4 K128 ["MirrorToRight"]
  SETTABLEKS R26 R25 K121 ["MirrorToRightImage"]
  GETTABLEKS R26 R4 K129 ["Radius"]
  SETTABLEKS R26 R25 K122 ["RadiusImage"]
  GETTABLEKS R26 R4 K130 ["ResetChanges"]
  SETTABLEKS R26 R25 K123 ["ResetChangesImage"]
  GETTABLEKS R26 R4 K117 ["Symmetry"]
  SETTABLEKS R26 R25 K124 ["SymmetryImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K131 ["Catalog"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K131 ["Catalog"]
  DUPTABLE R25 K134 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R13
  DUPTABLE R28 K137 [{"BorderColor3", "Padding", "VerticalScrollBarInset"}]
  GETTABLEKS R29 R4 K138 ["Border"]
  SETTABLEKS R29 R28 K135 ["BorderColor3"]
  LOADN R29 10
  SETTABLEKS R29 R28 K53 ["Padding"]
  GETIMPORT R29 K142 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R29 R28 K136 ["VerticalScrollBarInset"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["ScrollingFrame"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 1
  LOADN R28 214
  CALL R26 2 1
  SETTABLEKS R26 R25 K132 ["ScrollingFrameHeight"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 90
  LOADN R28 90
  CALL R26 2 1
  SETTABLEKS R26 R25 K133 ["CellSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K145 ["CatalogItemButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K145 ["CatalogItemButton"]
  DUPTABLE R25 K150 [{"HoverX", "AccessoryTypeImage", "UserImage", "ItemNamePaddingBottom"}]
  DUPTABLE R26 K153 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K47 ["TextSecondary"]
  SETTABLEKS R27 R26 K151 ["Color"]
  LOADK R27 K154 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K152 ["AnchorPoint"]
  GETIMPORT R27 K58 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  SETTABLEKS R26 R25 K146 ["HoverX"]
  DUPTABLE R26 K159 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R27 R4 K47 ["TextSecondary"]
  SETTABLEKS R27 R26 K151 ["Color"]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K152 ["AnchorPoint"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 4
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  LOADK R27 K160 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R27 R26 K157 ["LayeredImage"]
  LOADK R27 K161 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R27 R26 K158 ["RigidImage"]
  SETTABLEKS R26 R25 K147 ["AccessoryTypeImage"]
  DUPTABLE R26 K153 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R27 R4 K47 ["TextSecondary"]
  SETTABLEKS R27 R26 K151 ["Color"]
  LOADK R27 K162 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K152 ["AnchorPoint"]
  GETIMPORT R27 K58 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 1
  LOADN R31 236
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  SETTABLEKS R26 R25 K148 ["UserImage"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 12
  CALL R26 2 1
  SETTABLEKS R26 R25 K149 ["ItemNamePaddingBottom"]
  SETTABLE R25 R23 R24
  LOADK R26 K163 ["ContextualSurveyDialogButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K163 ["ContextualSurveyDialogButton"]
  DUPTABLE R25 K164 [{"Image", "Position", "Size"}]
  GETTABLEKS R26 R4 K165 ["SendFeedback"]
  SETTABLEKS R26 R25 K19 ["Image"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 0
  LOADN R28 28
  LOADN R29 1
  LOADN R30 196
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+36]
  LOADK R26 K166 ["DummyPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K166 ["DummyPreview"]
  DUPTABLE R25 K173 [{"Ambient", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K176 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K167 ["Ambient"]
  GETIMPORT R26 K176 [Color3.fromRGB]
  LOADN R27 242
  LOADN R28 236
  LOADN R29 227
  CALL R26 3 1
  SETTABLEKS R26 R25 K168 ["LightColor"]
  LOADK R26 K177 [{0.5, -1, 0.1}]
  SETTABLEKS R26 R25 K169 ["LightDirection"]
  LOADK R26 K178 [0.25]
  SETTABLEKS R26 R25 K170 ["PanSpeedMultiplier"]
  LOADK R26 K179 [0.2]
  SETTABLEKS R26 R25 K171 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K172 ["PlatformSize"]
  SETTABLE R25 R23 R24
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+20]
  LOADK R26 K180 ["EditingTools"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K180 ["EditingTools"]
  DUPTABLE R25 K184 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingImage"}]
  GETTABLEKS R26 R4 K185 ["AttachmentTool"]
  SETTABLEKS R26 R25 K181 ["AttachmentToolImage"]
  GETTABLEKS R26 R4 K186 ["CageTool"]
  SETTABLEKS R26 R25 K182 ["CageEditingToolImage"]
  GETTABLEKS R26 R4 K187 ["ShowClothing"]
  SETTABLEKS R26 R25 K183 ["ShowClothingImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K188 ["EquippedItemsSidebar"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K188 ["EquippedItemsSidebar"]
  DUPTABLE R25 K194 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "PositionOffset", "ScrollingFrameSizeOffset", "SidebarSpacing", "Size"}]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 50
  LOADN R28 50
  CALL R26 2 1
  SETTABLEKS R26 R25 K133 ["CellSize"]
  LOADN R26 50
  SETTABLEKS R26 R25 K189 ["FrameSizeOffset"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 2
  CALL R26 2 1
  SETTABLEKS R26 R25 K190 ["ItemSpacing"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K191 ["PositionOffset"]
  LOADN R26 83
  SETTABLEKS R26 R25 K192 ["ScrollingFrameSizeOffset"]
  LOADN R26 10
  SETTABLEKS R26 R25 K193 ["SidebarSpacing"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 0
  LOADN R28 50
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLE R25 R23 R24
  LOADK R26 K195 ["EquippedItemPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K195 ["EquippedItemPreview"]
  DUPTABLE R25 K200 [{"HoverX", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R26 K201 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R27 K154 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R27 R26 K19 ["Image"]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K152 ["AnchorPoint"]
  GETIMPORT R27 K58 [UDim2.new]
  LOADN R28 1
  LOADN R29 252
  LOADN R30 0
  LOADN R31 4
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 13
  LOADN R29 13
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  SETTABLEKS R26 R25 K146 ["HoverX"]
  GETTABLEKS R26 R4 K138 ["Border"]
  SETTABLEKS R26 R25 K196 ["StrokeColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K197 ["StrokeThickness"]
  LOADK R26 K202 [0.7]
  SETTABLEKS R26 R25 K198 ["ItemHiddenTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K199 ["ItemWornTransparency"]
  SETTABLE R25 R23 R24
  LOADK R26 K203 ["EquippedItemSideMenu"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K203 ["EquippedItemSideMenu"]
  DUPTABLE R25 K208 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R26 R4 K47 ["TextSecondary"]
  SETTABLEKS R26 R25 K204 ["DotsBackground"]
  GETTABLEKS R26 R4 K209 ["TextContrast"]
  SETTABLEKS R26 R25 K205 ["DotsBackgroundHover"]
  LOADN R26 16
  SETTABLEKS R26 R25 K206 ["IconSize"]
  LOADN R26 1
  SETTABLEKS R26 R25 K207 ["Margin"]
  SETTABLE R25 R23 R24
  LOADK R26 K210 ["ImportPage"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K210 ["ImportPage"]
  DUPTABLE R25 K218 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R26 K219 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R26 R25 K211 ["ArrowImage"]
  GETTABLEKS R26 R4 K220 ["TextPrimary"]
  SETTABLEKS R26 R25 K212 ["ArrowColor"]
  DUPTABLE R26 K226 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R27 75
  SETTABLEKS R27 R26 K206 ["IconSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K221 ["InnerPadding"]
  LOADN R27 16
  SETTABLEKS R27 R26 K222 ["NameFontSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K223 ["NameLines"]
  LOADN R27 4
  SETTABLEKS R27 R26 K53 ["Padding"]
  GETTABLEKS R27 R4 K227 ["TextLink"]
  SETTABLEKS R27 R26 K224 ["TitleColor"]
  GETIMPORT R27 K228 [Color3.new]
  LOADK R28 K71 [0.4]
  LOADK R29 K71 [0.4]
  LOADK R30 K71 [0.4]
  CALL R27 3 1
  SETTABLEKS R27 R26 K225 ["PreviewAmbient"]
  SETTABLEKS R26 R25 K213 ["Avatar"]
  DUPTABLE R26 K229 [{"Size", "IconSize"}]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  LOADN R27 12
  SETTABLEKS R27 R26 K206 ["IconSize"]
  SETTABLEKS R26 R25 K214 ["BackButton"]
  LOADN R26 35
  SETTABLEKS R26 R25 K215 ["HeaderHeight"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 5
  LOADN R28 15
  CALL R26 2 1
  SETTABLEKS R26 R25 K216 ["GridPadding"]
  GETIMPORT R26 K51 [UDim.new]
  LOADK R27 K230 [0.8]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K217 ["SearchBarHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K231 ["ItemDataPreviewModel"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K231 ["ItemDataPreviewModel"]
  DUPTABLE R25 K233 [{"InstanceAmbient"}]
  GETIMPORT R26 K228 [Color3.new]
  LOADK R27 K71 [0.4]
  LOADK R28 K71 [0.4]
  LOADK R29 K71 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K232 ["InstanceAmbient"]
  SETTABLE R25 R23 R24
  LOADK R26 K234 ["ModelPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K234 ["ModelPreview"]
  DUPTABLE R25 K236 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R26 K176 [Color3.fromRGB]
  LOADN R27 170
  LOADN R28 185
  LOADN R29 200
  CALL R26 3 1
  SETTABLEKS R26 R25 K167 ["Ambient"]
  LOADB R26 1
  SETTABLEKS R26 R25 K235 ["EnableSky"]
  GETIMPORT R26 K176 [Color3.fromRGB]
  LOADN R27 221
  LOADN R28 242
  LOADN R29 242
  CALL R26 3 1
  SETTABLEKS R26 R25 K168 ["LightColor"]
  LOADK R26 K237 [{0.4, -0.5, 0.6}]
  SETTABLEKS R26 R25 K169 ["LightDirection"]
  LOADK R26 K178 [0.25]
  SETTABLEKS R26 R25 K170 ["PanSpeedMultiplier"]
  LOADK R26 K179 [0.2]
  SETTABLEKS R26 R25 K171 ["PlatformHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K172 ["PlatformSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K238 ["Notice"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K238 ["Notice"]
  DUPTABLE R25 K242 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R26 R4 K106 ["SubBackground"]
  SETTABLEKS R26 R25 K80 ["BackgroundColor"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K239 ["CornerRadius"]
  GETTABLEKS R26 R4 K220 ["TextPrimary"]
  SETTABLEKS R26 R25 K240 ["TextColor"]
  LOADN R26 20
  SETTABLEKS R26 R25 K241 ["TextSize"]
  DUPTABLE R26 K247 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R27 8
  SETTABLEKS R27 R26 K243 ["Left"]
  LOADN R27 8
  SETTABLEKS R27 R26 K244 ["Right"]
  LOADN R27 4
  SETTABLEKS R27 R26 K245 ["Top"]
  LOADN R27 4
  SETTABLEKS R27 R26 K246 ["Bottom"]
  SETTABLEKS R26 R25 K53 ["Padding"]
  SETTABLE R25 R23 R24
  LOADK R26 K248 ["PickTabMenu"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+34]
  GETTABLEKS R24 R6 K248 ["PickTabMenu"]
  DUPTABLE R25 K249 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 6
  CALL R26 2 1
  SETTABLEKS R26 R25 K239 ["CornerRadius"]
  GETTABLEKS R26 R4 K220 ["TextPrimary"]
  SETTABLEKS R26 R25 K39 ["ImageColor"]
  LOADN R26 6
  SETTABLEKS R26 R25 K53 ["Padding"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 224
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  SETTABLE R25 R23 R24
  MOVE R24 R18
  CALL R24 0 1
  JUMPIF R24 [+12]
  LOADK R26 K250 ["PrimaryDummyPreview"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K250 ["PrimaryDummyPreview"]
  DUPTABLE R25 K252 [{"BackgroundImage"}]
  GETTABLEKS R26 R4 K111 ["PreviewerBackgroundImage"]
  SETTABLEKS R26 R25 K251 ["BackgroundImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K253 ["ResetCameraButton"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K253 ["ResetCameraButton"]
  DUPTABLE R25 K254 [{"Size", "Spacing", "Image"}]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 32
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Size"]
  LOADN R26 5
  SETTABLEKS R26 R25 K90 ["Spacing"]
  GETTABLEKS R26 R4 K255 ["ResetCameraImage"]
  SETTABLEKS R26 R25 K19 ["Image"]
  SETTABLE R25 R23 R24
  LOADK R26 K0 ["script"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K256 ["SelectScreen"]
  DUPTABLE R25 K258 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K257 ["ButtonHeight"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K90 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K3 ["FindFirstAncestor"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K259 ["SkinPreview"]
  DUPTABLE R25 K265 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R26 R4 K266 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R26 R25 K260 ["HoveredBorderColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K261 ["HoveredBorderThickness"]
  GETTABLEKS R26 R4 K267 ["PrimaryMain"]
  SETTABLEKS R26 R25 K262 ["SelectedBorderColor"]
  LOADN R26 2
  SETTABLEKS R26 R25 K263 ["SelectedBorderThickness"]
  GETIMPORT R26 K176 [Color3.fromRGB]
  LOADN R27 76
  LOADN R28 76
  LOADN R29 76
  CALL R26 3 1
  SETTABLEKS R26 R25 K264 ["DisabledColorToBlend"]
  SETTABLE R25 R23 R24
  LOADK R26 K12 ["StyleModifier"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K268 ["StageSelector"]
  DUPTABLE R25 K272 [{"BackgroundColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R26 R4 K273 ["MainBackground"]
  SETTABLEKS R26 R25 K80 ["BackgroundColor"]
  GETTABLEKS R26 R4 K274 ["ButtonHover"]
  SETTABLEKS R26 R25 K269 ["ButtonSelectedBackgroundColor"]
  LOADN R26 32
  SETTABLEKS R26 R25 K257 ["ButtonHeight"]
  GETTABLEKS R26 R4 K275 ["MainText"]
  SETTABLEKS R26 R25 K270 ["IconColor"]
  GETTABLEKS R26 R4 K276 ["MainTextDisabled"]
  SETTABLEKS R26 R25 K271 ["IconColorDisabled"]
  LOADN R26 18
  SETTABLEKS R26 R25 K206 ["IconSize"]
  LOADN R26 64
  SETTABLEKS R26 R25 K104 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K21 ["ScrollingFrame"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K277 ["Stars"]
  DUPTABLE R25 K284 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R26 R4 K275 ["MainText"]
  SETTABLEKS R26 R25 K278 ["StarColor"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 16
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K279 ["StarSize"]
  GETTABLEKS R26 R4 K285 ["Star"]
  SETTABLEKS R26 R25 K280 ["StarFilled"]
  GETTABLEKS R26 R4 K281 ["StarUnfilled"]
  SETTABLEKS R26 R25 K281 ["StarUnfilled"]
  LOADN R26 4
  SETTABLEKS R26 R25 K282 ["StarSpacing"]
  LOADN R26 10
  SETTABLEKS R26 R25 K283 ["RatingSpacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K30 ["getFFlagAvatarPreviewerPickTabsMenu"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K286 ["SubmitDialog"]
  DUPTABLE R25 K287 [{"Width"}]
  LOADN R26 244
  SETTABLEKS R26 R25 K104 ["Width"]
  SETTABLE R25 R23 R24
  LOADK R26 K32 [game]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K288 ["SubmitInner"]
  DUPTABLE R25 K292 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K289 ["CallToActionSpacing"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K290 ["CheckboxSpacing"]
  LOADN R26 40
  SETTABLEKS R26 R25 K291 ["ContentPadding"]
  SETTABLE R25 R23 R24
  LOADK R26 K37 ["add"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K293 ["Survey"]
  DUPTABLE R25 K296 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R26 22
  SETTABLEKS R26 R25 K294 ["HeadIndent"]
  LOADN R26 10
  SETTABLEKS R26 R25 K90 ["Spacing"]
  LOADN R26 96
  SETTABLEKS R26 R25 K295 ["MessageHeight"]
  SETTABLE R25 R23 R24
  LOADK R26 K41 ["ImageSize"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K297 ["SurveyDialog"]
  DUPTABLE R25 K299 [{"Width", "FinishDialogSize"}]
  LOADN R26 184
  SETTABLEKS R26 R25 K104 ["Width"]
  GETIMPORT R26 K156 [Vector2.new]
  LOADN R27 250
  LOADN R28 30
  CALL R26 2 1
  SETTABLEKS R26 R25 K298 ["FinishDialogSize"]
  SETTABLE R25 R23 R24
  LOADK R26 K44 ["FailureDialogSpacing"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  MOVE R24 R20
  CALL R24 0 1
  JUMPIFNOT R24 [+12]
  GETTABLEKS R24 R6 K300 ["TabBar"]
  DUPTABLE R25 K301 [{"BackgroundColor", "BackgroundColorHover"}]
  GETTABLEKS R26 R4 K106 ["SubBackground"]
  SETTABLEKS R26 R25 K80 ["BackgroundColor"]
  GETTABLEKS R26 R4 K84 ["ActionHover"]
  SETTABLEKS R26 R25 K81 ["BackgroundColorHover"]
  SETTABLE R25 R23 R24
  LOADK R26 K46 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K302 ["TestingScreen"]
  DUPTABLE R25 K258 [{"ButtonHeight", "Spacing"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K257 ["ButtonHeight"]
  GETIMPORT R26 K51 [UDim.new]
  LOADN R27 0
  LOADN R28 18
  CALL R26 2 1
  SETTABLEKS R26 R25 K90 ["Spacing"]
  SETTABLE R25 R23 R24
  LOADK R26 K47 ["TextSecondary"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K303 ["UGCValidationErrorDialog"]
  DUPTABLE R25 K311 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K304 ["DetailsSpacing"]
  LOADN R26 4
  SETTABLEKS R26 R25 K305 ["IconTextSpacing"]
  LOADN R26 26
  SETTABLEKS R26 R25 K306 ["TitleDetailsSpacing"]
  GETIMPORT R26 K156 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K307 ["AlertMinContentSize"]
  LOADN R26 18
  SETTABLEKS R26 R25 K241 ["TextSize"]
  GETTABLEKS R26 R4 K312 ["WarningText"]
  SETTABLEKS R26 R25 K308 ["WarningColor"]
  GETIMPORT R26 K315 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R26 R25 K309 ["WarningFont"]
  LOADK R27 K60 ["PlayImage"]
  LOADK R28 K61 ["PauseImage"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K310 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K62 ["PlayButtonWidth"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K318 ["UGCValidationNotice"]
  DUPTABLE R25 K320 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 8
  LOADN R28 252
  CALL R26 2 1
  SETTABLEKS R26 R25 K54 ["Position"]
  GETIMPORT R26 K58 [UDim2.new]
  LOADN R27 1
  LOADN R28 192
  LOADN R29 0
  LOADN R30 48
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Size"]
  GETIMPORT R26 K144 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K319 ["ValidationIconSize"]
  GETTABLEKS R26 R4 K312 ["WarningText"]
  SETTABLEKS R26 R25 K308 ["WarningColor"]
  LOADK R27 K60 ["PlayImage"]
  LOADK R28 K61 ["PauseImage"]
  CONCAT R26 R27 R28
  SETTABLEKS R26 R25 K310 ["WarningImage"]
  SETTABLE R25 R23 R24
  LOADK R26 K65 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  NAMECALL R24 R6 K37 ["add"]
  CALL R24 2 0
  DUPTABLE R24 K322 [{"Color", "Position", "Size"}]
  GETIMPORT R25 K228 [Color3.new]
  LOADN R26 1
  LOADN R27 1
  LOADN R28 1
  CALL R25 3 1
  SETTABLEKS R25 R24 K151 ["Color"]
  GETIMPORT R25 K144 [UDim2.fromOffset]
  LOADN R26 4
  LOADN R27 14
  CALL R25 2 1
  SETTABLEKS R25 R24 K54 ["Position"]
  GETIMPORT R25 K144 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Size"]
  GETTABLEKS R25 R6 K321 ["UGCValidationStatusIcon"]
  NEWTABLE R26 2 0
  GETTABLEKS R28 R1 K85 ["Dictionary"]
  GETTABLEKS R27 R28 K86 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K323 [{"Color", "Image"}]
  GETTABLEKS R30 R4 K312 ["WarningText"]
  SETTABLEKS R30 R29 K151 ["Color"]
  LOADK R31 K60 ["PlayImage"]
  LOADK R32 K61 ["PauseImage"]
  CONCAT R30 R31 R32
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K324 ["&Failure"]
  GETTABLEKS R28 R1 K85 ["Dictionary"]
  GETTABLEKS R27 R28 K86 ["join"]
  MOVE R28 R24
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K325 ["UGCValidationSuccessImage"]
  SETTABLEKS R30 R29 K19 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K326 ["&Success"]
  SETTABLE R26 R23 R25
  LOADK R27 K71 [0.4]
  NAMECALL R25 R6 K37 ["add"]
  CALL R25 2 0
  GETTABLEKS R25 R6 K327 ["DisambiguationMenu"]
  DUPTABLE R26 K337 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 244
  LOADN R29 44
  CALL R27 2 1
  SETTABLEKS R27 R26 K328 ["MinContentSize"]
  GETIMPORT R27 K156 [Vector2.new]
  LOADN R28 200
  LOADN R29 150
  CALL R27 2 1
  SETTABLEKS R27 R26 K329 ["ConfirmCancelContentSize"]
  LOADN R27 8
  SETTABLEKS R27 R26 K330 ["HorizontalSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K331 ["VerticalSpacing"]
  LOADN R27 24
  SETTABLEKS R27 R26 K332 ["TitleContentsSpacing"]
  LOADN R27 8
  SETTABLEKS R27 R26 K333 ["TextSpacing"]
  LOADN R27 150
  SETTABLEKS R27 R26 K334 ["DropdownWidth"]
  LOADN R27 120
  SETTABLEKS R27 R26 K335 ["AttachmentDropdownWidth"]
  GETTABLEKS R27 R4 K106 ["SubBackground"]
  SETTABLEKS R27 R26 K336 ["IconBackground"]
  GETIMPORT R27 K144 [UDim2.fromOffset]
  LOADN R28 72
  LOADN R29 72
  CALL R27 2 1
  SETTABLEKS R27 R26 K206 ["IconSize"]
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K15 ["Alert"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R8
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K85 ["Dictionary"]
  GETTABLEKS R29 R30 K86 ["join"]
  GETTABLEKS R30 R8 K338 ["&Warning"]
  DUPTABLE R31 K340 [{"MaxWidth"}]
  LOADN R32 132
  SETTABLEKS R32 R31 K339 ["MaxWidth"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K341 ["&WarningLong"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  MOVE R25 R19
  CALL R25 0 1
  JUMPIFNOT R25 [+65]
  GETTABLEKS R25 R6 K17 ["Button"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R9
  NEWTABLE R28 1 0
  GETTABLEKS R30 R1 K85 ["Dictionary"]
  GETTABLEKS R29 R30 K86 ["join"]
  GETTABLEKS R30 R9 K342 ["&Round"]
  NEWTABLE R31 2 0
  GETTABLEKS R33 R1 K85 ["Dictionary"]
  GETTABLEKS R32 R33 K86 ["join"]
  GETTABLEKS R33 R9 K343 ["BackgroundStyle"]
  DUPTABLE R34 K345 [{"BorderColor"}]
  GETTABLEKS R35 R4 K346 ["SubText"]
  SETTABLEKS R35 R34 K344 ["BorderColor"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K343 ["BackgroundStyle"]
  GETTABLEKS R32 R5 K347 ["Hover"]
  GETTABLEKS R34 R1 K85 ["Dictionary"]
  GETTABLEKS R33 R34 K86 ["join"]
  GETTABLEKS R35 R5 K347 ["Hover"]
  GETTABLE R34 R9 R35
  DUPTABLE R35 K348 [{"BackgroundStyle"}]
  GETTABLEKS R37 R1 K85 ["Dictionary"]
  GETTABLEKS R36 R37 K86 ["join"]
  GETTABLEKS R39 R5 K347 ["Hover"]
  GETTABLE R38 R9 R39
  GETTABLEKS R37 R38 K343 ["BackgroundStyle"]
  DUPTABLE R38 K345 [{"BorderColor"}]
  GETTABLEKS R39 R4 K346 ["SubText"]
  SETTABLEKS R39 R38 K344 ["BorderColor"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K343 ["BackgroundStyle"]
  CALL R33 2 1
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K349 ["&RoundHighlighted"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  JUMPIFNOT R22 [+36]
  GETTABLEKS R25 R6 K18 ["DropdownMenu"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R10
  DUPTABLE R28 K351 [{"MaxHeight"}]
  LOADK R29 K96 ["SpinRate"]
  SETTABLEKS R29 R28 K350 ["MaxHeight"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K22 ["SelectInput"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R14
  DUPTABLE R28 K353 [{"DropdownMenu"}]
  GETTABLEKS R30 R1 K85 ["Dictionary"]
  GETTABLEKS R29 R30 K86 ["join"]
  GETTABLEKS R30 R14 K18 ["DropdownMenu"]
  DUPTABLE R31 K351 [{"MaxHeight"}]
  LOADK R32 K96 ["SpinRate"]
  SETTABLEKS R32 R31 K350 ["MaxHeight"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K18 ["DropdownMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K19 ["Image"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R11
  NEWTABLE R28 8 0
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K354 ["Hide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K355 ["&EquippedItemHideIcon"]
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K356 ["HideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K357 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K358 ["HoverMenu"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K359 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K360 ["Unhide"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K361 ["&EquippedItemUnhideIcon"]
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K362 ["UnhideHover"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K363 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R29 K110 [{"Image"}]
  GETTABLEKS R30 R4 K364 ["HoverMenuDisabled"]
  SETTABLEKS R30 R29 K19 ["Image"]
  SETTABLEKS R29 R28 K365 ["&EquippedItemDisabledBackground"]
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K366 ["Dots"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETTABLEKS R30 R4 K17 ["Button"]
  SETTABLEKS R30 R29 K367 ["ImageColor3"]
  GETTABLEKS R30 R5 K347 ["Hover"]
  DUPTABLE R31 K368 [{"ImageColor3"}]
  GETTABLEKS R32 R4 K369 ["ImageButtonHover"]
  SETTABLEKS R32 R31 K367 ["ImageColor3"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K370 ["&EquippedItemDotsIcon"]
  DUPTABLE R29 K371 [{"Image", "Size"}]
  GETTABLEKS R30 R4 K372 ["DotsVertical"]
  SETTABLEKS R30 R29 K19 ["Image"]
  GETIMPORT R30 K144 [UDim2.fromOffset]
  LOADN R31 20
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K55 ["Size"]
  SETTABLEKS R29 R28 K373 ["&PickTabMenu"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K23 ["Separator"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R15
  NEWTABLE R28 1 0
  DUPTABLE R29 K375 [{"StretchMargin"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K374 ["StretchMargin"]
  SETTABLEKS R29 R28 K376 ["&SelectScreenSeparator"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K20 ["Pane"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R12
  NEWTABLE R28 4 0
  NEWTABLE R29 4 0
  GETTABLEKS R30 R4 K17 ["Button"]
  SETTABLEKS R30 R29 K109 ["Background"]
  GETIMPORT R30 K51 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K239 ["CornerRadius"]
  GETTABLEKS R30 R5 K347 ["Hover"]
  DUPTABLE R31 K377 [{"Background"}]
  GETTABLEKS R32 R4 K274 ["ButtonHover"]
  SETTABLEKS R32 R31 K109 ["Background"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R5 K378 ["Disabled"]
  DUPTABLE R31 K377 [{"Background"}]
  GETTABLEKS R32 R4 K379 ["ButtonPressed"]
  SETTABLEKS R32 R31 K109 ["Background"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K380 ["&EquippedItemPreview"]
  DUPTABLE R29 K381 [{"CornerRadius"}]
  GETIMPORT R30 K51 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K239 ["CornerRadius"]
  SETTABLEKS R29 R28 K382 ["&EquippedItemPreviewInner"]
  DUPTABLE R29 K377 [{"Background"}]
  GETTABLEKS R30 R4 K383 ["ForegroundMuted"]
  SETTABLEKS R30 R29 K109 ["Background"]
  SETTABLEKS R29 R28 K384 ["&EquippedItemHoverMenu"]
  DUPTABLE R29 K381 [{"CornerRadius"}]
  GETIMPORT R30 K51 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K239 ["CornerRadius"]
  SETTABLEKS R29 R28 K385 ["&SkinPreview"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K24 ["SimpleTab"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R16
  NEWTABLE R28 2 0
  NEWTABLE R29 8 0
  GETTABLEKS R30 R4 K83 ["SubBackground2"]
  SETTABLEKS R30 R29 K80 ["BackgroundColor"]
  LOADN R30 1
  SETTABLEKS R30 R29 K88 ["BackgroundTransparency"]
  LOADN R30 0
  SETTABLEKS R30 R29 K386 ["BorderSize"]
  DUPTABLE R30 K387 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R31 12
  SETTABLEKS R31 R30 K243 ["Left"]
  LOADN R31 2
  SETTABLEKS R31 R30 K245 ["Top"]
  LOADN R31 0
  SETTABLEKS R31 R30 K246 ["Bottom"]
  LOADN R31 12
  SETTABLEKS R31 R30 K244 ["Right"]
  SETTABLEKS R30 R29 K53 ["Padding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K388 ["TopLineHeight"]
  GETTABLEKS R30 R5 K389 ["Selected"]
  DUPTABLE R31 K390 [{"BackgroundColor", "Font"}]
  GETTABLEKS R32 R4 K83 ["SubBackground2"]
  SETTABLEKS R32 R31 K80 ["BackgroundColor"]
  GETIMPORT R32 K392 [Enum.Font.SourceSansBold]
  SETTABLEKS R32 R31 K313 ["Font"]
  SETTABLE R31 R29 R30
  SETTABLEKS R29 R28 K393 ["&AssetPaletteTab"]
  DUPTABLE R29 K394 [{"BorderSize", "TopLineHeight"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K386 ["BorderSize"]
  JUMPIFNOT R21 [+2]
  LOADN R30 3
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K388 ["TopLineHeight"]
  SETTABLEKS R29 R28 K395 ["&CategoryTab"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  GETTABLEKS R25 R6 K25 ["Tooltip"]
  GETTABLEKS R27 R1 K85 ["Dictionary"]
  GETTABLEKS R26 R27 K86 ["join"]
  MOVE R27 R17
  NEWTABLE R28 1 0
  DUPTABLE R29 K397 [{"ShowDelay"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K396 ["ShowDelay"]
  SETTABLEKS R29 R28 K398 ["&NoDelay"]
  CALL R26 2 1
  SETTABLE R26 R23 R25
  RETURN R23 1
