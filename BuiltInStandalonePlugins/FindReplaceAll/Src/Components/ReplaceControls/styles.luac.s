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
  LOADK R6 K15 [">> .FindReplaceAll-ReplaceControls"]
  DUPTABLE R7 K19 [{"AnchorPoint", "ClipsDescendants", "BackgroundTransparency"}]
  GETIMPORT R8 K22 [Vector2.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["AnchorPoint"]
  LOADB R8 1
  SETTABLEKS R8 R7 K17 ["ClipsDescendants"]
  LOADN R8 1
  SETTABLEKS R8 R7 K18 ["BackgroundTransparency"]
  NEWTABLE R8 0 1
  MOVE R9 R4
  LOADK R10 K23 [">> TextButton"]
  DUPTABLE R11 K31 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "TextColor3", "TextTransparency", "TextSize", "TextXAlignment"}]
  LOADK R12 K32 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R12 R11 K24 ["BackgroundColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K18 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  LOADB R12 1
  SETTABLEKS R12 R11 K17 ["ClipsDescendants"]
  GETTABLEKS R12 R1 K33 ["defaultFontBold"]
  SETTABLEKS R12 R11 K26 ["Font"]
  LOADK R12 K34 ["$SemanticColorActionUtilityForeground"]
  SETTABLEKS R12 R11 K27 ["TextColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["TextTransparency"]
  LOADN R13 12
  GETTABLEKS R15 R3 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R1 K36 ["defaultFontScale"]
  JUMP [+1]
  LOADK R14 K37 [1.257]
  MUL R12 R13 R14
  SETTABLEKS R12 R11 K29 ["TextSize"]
  GETIMPORT R12 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K30 ["TextXAlignment"]
  NEWTABLE R12 0 4
  MOVE R13 R4
  LOADK R14 K41 [".Hover"]
  DUPTABLE R15 K42 [{"BackgroundTransparency"}]
  GETTABLEKS R16 R1 K43 ["hoveredTransparency"]
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K44 [".Disabled"]
  DUPTABLE R16 K45 [{"TextTransparency"}]
  LOADK R17 K46 [0.5]
  SETTABLEKS R17 R16 K28 ["TextTransparency"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K47 ["::UIPadding"]
  DUPTABLE R17 K52 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K55 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K48 ["PaddingLeft"]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K55 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["PaddingRight"]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K55 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["PaddingTop"]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K55 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K51 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K56 ["::UICorner"]
  DUPTABLE R18 K58 [{"CornerRadius"}]
  GETIMPORT R19 K54 [UDim.new]
  LOADN R20 0
  GETTABLEKS R21 R1 K59 ["radiusMedium"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["CornerRadius"]
  CALL R16 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
