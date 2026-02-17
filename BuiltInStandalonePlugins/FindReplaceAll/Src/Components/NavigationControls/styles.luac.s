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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["defineFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K15 [">> .FindReplaceAll-NavigationControls"]
  DUPTABLE R7 K19 [{"BackgroundTransparency", "AnchorPoint", "ClipsDescendants"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BackgroundTransparency"]
  GETIMPORT R8 K22 [Vector2.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["AnchorPoint"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["ClipsDescendants"]
  NEWTABLE R8 0 3
  MOVE R9 R4
  LOADK R10 K23 ["::UIPadding"]
  DUPTABLE R11 K25 [{"PaddingLeft"}]
  GETIMPORT R12 K27 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K28 ["paddingXSmall"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["PaddingLeft"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K29 [">> TextLabel"]
  DUPTABLE R12 K37 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K16 ["BackgroundTransparency"]
  LOADB R13 1
  SETTABLEKS R13 R12 K18 ["ClipsDescendants"]
  GETTABLEKS R13 R1 K38 ["defaultFont"]
  SETTABLEKS R13 R12 K30 ["Font"]
  GETIMPORT R13 K41 [UDim2.fromScale]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["Size"]
  LOADK R13 K42 ["$SemanticColorContentMuted"]
  SETTABLEKS R13 R12 K32 ["TextColor3"]
  LOADN R14 12
  GETTABLEKS R16 R3 K43 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  GETTABLEKS R15 R1 K44 ["defaultFontScale"]
  JUMP [+1]
  LOADK R15 K45 [1.257]
  MUL R13 R14 R15
  SETTABLEKS R13 R12 K33 ["TextSize"]
  GETIMPORT R13 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K34 ["TextXAlignment"]
  GETIMPORT R13 K50 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R13 R12 K35 ["TextTruncate"]
  LOADB R13 0
  SETTABLEKS R13 R12 K36 ["TextWrapped"]
  NEWTABLE R13 0 2
  MOVE R14 R4
  LOADK R15 K23 ["::UIPadding"]
  DUPTABLE R16 K52 [{"PaddingRight"}]
  GETIMPORT R17 K27 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R1 K53 ["paddingSmall"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingRight"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K54 ["::UISizeConstraint"]
  DUPTABLE R17 K57 [{"MinSize", "MaxSize"}]
  GETIMPORT R18 K22 [Vector2.new]
  GETTABLEKS R19 R1 K58 ["findResultsMinTextWidth"]
  GETTABLEKS R20 R1 K59 ["searchBarHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["MinSize"]
  GETIMPORT R18 K22 [Vector2.new]
  GETTABLEKS R19 R1 K60 ["findResultsMaxTextWidth"]
  GETTABLEKS R20 R1 K59 ["searchBarHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["MaxSize"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R4
  LOADK R12 K61 [">> ImageButton"]
  DUPTABLE R13 K64 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K62 ["BorderSizePixel"]
  LOADK R14 K65 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R14 R13 K63 ["BackgroundColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  NEWTABLE R14 0 2
  MOVE R15 R4
  LOADK R16 K66 [".Hover"]
  DUPTABLE R17 K67 [{"BackgroundTransparency"}]
  GETTABLEKS R18 R1 K68 ["hoveredTransparency"]
  SETTABLEKS R18 R17 K16 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K69 ["::UICorner"]
  DUPTABLE R18 K71 [{"CornerRadius"}]
  GETIMPORT R19 K27 [UDim.new]
  LOADN R20 0
  GETTABLEKS R21 R1 K72 ["radiusMedium"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K70 ["CornerRadius"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
