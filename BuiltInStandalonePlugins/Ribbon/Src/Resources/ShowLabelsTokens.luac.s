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
  DUPTABLE R4 K14 [{"RibbonButtonTextSpacing", "ConvertibleRowToColumnFillDirection", "ConvertibleRowToColumnPadding"}]
  LOADK R5 K15 ["$GlobalSpace25"]
  SETTABLEKS R5 R4 K11 ["RibbonButtonTextSpacing"]
  GETIMPORT R5 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R5 R4 K12 ["ConvertibleRowToColumnFillDirection"]
  LOADK R5 K20 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K13 ["ConvertibleRowToColumnPadding"]
  NEWTABLE R5 0 4
  MOVE R6 R3
  LOADK R7 K21 [".Role-DividerV"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R3
  LOADK R11 K22 [".Large"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K23 ["> Frame"]
  DUPTABLE R16 K25 [{"Size"}]
  LOADK R17 K26 ["$LargeSeparatorWithLabels"]
  SETTABLEKS R17 R16 K24 ["Size"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K27 ["::UIPadding"]
  DUPTABLE R17 K30 [{"PaddingLeft", "PaddingRight"}]
  LOADK R18 K31 ["$DividerWithLabelsPadding"]
  SETTABLEKS R18 R17 K28 ["PaddingLeft"]
  LOADK R18 K31 ["$DividerWithLabelsPadding"]
  SETTABLEKS R18 R17 K29 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K32 [".Role-Scroller"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K33 ["> #Scroller"]
  DUPTABLE R13 K25 [{"Size"}]
  LOADK R14 K34 ["$ScrollerWithLabelsSize"]
  SETTABLEKS R14 R13 K24 ["Size"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K35 [".RibbonContents"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 2
  MOVE R12 R3
  LOADK R13 K36 ["::UIListLayout"]
  DUPTABLE R14 K39 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K41 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K17 ["FillDirection"]
  LOADK R15 K42 ["$RibbonContentsWithLabelsPadding"]
  SETTABLEKS R15 R14 K37 ["Padding"]
  GETIMPORT R15 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K38 ["SortOrder"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K27 ["::UIPadding"]
  DUPTABLE R15 K47 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K48 ["$RibbonContentsWithLabelsLeftPadding"]
  SETTABLEKS R16 R15 K28 ["PaddingLeft"]
  LOADK R16 K49 ["$RibbonContentsWithLabelsRightPadding"]
  SETTABLEKS R16 R15 K29 ["PaddingRight"]
  LOADK R16 K50 ["$RibbonContentsWithLabelsTopPadding"]
  SETTABLEKS R16 R15 K45 ["PaddingTop"]
  LOADK R16 K51 ["$RibbonContentsWithLabelsBottomPadding"]
  SETTABLEKS R16 R15 K46 ["PaddingBottom"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K52 [".Component-RibbonButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K22 [".Large"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R3
  LOADK R18 K53 ["::UISizeConstraint"]
  DUPTABLE R19 K55 [{"MaxSize"}]
  LOADK R20 K56 ["$RibbonButtonWithLabelsLargeMaxSize"]
  SETTABLEKS R20 R19 K54 ["MaxSize"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K57 ["> TextLabel"]
  DUPTABLE R20 K25 [{"Size"}]
  LOADK R21 K58 ["$RibbonButtonTextLabelSize"]
  SETTABLEKS R21 R20 K24 ["Size"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K57 ["> TextLabel"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R3
  LOADK R19 K27 ["::UIPadding"]
  DUPTABLE R20 K59 [{"PaddingTop", "PaddingBottom"}]
  LOADK R21 K60 ["$RibbonButtonTextSpacing"]
  SETTABLEKS R21 R20 K45 ["PaddingTop"]
  LOADK R21 K60 ["$RibbonButtonTextSpacing"]
  SETTABLEKS R21 R20 K46 ["PaddingBottom"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R5 R6 -1 [1]
  MOVE R6 R2
  LOADK R7 K61 ["ShowLabelsTokens"]
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 -1
  RETURN R6 -1
