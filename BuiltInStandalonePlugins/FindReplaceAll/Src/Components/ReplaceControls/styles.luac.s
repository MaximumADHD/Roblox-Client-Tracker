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
       37 LOADK                            R6 K15 [">> .FindReplaceAll-ReplaceControls"]
       38 DUPTABLE                         R7 K19 [{"AnchorPoint", "ClipsDescendants", "BackgroundTransparency"}]
       39 GETIMPORT                        R8 K22 [Vector2.new]
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K16 ["AnchorPoint"]
       46 LOADB                            R8 1
       47 SETTABLEKS                       R8 R7 K17 ["ClipsDescendants"]
       49 LOADN                            R8 1
       50 SETTABLEKS                       R8 R7 K18 ["BackgroundTransparency"]
       52 NEWTABLE                         R8 0 1
       54 MOVE                             R9 R4
       55 LOADK                            R10 K23 [">> TextButton"]
       56 DUPTABLE                         R11 K31 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "TextColor3", "TextTransparency", "TextSize", "TextXAlignment"}]
       57 LOADK                            R12 K32 ["$SemanticColorSurfaceOutline"]
       58 SETTABLEKS                       R12 R11 K24 ["BackgroundColor3"]
       60 LOADN                            R12 1
       61 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       63 LOADN                            R12 0
       64 SETTABLEKS                       R12 R11 K25 ["BorderSizePixel"]
       66 LOADB                            R12 1
       67 SETTABLEKS                       R12 R11 K17 ["ClipsDescendants"]
       69 GETTABLEKS                       R12 R1 K33 ["defaultFontBold"]
       71 SETTABLEKS                       R12 R11 K26 ["Font"]
       73 LOADK                            R12 K34 ["$SemanticColorActionUtilityForeground"]
       74 SETTABLEKS                       R12 R11 K27 ["TextColor3"]
       76 LOADN                            R12 0
       77 SETTABLEKS                       R12 R11 K28 ["TextTransparency"]
       79 LOADN                            R13 12
       80 GETTABLEKS                       R15 R3 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
       82 CALL                             R15 0 1
       83 JUMPIFNOT                        R15 ; [+3]
       84 GETTABLEKS                       R14 R1 K36 ["defaultFontScale"]
       86 JUMP                             ; [+1]
       87 LOADK                            R14 K37 [1.257]
       88 MUL                              R12 R13 R14
       89 SETTABLEKS                       R12 R11 K29 ["TextSize"]
       91 GETIMPORT                        R12 K40 [Enum.TextXAlignment.Center]
       93 SETTABLEKS                       R12 R11 K30 ["TextXAlignment"]
       95 NEWTABLE                         R12 0 4
       97 MOVE                             R13 R4
       98 LOADK                            R14 K41 [".Hover"]
       99 DUPTABLE                         R15 K42 [{"BackgroundTransparency"}]
      100 GETTABLEKS                       R16 R1 K43 ["hoveredTransparency"]
      102 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      104 CALL                             R13 2 1
      105 MOVE                             R14 R4
      106 LOADK                            R15 K44 [".Disabled"]
      107 DUPTABLE                         R16 K45 [{"TextTransparency"}]
      108 LOADK                            R17 K46 [0.5]
      109 SETTABLEKS                       R17 R16 K28 ["TextTransparency"]
      111 CALL                             R14 2 1
      112 MOVE                             R15 R4
      113 LOADK                            R16 K47 ["::UIPadding"]
      114 DUPTABLE                         R17 K52 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      115 GETIMPORT                        R18 K54 [UDim.new]
      117 LOADN                            R19 0
      118 GETTABLEKS                       R20 R1 K55 ["paddingSmall"]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K48 ["PaddingLeft"]
      123 GETIMPORT                        R18 K54 [UDim.new]
      125 LOADN                            R19 0
      126 GETTABLEKS                       R20 R1 K55 ["paddingSmall"]
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K49 ["PaddingRight"]
      131 GETIMPORT                        R18 K54 [UDim.new]
      133 LOADN                            R19 0
      134 GETTABLEKS                       R20 R1 K55 ["paddingSmall"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K50 ["PaddingTop"]
      139 GETIMPORT                        R18 K54 [UDim.new]
      141 LOADN                            R19 0
      142 GETTABLEKS                       R20 R1 K55 ["paddingSmall"]
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K51 ["PaddingBottom"]
      147 CALL                             R15 2 1
      148 MOVE                             R16 R4
      149 LOADK                            R17 K56 ["::UICorner"]
      150 DUPTABLE                         R18 K58 [{"CornerRadius"}]
      151 GETIMPORT                        R19 K54 [UDim.new]
      153 LOADN                            R20 0
      154 GETTABLEKS                       R21 R1 K59 ["radiusMedium"]
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K57 ["CornerRadius"]
      159 CALL                             R16 2 -1
      160 SETLIST                          R12 R13 -1 [1]
      162 CALL                             R9 3 -1
      163 SETLIST                          R8 R9 -1 [1]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1
