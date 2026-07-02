MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K13 [">> .FindReplaceAll-NavigationControls"]
       29 DUPTABLE                         R6 K19 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["ClipsDescendants"] = True}]
       30 GETIMPORT                        R7 K22 [Vector2.new]
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K16 ["AnchorPoint"]
       37 NEWTABLE                         R7 0 3
       39 MOVE                             R8 R3
       40 LOADK                            R9 K23 ["::UIPadding"]
       41 DUPTABLE                         R10 K25 [{"PaddingLeft"}]
       42 GETIMPORT                        R11 K27 [UDim.new]
       44 LOADN                            R12 0
       45 GETTABLEKS                       R13 R1 K28 ["paddingXSmall"]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K24 ["PaddingLeft"]
       50 CALL                             R8 2 1
       51 MOVE                             R9 R3
       52 LOADK                            R10 K29 [">> TextLabel"]
       53 DUPTABLE                         R11 K39 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Font"], ["Size"], ["TextColor3"] = "$SemanticColorContentMuted", ["TextSize"], ["TextXAlignment"], ["TextTruncate"], ["TextWrapped"] = False}]
       54 GETTABLEKS                       R12 R1 K40 ["defaultFont"]
       56 SETTABLEKS                       R12 R11 K30 ["Font"]
       58 GETIMPORT                        R12 K43 [UDim2.fromScale]
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K31 ["Size"]
       65 LOADN                            R13 12
       66 GETTABLEKS                       R14 R1 K44 ["defaultFontScale"]
       68 MUL                              R12 R13 R14
       69 SETTABLEKS                       R12 R11 K34 ["TextSize"]
       71 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R12 R11 K35 ["TextXAlignment"]
       75 GETIMPORT                        R12 K49 [Enum.TextTruncate.SplitWord]
       77 SETTABLEKS                       R12 R11 K36 ["TextTruncate"]
       79 NEWTABLE                         R12 0 2
       81 MOVE                             R13 R3
       82 LOADK                            R14 K23 ["::UIPadding"]
       83 DUPTABLE                         R15 K51 [{"PaddingRight"}]
       84 GETIMPORT                        R16 K27 [UDim.new]
       86 LOADN                            R17 0
       87 GETTABLEKS                       R18 R1 K52 ["paddingSmall"]
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K50 ["PaddingRight"]
       92 CALL                             R13 2 1
       93 MOVE                             R14 R3
       94 LOADK                            R15 K53 ["::UISizeConstraint"]
       95 DUPTABLE                         R16 K56 [{"MinSize", "MaxSize"}]
       96 GETIMPORT                        R17 K22 [Vector2.new]
       98 GETTABLEKS                       R18 R1 K57 ["findResultsMinTextWidth"]
      100 GETTABLEKS                       R19 R1 K58 ["searchBarHeight"]
      102 CALL                             R17 2 1
      103 SETTABLEKS                       R17 R16 K54 ["MinSize"]
      105 GETIMPORT                        R17 K22 [Vector2.new]
      107 GETTABLEKS                       R18 R1 K59 ["findResultsMaxTextWidth"]
      109 GETTABLEKS                       R19 R1 K58 ["searchBarHeight"]
      111 CALL                             R17 2 1
      112 SETTABLEKS                       R17 R16 K55 ["MaxSize"]
      114 CALL                             R14 2 -1
      115 SETLIST                          R12 R13 -1 [1]
      117 CALL                             R9 3 1
      118 MOVE                             R10 R3
      119 LOADK                            R11 K60 [">> ImageButton"]
      120 DUPTABLE                         R12 K65 [{["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$SemanticColorSurfaceOutline", ["BackgroundTransparency"] = 1}]
      121 NEWTABLE                         R13 0 2
      123 MOVE                             R14 R3
      124 LOADK                            R15 K66 [".Hover"]
      125 DUPTABLE                         R16 K67 [{"BackgroundTransparency"}]
      126 GETTABLEKS                       R17 R1 K68 ["hoveredTransparency"]
      128 SETTABLEKS                       R17 R16 K14 ["BackgroundTransparency"]
      130 CALL                             R14 2 1
      131 MOVE                             R15 R3
      132 LOADK                            R16 K69 ["::UICorner"]
      133 DUPTABLE                         R17 K71 [{"CornerRadius"}]
      134 GETIMPORT                        R18 K27 [UDim.new]
      136 LOADN                            R19 0
      137 GETTABLEKS                       R20 R1 K72 ["radiusMedium"]
      139 CALL                             R18 2 1
      140 SETTABLEKS                       R18 R17 K70 ["CornerRadius"]
      142 CALL                             R15 2 -1
      143 SETLIST                          R13 R14 -1 [1]
      145 CALL                             R10 3 -1
      146 SETLIST                          R7 R8 -1 [1]
      148 CALL                             R4 3 -1
      149 RETURN                           R4 -1
