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
  GETTABLEKS R13 R7 K19 ["IconButton"]
  GETTABLEKS R12 R13 K16 ["style"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R7 K20 ["Image"]
  GETTABLEKS R13 R14 K16 ["style"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R7 K21 ["Pane"]
  GETTABLEKS R14 R15 K16 ["style"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R7 K22 ["ScrollingFrame"]
  GETTABLEKS R15 R16 K16 ["style"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R7 K23 ["SelectInput"]
  GETTABLEKS R16 R17 K16 ["style"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R7 K24 ["Separator"]
  GETTABLEKS R17 R18 K16 ["style"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R7 K25 ["SimpleTab"]
  GETTABLEKS R18 R19 K16 ["style"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R7 K26 ["Tooltip"]
  GETTABLEKS R19 R20 K16 ["style"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K27 ["Src"]
  GETTABLEKS R21 R22 K28 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K27 ["Src"]
  GETTABLEKS R22 R23 K28 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAvatarPreviewerSortClothingUI"]
  CALL R20 1 1
  GETIMPORT R21 K32 [game]
  LOADK R23 K33 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
  LOADB R24 0
  NAMECALL R21 R21 K34 ["DefineFastFlag"]
  CALL R21 3 1
  NEWTABLE R22 0 0
  LOADK R25 K35 ["AddItemButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K35 ["AddItemButton"]
  DUPTABLE R24 K46 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom", "FailureDialogSpacing"}]
  LOADN R25 50
  SETTABLEKS R25 R24 K37 ["Height"]
  LOADK R25 K47 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
  SETTABLEKS R25 R24 K20 ["Image"]
  GETTABLEKS R25 R4 K48 ["TextSecondary"]
  SETTABLEKS R25 R24 K38 ["ImageColor"]
  GETTABLEKS R25 R4 K49 ["TextDisabled"]
  SETTABLEKS R25 R24 K39 ["ImageColorDisabled"]
  LOADN R25 20
  SETTABLEKS R25 R24 K40 ["ImageSize"]
  LOADN R25 5
  SETTABLEKS R25 R24 K41 ["PaddingTop"]
  LOADN R25 5
  SETTABLEKS R25 R24 K42 ["PaddingLeft"]
  LOADN R25 9
  SETTABLEKS R25 R24 K43 ["PaddingRight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K44 ["PaddingBottom"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K45 ["FailureDialogSpacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K53 ["AnimationControllerDisplay"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K53 ["AnimationControllerDisplay"]
  DUPTABLE R24 K57 [{"Padding", "Position", "Size"}]
  LOADN R25 30
  SETTABLEKS R25 R24 K54 ["Padding"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 244
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 32
  CALL R25 4 1
  SETTABLEKS R25 R24 K56 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K60 ["AnimationPlaybackSlider"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K60 ["AnimationPlaybackSlider"]
  DUPTABLE R24 K65 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  GETTABLEKS R25 R4 K61 ["PlayImage"]
  SETTABLEKS R25 R24 K61 ["PlayImage"]
  LOADK R25 K66 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R25 R24 K62 ["PauseImage"]
  LOADN R25 20
  SETTABLEKS R25 R24 K63 ["PlayButtonWidth"]
  LOADN R25 60
  SETTABLEKS R25 R24 K64 ["PlayTimeLabelWidth"]
  LOADN R25 12
  SETTABLEKS R25 R24 K54 ["Padding"]
  SETTABLE R24 R22 R23
  LOADK R25 K67 ["AnimationPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K67 ["AnimationPreview"]
  NEWTABLE R24 4 0
  LOADK R25 K68 [0.5]
  SETTABLEKS R25 R24 K69 ["PausedAnimationAlpha"]
  DUPTABLE R25 K71 [{"FrontRightAngleLerp"}]
  LOADK R26 K72 [0.4]
  SETTABLEKS R26 R25 K70 ["FrontRightAngleLerp"]
  SETTABLEKS R25 R24 K73 ["&BodyPreview"]
  DUPTABLE R25 K76 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
  LOADN R26 30
  SETTABLEKS R26 R25 K74 ["FieldOfView"]
  LOADK R26 K77 [0.08]
  SETTABLEKS R26 R25 K70 ["FrontRightAngleLerp"]
  LOADK R26 K78 [2.8]
  SETTABLEKS R26 R25 K75 ["InitialDistance"]
  SETTABLEKS R25 R24 K79 ["&FacePreview"]
  SETTABLE R24 R22 R23
  LOADK R25 K80 ["AssetPalettes"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K80 ["AssetPalettes"]
  DUPTABLE R24 K83 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
  GETTABLEKS R25 R4 K84 ["SubBackground2"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETTABLEKS R25 R4 K85 ["ActionHover"]
  SETTABLEKS R25 R24 K82 ["BackgroundColorHover"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R14
  DUPTABLE R27 K92 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
  GETTABLEKS R28 R4 K84 ["SubBackground2"]
  SETTABLEKS R28 R27 K88 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K89 ["BackgroundTransparency"]
  LOADN R28 0
  SETTABLEKS R28 R27 K54 ["Padding"]
  LOADN R28 0
  SETTABLEKS R28 R27 K90 ["ScrollBarThickness"]
  GETIMPORT R28 K52 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K91 ["Spacing"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K22 ["ScrollingFrame"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 24
  CALL R25 4 1
  SETTABLEKS R25 R24 K56 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K93 ["AutoSetupScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K93 ["AutoSetupScreen"]
  DUPTABLE R24 K101 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "Controls", "SpinRate", "SplitPane", "TablePadding", "ToggleBarHeight"}]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K94 ["AlertPaddingHorizontal"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K95 ["AlertPaddingVertical"]
  DUPTABLE R25 K109 [{"AnchorPoint", "ButtonAnchorPoint", "ButtonColor", "ButtonHeight", "ButtonPaddingHorizontal", "Position", "TablePosition", "PaneHeight"}]
  GETIMPORT R26 K111 [Vector2.new]
  LOADK R27 K68 [0.5]
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["AnchorPoint"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 1
  LOADK R28 K68 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K103 ["ButtonAnchorPoint"]
  GETTABLEKS R26 R4 K112 ["SecondaryContrast"]
  SETTABLEKS R26 R25 K104 ["ButtonColor"]
  LOADN R26 28
  SETTABLEKS R26 R25 K105 ["ButtonHeight"]
  LOADN R26 24
  SETTABLEKS R26 R25 K106 ["ButtonPaddingHorizontal"]
  MOVE R27 R20
  CALL R27 0 1
  JUMPIFNOT R27 [+6]
  GETIMPORT R26 K114 [UDim2.fromScale]
  LOADK R27 K68 [0.5]
  LOADN R28 1
  CALL R26 2 1
  JUMP [+7]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 240
  LOADN R29 1
  LOADN R30 240
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADK R27 K68 [0.5]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 240
  CALL R26 4 1
  SETTABLEKS R26 R25 K107 ["TablePosition"]
  LOADN R26 42
  SETTABLEKS R26 R25 K108 ["PaneHeight"]
  SETTABLEKS R25 R24 K96 ["Controls"]
  LOADK R25 K115 [-0.25]
  SETTABLEKS R25 R24 K97 ["SpinRate"]
  DUPTABLE R25 K121 [{"DefaultSizes", "CollapsedSizes", "CollapsedTolerance", "MinimumSizes", "HiddenSizes"}]
  NEWTABLE R26 0 2
  GETIMPORT R27 K52 [UDim.new]
  LOADK R28 K122 [0.65]
  LOADN R29 0
  CALL R27 2 1
  GETIMPORT R28 K52 [UDim.new]
  LOADK R29 K123 [0.35]
  LOADN R30 0
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  SETTABLEKS R26 R25 K116 ["DefaultSizes"]
  NEWTABLE R26 0 2
  GETIMPORT R27 K52 [UDim.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  GETIMPORT R28 K52 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  SETTABLEKS R26 R25 K117 ["CollapsedSizes"]
  LOADK R26 K124 [0.01]
  SETTABLEKS R26 R25 K118 ["CollapsedTolerance"]
  NEWTABLE R26 0 2
  GETIMPORT R27 K52 [UDim.new]
  LOADK R28 K125 [0.3]
  LOADN R29 0
  CALL R27 2 1
  GETIMPORT R28 K52 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  SETTABLEKS R26 R25 K119 ["MinimumSizes"]
  NEWTABLE R26 0 2
  GETIMPORT R27 K52 [UDim.new]
  LOADK R28 K126 [1.01]
  LOADN R29 0
  CALL R27 2 1
  GETIMPORT R28 K52 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  SETTABLEKS R26 R25 K120 ["HiddenSizes"]
  SETTABLEKS R25 R24 K98 ["SplitPane"]
  LOADN R25 8
  SETTABLEKS R25 R24 K99 ["TablePadding"]
  LOADN R25 22
  SETTABLEKS R25 R24 K100 ["ToggleBarHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K127 ["AvatarScreen"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K127 ["AvatarScreen"]
  DUPTABLE R24 K129 [{"AssetPalettes", "Tabs"}]
  DUPTABLE R25 K133 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
  GETTABLEKS R26 R4 K84 ["SubBackground2"]
  SETTABLEKS R26 R25 K81 ["BackgroundColor"]
  GETTABLEKS R26 R4 K134 ["SubBackground"]
  SETTABLEKS R26 R25 K130 ["SeparatorColor"]
  LOADN R26 0
  SETTABLEKS R26 R25 K131 ["SeparatorWidth"]
  LOADN R26 104
  SETTABLEKS R26 R25 K132 ["Width"]
  SETTABLEKS R25 R24 K80 ["AssetPalettes"]
  DUPTABLE R25 K136 [{"Height", "VerticalOffset"}]
  LOADN R26 64
  SETTABLEKS R26 R25 K37 ["Height"]
  LOADN R26 252
  SETTABLEKS R26 R25 K135 ["VerticalOffset"]
  SETTABLEKS R25 R24 K128 ["Tabs"]
  SETTABLE R24 R22 R23
  LOADK R25 K137 ["Background"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K137 ["Background"]
  DUPTABLE R24 K138 [{"Image"}]
  GETTABLEKS R25 R4 K139 ["PreviewerBackgroundImage"]
  SETTABLEKS R25 R24 K20 ["Image"]
  SETTABLE R24 R22 R23
  MOVE R23 R19
  CALL R23 0 1
  JUMPIFNOT R23 [+16]
  LOADK R25 K140 ["BodyPointsTool"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K140 ["BodyPointsTool"]
  DUPTABLE R24 K143 [{"ProjectionImage", "SymmetricalImage"}]
  GETTABLEKS R25 R4 K144 ["Projection"]
  SETTABLEKS R25 R24 K141 ["ProjectionImage"]
  GETTABLEKS R25 R4 K145 ["Symmetry"]
  SETTABLEKS R25 R24 K142 ["SymmetricalImage"]
  SETTABLE R24 R22 R23
  MOVE R23 R19
  CALL R23 0 1
  JUMPIFNOT R23 [+32]
  LOADK R25 K146 ["CageEditingTool"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K146 ["CageEditingTool"]
  DUPTABLE R24 K153 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
  GETTABLEKS R25 R4 K154 ["Falloff"]
  SETTABLEKS R25 R24 K147 ["FalloffImage"]
  GETTABLEKS R25 R4 K155 ["MirrorToLeft"]
  SETTABLEKS R25 R24 K148 ["MirrorToLeftImage"]
  GETTABLEKS R25 R4 K156 ["MirrorToRight"]
  SETTABLEKS R25 R24 K149 ["MirrorToRightImage"]
  GETTABLEKS R25 R4 K157 ["Radius"]
  SETTABLEKS R25 R24 K150 ["RadiusImage"]
  GETTABLEKS R25 R4 K158 ["ResetChanges"]
  SETTABLEKS R25 R24 K151 ["ResetChangesImage"]
  GETTABLEKS R25 R4 K145 ["Symmetry"]
  SETTABLEKS R25 R24 K152 ["SymmetryImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K159 ["Catalog"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K159 ["Catalog"]
  DUPTABLE R24 K162 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R14
  DUPTABLE R27 K165 [{"BorderColor3", "Padding", "ScrollBarThickness", "VerticalScrollBarInset"}]
  GETTABLEKS R28 R4 K166 ["Border"]
  SETTABLEKS R28 R27 K163 ["BorderColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K54 ["Padding"]
  LOADN R28 4
  SETTABLEKS R28 R27 K90 ["ScrollBarThickness"]
  GETIMPORT R28 K170 [Enum.ScrollBarInset.Always]
  SETTABLEKS R28 R27 K164 ["VerticalScrollBarInset"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K22 ["ScrollingFrame"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 1
  LOADN R27 206
  CALL R25 2 1
  SETTABLEKS R25 R24 K160 ["ScrollingFrameHeight"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 90
  LOADN R27 90
  CALL R25 2 1
  SETTABLEKS R25 R24 K161 ["CellSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K173 ["CatalogItemButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K173 ["CatalogItemButton"]
  DUPTABLE R24 K178 [{"HoverX", "AccessoryTypeImage", "UserImage", "Padding", "TextLabelPadding"}]
  DUPTABLE R25 K180 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K179 ["Color"]
  LOADK R26 K181 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R26 R25 K20 ["Image"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["AnchorPoint"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLEKS R25 R24 K174 ["HoverX"]
  DUPTABLE R25 K184 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K179 ["Color"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["AnchorPoint"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 4
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  LOADK R26 K185 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
  SETTABLEKS R26 R25 K182 ["LayeredImage"]
  LOADK R26 K186 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
  SETTABLEKS R26 R25 K183 ["RigidImage"]
  SETTABLEKS R25 R24 K175 ["AccessoryTypeImage"]
  DUPTABLE R25 K180 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
  GETTABLEKS R26 R4 K48 ["TextSecondary"]
  SETTABLEKS R26 R25 K179 ["Color"]
  LOADK R26 K187 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
  SETTABLEKS R26 R25 K20 ["Image"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["AnchorPoint"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 1
  LOADN R30 236
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLEKS R25 R24 K176 ["UserImage"]
  LOADN R25 4
  SETTABLEKS R25 R24 K54 ["Padding"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K177 ["TextLabelPadding"]
  SETTABLE R24 R22 R23
  LOADK R25 K188 ["ContextualSurveyDialogButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K188 ["ContextualSurveyDialogButton"]
  DUPTABLE R24 K189 [{"Image", "Position", "Size"}]
  GETTABLEKS R25 R4 K190 ["SendFeedback"]
  SETTABLEKS R25 R24 K20 ["Image"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 0
  LOADN R27 28
  LOADN R28 1
  LOADN R29 196
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K191 ["GenerationCard"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K191 ["GenerationCard"]
  DUPTABLE R24 K202 [{"TitleFont", "PrimaryActionFont", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "TextColor", "TextSize", "CornerRadius", "InnerPadding", "MaxWidth", "StrokeColor", "StrokeThickness"}]
  GETIMPORT R25 K205 [Enum.Font.SourceSansBold]
  SETTABLEKS R25 R24 K192 ["TitleFont"]
  GETIMPORT R25 K207 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K193 ["PrimaryActionFont"]
  GETTABLEKS R25 R4 K208 ["AlertBackgroundDefault"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  LOADK R25 K209 [0.15]
  SETTABLEKS R25 R24 K194 ["BackgroundColorHoverDarkerMultiplier"]
  GETTABLEKS R25 R4 K210 ["TextPrimary"]
  SETTABLEKS R25 R24 K195 ["TextColor"]
  LOADN R25 18
  SETTABLEKS R25 R24 K196 ["TextSize"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K197 ["CornerRadius"]
  LOADN R25 12
  SETTABLEKS R25 R24 K198 ["InnerPadding"]
  LOADN R25 244
  SETTABLEKS R25 R24 K199 ["MaxWidth"]
  GETTABLEKS R25 R4 K211 ["OtherDivider"]
  SETTABLEKS R25 R24 K200 ["StrokeColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K201 ["StrokeThickness"]
  SETTABLE R24 R22 R23
  MOVE R23 R19
  CALL R23 0 1
  JUMPIFNOT R23 [+24]
  LOADK R25 K212 ["EditingTools"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K212 ["EditingTools"]
  DUPTABLE R24 K217 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingOffImage", "ShowClothingOnImage"}]
  GETTABLEKS R25 R4 K218 ["AttachmentTool"]
  SETTABLEKS R25 R24 K213 ["AttachmentToolImage"]
  GETTABLEKS R25 R4 K219 ["CageTool"]
  SETTABLEKS R25 R24 K214 ["CageEditingToolImage"]
  GETTABLEKS R25 R4 K220 ["ShowClothingOff"]
  SETTABLEKS R25 R24 K215 ["ShowClothingOffImage"]
  GETTABLEKS R25 R4 K221 ["ShowClothingOn"]
  SETTABLEKS R25 R24 K216 ["ShowClothingOnImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K222 ["EquippedItemsSidebar"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K222 ["EquippedItemsSidebar"]
  DUPTABLE R24 K228 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "ScrollingFrameSizeOffset", "ScrollBarThickness", "SidebarSpacing", "Size", "SidebarPadding"}]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 45
  LOADN R27 45
  CALL R25 2 1
  SETTABLEKS R25 R24 K161 ["CellSize"]
  LOADN R25 50
  SETTABLEKS R25 R24 K223 ["FrameSizeOffset"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K224 ["ItemSpacing"]
  LOADN R25 90
  SETTABLEKS R25 R24 K225 ["ScrollingFrameSizeOffset"]
  LOADN R25 4
  SETTABLEKS R25 R24 K90 ["ScrollBarThickness"]
  LOADN R25 15
  SETTABLEKS R25 R24 K226 ["SidebarSpacing"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  LOADN R25 10
  SETTABLEKS R25 R24 K227 ["SidebarPadding"]
  SETTABLE R24 R22 R23
  LOADK R25 K229 ["EquippedItemPreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K229 ["EquippedItemPreview"]
  DUPTABLE R24 K232 [{"HoverX", "CornerRadius", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
  DUPTABLE R25 K233 [{"Image", "AnchorPoint", "Position", "Size"}]
  LOADK R26 K181 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
  SETTABLEKS R26 R25 K20 ["Image"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["AnchorPoint"]
  GETIMPORT R26 K59 [UDim2.new]
  LOADN R27 1
  LOADN R28 254
  LOADN R29 0
  LOADN R30 2
  CALL R26 4 1
  SETTABLEKS R26 R25 K55 ["Position"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 13
  LOADN R28 13
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  SETTABLEKS R25 R24 K174 ["HoverX"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K197 ["CornerRadius"]
  GETTABLEKS R25 R4 K166 ["Border"]
  SETTABLEKS R25 R24 K200 ["StrokeColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K201 ["StrokeThickness"]
  LOADK R25 K234 [0.7]
  SETTABLEKS R25 R24 K230 ["ItemHiddenTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K231 ["ItemWornTransparency"]
  SETTABLE R24 R22 R23
  LOADK R25 K235 ["EquippedItemSideMenu"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K235 ["EquippedItemSideMenu"]
  DUPTABLE R24 K240 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
  GETTABLEKS R25 R4 K48 ["TextSecondary"]
  SETTABLEKS R25 R24 K236 ["DotsBackground"]
  GETTABLEKS R25 R4 K241 ["TextContrast"]
  SETTABLEKS R25 R24 K237 ["DotsBackgroundHover"]
  LOADN R25 16
  SETTABLEKS R25 R24 K238 ["IconSize"]
  LOADN R25 1
  SETTABLEKS R25 R24 K239 ["Margin"]
  SETTABLE R24 R22 R23
  LOADK R25 K242 ["ImportPage"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K242 ["ImportPage"]
  DUPTABLE R24 K250 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
  LOADK R25 K251 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
  SETTABLEKS R25 R24 K243 ["ArrowImage"]
  GETTABLEKS R25 R4 K210 ["TextPrimary"]
  SETTABLEKS R25 R24 K244 ["ArrowColor"]
  DUPTABLE R25 K256 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
  LOADN R26 75
  SETTABLEKS R26 R25 K238 ["IconSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K198 ["InnerPadding"]
  LOADN R26 16
  SETTABLEKS R26 R25 K252 ["NameFontSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K253 ["NameLines"]
  LOADN R26 4
  SETTABLEKS R26 R25 K54 ["Padding"]
  GETTABLEKS R26 R4 K257 ["TextLink"]
  SETTABLEKS R26 R25 K254 ["TitleColor"]
  GETIMPORT R26 K259 [Color3.new]
  LOADK R27 K72 [0.4]
  LOADK R28 K72 [0.4]
  LOADK R29 K72 [0.4]
  CALL R26 3 1
  SETTABLEKS R26 R25 K255 ["PreviewAmbient"]
  SETTABLEKS R25 R24 K245 ["Avatar"]
  DUPTABLE R25 K260 [{"Size", "IconSize"}]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 24
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Size"]
  LOADN R26 12
  SETTABLEKS R26 R25 K238 ["IconSize"]
  SETTABLEKS R25 R24 K246 ["BackButton"]
  LOADN R25 35
  SETTABLEKS R25 R24 K247 ["HeaderHeight"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 5
  LOADN R27 15
  CALL R25 2 1
  SETTABLEKS R25 R24 K248 ["GridPadding"]
  GETIMPORT R25 K52 [UDim.new]
  LOADK R26 K5 [require]
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K249 ["SearchBarHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K6 ["Packages"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K262 ["ItemDataPreviewModel"]
  DUPTABLE R24 K264 [{"InstanceAmbient"}]
  GETIMPORT R25 K259 [Color3.new]
  LOADK R26 K72 [0.4]
  LOADK R27 K72 [0.4]
  LOADK R28 K72 [0.4]
  CALL R25 3 1
  SETTABLEKS R25 R24 K263 ["InstanceAmbient"]
  SETTABLE R24 R22 R23
  LOADK R25 K9 ["Style"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K265 ["ModelPreview"]
  DUPTABLE R24 K273 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
  GETIMPORT R25 K275 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 185
  LOADN R28 200
  CALL R25 3 1
  SETTABLEKS R25 R24 K266 ["Ambient"]
  LOADB R25 1
  SETTABLEKS R25 R24 K267 ["EnableSky"]
  GETIMPORT R25 K275 [Color3.fromRGB]
  LOADN R26 221
  LOADN R27 242
  LOADN R28 242
  CALL R25 3 1
  SETTABLEKS R25 R24 K268 ["LightColor"]
  LOADK R25 K20 ["Image"]
  SETTABLEKS R25 R24 K269 ["LightDirection"]
  LOADK R25 K21 ["Pane"]
  SETTABLEKS R25 R24 K270 ["PanSpeedMultiplier"]
  LOADK R25 K22 ["ScrollingFrame"]
  SETTABLEKS R25 R24 K271 ["PlatformHeight"]
  LOADN R25 5
  SETTABLEKS R25 R24 K272 ["PlatformSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K23 ["SelectInput"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K279 ["Notice"]
  DUPTABLE R24 K280 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
  GETTABLEKS R25 R4 K134 ["SubBackground"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 6
  CALL R25 2 1
  SETTABLEKS R25 R24 K197 ["CornerRadius"]
  GETTABLEKS R25 R4 K210 ["TextPrimary"]
  SETTABLEKS R25 R24 K195 ["TextColor"]
  LOADN R25 20
  SETTABLEKS R25 R24 K196 ["TextSize"]
  DUPTABLE R25 K285 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R26 8
  SETTABLEKS R26 R25 K281 ["Left"]
  LOADN R26 8
  SETTABLEKS R26 R25 K282 ["Right"]
  LOADN R26 4
  SETTABLEKS R26 R25 K283 ["Top"]
  LOADN R26 4
  SETTABLEKS R26 R25 K284 ["Bottom"]
  SETTABLEKS R25 R24 K54 ["Padding"]
  SETTABLE R24 R22 R23
  LOADK R25 K30 ["getFFlagAvatarPreviewerSortClothingUI"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K286 ["PickTabMenu"]
  DUPTABLE R24 K287 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 6
  CALL R25 2 1
  SETTABLEKS R25 R24 K197 ["CornerRadius"]
  GETTABLEKS R25 R4 K210 ["TextPrimary"]
  SETTABLEKS R25 R24 K38 ["ImageColor"]
  LOADN R25 6
  SETTABLEKS R25 R24 K54 ["Padding"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 1
  LOADN R27 224
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 32
  LOADN R27 32
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K32 [game]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K288 ["ResetCameraButton"]
  DUPTABLE R24 K289 [{"Size", "Spacing", "Image"}]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 45
  LOADN R27 45
  CALL R25 2 1
  SETTABLEKS R25 R24 K56 ["Size"]
  LOADN R25 5
  SETTABLEKS R25 R24 K91 ["Spacing"]
  GETTABLEKS R25 R4 K290 ["ResetCameraImage"]
  SETTABLEKS R25 R24 K20 ["Image"]
  SETTABLE R24 R22 R23
  LOADK R25 K35 ["AddItemButton"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K291 ["SelectScreen"]
  DUPTABLE R24 K292 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K105 ["ButtonHeight"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K91 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K37 ["Height"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K293 ["SimpleSelectScreen"]
  DUPTABLE R24 K299 [{"BackgroundColor", "ImageBackgroundColor", "IconColor", "LineColor", "FontFace", "ImageSize", "Spacing", "LineSize", "ButtonHeight", "Image"}]
  GETTABLEKS R25 R4 K300 ["IconBackgroundColor"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETTABLEKS R25 R4 K134 ["SubBackground"]
  SETTABLEKS R25 R24 K294 ["ImageBackgroundColor"]
  GETIMPORT R25 K275 [Color3.fromRGB]
  LOADN R26 248
  LOADN R27 121
  LOADN R28 43
  CALL R25 3 1
  SETTABLEKS R25 R24 K295 ["IconColor"]
  GETTABLEKS R27 R2 K9 ["Style"]
  GETTABLEKS R26 R27 K301 ["Colors"]
  GETTABLEKS R25 R26 K302 ["Gray_Mid"]
  SETTABLEKS R25 R24 K296 ["LineColor"]
  GETIMPORT R25 K303 [Font.new]
  GETIMPORT R27 K305 [Font.fromEnum]
  GETIMPORT R28 K207 [Enum.Font.SourceSans]
  CALL R27 1 1
  GETTABLEKS R26 R27 K306 ["Family"]
  GETIMPORT R27 K309 [Enum.FontWeight.SemiBold]
  CALL R25 2 1
  SETTABLEKS R25 R24 K297 ["FontFace"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 50
  LOADN R27 50
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["ImageSize"]
  MOVE R26 R20
  CALL R26 0 1
  JUMPIFNOT R26 [+6]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  JUMP [+5]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K91 ["Spacing"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 0
  LOADN R27 15
  LOADN R28 0
  LOADN R29 1
  CALL R25 4 1
  SETTABLEKS R25 R24 K298 ["LineSize"]
  LOADN R25 32
  SETTABLEKS R25 R24 K105 ["ButtonHeight"]
  GETTABLEKS R25 R4 K310 ["EmptyState"]
  SETTABLEKS R25 R24 K20 ["Image"]
  SETTABLE R24 R22 R23
  LOADK R25 K55 ["Position"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K311 ["SkinPreview"]
  DUPTABLE R24 K317 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
  GETTABLEKS R25 R4 K318 ["SecondaryStatesHoverOutlineBorder"]
  SETTABLEKS R25 R24 K312 ["HoveredBorderColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K313 ["HoveredBorderThickness"]
  GETTABLEKS R25 R4 K319 ["PrimaryMain"]
  SETTABLEKS R25 R24 K314 ["SelectedBorderColor"]
  LOADN R25 2
  SETTABLEKS R25 R24 K315 ["SelectedBorderThickness"]
  GETIMPORT R25 K275 [Color3.fromRGB]
  LOADN R26 76
  LOADN R27 76
  LOADN R28 76
  CALL R25 3 1
  SETTABLEKS R25 R24 K316 ["DisabledColorToBlend"]
  SETTABLE R24 R22 R23
  MOVE R23 R20
  CALL R23 0 1
  JUMPIFNOT R23 [+29]
  LOADK R25 K64 ["PlayTimeLabelWidth"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K320 ["SortClothingTable"]
  DUPTABLE R24 K324 [{"CellPadding", "RowHeight", "TableHeight"}]
  DUPTABLE R25 K285 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R26 4
  SETTABLEKS R26 R25 K281 ["Left"]
  LOADN R26 4
  SETTABLEKS R26 R25 K282 ["Right"]
  LOADN R26 2
  SETTABLEKS R26 R25 K283 ["Top"]
  LOADN R26 2
  SETTABLEKS R26 R25 K284 ["Bottom"]
  SETTABLEKS R25 R24 K321 ["CellPadding"]
  LOADN R25 28
  SETTABLEKS R25 R24 K322 ["RowHeight"]
  LOADN R25 200
  SETTABLEKS R25 R24 K323 ["TableHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K69 ["PausedAnimationAlpha"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K325 ["StageSelector"]
  DUPTABLE R24 K329 [{"BackgroundColor", "BorderColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "Width"}]
  GETTABLEKS R25 R4 K330 ["MainBackground"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETTABLEKS R25 R4 K331 ["BackgroundPaper"]
  SETTABLEKS R25 R24 K326 ["BorderColor"]
  GETTABLEKS R25 R4 K332 ["ButtonHover"]
  SETTABLEKS R25 R24 K327 ["ButtonSelectedBackgroundColor"]
  LOADN R25 32
  SETTABLEKS R25 R24 K105 ["ButtonHeight"]
  GETTABLEKS R25 R4 K333 ["MainText"]
  SETTABLEKS R25 R24 K295 ["IconColor"]
  GETTABLEKS R25 R4 K334 ["MainTextDisabled"]
  SETTABLEKS R25 R24 K328 ["IconColorDisabled"]
  LOADN R25 18
  SETTABLEKS R25 R24 K238 ["IconSize"]
  LOADN R25 64
  SETTABLEKS R25 R24 K132 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K79 ["&FacePreview"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K335 ["Stars"]
  DUPTABLE R24 K342 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
  GETTABLEKS R25 R4 K333 ["MainText"]
  SETTABLEKS R25 R24 K336 ["StarColor"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 16
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K337 ["StarSize"]
  GETTABLEKS R25 R4 K343 ["Star"]
  SETTABLEKS R25 R24 K338 ["StarFilled"]
  GETTABLEKS R25 R4 K339 ["StarUnfilled"]
  SETTABLEKS R25 R24 K339 ["StarUnfilled"]
  LOADN R25 4
  SETTABLEKS R25 R24 K340 ["StarSpacing"]
  LOADN R25 10
  SETTABLEKS R25 R24 K341 ["RatingSpacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K88 ["BackgroundColor3"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K344 ["SubmitDialog"]
  DUPTABLE R24 K345 [{"Width"}]
  LOADN R25 244
  SETTABLEKS R25 R24 K132 ["Width"]
  SETTABLE R24 R22 R23
  LOADK R25 K90 ["ScrollBarThickness"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K346 ["SubmitInner"]
  DUPTABLE R24 K350 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K347 ["CallToActionSpacing"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K348 ["CheckboxSpacing"]
  LOADN R25 40
  SETTABLEKS R25 R24 K349 ["ContentPadding"]
  SETTABLE R24 R22 R23
  LOADK R25 K95 ["AlertPaddingVertical"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K351 ["Survey"]
  DUPTABLE R24 K354 [{"HeadIndent", "Spacing", "MessageHeight"}]
  LOADN R25 22
  SETTABLEKS R25 R24 K352 ["HeadIndent"]
  LOADN R25 10
  SETTABLEKS R25 R24 K91 ["Spacing"]
  LOADN R25 96
  SETTABLEKS R25 R24 K353 ["MessageHeight"]
  SETTABLE R24 R22 R23
  LOADK R25 K99 ["TablePadding"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K355 ["SurveyDialog"]
  DUPTABLE R24 K357 [{"Width", "FinishDialogSize"}]
  LOADN R25 184
  SETTABLEKS R25 R24 K132 ["Width"]
  GETIMPORT R25 K111 [Vector2.new]
  LOADN R26 250
  LOADN R27 30
  CALL R25 2 1
  SETTABLEKS R25 R24 K356 ["FinishDialogSize"]
  SETTABLE R24 R22 R23
  LOADK R25 K102 ["AnchorPoint"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K358 ["TabBar"]
  DUPTABLE R24 K359 [{"BackgroundColor", "BackgroundColorHover"}]
  GETTABLEKS R25 R4 K134 ["SubBackground"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETTABLEKS R25 R4 K85 ["ActionHover"]
  SETTABLEKS R25 R24 K82 ["BackgroundColorHover"]
  SETTABLE R24 R22 R23
  LOADK R25 K104 ["ButtonColor"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K360 ["TestingScreen"]
  DUPTABLE R24 K292 [{"ButtonHeight", "Spacing"}]
  LOADN R25 24
  SETTABLEKS R25 R24 K105 ["ButtonHeight"]
  GETIMPORT R25 K52 [UDim.new]
  LOADN R26 0
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K91 ["Spacing"]
  SETTABLE R24 R22 R23
  LOADK R25 K105 ["ButtonHeight"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K361 ["ResizeNotice"]
  DUPTABLE R24 K362 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
  GETTABLEKS R25 R4 K134 ["SubBackground"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 0
  LOADN R27 10
  LOADN R28 0
  LOADN R29 60
  CALL R25 4 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K111 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K102 ["AnchorPoint"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 1
  LOADN R27 161
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K56 ["Size"]
  SETTABLE R24 R22 R23
  LOADK R25 K107 ["TablePosition"]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K363 ["UGCValidationErrorDialog"]
  DUPTABLE R24 K371 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
  LOADN R25 12
  SETTABLEKS R25 R24 K364 ["DetailsSpacing"]
  LOADN R25 4
  SETTABLEKS R25 R24 K365 ["IconTextSpacing"]
  LOADN R25 26
  SETTABLEKS R25 R24 K366 ["TitleDetailsSpacing"]
  GETIMPORT R25 K111 [Vector2.new]
  LOADN R26 244
  LOADN R27 44
  CALL R25 2 1
  SETTABLEKS R25 R24 K367 ["AlertMinContentSize"]
  LOADN R25 18
  SETTABLEKS R25 R24 K196 ["TextSize"]
  GETTABLEKS R25 R4 K372 ["WarningText"]
  SETTABLEKS R25 R24 K368 ["WarningColor"]
  GETIMPORT R25 K374 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R25 R24 K369 ["WarningFont"]
  LOADK R26 K119 ["MinimumSizes"]
  LOADK R27 K120 ["HiddenSizes"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K370 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K121 [{"DefaultSizes", "CollapsedSizes", "CollapsedTolerance", "MinimumSizes", "HiddenSizes"}]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  GETTABLEKS R23 R6 K377 ["UGCValidationNotice"]
  DUPTABLE R24 K379 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 10
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Position"]
  GETIMPORT R25 K59 [UDim2.new]
  LOADN R26 1
  LOADN R27 161
  LOADN R28 0
  LOADN R29 48
  CALL R25 4 1
  SETTABLEKS R25 R24 K56 ["Size"]
  GETIMPORT R25 K172 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K378 ["ValidationIconSize"]
  GETTABLEKS R25 R4 K372 ["WarningText"]
  SETTABLEKS R25 R24 K368 ["WarningColor"]
  LOADK R26 K119 ["MinimumSizes"]
  LOADK R27 K120 ["HiddenSizes"]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K370 ["WarningImage"]
  SETTABLE R24 R22 R23
  LOADK R25 K124 [0.01]
  NAMECALL R23 R6 K36 ["add"]
  CALL R23 2 0
  DUPTABLE R23 K381 [{"Color", "Position", "Size"}]
  GETIMPORT R24 K259 [Color3.new]
  LOADN R25 1
  LOADN R26 1
  LOADN R27 1
  CALL R24 3 1
  SETTABLEKS R24 R23 K179 ["Color"]
  GETIMPORT R24 K172 [UDim2.fromOffset]
  LOADN R25 4
  LOADN R26 14
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["Position"]
  GETIMPORT R24 K172 [UDim2.fromOffset]
  LOADN R25 24
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["Size"]
  GETTABLEKS R24 R6 K380 ["UGCValidationStatusIcon"]
  NEWTABLE R25 4 0
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K382 [{"Color", "Image"}]
  GETTABLEKS R29 R4 K372 ["WarningText"]
  SETTABLEKS R29 R28 K179 ["Color"]
  LOADK R30 K119 ["MinimumSizes"]
  LOADK R31 K120 ["HiddenSizes"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K20 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K383 ["&Failure"]
  GETTABLEKS R27 R1 K86 ["Dictionary"]
  GETTABLEKS R26 R27 K87 ["join"]
  MOVE R27 R23
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K384 ["UGCValidationSuccessImage"]
  SETTABLEKS R29 R28 K20 ["Image"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K385 ["&Success"]
  DUPTABLE R26 K386 [{"Color", "Position", "Size", "Image"}]
  GETTABLEKS R27 R4 K387 ["DimmedText"]
  SETTABLEKS R27 R26 K179 ["Color"]
  GETIMPORT R27 K172 [UDim2.fromOffset]
  LOADN R28 4
  LOADN R29 14
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Position"]
  GETIMPORT R27 K172 [UDim2.fromOffset]
  LOADN R28 20
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["Size"]
  LOADK R27 K132 ["Width"]
  SETTABLEKS R27 R26 K20 ["Image"]
  SETTABLEKS R26 R25 K389 ["&InProgress"]
  SETTABLE R25 R22 R24
  LOADK R26 K134 ["SubBackground"]
  NAMECALL R24 R6 K36 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K390 ["DisambiguationMenu"]
  DUPTABLE R25 K400 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 244
  LOADN R28 44
  CALL R26 2 1
  SETTABLEKS R26 R25 K391 ["MinContentSize"]
  GETIMPORT R26 K111 [Vector2.new]
  LOADN R27 200
  LOADN R28 150
  CALL R26 2 1
  SETTABLEKS R26 R25 K392 ["ConfirmCancelContentSize"]
  LOADN R26 8
  SETTABLEKS R26 R25 K393 ["HorizontalSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K394 ["VerticalSpacing"]
  LOADN R26 24
  SETTABLEKS R26 R25 K395 ["TitleContentsSpacing"]
  LOADN R26 8
  SETTABLEKS R26 R25 K396 ["TextSpacing"]
  LOADN R26 150
  SETTABLEKS R26 R25 K397 ["DropdownWidth"]
  LOADN R26 120
  SETTABLEKS R26 R25 K398 ["AttachmentDropdownWidth"]
  GETTABLEKS R26 R4 K134 ["SubBackground"]
  SETTABLEKS R26 R25 K399 ["IconBackground"]
  GETIMPORT R26 K172 [UDim2.fromOffset]
  LOADN R27 72
  LOADN R28 72
  CALL R26 2 1
  SETTABLEKS R26 R25 K238 ["IconSize"]
  SETTABLE R25 R22 R24
  LOADK R26 K145 ["Symmetry"]
  NAMECALL R24 R6 K36 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K401 ["AvatarSizeRuler"]
  DUPTABLE R25 K408 [{"GridSize", "DimTransparency", "MainTransparency", "Padding", "TextSize", "PixelsPerStud", "MajorStep", "RulerColor"}]
  LOADK R26 K153 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
  SETTABLEKS R26 R25 K402 ["GridSize"]
  LOADK R26 K154 ["Falloff"]
  SETTABLEKS R26 R25 K403 ["DimTransparency"]
  LOADK R26 K68 [0.5]
  SETTABLEKS R26 R25 K404 ["MainTransparency"]
  LOADN R26 30
  SETTABLEKS R26 R25 K54 ["Padding"]
  LOADN R26 60
  SETTABLEKS R26 R25 K196 ["TextSize"]
  LOADN R26 200
  SETTABLEKS R26 R25 K405 ["PixelsPerStud"]
  LOADN R26 10
  SETTABLEKS R26 R25 K406 ["MajorStep"]
  GETIMPORT R26 K259 [Color3.new]
  LOADN R27 1
  LOADN R28 1
  LOADN R29 1
  CALL R26 3 1
  SETTABLEKS R26 R25 K407 ["RulerColor"]
  SETTABLE R25 R22 R24
  LOADK R26 K155 ["MirrorToLeft"]
  NAMECALL R24 R6 K36 ["add"]
  CALL R24 2 0
  GETTABLEKS R24 R6 K411 ["AvatarSizingBoundingBox"]
  DUPTABLE R25 K417 [{"NeutralColor", "ValidColor", "InvalidColor", "ValidTransparency", "NeutralTransparency"}]
  GETIMPORT R26 K259 [Color3.new]
  LOADK R27 K68 [0.5]
  LOADK R28 K68 [0.5]
  LOADK R29 K68 [0.5]
  CALL R26 3 1
  SETTABLEKS R26 R25 K412 ["NeutralColor"]
  GETIMPORT R26 K259 [Color3.new]
  LOADK R27 K68 [0.5]
  LOADN R28 1
  LOADK R29 K68 [0.5]
  CALL R26 3 1
  SETTABLEKS R26 R25 K413 ["ValidColor"]
  GETIMPORT R26 K259 [Color3.new]
  LOADN R27 1
  LOADK R28 K68 [0.5]
  LOADK R29 K68 [0.5]
  CALL R26 3 1
  SETTABLEKS R26 R25 K414 ["InvalidColor"]
  LOADK R26 K5 [require]
  SETTABLEKS R26 R25 K415 ["ValidTransparency"]
  LOADK R26 K68 [0.5]
  SETTABLEKS R26 R25 K416 ["NeutralTransparency"]
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K15 ["Alert"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R8
  NEWTABLE R27 8 0
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R8 K418 ["&Warning"]
  DUPTABLE R30 K421 [{"HorizontalPadding", "TopPadding"}]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K419 ["HorizontalPadding"]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K420 ["TopPadding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K418 ["&Warning"]
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R8 K422 ["&Error"]
  DUPTABLE R30 K421 [{"HorizontalPadding", "TopPadding"}]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K419 ["HorizontalPadding"]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K420 ["TopPadding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K422 ["&Error"]
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R8 K385 ["&Success"]
  DUPTABLE R30 K421 [{"HorizontalPadding", "TopPadding"}]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K419 ["HorizontalPadding"]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K420 ["TopPadding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K385 ["&Success"]
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R8 K423 ["&Info"]
  DUPTABLE R30 K421 [{"HorizontalPadding", "TopPadding"}]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K419 ["HorizontalPadding"]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K420 ["TopPadding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K423 ["&Info"]
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R8 K418 ["&Warning"]
  DUPTABLE R30 K424 [{"HorizontalPadding", "TopPadding", "MaxWidth"}]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K419 ["HorizontalPadding"]
  GETIMPORT R31 K52 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K420 ["TopPadding"]
  LOADN R31 132
  SETTABLEKS R31 R30 K199 ["MaxWidth"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K425 ["&WarningLong"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K17 ["Button"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R9
  NEWTABLE R27 1 0
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R9 K426 ["&Round"]
  NEWTABLE R30 2 0
  GETTABLEKS R32 R1 K86 ["Dictionary"]
  GETTABLEKS R31 R32 K87 ["join"]
  GETTABLEKS R32 R9 K427 ["BackgroundStyle"]
  DUPTABLE R33 K428 [{"BorderColor"}]
  GETTABLEKS R34 R4 K429 ["SubText"]
  SETTABLEKS R34 R33 K326 ["BorderColor"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K427 ["BackgroundStyle"]
  GETTABLEKS R31 R5 K430 ["Hover"]
  GETTABLEKS R33 R1 K86 ["Dictionary"]
  GETTABLEKS R32 R33 K87 ["join"]
  GETTABLEKS R34 R5 K430 ["Hover"]
  GETTABLE R33 R9 R34
  DUPTABLE R34 K431 [{"BackgroundStyle"}]
  GETTABLEKS R36 R1 K86 ["Dictionary"]
  GETTABLEKS R35 R36 K87 ["join"]
  GETTABLEKS R38 R5 K430 ["Hover"]
  GETTABLE R37 R9 R38
  GETTABLEKS R36 R37 K427 ["BackgroundStyle"]
  DUPTABLE R37 K428 [{"BorderColor"}]
  GETTABLEKS R38 R4 K429 ["SubText"]
  SETTABLEKS R38 R37 K326 ["BorderColor"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K427 ["BackgroundStyle"]
  CALL R32 2 1
  SETTABLE R32 R30 R31
  CALL R28 2 1
  SETTABLEKS R28 R27 K432 ["&RoundHighlighted"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  JUMPIFNOT R21 [+36]
  GETTABLEKS R24 R6 K18 ["DropdownMenu"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R10
  DUPTABLE R27 K434 [{"MaxHeight"}]
  LOADK R28 K179 ["Color"]
  SETTABLEKS R28 R27 K433 ["MaxHeight"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K23 ["SelectInput"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R15
  DUPTABLE R27 K436 [{"DropdownMenu"}]
  GETTABLEKS R29 R1 K86 ["Dictionary"]
  GETTABLEKS R28 R29 K87 ["join"]
  GETTABLEKS R29 R15 K18 ["DropdownMenu"]
  DUPTABLE R30 K434 [{"MaxHeight"}]
  LOADK R31 K179 ["Color"]
  SETTABLEKS R31 R30 K433 ["MaxHeight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K18 ["DropdownMenu"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K19 ["IconButton"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R11
  NEWTABLE R27 1 0
  DUPTABLE R28 K437 [{"BackgroundColor", "TextColor", "Hover"}]
  GETTABLEKS R29 R4 K438 ["IconButtonSecondaryMain"]
  SETTABLEKS R29 R28 K81 ["BackgroundColor"]
  GETTABLEKS R29 R4 K210 ["TextPrimary"]
  SETTABLEKS R29 R28 K195 ["TextColor"]
  DUPTABLE R29 K439 [{"Background"}]
  GETTABLEKS R30 R4 K440 ["IconButtonSecondaryHover"]
  SETTABLEKS R30 R29 K137 ["Background"]
  SETTABLEKS R29 R28 K430 ["Hover"]
  SETTABLEKS R28 R27 K441 ["&Secondary"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K20 ["Image"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R12
  NEWTABLE R27 16 0
  DUPTABLE R28 K442 [{"Image", "Size"}]
  GETTABLEKS R29 R4 K443 ["Collapse"]
  SETTABLEKS R29 R28 K20 ["Image"]
  GETIMPORT R29 K172 [UDim2.fromOffset]
  LOADN R30 16
  LOADN R31 16
  CALL R29 2 1
  SETTABLEKS R29 R28 K56 ["Size"]
  SETTABLEKS R28 R27 K444 ["&Collapse"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K445 ["Hide"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K446 ["&EquippedItemHideIcon"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K447 ["HideHover"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K448 ["&EquippedItemHideHoverIcon"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K449 ["HoverMenu"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K450 ["&EquippedItemHoverMenuBackground"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K451 ["Unhide"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K452 ["&EquippedItemUnhideIcon"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K453 ["UnhideHover"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K454 ["&EquippedItemUnhideHoverIcon"]
  DUPTABLE R28 K138 [{"Image"}]
  GETTABLEKS R29 R4 K455 ["HoverMenuDisabled"]
  SETTABLEKS R29 R28 K20 ["Image"]
  SETTABLEKS R28 R27 K456 ["&EquippedItemDisabledBackground"]
  NEWTABLE R28 4 0
  GETTABLEKS R29 R4 K457 ["Dots"]
  SETTABLEKS R29 R28 K20 ["Image"]
  GETTABLEKS R29 R4 K17 ["Button"]
  SETTABLEKS R29 R28 K458 ["ImageColor3"]
  GETTABLEKS R29 R5 K430 ["Hover"]
  DUPTABLE R30 K459 [{"ImageColor3"}]
  GETTABLEKS R31 R4 K460 ["ImageButtonHover"]
  SETTABLEKS R31 R30 K458 ["ImageColor3"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K461 ["&EquippedItemDotsIcon"]
  DUPTABLE R28 K442 [{"Image", "Size"}]
  GETTABLEKS R29 R4 K462 ["DotsVertical"]
  SETTABLEKS R29 R28 K20 ["Image"]
  GETIMPORT R29 K172 [UDim2.fromOffset]
  LOADN R30 20
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K56 ["Size"]
  SETTABLEKS R28 R27 K463 ["&PickTabMenu"]
  DUPTABLE R28 K442 [{"Image", "Size"}]
  GETTABLEKS R29 R4 K464 ["Unfold"]
  SETTABLEKS R29 R28 K20 ["Image"]
  GETIMPORT R29 K172 [UDim2.fromOffset]
  LOADN R30 32
  LOADN R31 32
  CALL R29 2 1
  SETTABLEKS R29 R28 K56 ["Size"]
  SETTABLEKS R28 R27 K465 ["&Unfold"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K24 ["Separator"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R16
  NEWTABLE R27 1 0
  DUPTABLE R28 K467 [{"StretchMargin"}]
  LOADN R29 5
  SETTABLEKS R29 R28 K466 ["StretchMargin"]
  SETTABLEKS R28 R27 K468 ["&SelectScreenSeparator"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K21 ["Pane"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R13
  NEWTABLE R27 4 0
  NEWTABLE R28 4 0
  GETTABLEKS R29 R4 K17 ["Button"]
  SETTABLEKS R29 R28 K137 ["Background"]
  GETIMPORT R29 K52 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K197 ["CornerRadius"]
  GETTABLEKS R29 R5 K430 ["Hover"]
  DUPTABLE R30 K439 [{"Background"}]
  GETTABLEKS R31 R4 K332 ["ButtonHover"]
  SETTABLEKS R31 R30 K137 ["Background"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R5 K469 ["Disabled"]
  DUPTABLE R30 K439 [{"Background"}]
  GETTABLEKS R31 R4 K470 ["ButtonPressed"]
  SETTABLEKS R31 R30 K137 ["Background"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K471 ["&EquippedItemPreview"]
  DUPTABLE R28 K472 [{"CornerRadius"}]
  GETIMPORT R29 K52 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K197 ["CornerRadius"]
  SETTABLEKS R28 R27 K473 ["&EquippedItemPreviewInner"]
  DUPTABLE R28 K439 [{"Background"}]
  GETTABLEKS R29 R4 K474 ["ForegroundMuted"]
  SETTABLEKS R29 R28 K137 ["Background"]
  SETTABLEKS R28 R27 K475 ["&EquippedItemHoverMenu"]
  DUPTABLE R28 K472 [{"CornerRadius"}]
  GETIMPORT R29 K52 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K197 ["CornerRadius"]
  SETTABLEKS R28 R27 K476 ["&SkinPreview"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K25 ["SimpleTab"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R17
  NEWTABLE R27 2 0
  NEWTABLE R28 8 0
  GETTABLEKS R29 R4 K84 ["SubBackground2"]
  SETTABLEKS R29 R28 K81 ["BackgroundColor"]
  LOADN R29 1
  SETTABLEKS R29 R28 K89 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K477 ["BorderSize"]
  DUPTABLE R29 K478 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R30 12
  SETTABLEKS R30 R29 K281 ["Left"]
  LOADN R30 2
  SETTABLEKS R30 R29 K283 ["Top"]
  LOADN R30 0
  SETTABLEKS R30 R29 K284 ["Bottom"]
  LOADN R30 12
  SETTABLEKS R30 R29 K282 ["Right"]
  SETTABLEKS R29 R28 K54 ["Padding"]
  LOADN R29 0
  SETTABLEKS R29 R28 K479 ["TopLineHeight"]
  GETTABLEKS R29 R5 K480 ["Selected"]
  DUPTABLE R30 K481 [{"BackgroundColor", "Font"}]
  GETTABLEKS R31 R4 K84 ["SubBackground2"]
  SETTABLEKS R31 R30 K81 ["BackgroundColor"]
  GETIMPORT R31 K205 [Enum.Font.SourceSansBold]
  SETTABLEKS R31 R30 K203 ["Font"]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K482 ["&AssetPaletteTab"]
  DUPTABLE R28 K483 [{"BorderSize", "TopLineHeight"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K477 ["BorderSize"]
  LOADN R29 3
  SETTABLEKS R29 R28 K479 ["TopLineHeight"]
  SETTABLEKS R28 R27 K484 ["&CategoryTab"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  GETTABLEKS R24 R6 K26 ["Tooltip"]
  GETTABLEKS R26 R1 K86 ["Dictionary"]
  GETTABLEKS R25 R26 K87 ["join"]
  MOVE R26 R18
  NEWTABLE R27 1 0
  DUPTABLE R28 K486 [{"ShowDelay"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K485 ["ShowDelay"]
  SETTABLEKS R28 R27 K487 ["&NoDelay"]
  CALL R25 2 1
  SETTABLE R25 R22 R24
  RETURN R22 1
