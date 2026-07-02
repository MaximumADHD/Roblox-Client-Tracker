MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleRule"]
       22 DUPTABLE                         R4 K15 [{["ConvertibleRowToColumnFillDirection"], ["ConvertibleRowToColumnPadding"] = "$GlobalSpace100", ["RibbonContentsWithoutLabelsPadding"] = "$GlobalSpace100"}]
       23 GETIMPORT                        R5 K19 [Enum.FillDirection.Horizontal]
       25 SETTABLEKS                       R5 R4 K11 ["ConvertibleRowToColumnFillDirection"]
       27 NEWTABLE                         R5 0 4
       29 MOVE                             R6 R3
       30 LOADK                            R7 K20 [".Role-DividerV"]
       31 NEWTABLE                         R8 0 0
       33 NEWTABLE                         R9 0 1
       35 MOVE                             R10 R3
       36 LOADK                            R11 K21 [".Large"]
       37 NEWTABLE                         R12 0 0
       39 NEWTABLE                         R13 0 2
       41 MOVE                             R14 R3
       42 LOADK                            R15 K22 ["> Frame"]
       43 DUPTABLE                         R16 K25 [{["Size"] = "$LargeSeparatorWithoutLabels"}]
       44 CALL                             R14 2 1
       45 MOVE                             R15 R3
       46 LOADK                            R16 K26 ["::UIPadding"]
       47 DUPTABLE                         R17 K30 [{["PaddingLeft"] = "$DividerWithoutLabelsPadding", ["PaddingRight"] = "$DividerWithoutLabelsPadding"}]
       48 CALL                             R15 2 -1
       49 SETLIST                          R13 R14 -1 [1]
       51 CALL                             R10 3 -1
       52 SETLIST                          R9 R10 -1 [1]
       54 CALL                             R6 3 1
       55 MOVE                             R7 R3
       56 LOADK                            R8 K31 [".Role-Scroller"]
       57 NEWTABLE                         R9 0 0
       59 NEWTABLE                         R10 0 1
       61 MOVE                             R11 R3
       62 LOADK                            R12 K32 ["> #Scroller"]
       63 DUPTABLE                         R13 K34 [{["Size"] = "$ScrollerWithoutLabelsSize"}]
       64 CALL                             R11 2 -1
       65 SETLIST                          R10 R11 -1 [1]
       67 CALL                             R7 3 1
       68 MOVE                             R8 R3
       69 LOADK                            R9 K35 [".RibbonContents"]
       70 NEWTABLE                         R10 0 0
       72 NEWTABLE                         R11 0 2
       74 MOVE                             R12 R3
       75 LOADK                            R13 K36 ["::UIListLayout"]
       76 DUPTABLE                         R14 K40 [{["FillDirection"], ["Padding"] = "$RibbonContentsWithoutLabelsPadding", ["SortOrder"]}]
       77 GETIMPORT                        R15 K19 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R15 R14 K17 ["FillDirection"]
       81 GETIMPORT                        R15 K42 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R15 R14 K39 ["SortOrder"]
       85 CALL                             R12 2 1
       86 MOVE                             R13 R3
       87 LOADK                            R14 K26 ["::UIPadding"]
       88 DUPTABLE                         R15 K49 [{["PaddingLeft"] = "$RibbonContentsWithoutLabelsLeftPadding", ["PaddingRight"] = "$RibbonContentsWithoutLabelsRightPadding", ["PaddingTop"] = "$RibbonContentsWithoutLabelsTopPadding", ["PaddingBottom"] = "$RibbonContentsWithoutLabelsBottomPadding"}]
       89 CALL                             R13 2 -1
       90 SETLIST                          R11 R12 -1 [1]
       92 CALL                             R8 3 1
       93 MOVE                             R9 R3
       94 LOADK                            R10 K50 [".Component-RibbonButton"]
       95 NEWTABLE                         R11 0 0
       97 NEWTABLE                         R12 0 1
       99 MOVE                             R13 R3
      100 LOADK                            R14 K21 [".Large"]
      101 NEWTABLE                         R15 0 0
      103 NEWTABLE                         R16 0 1
      105 MOVE                             R17 R3
      106 LOADK                            R18 K51 ["::UISizeConstraint"]
      107 DUPTABLE                         R19 K54 [{["MaxSize"] = "$RibbonButtonWithoutLabelsLargeMaxSize"}]
      108 CALL                             R17 2 -1
      109 SETLIST                          R16 R17 -1 [1]
      111 CALL                             R13 3 -1
      112 SETLIST                          R12 R13 -1 [1]
      114 CALL                             R9 3 -1
      115 SETLIST                          R5 R6 -1 [1]
      117 MOVE                             R6 R2
      118 LOADK                            R7 K55 ["HideLabelsTokens"]
      119 MOVE                             R8 R5
      120 MOVE                             R9 R4
      121 CALL                             R6 3 -1
      122 RETURN                           R6 -1
