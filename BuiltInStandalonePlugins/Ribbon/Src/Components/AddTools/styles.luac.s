MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Role-AddTools"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 ["> #SearchBar > .Input"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K15 ["$SemanticColorComponentInputFill"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  LOADK R10 K16 ["$SemanticColorComponentInputFillTransparency"]
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  NEWTABLE R10 0 0
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K17 ["> .Component-TreeView >> .Component-ToolRow"]
  DUPTABLE R10 K20 [{"AutoButtonColor", "Text"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K18 ["AutoButtonColor"]
  LOADK R11 K21 [""]
  SETTABLEKS R11 R10 K19 ["Text"]
  NEWTABLE R11 0 6
  MOVE R12 R2
  LOADK R13 K22 ["> #Icon"]
  DUPTABLE R14 K26 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R15 K27 ["$BorderNone"]
  SETTABLEKS R15 R14 K23 ["BorderSizePixel"]
  LOADK R15 K28 ["$Transparency100"]
  SETTABLEKS R15 R14 K13 ["BackgroundTransparency"]
  LOADN R15 1
  SETTABLEKS R15 R14 K24 ["LayoutOrder"]
  LOADK R15 K29 ["$IconLarge"]
  SETTABLEKS R15 R14 K25 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K30 ["> #Text"]
  DUPTABLE R15 K32 [{"AutomaticSize"}]
  GETIMPORT R16 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K31 ["AutomaticSize"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K36 ["::UIFlexItem"]
  DUPTABLE R19 K40 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R20 K43 [Enum.UIFlexMode.Custom]
  SETTABLEKS R20 R19 K37 ["FlexMode"]
  LOADN R20 1
  SETTABLEKS R20 R19 K38 ["GrowRatio"]
  LOADN R20 1
  SETTABLEKS R20 R19 K39 ["ShrinkRatio"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K44 ["> #Arrow > #Button"]
  DUPTABLE R16 K45 [{"Size", "BackgroundTransparency"}]
  LOADK R17 K46 ["$IconSmall"]
  SETTABLEKS R17 R16 K25 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K47 [">> TextLabel"]
  DUPTABLE R17 K52 [{"BackgroundTransparency", "Font", "Text", "TextXAlignment", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  LOADK R18 K53 ["$FontWeight400"]
  SETTABLEKS R18 R17 K48 ["Font"]
  LOADK R18 K21 [""]
  SETTABLEKS R18 R17 K19 ["Text"]
  GETIMPORT R18 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K49 ["TextXAlignment"]
  LOADK R18 K56 ["$FontSize25"]
  SETTABLEKS R18 R17 K50 ["TextSize"]
  LOADN R18 2
  SETTABLEKS R18 R17 K24 ["LayoutOrder"]
  LOADK R18 K57 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K51 ["TextColor3"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K58 ["#Title"]
  DUPTABLE R21 K59 [{"Font", "TextSize"}]
  LOADK R22 K60 ["$FontWeight600"]
  SETTABLEKS R22 R21 K48 ["Font"]
  LOADK R22 K61 ["$FontSize75"]
  SETTABLEKS R22 R21 K50 ["TextSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K62 ["#Description"]
  DUPTABLE R22 K64 [{"TextTruncate"}]
  GETIMPORT R23 K66 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K63 ["TextTruncate"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K67 [":hover"]
  DUPTABLE R18 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K68 ["$SemanticColorStatesHover"]
  SETTABLEKS R19 R18 K12 ["BackgroundColor3"]
  LOADK R19 K69 ["$SemanticColorStatesHoverTransparency"]
  SETTABLEKS R19 R18 K13 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K70 ["::UIPadding"]
  DUPTABLE R19 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K78 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K71 ["PaddingLeft"]
  LOADK R20 K79 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K72 ["PaddingRight"]
  LOADK R20 K79 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K73 ["PaddingTop"]
  LOADK R20 K79 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K74 ["PaddingBottom"]
  CALL R17 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
