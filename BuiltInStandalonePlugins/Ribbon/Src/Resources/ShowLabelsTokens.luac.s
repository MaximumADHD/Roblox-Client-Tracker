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
       22 DUPTABLE                         R4 K16 [{["RibbonButtonTextSpacing"] = "$GlobalSpace25", ["ConvertibleRowToColumnFillDirection"], ["ConvertibleRowToColumnPadding"] = "$GlobalSpace50"}]
       23 GETIMPORT                        R5 K20 [Enum.FillDirection.Vertical]
       25 SETTABLEKS                       R5 R4 K13 ["ConvertibleRowToColumnFillDirection"]
       27 NEWTABLE                         R5 0 4
       29 MOVE                             R6 R3
       30 LOADK                            R7 K21 [".Role-DividerV"]
       31 NEWTABLE                         R8 0 0
       33 NEWTABLE                         R9 0 1
       35 MOVE                             R10 R3
       36 LOADK                            R11 K22 [".Large"]
       37 NEWTABLE                         R12 0 0
       39 NEWTABLE                         R13 0 2
       41 MOVE                             R14 R3
       42 LOADK                            R15 K23 ["> Frame"]
       43 DUPTABLE                         R16 K26 [{["Size"] = "$LargeSeparatorWithLabels"}]
       44 CALL                             R14 2 1
       45 MOVE                             R15 R3
       46 LOADK                            R16 K27 ["::UIPadding"]
       47 DUPTABLE                         R17 K31 [{["PaddingLeft"] = "$DividerWithLabelsPadding", ["PaddingRight"] = "$DividerWithLabelsPadding"}]
       48 CALL                             R15 2 -1
       49 SETLIST                          R13 R14 -1 [1]
       51 CALL                             R10 3 -1
       52 SETLIST                          R9 R10 -1 [1]
       54 CALL                             R6 3 1
       55 MOVE                             R7 R3
       56 LOADK                            R8 K32 [".Role-Scroller"]
       57 NEWTABLE                         R9 0 0
       59 NEWTABLE                         R10 0 1
       61 MOVE                             R11 R3
       62 LOADK                            R12 K33 ["> #Scroller"]
       63 DUPTABLE                         R13 K35 [{["Size"] = "$ScrollerWithLabelsSize"}]
       64 CALL                             R11 2 -1
       65 SETLIST                          R10 R11 -1 [1]
       67 CALL                             R7 3 1
       68 MOVE                             R8 R3
       69 LOADK                            R9 K36 [".RibbonContents"]
       70 NEWTABLE                         R10 0 0
       72 NEWTABLE                         R11 0 2
       74 MOVE                             R12 R3
       75 LOADK                            R13 K37 ["::UIListLayout"]
       76 DUPTABLE                         R14 K41 [{["FillDirection"], ["Padding"] = "$RibbonContentsWithLabelsPadding", ["SortOrder"]}]
       77 GETIMPORT                        R15 K43 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R15 R14 K18 ["FillDirection"]
       81 GETIMPORT                        R15 K45 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R15 R14 K40 ["SortOrder"]
       85 CALL                             R12 2 1
       86 MOVE                             R13 R3
       87 LOADK                            R14 K27 ["::UIPadding"]
       88 DUPTABLE                         R15 K52 [{["PaddingLeft"] = "$RibbonContentsWithLabelsLeftPadding", ["PaddingRight"] = "$RibbonContentsWithLabelsRightPadding", ["PaddingTop"] = "$RibbonContentsWithLabelsTopPadding", ["PaddingBottom"] = "$RibbonContentsWithLabelsBottomPadding"}]
       89 CALL                             R13 2 -1
       90 SETLIST                          R11 R12 -1 [1]
       92 CALL                             R8 3 1
       93 MOVE                             R9 R3
       94 LOADK                            R10 K53 [".Component-RibbonButton"]
       95 NEWTABLE                         R11 0 0
       97 NEWTABLE                         R12 0 2
       99 MOVE                             R13 R3
      100 LOADK                            R14 K22 [".Large"]
      101 NEWTABLE                         R15 0 0
      103 NEWTABLE                         R16 0 2
      105 MOVE                             R17 R3
      106 LOADK                            R18 K54 ["::UISizeConstraint"]
      107 DUPTABLE                         R19 K57 [{["MaxSize"] = "$RibbonButtonWithLabelsLargeMaxSize"}]
      108 CALL                             R17 2 1
      109 MOVE                             R18 R3
      110 LOADK                            R19 K58 ["> TextLabel"]
      111 DUPTABLE                         R20 K60 [{["Size"] = "$RibbonButtonTextLabelSize"}]
      112 CALL                             R18 2 -1
      113 SETLIST                          R16 R17 -1 [1]
      115 CALL                             R13 3 1
      116 MOVE                             R14 R3
      117 LOADK                            R15 K58 ["> TextLabel"]
      118 NEWTABLE                         R16 0 0
      120 NEWTABLE                         R17 0 1
      122 MOVE                             R18 R3
      123 LOADK                            R19 K27 ["::UIPadding"]
      124 DUPTABLE                         R20 K62 [{["PaddingTop"] = "$RibbonButtonTextSpacing", ["PaddingBottom"] = "$RibbonButtonTextSpacing"}]
      125 CALL                             R18 2 -1
      126 SETLIST                          R17 R18 -1 [1]
      128 CALL                             R14 3 -1
      129 SETLIST                          R12 R13 -1 [1]
      131 CALL                             R9 3 -1
      132 SETLIST                          R5 R6 -1 [1]
      134 MOVE                             R6 R2
      135 LOADK                            R7 K63 ["ShowLabelsTokens"]
      136 MOVE                             R8 R5
      137 MOVE                             R9 R4
      138 CALL                             R6 3 -1
      139 RETURN                           R6 -1
