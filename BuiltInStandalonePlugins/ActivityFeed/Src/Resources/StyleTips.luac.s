MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ActivityHistoryCompactUI"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  LOADN R1 36
  JUMP [+1]
  LOADN R1 40
  JUMPIFNOT R0 [+2]
  LOADN R2 8
  JUMP [+1]
  LOADN R2 12
  LOADN R4 54
  MULK R5 R2 K4 [2]
  ADD R3 R4 R5
  JUMPIFNOT R0 [+2]
  LOADN R4 15
  JUMP [+1]
  LOADN R4 14
  GETIMPORT R5 K8 [Enum.Font.SourceSans]
  GETIMPORT R6 K10 [Enum.Font.SourceSansSemibold]
  JUMPIFNOT R0 [+2]
  LOADN R7 22
  JUMP [+1]
  LOADN R7 34
  DUPTABLE R8 K34 [{"defaultIconSize", "largeIconSize", "emptyScreenContentPaddingPercentage", "buttonPaddingVertical", "buttonPaddingHorizontal", "buttonCornerRadius", "defaultPadding", "smallPadding", "bubblePaddingHalf", "bubbleTopHeight", "bubbleMiddleHeight", "bubbleBottomHeight", "bubbleHeight", "bubbleCornerRadius", "byHeight", "checkBoxRowHeight", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "defaultFont", "boldedFont", "filterHeaderHeight"}]
  LOADN R9 16
  SETTABLEKS R9 R8 K11 ["defaultIconSize"]
  SETTABLEKS R1 R8 K12 ["largeIconSize"]
  LOADK R9 K35 [0.2]
  SETTABLEKS R9 R8 K13 ["emptyScreenContentPaddingPercentage"]
  LOADN R9 2
  SETTABLEKS R9 R8 K14 ["buttonPaddingVertical"]
  LOADN R9 12
  SETTABLEKS R9 R8 K15 ["buttonPaddingHorizontal"]
  LOADN R9 4
  SETTABLEKS R9 R8 K16 ["buttonCornerRadius"]
  LOADN R9 8
  SETTABLEKS R9 R8 K17 ["defaultPadding"]
  LOADN R9 4
  SETTABLEKS R9 R8 K18 ["smallPadding"]
  SETTABLEKS R2 R8 K19 ["bubblePaddingHalf"]
  LOADN R9 16
  SETTABLEKS R9 R8 K20 ["bubbleTopHeight"]
  LOADN R9 22
  SETTABLEKS R9 R8 K21 ["bubbleMiddleHeight"]
  LOADN R9 16
  SETTABLEKS R9 R8 K22 ["bubbleBottomHeight"]
  SETTABLEKS R3 R8 K23 ["bubbleHeight"]
  LOADN R9 2
  SETTABLEKS R9 R8 K24 ["bubbleCornerRadius"]
  LOADN R9 20
  SETTABLEKS R9 R8 K25 ["byHeight"]
  LOADN R9 32
  SETTABLEKS R9 R8 K26 ["checkBoxRowHeight"]
  SETTABLEKS R4 R8 K27 ["detailFontSize"]
  LOADN R9 18
  SETTABLEKS R9 R8 K28 ["normalFontSize"]
  LOADN R9 18
  SETTABLEKS R9 R8 K29 ["buttonFontSize"]
  LOADN R9 18
  SETTABLEKS R9 R8 K30 ["headerFontSize"]
  SETTABLEKS R5 R8 K31 ["defaultFont"]
  SETTABLEKS R6 R8 K32 ["boldedFont"]
  SETTABLEKS R7 R8 K33 ["filterHeaderHeight"]
  RETURN R8 1
