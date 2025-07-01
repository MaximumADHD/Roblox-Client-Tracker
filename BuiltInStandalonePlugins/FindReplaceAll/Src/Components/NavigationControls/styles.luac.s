MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["StyleConstants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K13 [">> .FindReplaceAll-NavigationControls"]
  DUPTABLE R6 K17 [{"BackgroundTransparency", "AnchorPoint", "ClipsDescendants"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  GETIMPORT R7 K20 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["AnchorPoint"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["ClipsDescendants"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K21 ["::UIPadding"]
  DUPTABLE R10 K23 [{"PaddingLeft"}]
  GETIMPORT R11 K25 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R1 K26 ["paddingXSmall"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["PaddingLeft"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K27 [">> TextLabel"]
  DUPTABLE R11 K35 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K14 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K16 ["ClipsDescendants"]
  GETTABLEKS R12 R1 K36 ["defaultFont"]
  SETTABLEKS R12 R11 K28 ["Font"]
  GETIMPORT R12 K39 [UDim2.fromScale]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["Size"]
  LOADK R12 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K30 ["TextColor3"]
  LOADK R12 K41 [15.084]
  SETTABLEKS R12 R11 K31 ["TextSize"]
  GETIMPORT R12 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K32 ["TextXAlignment"]
  GETIMPORT R12 K46 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R12 R11 K33 ["TextTruncate"]
  LOADB R12 0
  SETTABLEKS R12 R11 K34 ["TextWrapped"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K21 ["::UIPadding"]
  DUPTABLE R15 K48 [{"PaddingRight"}]
  GETIMPORT R16 K25 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R1 K49 ["paddingSmall"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K50 ["::UISizeConstraint"]
  DUPTABLE R16 K53 [{"MinSize", "MaxSize"}]
  GETIMPORT R17 K20 [Vector2.new]
  GETTABLEKS R18 R1 K54 ["findResultsMinTextWidth"]
  GETTABLEKS R19 R1 K55 ["searchBarHeight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["MinSize"]
  GETIMPORT R17 K20 [Vector2.new]
  GETTABLEKS R18 R1 K56 ["findResultsMaxTextWidth"]
  GETTABLEKS R19 R1 K55 ["searchBarHeight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["MaxSize"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K57 [">> ImageButton"]
  DUPTABLE R12 K61 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "ImageTransparency"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K58 ["BorderSizePixel"]
  LOADK R13 K62 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R13 R12 K59 ["BackgroundColor3"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K60 ["ImageTransparency"]
  NEWTABLE R13 0 3
  MOVE R14 R3
  LOADK R15 K63 [".Hover"]
  DUPTABLE R16 K64 [{"BackgroundTransparency"}]
  GETTABLEKS R17 R1 K65 ["hoveredTransparency"]
  SETTABLEKS R17 R16 K14 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K66 [".Disabled"]
  DUPTABLE R17 K67 [{"ImageTransparency"}]
  LOADK R18 K68 [0.5]
  SETTABLEKS R18 R17 K60 ["ImageTransparency"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K69 ["::UICorner"]
  DUPTABLE R18 K71 [{"CornerRadius"}]
  GETIMPORT R19 K25 [UDim.new]
  LOADN R20 0
  GETTABLEKS R21 R1 K72 ["radiusMedium"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K70 ["CornerRadius"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
