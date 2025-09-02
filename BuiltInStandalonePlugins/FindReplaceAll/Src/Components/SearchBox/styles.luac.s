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
  LOADK R5 K13 [".FindReplaceAll-SearchBox"]
  DUPTABLE R6 K15 [{"BackgroundTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  NEWTABLE R7 0 5
  MOVE R8 R3
  LOADK R9 K16 ["::UIPadding"]
  DUPTABLE R10 K18 [{"PaddingBottom"}]
  GETIMPORT R11 K21 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R1 K22 ["paddingXSmall"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K23 [">> ImageButton"]
  DUPTABLE R11 K26 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K24 ["BorderSizePixel"]
  LOADK R12 K27 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R12 R11 K25 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K28 [">> .FindReplaceAll-SearchBox-Corner ::UICorner"]
  DUPTABLE R12 K30 [{"CornerRadius"}]
  GETIMPORT R13 K21 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R1 K31 ["radiusSmall"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K32 [">> .FindReplaceAll-SearchBox-SearchBar"]
  DUPTABLE R13 K34 [{"ClipsDescendants"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K33 ["ClipsDescendants"]
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K35 [">> UIStroke"]
  DUPTABLE R17 K38 [{"Color", "Thickness"}]
  LOADK R18 K39 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K36 ["Color"]
  LOADK R18 K40 [1.5]
  SETTABLEKS R18 R17 K37 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K41 [">> TextBox"]
  DUPTABLE R18 K50 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
  GETIMPORT R19 K52 [Vector2.new]
  LOADK R20 K53 [0.5]
  LOADK R21 K53 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K14 ["BackgroundTransparency"]
  LOADN R19 0
  SETTABLEKS R19 R18 K24 ["BorderSizePixel"]
  LOADB R19 0
  SETTABLEKS R19 R18 K43 ["ClearTextOnFocus"]
  LOADB R19 1
  SETTABLEKS R19 R18 K33 ["ClipsDescendants"]
  GETTABLEKS R19 R1 K54 ["defaultFont"]
  SETTABLEKS R19 R18 K44 ["Font"]
  GETIMPORT R19 K57 [UDim2.fromScale]
  LOADK R20 K53 [0.5]
  LOADK R21 K53 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K45 ["Position"]
  LOADK R19 K58 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K46 ["TextColor3"]
  LOADK R19 K59 [""]
  SETTABLEKS R19 R18 K47 ["Text"]
  LOADK R19 K60 [17.598]
  SETTABLEKS R19 R18 K48 ["TextSize"]
  GETIMPORT R19 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K49 ["TextXAlignment"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K64 [">> .FindReplaceAll-SearchBar-Error"]
  DUPTABLE R14 K38 [{"Color", "Thickness"}]
  LOADK R15 K65 ["$ColorActionAlert"]
  SETTABLEKS R15 R14 K36 ["Color"]
  LOADK R15 K40 [1.5]
  SETTABLEKS R15 R14 K37 ["Thickness"]
  CALL R12 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
