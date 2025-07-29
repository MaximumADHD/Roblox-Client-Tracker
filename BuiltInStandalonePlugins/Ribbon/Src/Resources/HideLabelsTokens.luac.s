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
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleRule"]
  DUPTABLE R4 K13 [{"ConvertibleRowToColumnFillDirection", "ConvertibleRowToColumnPadding"}]
  GETIMPORT R5 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R5 R4 K11 ["ConvertibleRowToColumnFillDirection"]
  LOADK R5 K18 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K12 ["ConvertibleRowToColumnPadding"]
  NEWTABLE R5 0 4
  MOVE R6 R3
  LOADK R7 K19 [".Role-DividerV"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R3
  LOADK R11 K20 [".Large"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K21 ["> Frame"]
  DUPTABLE R16 K23 [{"Size"}]
  LOADK R17 K24 ["$LargeSeparatorWithoutLabels"]
  SETTABLEKS R17 R16 K22 ["Size"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K25 ["::UIPadding"]
  DUPTABLE R17 K28 [{"PaddingLeft", "PaddingRight"}]
  LOADK R18 K29 ["$DividerWithoutLabelsPadding"]
  SETTABLEKS R18 R17 K26 ["PaddingLeft"]
  LOADK R18 K29 ["$DividerWithoutLabelsPadding"]
  SETTABLEKS R18 R17 K27 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K30 [".Role-Scroller"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K31 ["> #Scroller"]
  DUPTABLE R13 K23 [{"Size"}]
  LOADK R14 K32 ["$ScrollerWithoutLabelsSize"]
  SETTABLEKS R14 R13 K22 ["Size"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K33 [".RibbonContents"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 2
  MOVE R12 R3
  LOADK R13 K34 ["::UIListLayout"]
  DUPTABLE R14 K37 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K15 ["FillDirection"]
  LOADK R15 K38 ["$RibbonContentsWithoutLabelsPadding"]
  SETTABLEKS R15 R14 K35 ["Padding"]
  GETIMPORT R15 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K36 ["SortOrder"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K25 ["::UIPadding"]
  DUPTABLE R15 K43 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K44 ["$RibbonContentsWithoutLabelsLeftPadding"]
  SETTABLEKS R16 R15 K26 ["PaddingLeft"]
  LOADK R16 K45 ["$RibbonContentsWithoutLabelsRightPadding"]
  SETTABLEKS R16 R15 K27 ["PaddingRight"]
  LOADK R16 K46 ["$RibbonContentsWithoutLabelsTopPadding"]
  SETTABLEKS R16 R15 K41 ["PaddingTop"]
  LOADK R16 K47 ["$RibbonContentsWithoutLabelsBottomPadding"]
  SETTABLEKS R16 R15 K42 ["PaddingBottom"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K48 [".Component-RibbonButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K20 [".Large"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R3
  LOADK R18 K49 ["::UISizeConstraint"]
  DUPTABLE R19 K51 [{"MaxSize"}]
  LOADK R20 K52 ["$RibbonButtonWithoutLabelsLargeMaxSize"]
  SETTABLEKS R20 R19 K50 ["MaxSize"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R5 R6 -1 [1]
  MOVE R6 R2
  LOADK R7 K53 ["HideLabelsTokens"]
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 -1
  RETURN R6 -1
