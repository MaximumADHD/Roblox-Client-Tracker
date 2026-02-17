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
  LOADK R6 K15 [".FindReplaceAll-SearchBox"]
  DUPTABLE R7 K17 [{"BackgroundTransparency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BackgroundTransparency"]
  NEWTABLE R8 0 5
  MOVE R9 R4
  LOADK R10 K18 ["::UIPadding"]
  DUPTABLE R11 K20 [{"PaddingBottom"}]
  GETIMPORT R12 K23 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K24 ["paddingXSmall"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K25 [">> ImageButton"]
  DUPTABLE R12 K28 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K26 ["BorderSizePixel"]
  LOADK R13 K29 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R13 R12 K27 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K30 [">> .FindReplaceAll-SearchBox-Corner ::UICorner"]
  DUPTABLE R13 K32 [{"CornerRadius"}]
  GETIMPORT R14 K23 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R1 K33 ["radiusSmall"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K34 [">> .FindReplaceAll-SearchBox-SearchBar"]
  DUPTABLE R14 K36 [{"ClipsDescendants"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K35 ["ClipsDescendants"]
  NEWTABLE R15 0 2
  MOVE R16 R4
  LOADK R17 K37 [">> UIStroke"]
  DUPTABLE R18 K40 [{"Color", "Thickness"}]
  LOADK R19 K41 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R19 R18 K38 ["Color"]
  LOADK R19 K42 [1.5]
  SETTABLEKS R19 R18 K39 ["Thickness"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K43 [">> TextBox"]
  DUPTABLE R19 K52 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
  GETIMPORT R20 K54 [Vector2.new]
  LOADK R21 K55 [0.5]
  LOADK R22 K55 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K44 ["AnchorPoint"]
  LOADN R20 1
  SETTABLEKS R20 R19 K16 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K26 ["BorderSizePixel"]
  LOADB R20 0
  SETTABLEKS R20 R19 K45 ["ClearTextOnFocus"]
  LOADB R20 1
  SETTABLEKS R20 R19 K35 ["ClipsDescendants"]
  GETTABLEKS R20 R1 K56 ["defaultFont"]
  SETTABLEKS R20 R19 K46 ["Font"]
  GETIMPORT R20 K59 [UDim2.fromScale]
  LOADK R21 K55 [0.5]
  LOADK R22 K55 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K47 ["Position"]
  LOADK R20 K60 ["$SemanticColorContentMuted"]
  SETTABLEKS R20 R19 K48 ["TextColor3"]
  LOADK R20 K61 [""]
  SETTABLEKS R20 R19 K49 ["Text"]
  GETTABLEKS R21 R3 K62 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R21 0 1
  JUMPIFNOT R21 [+5]
  LOADN R21 12
  GETTABLEKS R22 R1 K63 ["defaultFontScale"]
  MUL R20 R21 R22
  JUMP [+1]
  LOADK R20 K64 [17.598]
  SETTABLEKS R20 R19 K50 ["TextSize"]
  GETIMPORT R20 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K51 ["TextXAlignment"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R4
  LOADK R14 K68 [">> .FindReplaceAll-SearchBar-Error"]
  DUPTABLE R15 K40 [{"Color", "Thickness"}]
  LOADK R16 K69 ["$ColorActionAlert"]
  SETTABLEKS R16 R15 K38 ["Color"]
  LOADK R16 K42 [1.5]
  SETTABLEKS R16 R15 K39 ["Thickness"]
  CALL R13 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
