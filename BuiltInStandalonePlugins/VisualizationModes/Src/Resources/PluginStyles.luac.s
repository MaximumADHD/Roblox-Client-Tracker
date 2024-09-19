MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 18
  MOVE R5 R2
  LOADK R6 K11 [".VisualizationModes-Bottom-Divider"]
  DUPTABLE R7 K16 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 5
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Size"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADK R9 K20 [0.5]
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K13 ["Position"]
  GETIMPORT R8 K22 [Vector2.new]
  LOADK R9 K20 [0.5]
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["AnchorPoint"]
  LOADN R8 1
  SETTABLEKS R8 R7 K15 ["BackgroundTransparency"]
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K23 ["> #DividerRender"]
  DUPTABLE R11 K26 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K12 ["Size"]
  GETIMPORT R12 K28 [UDim2.fromOffset]
  LOADN R13 0
  LOADN R14 2
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Position"]
  LOADK R12 K29 ["$VisualizationModesDivider"]
  SETTABLEKS R12 R11 K24 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K30 [".VisualizationModes-TextLabel-Container"]
  DUPTABLE R8 K32 [{"BorderSizePixel", "BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K25 ["BorderSizePixel"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  GETIMPORT R9 K34 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Size"]
  GETIMPORT R9 K37 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K31 ["AutomaticSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K38 [".VisualizationModes-Highlight"]
  DUPTABLE R9 K39 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "AnchorPoint", "Position"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K15 ["BackgroundTransparency"]
  LOADN R10 0
  SETTABLEKS R10 R9 K25 ["BorderSizePixel"]
  LOADK R10 K40 ["$VisualizationModesHighlightColor"]
  SETTABLEKS R10 R9 K24 ["BackgroundColor3"]
  GETIMPORT R10 K22 [Vector2.new]
  LOADN R11 0
  LOADK R12 K20 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["AnchorPoint"]
  GETIMPORT R10 K34 [UDim2.fromScale]
  LOADN R11 0
  LOADK R12 K20 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Position"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K41 [".VisualizationModes-Highlight-TextLabel"]
  DUPTABLE R10 K43 [{"TextColor3", "AnchorPoint", "Position"}]
  LOADK R11 K44 ["$VisualizationModesHighlightTextColor"]
  SETTABLEKS R11 R10 K42 ["TextColor3"]
  GETIMPORT R11 K22 [Vector2.new]
  LOADN R12 0
  LOADK R13 K20 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["AnchorPoint"]
  GETIMPORT R11 K34 [UDim2.fromScale]
  LOADN R12 0
  LOADK R13 K20 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Position"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K45 [".VisualizationModes-TextLabel"]
  DUPTABLE R11 K48 [{"TextColor3", "BorderSizePixel", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Size", "AutomaticSize"}]
  LOADK R12 K49 ["$TextPrimary"]
  SETTABLEKS R12 R11 K42 ["TextColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  LOADN R12 1
  SETTABLEKS R12 R11 K15 ["BackgroundTransparency"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K46 ["TextXAlignment"]
  GETIMPORT R12 K53 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K47 ["TextYAlignment"]
  GETIMPORT R12 K34 [UDim2.fromScale]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["Size"]
  GETIMPORT R12 K37 [Enum.AutomaticSize.X]
  SETTABLEKS R12 R11 K31 ["AutomaticSize"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K54 [".VisualizationModes-Disabled"]
  DUPTABLE R15 K55 [{"TextColor3"}]
  LOADK R16 K56 ["$TextDisabled"]
  SETTABLEKS R16 R15 K42 ["TextColor3"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K57 [".VisualizationModes-Badge"]
  DUPTABLE R12 K58 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K25 ["BorderSizePixel"]
  LOADK R13 K59 ["$VisualizationModesBadgeBackground"]
  SETTABLEKS R13 R12 K24 ["BackgroundColor3"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K60 ["::UICorner"]
  DUPTABLE R16 K62 [{"CornerRadius"}]
  GETIMPORT R17 K64 [UDim.new]
  LOADK R18 K20 [0.5]
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K65 ["::UIPadding"]
  DUPTABLE R17 K70 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K66 ["PaddingLeft"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["PaddingTop"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K68 ["PaddingBottom"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K69 ["PaddingRight"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K71 [">> .Component-TextLabel"]
  DUPTABLE R18 K73 [{"TextSize", "TextColor3", "TextYAlignment"}]
  LOADN R19 12
  SETTABLEKS R19 R18 K72 ["TextSize"]
  LOADK R19 K74 ["$VisualizationModesBadgeText"]
  SETTABLEKS R19 R18 K42 ["TextColor3"]
  GETIMPORT R19 K53 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K47 ["TextYAlignment"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K75 [".VisualizationModes-MainPane"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K76 ["::UIStroke"]
  NEWTABLE R17 0 0
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K77 [".VisualizationModes-ExpandIcon"]
  DUPTABLE R14 K79 [{"BackgroundTransparency", "ImageColor3"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  LOADK R15 K49 ["$TextPrimary"]
  SETTABLEKS R15 R14 K78 ["ImageColor3"]
  NEWTABLE R15 0 3
  MOVE R16 R2
  LOADK R17 K80 ["ArrowImage"]
  DUPTABLE R18 K81 [{"Size", "AnchorPoint", "Position"}]
  GETIMPORT R19 K28 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K12 ["Size"]
  GETIMPORT R19 K22 [Vector2.new]
  LOADK R20 K20 [0.5]
  LOADK R21 K20 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["AnchorPoint"]
  GETIMPORT R19 K34 [UDim2.fromScale]
  LOADK R20 K20 [0.5]
  LOADK R21 K20 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["Position"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K82 [":pressed"]
  DUPTABLE R19 K83 [{"ImageColor3"}]
  LOADK R20 K84 ["$TextSecondary"]
  SETTABLEKS R20 R19 K78 ["ImageColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K85 [":hover"]
  DUPTABLE R20 K83 [{"ImageColor3"}]
  LOADK R21 K84 ["$TextSecondary"]
  SETTABLEKS R21 R20 K78 ["ImageColor3"]
  CALL R18 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K86 [".VisualizationModes-ExpandIcon-Expanded"]
  DUPTABLE R15 K88 [{"Image"}]
  LOADK R16 K89 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R16 R15 K87 ["Image"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K90 [".VisualizationModes-ExpandIcon-Collapsed"]
  DUPTABLE R16 K88 [{"Image"}]
  LOADK R17 K91 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
  SETTABLEKS R17 R16 K87 ["Image"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K92 [".VisualizationModes-Entry"]
  DUPTABLE R17 K94 [{"BackgroundTransparency", "Size", "AutoButtonColor"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  GETIMPORT R18 K19 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K12 ["Size"]
  LOADB R18 0
  SETTABLEKS R18 R17 K93 ["AutoButtonColor"]
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K95 ["> #VisualizationModesEntryBacking"]
  DUPTABLE R21 K96 [{"BorderSizePixel", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K25 ["BorderSizePixel"]
  GETIMPORT R22 K19 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 28
  CALL R22 4 1
  SETTABLEKS R22 R21 K12 ["Size"]
  GETIMPORT R22 K22 [Vector2.new]
  LOADK R23 K20 [0.5]
  LOADK R24 K20 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K14 ["AnchorPoint"]
  GETIMPORT R22 K34 [UDim2.fromScale]
  LOADK R23 K20 [0.5]
  LOADK R24 K20 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K13 ["Position"]
  LOADN R22 1
  SETTABLEKS R22 R21 K15 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K60 ["::UICorner"]
  DUPTABLE R25 K62 [{"CornerRadius"}]
  GETIMPORT R26 K64 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K61 ["CornerRadius"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K97 [".VisualizationModes-Active:pressed > #VisualizationModesEntryBacking"]
  DUPTABLE R22 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K15 ["BackgroundTransparency"]
  LOADK R23 K99 ["$ActionActivated"]
  SETTABLEKS R23 R22 K24 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K100 [".VisualizationModes-Active:hover > #VisualizationModesEntryBacking"]
  DUPTABLE R23 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  LOADK R24 K101 ["$VisualizationModesDimActionHover"]
  SETTABLEKS R24 R23 K24 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K102 [".ScrollingAutomaticSize"]
  DUPTABLE R18 K105 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R19 K107 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K103 ["AutomaticCanvasSize"]
  GETIMPORT R19 K19 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 20
  CALL R19 4 1
  SETTABLEKS R19 R18 K104 ["CanvasSize"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K108 [".VisualizationModes-EntryButton"]
  DUPTABLE R19 K109 [{"BorderSizePixel", "Size", "BackgroundTransparency", "AutoButtonColor"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K25 ["BorderSizePixel"]
  GETIMPORT R20 K19 [UDim2.new]
  LOADN R21 1
  LOADN R22 236
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K12 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K15 ["BackgroundTransparency"]
  LOADB R20 0
  SETTABLEKS R20 R19 K93 ["AutoButtonColor"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K110 [".VisualizationModes-Group"]
  DUPTABLE R20 K111 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "AutoButtonColor"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K25 ["BorderSizePixel"]
  GETIMPORT R21 K34 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K12 ["Size"]
  GETIMPORT R21 K107 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K31 ["AutomaticSize"]
  LOADN R21 1
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  LOADB R21 0
  SETTABLEKS R21 R20 K93 ["AutoButtonColor"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K112 [".VisualizationModes-MainScrollingFrame"]
  DUPTABLE R21 K114 [{"ScrollBarThickness"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K113 ["ScrollBarThickness"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K115 ["> #Content"]
  DUPTABLE R25 K116 [{"Size"}]
  GETIMPORT R26 K19 [UDim2.new]
  LOADN R27 1
  LOADN R28 252
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K12 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K117 [".VisualizationModes-Popup"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K65 ["::UIPadding"]
  DUPTABLE R26 K118 [{"PaddingLeft", "PaddingBottom", "PaddingTop", "PaddingRight"}]
  GETIMPORT R27 K64 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K66 ["PaddingLeft"]
  GETIMPORT R27 K64 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K68 ["PaddingBottom"]
  GETIMPORT R27 K64 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K67 ["PaddingTop"]
  GETIMPORT R27 K64 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K69 ["PaddingRight"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K119 [".VisualizationModesStrokePane"]
  DUPTABLE R7 K120 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K15 ["BackgroundTransparency"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 1
  LOADN R10 254
  LOADN R11 1
  LOADN R12 254
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Size"]
  GETIMPORT R8 K22 [Vector2.new]
  LOADK R9 K20 [0.5]
  LOADK R10 K20 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["AnchorPoint"]
  GETIMPORT R8 K34 [UDim2.fromScale]
  LOADK R9 K20 [0.5]
  LOADK R10 K20 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Position"]
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K76 ["::UIStroke"]
  DUPTABLE R11 K122 [{"Color"}]
  LOADK R12 K123 ["$Divider"]
  SETTABLEKS R12 R11 K121 ["Color"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K124 [".VisualizationModes-HiddenCountLabel"]
  DUPTABLE R8 K125 [{"TextXAlignment", "TextYAlignment", "TextColor3", "Size", "BackgroundTransparency"}]
  GETIMPORT R9 K126 [Enum.TextXAlignment.Center]
  SETTABLEKS R9 R8 K46 ["TextXAlignment"]
  GETIMPORT R9 K53 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K47 ["TextYAlignment"]
  LOADK R9 K84 ["$TextSecondary"]
  SETTABLEKS R9 R8 K42 ["TextColor3"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 28
  CALL R9 4 1
  SETTABLEKS R9 R8 K12 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [17]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["VisualizationModes"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
