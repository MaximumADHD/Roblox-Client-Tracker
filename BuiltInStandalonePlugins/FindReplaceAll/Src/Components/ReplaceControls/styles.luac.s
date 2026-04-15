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
       23 GETTABLEKS                       R4 R2 K11 ["Styling"]
       25 GETTABLEKS                       R3 R4 K12 ["createStyleRule"]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K13 [">> .FindReplaceAll-ReplaceControls"]
       29 DUPTABLE                         R6 K17 [{"AnchorPoint", "ClipsDescendants", "BackgroundTransparency"}]
       30 GETIMPORT                        R7 K20 [Vector2.new]
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K14 ["AnchorPoint"]
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R6 K15 ["ClipsDescendants"]
       40 LOADN                            R7 1
       41 SETTABLEKS                       R7 R6 K16 ["BackgroundTransparency"]
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R3
       46 LOADK                            R9 K21 [">> TextButton"]
       47 DUPTABLE                         R10 K29 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "TextColor3", "TextTransparency", "TextSize", "TextXAlignment"}]
       48 LOADK                            R11 K30 ["$SemanticColorSurfaceOutline"]
       49 SETTABLEKS                       R11 R10 K22 ["BackgroundColor3"]
       51 LOADN                            R11 1
       52 SETTABLEKS                       R11 R10 K16 ["BackgroundTransparency"]
       54 LOADN                            R11 0
       55 SETTABLEKS                       R11 R10 K23 ["BorderSizePixel"]
       57 LOADB                            R11 1
       58 SETTABLEKS                       R11 R10 K15 ["ClipsDescendants"]
       60 GETTABLEKS                       R11 R1 K31 ["defaultFontBold"]
       62 SETTABLEKS                       R11 R10 K24 ["Font"]
       64 LOADK                            R11 K32 ["$SemanticColorActionUtilityForeground"]
       65 SETTABLEKS                       R11 R10 K25 ["TextColor3"]
       67 LOADN                            R11 0
       68 SETTABLEKS                       R11 R10 K26 ["TextTransparency"]
       70 LOADN                            R12 12
       71 GETTABLEKS                       R13 R1 K33 ["defaultFontScale"]
       73 MUL                              R11 R12 R13
       74 SETTABLEKS                       R11 R10 K27 ["TextSize"]
       76 GETIMPORT                        R11 K36 [Enum.TextXAlignment.Center]
       78 SETTABLEKS                       R11 R10 K28 ["TextXAlignment"]
       80 NEWTABLE                         R11 0 4
       82 MOVE                             R12 R3
       83 LOADK                            R13 K37 [".Hover"]
       84 DUPTABLE                         R14 K38 [{"BackgroundTransparency"}]
       85 GETTABLEKS                       R15 R1 K39 ["hoveredTransparency"]
       87 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
       89 CALL                             R12 2 1
       90 MOVE                             R13 R3
       91 LOADK                            R14 K40 [".Disabled"]
       92 DUPTABLE                         R15 K41 [{"TextTransparency"}]
       93 LOADK                            R16 K42 [0.5]
       94 SETTABLEKS                       R16 R15 K26 ["TextTransparency"]
       96 CALL                             R13 2 1
       97 MOVE                             R14 R3
       98 LOADK                            R15 K43 ["::UIPadding"]
       99 DUPTABLE                         R16 K48 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      100 GETIMPORT                        R17 K50 [UDim.new]
      102 LOADN                            R18 0
      103 GETTABLEKS                       R19 R1 K51 ["paddingSmall"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K44 ["PaddingLeft"]
      108 GETIMPORT                        R17 K50 [UDim.new]
      110 LOADN                            R18 0
      111 GETTABLEKS                       R19 R1 K51 ["paddingSmall"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K45 ["PaddingRight"]
      116 GETIMPORT                        R17 K50 [UDim.new]
      118 LOADN                            R18 0
      119 GETTABLEKS                       R19 R1 K51 ["paddingSmall"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K46 ["PaddingTop"]
      124 GETIMPORT                        R17 K50 [UDim.new]
      126 LOADN                            R18 0
      127 GETTABLEKS                       R19 R1 K51 ["paddingSmall"]
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K47 ["PaddingBottom"]
      132 CALL                             R14 2 1
      133 MOVE                             R15 R3
      134 LOADK                            R16 K52 ["::UICorner"]
      135 DUPTABLE                         R17 K54 [{"CornerRadius"}]
      136 GETIMPORT                        R18 K50 [UDim.new]
      138 LOADN                            R19 0
      139 GETTABLEKS                       R20 R1 K55 ["radiusMedium"]
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K53 ["CornerRadius"]
      144 CALL                             R15 2 -1
      145 SETLIST                          R11 R12 -1 [1]
      147 CALL                             R8 3 -1
      148 SETLIST                          R7 R8 -1 [1]
      150 CALL                             R4 3 -1
      151 RETURN                           R4 -1
