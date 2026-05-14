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
       29 DUPTABLE                         R6 K17 [{"BackgroundTransparency", "AnchorPoint", "ClipsDescendants"}]
       30 LOADN                            R7 1
       31 SETTABLEKS                       R7 R6 K14 ["BackgroundTransparency"]
       33 GETIMPORT                        R7 K20 [Vector2.new]
       35 LOADN                            R8 0
       36 LOADN                            R9 0
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K15 ["AnchorPoint"]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K16 ["ClipsDescendants"]
       43 NEWTABLE                         R7 0 3
       45 MOVE                             R8 R3
       46 LOADK                            R9 K21 ["::UIPadding"]
       47 DUPTABLE                         R10 K23 [{"PaddingLeft"}]
       48 GETIMPORT                        R11 K25 [UDim.new]
       50 LOADN                            R12 0
       51 GETTABLEKS                       R13 R1 K26 ["paddingXSmall"]
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K22 ["PaddingLeft"]
       56 CALL                             R8 2 1
       57 MOVE                             R9 R3
       58 LOADK                            R10 K27 [">> TextLabel"]
       59 DUPTABLE                         R11 K35 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
       60 LOADN                            R12 1
       61 SETTABLEKS                       R12 R11 K14 ["BackgroundTransparency"]
       63 LOADB                            R12 1
       64 SETTABLEKS                       R12 R11 K16 ["ClipsDescendants"]
       66 GETTABLEKS                       R12 R1 K36 ["defaultFont"]
       68 SETTABLEKS                       R12 R11 K28 ["Font"]
       70 GETIMPORT                        R12 K39 [UDim2.fromScale]
       72 LOADN                            R13 0
       73 LOADN                            R14 1
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K29 ["Size"]
       77 LOADK                            R12 K40 ["$SemanticColorContentMuted"]
       78 SETTABLEKS                       R12 R11 K30 ["TextColor3"]
       80 LOADN                            R13 12
       81 GETTABLEKS                       R14 R1 K41 ["defaultFontScale"]
       83 MUL                              R12 R13 R14
       84 SETTABLEKS                       R12 R11 K31 ["TextSize"]
       86 GETIMPORT                        R12 K44 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R12 R11 K32 ["TextXAlignment"]
       90 GETIMPORT                        R12 K46 [Enum.TextTruncate.SplitWord]
       92 SETTABLEKS                       R12 R11 K33 ["TextTruncate"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K34 ["TextWrapped"]
       97 NEWTABLE                         R12 0 2
       99 MOVE                             R13 R3
      100 LOADK                            R14 K21 ["::UIPadding"]
      101 DUPTABLE                         R15 K48 [{"PaddingRight"}]
      102 GETIMPORT                        R16 K25 [UDim.new]
      104 LOADN                            R17 0
      105 GETTABLEKS                       R18 R1 K49 ["paddingSmall"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K47 ["PaddingRight"]
      110 CALL                             R13 2 1
      111 MOVE                             R14 R3
      112 LOADK                            R15 K50 ["::UISizeConstraint"]
      113 DUPTABLE                         R16 K53 [{"MinSize", "MaxSize"}]
      114 GETIMPORT                        R17 K20 [Vector2.new]
      116 GETTABLEKS                       R18 R1 K54 ["findResultsMinTextWidth"]
      118 GETTABLEKS                       R19 R1 K55 ["searchBarHeight"]
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K51 ["MinSize"]
      123 GETIMPORT                        R17 K20 [Vector2.new]
      125 GETTABLEKS                       R18 R1 K56 ["findResultsMaxTextWidth"]
      127 GETTABLEKS                       R19 R1 K55 ["searchBarHeight"]
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K52 ["MaxSize"]
      132 CALL                             R14 2 -1
      133 SETLIST                          R12 R13 -1 [1]
      135 CALL                             R9 3 1
      136 MOVE                             R10 R3
      137 LOADK                            R11 K57 [">> ImageButton"]
      138 DUPTABLE                         R12 K60 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
      139 LOADN                            R13 0
      140 SETTABLEKS                       R13 R12 K58 ["BorderSizePixel"]
      142 LOADK                            R13 K61 ["$SemanticColorSurfaceOutline"]
      143 SETTABLEKS                       R13 R12 K59 ["BackgroundColor3"]
      145 LOADN                            R13 1
      146 SETTABLEKS                       R13 R12 K14 ["BackgroundTransparency"]
      148 NEWTABLE                         R13 0 2
      150 MOVE                             R14 R3
      151 LOADK                            R15 K62 [".Hover"]
      152 DUPTABLE                         R16 K63 [{"BackgroundTransparency"}]
      153 GETTABLEKS                       R17 R1 K64 ["hoveredTransparency"]
      155 SETTABLEKS                       R17 R16 K14 ["BackgroundTransparency"]
      157 CALL                             R14 2 1
      158 MOVE                             R15 R3
      159 LOADK                            R16 K65 ["::UICorner"]
      160 DUPTABLE                         R17 K67 [{"CornerRadius"}]
      161 GETIMPORT                        R18 K25 [UDim.new]
      163 LOADN                            R19 0
      164 GETTABLEKS                       R20 R1 K68 ["radiusMedium"]
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K66 ["CornerRadius"]
      169 CALL                             R15 2 -1
      170 SETLIST                          R13 R14 -1 [1]
      172 CALL                             R10 3 -1
      173 SETLIST                          R7 R8 -1 [1]
      175 CALL                             R4 3 -1
      176 RETURN                           R4 -1
