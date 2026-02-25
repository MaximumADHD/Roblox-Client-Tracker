MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleRule"]
       22 DUPTABLE                         R4 K14 [{"RibbonButtonTextSpacing", "ConvertibleRowToColumnFillDirection", "ConvertibleRowToColumnPadding"}]
       23 LOADK                            R5 K15 ["$GlobalSpace25"]
       24 SETTABLEKS                       R5 R4 K11 ["RibbonButtonTextSpacing"]
       26 GETIMPORT                        R5 K19 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R5 R4 K12 ["ConvertibleRowToColumnFillDirection"]
       30 LOADK                            R5 K20 ["$GlobalSpace50"]
       31 SETTABLEKS                       R5 R4 K13 ["ConvertibleRowToColumnPadding"]
       33 NEWTABLE                         R5 0 4
       35 MOVE                             R6 R3
       36 LOADK                            R7 K21 [".Role-DividerV"]
       37 NEWTABLE                         R8 0 0
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R3
       42 LOADK                            R11 K22 [".Large"]
       43 NEWTABLE                         R12 0 0
       45 NEWTABLE                         R13 0 2
       47 MOVE                             R14 R3
       48 LOADK                            R15 K23 ["> Frame"]
       49 DUPTABLE                         R16 K25 [{"Size"}]
       50 LOADK                            R17 K26 ["$LargeSeparatorWithLabels"]
       51 SETTABLEKS                       R17 R16 K24 ["Size"]
       53 CALL                             R14 2 1
       54 MOVE                             R15 R3
       55 LOADK                            R16 K27 ["::UIPadding"]
       56 DUPTABLE                         R17 K30 [{"PaddingLeft", "PaddingRight"}]
       57 LOADK                            R18 K31 ["$DividerWithLabelsPadding"]
       58 SETTABLEKS                       R18 R17 K28 ["PaddingLeft"]
       60 LOADK                            R18 K31 ["$DividerWithLabelsPadding"]
       61 SETTABLEKS                       R18 R17 K29 ["PaddingRight"]
       63 CALL                             R15 2 -1
       64 SETLIST                          R13 R14 -1 [1]
       66 CALL                             R10 3 -1
       67 SETLIST                          R9 R10 -1 [1]
       69 CALL                             R6 3 1
       70 MOVE                             R7 R3
       71 LOADK                            R8 K32 [".Role-Scroller"]
       72 NEWTABLE                         R9 0 0
       74 NEWTABLE                         R10 0 1
       76 MOVE                             R11 R3
       77 LOADK                            R12 K33 ["> #Scroller"]
       78 DUPTABLE                         R13 K25 [{"Size"}]
       79 LOADK                            R14 K34 ["$ScrollerWithLabelsSize"]
       80 SETTABLEKS                       R14 R13 K24 ["Size"]
       82 CALL                             R11 2 -1
       83 SETLIST                          R10 R11 -1 [1]
       85 CALL                             R7 3 1
       86 MOVE                             R8 R3
       87 LOADK                            R9 K35 [".RibbonContents"]
       88 NEWTABLE                         R10 0 0
       90 NEWTABLE                         R11 0 2
       92 MOVE                             R12 R3
       93 LOADK                            R13 K36 ["::UIListLayout"]
       94 DUPTABLE                         R14 K39 [{"FillDirection", "Padding", "SortOrder"}]
       95 GETIMPORT                        R15 K41 [Enum.FillDirection.Horizontal]
       97 SETTABLEKS                       R15 R14 K17 ["FillDirection"]
       99 LOADK                            R15 K42 ["$RibbonContentsWithLabelsPadding"]
      100 SETTABLEKS                       R15 R14 K37 ["Padding"]
      102 GETIMPORT                        R15 K44 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R15 R14 K38 ["SortOrder"]
      106 CALL                             R12 2 1
      107 MOVE                             R13 R3
      108 LOADK                            R14 K27 ["::UIPadding"]
      109 DUPTABLE                         R15 K47 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      110 LOADK                            R16 K48 ["$RibbonContentsWithLabelsLeftPadding"]
      111 SETTABLEKS                       R16 R15 K28 ["PaddingLeft"]
      113 LOADK                            R16 K49 ["$RibbonContentsWithLabelsRightPadding"]
      114 SETTABLEKS                       R16 R15 K29 ["PaddingRight"]
      116 LOADK                            R16 K50 ["$RibbonContentsWithLabelsTopPadding"]
      117 SETTABLEKS                       R16 R15 K45 ["PaddingTop"]
      119 LOADK                            R16 K51 ["$RibbonContentsWithLabelsBottomPadding"]
      120 SETTABLEKS                       R16 R15 K46 ["PaddingBottom"]
      122 CALL                             R13 2 -1
      123 SETLIST                          R11 R12 -1 [1]
      125 CALL                             R8 3 1
      126 MOVE                             R9 R3
      127 LOADK                            R10 K52 [".Component-RibbonButton"]
      128 NEWTABLE                         R11 0 0
      130 NEWTABLE                         R12 0 2
      132 MOVE                             R13 R3
      133 LOADK                            R14 K22 [".Large"]
      134 NEWTABLE                         R15 0 0
      136 NEWTABLE                         R16 0 2
      138 MOVE                             R17 R3
      139 LOADK                            R18 K53 ["::UISizeConstraint"]
      140 DUPTABLE                         R19 K55 [{"MaxSize"}]
      141 LOADK                            R20 K56 ["$RibbonButtonWithLabelsLargeMaxSize"]
      142 SETTABLEKS                       R20 R19 K54 ["MaxSize"]
      144 CALL                             R17 2 1
      145 MOVE                             R18 R3
      146 LOADK                            R19 K57 ["> TextLabel"]
      147 DUPTABLE                         R20 K25 [{"Size"}]
      148 LOADK                            R21 K58 ["$RibbonButtonTextLabelSize"]
      149 SETTABLEKS                       R21 R20 K24 ["Size"]
      151 CALL                             R18 2 -1
      152 SETLIST                          R16 R17 -1 [1]
      154 CALL                             R13 3 1
      155 MOVE                             R14 R3
      156 LOADK                            R15 K57 ["> TextLabel"]
      157 NEWTABLE                         R16 0 0
      159 NEWTABLE                         R17 0 1
      161 MOVE                             R18 R3
      162 LOADK                            R19 K27 ["::UIPadding"]
      163 DUPTABLE                         R20 K59 [{"PaddingTop", "PaddingBottom"}]
      164 LOADK                            R21 K60 ["$RibbonButtonTextSpacing"]
      165 SETTABLEKS                       R21 R20 K45 ["PaddingTop"]
      167 LOADK                            R21 K60 ["$RibbonButtonTextSpacing"]
      168 SETTABLEKS                       R21 R20 K46 ["PaddingBottom"]
      170 CALL                             R18 2 -1
      171 SETLIST                          R17 R18 -1 [1]
      173 CALL                             R14 3 -1
      174 SETLIST                          R12 R13 -1 [1]
      176 CALL                             R9 3 -1
      177 SETLIST                          R5 R6 -1 [1]
      179 MOVE                             R6 R2
      180 LOADK                            R7 K61 ["ShowLabelsTokens"]
      181 MOVE                             R8 R5
      182 MOVE                             R9 R4
      183 CALL                             R6 3 -1
      184 RETURN                           R6 -1
