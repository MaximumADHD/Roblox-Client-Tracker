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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagRibbonDensityModeStyles"]
  CALL R4 1 1
  NEWTABLE R5 64 0
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  LOADN R10 50
  CALL R6 4 1
  SETTABLEKS R6 R5 K17 ["LargeSeparator"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K19 ["LargeSeparatorPadding"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K20 ["SmallSeparator"]
  LOADK R6 K21 ["$GlobalRadiusXSmall"]
  SETTABLEKS R6 R5 K22 ["TabCornerRadius"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K24 ["RibbonTabsContainerSpacing"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K25 ["RibbonTabsSpacing"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K26 ["TooltipContentSpacing"]
  LOADK R6 K27 ["$GlobalSpace25"]
  SETTABLEKS R6 R5 K28 ["TooltipTextSpacing"]
  GETIMPORT R6 K30 [Vector2.new]
  LOADN R7 150
  LOADK R8 K31 [∞]
  CALL R6 2 1
  SETTABLEKS R6 R5 K32 ["TooltipMaxSize"]
  LOADK R6 K33 ["$FontWeight400"]
  SETTABLEKS R6 R5 K34 ["ContentTextFontWeight"]
  LOADK R6 K35 ["$FontSize50"]
  SETTABLEKS R6 R5 K36 ["ContentTextFontSize"]
  LOADK R6 K37 ["$FontWeight600"]
  SETTABLEKS R6 R5 K38 ["TitleTextFontWeight"]
  LOADK R6 K39 ["$FontSize25"]
  SETTABLEKS R6 R5 K40 ["TitleTextFontSize"]
  LOADK R6 K21 ["$GlobalRadiusXSmall"]
  SETTABLEKS R6 R5 K41 ["SpinboxCornerRadius"]
  LOADK R6 K21 ["$GlobalRadiusXSmall"]
  SETTABLEKS R6 R5 K42 ["SelectInputCornerRadius"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K43 ["SelectInputPaddingLeft"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K44 ["SelectInputPaddingRight"]
  LOADK R6 K27 ["$GlobalSpace25"]
  SETTABLEKS R6 R5 K45 ["SelectInputPaddingTop"]
  LOADK R6 K27 ["$GlobalSpace25"]
  SETTABLEKS R6 R5 K46 ["SelectInputPaddingBottom"]
  LOADK R6 K35 ["$FontSize50"]
  SETTABLEKS R6 R5 K47 ["ToggleControlFontSize"]
  LOADK R6 K48 ["$GlobalSpace200"]
  SETTABLEKS R6 R5 K49 ["RibbonToggleSpacing"]
  LOADK R6 K27 ["$GlobalSpace25"]
  SETTABLEKS R6 R5 K50 ["RibbonButtonTextSpacing"]
  GETIMPORT R6 K30 [Vector2.new]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  SETTABLEKS R6 R5 K51 ["RibbonButtonSmallMaxSize"]
  GETIMPORT R6 K30 [Vector2.new]
  LOADN R7 48
  LOADN R8 50
  CALL R6 2 1
  SETTABLEKS R6 R5 K52 ["RibbonButtonLargeMaxSize"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 0
  LOADN R8 48
  LOADN R9 0
  LOADN R10 14
  CALL R6 4 1
  SETTABLEKS R6 R5 K53 ["RibbonButtonTextLabelSize"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K54 ["SplitButtonPaddingLeft"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K55 ["MenuItemPaddingHorizontal"]
  LOADK R6 K27 ["$GlobalSpace25"]
  SETTABLEKS R6 R5 K56 ["MenuItemPaddingVertical"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K57 ["MenuItemSpacing"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K58 ["MenuPadding"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 58
  CALL R6 4 1
  SETTABLEKS R6 R5 K59 ["RibbonScrollerSize"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K60 ["MezzaninePadding"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K61 ["RibbonContentsPadding"]
  GETIMPORT R6 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K66 ["ConvertibleRowToColumnFillDirection"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K67 ["ConvertibleRowToColumnPadding"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K68 ["RowSpacingDefault"]
  LOADK R6 K18 ["$GlobalSpace50"]
  SETTABLEKS R6 R5 K69 ["ColumnSpacingDefault"]
  LOADK R6 K23 ["$GlobalSpace100"]
  SETTABLEKS R6 R5 K70 ["ColumnSpacingMedium"]
  LOADK R6 K71 ["$GlobalSpace150"]
  SETTABLEKS R6 R5 K72 ["MenuColumnSpacing"]
  NEWTABLE R6 0 5
  MOVE R7 R3
  LOADK R8 K73 [".Role-DividerV"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K74 [".Large"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K75 ["::UIPadding"]
  DUPTABLE R17 K78 [{"PaddingLeft", "PaddingRight"}]
  LOADK R18 K23 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K76 ["PaddingLeft"]
  LOADK R18 K23 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K77 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K79 [".Role-Tooltip"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K80 ["> #Wrapper"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R3
  LOADK R17 K75 ["::UIPadding"]
  DUPTABLE R18 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K23 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K76 ["PaddingLeft"]
  LOADK R19 K23 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K77 ["PaddingRight"]
  LOADK R19 K18 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K81 ["PaddingTop"]
  LOADK R19 K18 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K82 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K84 ["> #Content"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R3
  LOADK R22 K85 [">> TextLabel"]
  DUPTABLE R23 K87 [{"TextSize"}]
  LOADK R24 K39 ["$FontSize25"]
  SETTABLEKS R24 R23 K86 ["TextSize"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K88 [".Role-TextControl"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K89 ["::UIListLayout"]
  DUPTABLE R15 K92 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K63 ["FillDirection"]
  LOADK R16 K27 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K90 ["Padding"]
  GETIMPORT R16 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K91 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K95 [".Component-Button"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K96 ["> #StateLayer"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 4
  MOVE R18 R3
  LOADK R19 K89 ["::UIListLayout"]
  DUPTABLE R20 K97 [{"Padding"}]
  LOADK R21 K18 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K90 ["Padding"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K98 [".Small ::UIPadding"]
  DUPTABLE R21 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K23 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K76 ["PaddingLeft"]
  LOADK R22 K23 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K77 ["PaddingRight"]
  LOADK R22 K18 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K81 ["PaddingTop"]
  LOADK R22 K18 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K82 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K99 [".Large ::UIPadding"]
  DUPTABLE R22 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K48 ["$GlobalSpace200"]
  SETTABLEKS R23 R22 K76 ["PaddingLeft"]
  LOADK R23 K48 ["$GlobalSpace200"]
  SETTABLEKS R23 R22 K77 ["PaddingRight"]
  LOADK R23 K71 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K81 ["PaddingTop"]
  LOADK R23 K71 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K82 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K100 [".Medium ::UIPadding"]
  DUPTABLE R23 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K71 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K76 ["PaddingLeft"]
  LOADK R24 K71 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K77 ["PaddingRight"]
  LOADK R24 K23 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K81 ["PaddingTop"]
  LOADK R24 K23 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K82 ["PaddingBottom"]
  CALL R21 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K101 [".Component-RibbonButton"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K102 ["> TextLabel"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R3
  LOADK R20 K75 ["::UIPadding"]
  DUPTABLE R21 K103 [{"PaddingTop", "PaddingBottom"}]
  LOADK R22 K104 ["$RibbonButtonTextSpacing"]
  SETTABLEKS R22 R21 K81 ["PaddingTop"]
  LOADK R22 K104 ["$RibbonButtonTextSpacing"]
  SETTABLEKS R22 R21 K82 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R3
  LOADK R17 K74 [".Large"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R3
  LOADK R21 K102 ["> TextLabel"]
  DUPTABLE R22 K106 [{"Size"}]
  LOADK R23 K107 ["$RibbonButtonTextLabelSize"]
  SETTABLEKS R23 R22 K105 ["Size"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R6 R7 -1 [1]
  MOVE R8 R4
  CALL R8 0 1
  JUMPIFNOT R8 [+6]
  MOVE R7 R2
  LOADK R8 K108 ["ShowLabelsTokens"]
  MOVE R9 R6
  MOVE R10 R5
  CALL R7 3 1
  RETURN R7 1
  LOADNIL R7
  RETURN R7 1
