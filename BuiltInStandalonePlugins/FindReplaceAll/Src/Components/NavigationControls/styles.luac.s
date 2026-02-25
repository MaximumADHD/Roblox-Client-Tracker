MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["defineFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R2 K13 ["Styling"]
       34 GETTABLEKS                       R4 R5 K14 ["createStyleRule"]
       36 MOVE                             R5 R4
       37 LOADK                            R6 K15 [">> .FindReplaceAll-NavigationControls"]
       38 DUPTABLE                         R7 K19 [{"BackgroundTransparency", "AnchorPoint", "ClipsDescendants"}]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K16 ["BackgroundTransparency"]
       42 GETIMPORT                        R8 K22 [Vector2.new]
       44 LOADN                            R9 0
       45 LOADN                            R10 0
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K17 ["AnchorPoint"]
       49 LOADB                            R8 1
       50 SETTABLEKS                       R8 R7 K18 ["ClipsDescendants"]
       52 NEWTABLE                         R8 0 3
       54 MOVE                             R9 R4
       55 LOADK                            R10 K23 ["::UIPadding"]
       56 DUPTABLE                         R11 K25 [{"PaddingLeft"}]
       57 GETIMPORT                        R12 K27 [UDim.new]
       59 LOADN                            R13 0
       60 GETTABLEKS                       R14 R1 K28 ["paddingXSmall"]
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K24 ["PaddingLeft"]
       65 CALL                             R9 2 1
       66 MOVE                             R10 R4
       67 LOADK                            R11 K29 [">> TextLabel"]
       68 DUPTABLE                         R12 K37 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K16 ["BackgroundTransparency"]
       72 LOADB                            R13 1
       73 SETTABLEKS                       R13 R12 K18 ["ClipsDescendants"]
       75 GETTABLEKS                       R13 R1 K38 ["defaultFont"]
       77 SETTABLEKS                       R13 R12 K30 ["Font"]
       79 GETIMPORT                        R13 K41 [UDim2.fromScale]
       81 LOADN                            R14 0
       82 LOADN                            R15 1
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K31 ["Size"]
       86 LOADK                            R13 K42 ["$SemanticColorContentMuted"]
       87 SETTABLEKS                       R13 R12 K32 ["TextColor3"]
       89 LOADN                            R14 12
       90 GETTABLEKS                       R16 R3 K43 ["getFFlagFindReplaceAllUseBuilderFont"]
       92 CALL                             R16 0 1
       93 JUMPIFNOT                        R16 ; [+3]
       94 GETTABLEKS                       R15 R1 K44 ["defaultFontScale"]
       96 JUMP                             ; [+1]
       97 LOADK                            R15 K45 [1.257]
       98 MUL                              R13 R14 R15
       99 SETTABLEKS                       R13 R12 K33 ["TextSize"]
      101 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R13 R12 K34 ["TextXAlignment"]
      105 GETIMPORT                        R13 K50 [Enum.TextTruncate.SplitWord]
      107 SETTABLEKS                       R13 R12 K35 ["TextTruncate"]
      109 LOADB                            R13 0
      110 SETTABLEKS                       R13 R12 K36 ["TextWrapped"]
      112 NEWTABLE                         R13 0 2
      114 MOVE                             R14 R4
      115 LOADK                            R15 K23 ["::UIPadding"]
      116 DUPTABLE                         R16 K52 [{"PaddingRight"}]
      117 GETIMPORT                        R17 K27 [UDim.new]
      119 LOADN                            R18 0
      120 GETTABLEKS                       R19 R1 K53 ["paddingSmall"]
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K51 ["PaddingRight"]
      125 CALL                             R14 2 1
      126 MOVE                             R15 R4
      127 LOADK                            R16 K54 ["::UISizeConstraint"]
      128 DUPTABLE                         R17 K57 [{"MinSize", "MaxSize"}]
      129 GETIMPORT                        R18 K22 [Vector2.new]
      131 GETTABLEKS                       R19 R1 K58 ["findResultsMinTextWidth"]
      133 GETTABLEKS                       R20 R1 K59 ["searchBarHeight"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K55 ["MinSize"]
      138 GETIMPORT                        R18 K22 [Vector2.new]
      140 GETTABLEKS                       R19 R1 K60 ["findResultsMaxTextWidth"]
      142 GETTABLEKS                       R20 R1 K59 ["searchBarHeight"]
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K56 ["MaxSize"]
      147 CALL                             R15 2 -1
      148 SETLIST                          R13 R14 -1 [1]
      150 CALL                             R10 3 1
      151 MOVE                             R11 R4
      152 LOADK                            R12 K61 [">> ImageButton"]
      153 DUPTABLE                         R13 K64 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
      154 LOADN                            R14 0
      155 SETTABLEKS                       R14 R13 K62 ["BorderSizePixel"]
      157 LOADK                            R14 K65 ["$SemanticColorSurfaceOutline"]
      158 SETTABLEKS                       R14 R13 K63 ["BackgroundColor3"]
      160 LOADN                            R14 1
      161 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
      163 NEWTABLE                         R14 0 2
      165 MOVE                             R15 R4
      166 LOADK                            R16 K66 [".Hover"]
      167 DUPTABLE                         R17 K67 [{"BackgroundTransparency"}]
      168 GETTABLEKS                       R18 R1 K68 ["hoveredTransparency"]
      170 SETTABLEKS                       R18 R17 K16 ["BackgroundTransparency"]
      172 CALL                             R15 2 1
      173 MOVE                             R16 R4
      174 LOADK                            R17 K69 ["::UICorner"]
      175 DUPTABLE                         R18 K71 [{"CornerRadius"}]
      176 GETIMPORT                        R19 K27 [UDim.new]
      178 LOADN                            R20 0
      179 GETTABLEKS                       R21 R1 K72 ["radiusMedium"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K70 ["CornerRadius"]
      184 CALL                             R16 2 -1
      185 SETLIST                          R14 R15 -1 [1]
      187 CALL                             R11 3 -1
      188 SETLIST                          R8 R9 -1 [1]
      190 CALL                             R5 3 -1
      191 RETURN                           R5 -1
