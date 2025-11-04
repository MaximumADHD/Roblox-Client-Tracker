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
  NEWTABLE R4 64 0
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K12 ["DividerWithLabelsPadding"]
  LOADK R5 K13 ["$GlobalSpace0"]
  SETTABLEKS R5 R4 K14 ["DividerWithoutLabelsPadding"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  LOADN R9 58
  CALL R5 4 1
  SETTABLEKS R5 R4 K18 ["LargeSeparatorWithLabels"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  LOADN R9 56
  CALL R5 4 1
  SETTABLEKS R5 R4 K19 ["LargeSeparatorWithoutLabels"]
  LOADK R5 K20 ["$FontSize50"]
  SETTABLEKS R5 R4 K21 ["RibbonButtonLabelTextSize"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  LOADN R7 60
  LOADN R8 0
  LOADN R9 14
  CALL R5 4 1
  SETTABLEKS R5 R4 K22 ["RibbonButtonTextLabelSize"]
  GETIMPORT R5 K24 [Vector2.new]
  LOADN R6 60
  LOADN R7 58
  CALL R5 2 1
  SETTABLEKS R5 R4 K25 ["RibbonButtonWithLabelsLargeMaxSize"]
  GETIMPORT R5 K24 [Vector2.new]
  LOADN R6 40
  LOADN R7 40
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["RibbonButtonWithoutLabelsLargeMaxSize"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K27 ["RibbonContentsWithLabelsBottomPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K28 ["RibbonContentsWithLabelsLeftPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K29 ["RibbonContentsWithLabelsRightPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K30 ["RibbonContentsWithLabelsTopPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K31 ["RibbonContentsWithoutLabelsBottomPadding"]
  LOADK R5 K13 ["$GlobalSpace0"]
  SETTABLEKS R5 R4 K32 ["RibbonContentsWithoutLabelsPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K33 ["RibbonContentsWithoutLabelsTopPadding"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 74
  CALL R5 4 1
  SETTABLEKS R5 R4 K34 ["ScrollerWithLabelsSize"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 56
  CALL R5 4 1
  SETTABLEKS R5 R4 K35 ["ScrollerWithoutLabelsSize"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  LOADN R7 4
  LOADN R8 0
  LOADN R9 40
  CALL R5 4 1
  SETTABLEKS R5 R4 K36 ["SplitButtonArrowComponentHeight"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K37 ["PaddingLeftMedium"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K39 ["ColumnSpacingDefault"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K40 ["ColumnSpacingMedium"]
  LOADK R5 K20 ["$FontSize50"]
  SETTABLEKS R5 R4 K41 ["ContentTextFontSize"]
  LOADK R5 K42 ["$FontWeight400"]
  SETTABLEKS R5 R4 K43 ["ContentTextFontWeight"]
  LOADK R5 K44 ["$GlobalSpace150"]
  SETTABLEKS R5 R4 K45 ["MenuColumnSpacing"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K46 ["MenuItemPaddingHorizontal"]
  LOADK R5 K47 ["$GlobalSpace25"]
  SETTABLEKS R5 R4 K48 ["MenuItemPaddingVertical"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K49 ["MenuItemSpacing"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K50 ["MenuPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K51 ["MezzaninePadding"]
  GETIMPORT R5 K24 [Vector2.new]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K52 ["RibbonButtonSmallMaxSize"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K53 ["RibbonContentsWithLabelsPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K54 ["RibbonContentsWithoutLabelsLeftPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K55 ["RibbonContentsWithoutLabelsRightPadding"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K56 ["RibbonTabsContainerSpacing"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K57 ["RibbonTabsSpacing"]
  LOADK R5 K58 ["$GlobalSpace200"]
  SETTABLEKS R5 R4 K59 ["RibbonToggleSpacing"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K60 ["RowSpacingDefault"]
  LOADK R5 K61 ["$GlobalRadiusXSmall"]
  SETTABLEKS R5 R4 K62 ["SelectInputCornerRadius"]
  LOADK R5 K47 ["$GlobalSpace25"]
  SETTABLEKS R5 R4 K63 ["SelectInputPaddingBottom"]
  LOADK R5 K11 ["$GlobalSpace100"]
  SETTABLEKS R5 R4 K64 ["SelectInputPaddingLeft"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K65 ["SelectInputPaddingRight"]
  LOADK R5 K47 ["$GlobalSpace25"]
  SETTABLEKS R5 R4 K66 ["SelectInputPaddingTop"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  LOADN R9 24
  CALL R5 4 1
  SETTABLEKS R5 R4 K67 ["SmallSeparator"]
  LOADK R5 K61 ["$GlobalRadiusXSmall"]
  SETTABLEKS R5 R4 K68 ["SpinboxCornerRadius"]
  LOADK R5 K61 ["$GlobalRadiusXSmall"]
  SETTABLEKS R5 R4 K69 ["TabCornerRadius"]
  LOADK R5 K70 ["$FontSize25"]
  SETTABLEKS R5 R4 K71 ["TitleTextFontSize"]
  LOADK R5 K72 ["$FontWeight600"]
  SETTABLEKS R5 R4 K73 ["TitleTextFontWeight"]
  LOADK R5 K20 ["$FontSize50"]
  SETTABLEKS R5 R4 K74 ["ToggleControlFontSize"]
  LOADK R5 K38 ["$GlobalSpace50"]
  SETTABLEKS R5 R4 K75 ["TooltipContentSpacing"]
  GETIMPORT R5 K24 [Vector2.new]
  LOADN R6 150
  LOADK R7 K76 [∞]
  CALL R5 2 1
  SETTABLEKS R5 R4 K77 ["TooltipMaxSize"]
  LOADK R5 K47 ["$GlobalSpace25"]
  SETTABLEKS R5 R4 K78 ["TooltipTextSpacing"]
  NEWTABLE R5 0 4
  MOVE R6 R3
  LOADK R7 K79 [".Role-Tooltip"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R3
  LOADK R11 K80 ["> #Wrapper"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K81 ["::UIPadding"]
  DUPTABLE R16 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K11 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K82 ["PaddingLeft"]
  LOADK R17 K11 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K83 ["PaddingRight"]
  LOADK R17 K38 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K84 ["PaddingTop"]
  LOADK R17 K38 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K85 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K87 ["> #Content"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R3
  LOADK R20 K88 [">> TextLabel"]
  DUPTABLE R21 K90 [{"TextSize"}]
  LOADK R22 K70 ["$FontSize25"]
  SETTABLEKS R22 R21 K89 ["TextSize"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K91 [".Role-TextControl"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K92 ["::UIListLayout"]
  DUPTABLE R13 K96 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K99 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K93 ["FillDirection"]
  LOADK R14 K47 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K94 ["Padding"]
  GETIMPORT R14 K101 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K95 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K102 [".Component-Button"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K103 ["> #StateLayer"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 4
  MOVE R16 R3
  LOADK R17 K92 ["::UIListLayout"]
  DUPTABLE R18 K104 [{"Padding"}]
  LOADK R19 K38 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K94 ["Padding"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K105 [".Small ::UIPadding"]
  DUPTABLE R19 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K11 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K82 ["PaddingLeft"]
  LOADK R20 K11 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K83 ["PaddingRight"]
  LOADK R20 K38 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K84 ["PaddingTop"]
  LOADK R20 K38 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K85 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K106 [".Large ::UIPadding"]
  DUPTABLE R20 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K58 ["$GlobalSpace200"]
  SETTABLEKS R21 R20 K82 ["PaddingLeft"]
  LOADK R21 K58 ["$GlobalSpace200"]
  SETTABLEKS R21 R20 K83 ["PaddingRight"]
  LOADK R21 K44 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K84 ["PaddingTop"]
  LOADK R21 K44 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K85 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K107 [".Medium ::UIPadding"]
  DUPTABLE R21 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K44 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K82 ["PaddingLeft"]
  LOADK R22 K44 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K83 ["PaddingRight"]
  LOADK R22 K11 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K84 ["PaddingTop"]
  LOADK R22 K11 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K85 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K108 [".Component-RibbonButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K109 [".Large"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R3
  LOADK R18 K110 ["> #RibbonTool"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R3
  LOADK R22 K81 ["::UIPadding"]
  DUPTABLE R23 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K11 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K82 ["PaddingLeft"]
  LOADK R24 K11 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K83 ["PaddingRight"]
  LOADK R24 K11 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K84 ["PaddingTop"]
  LOADK R24 K11 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K85 ["PaddingBottom"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K111 [".Small"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R3
  LOADK R19 K110 ["> #RibbonTool"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R3
  LOADK R23 K81 ["::UIPadding"]
  DUPTABLE R24 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K38 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K82 ["PaddingLeft"]
  LOADK R25 K38 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K83 ["PaddingRight"]
  LOADK R25 K38 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K84 ["PaddingTop"]
  LOADK R25 K38 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K85 ["PaddingBottom"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R5 R6 -1 [1]
  MOVE R6 R2
  LOADK R7 K112 ["DensityDefault"]
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 1
  RETURN R6 1
