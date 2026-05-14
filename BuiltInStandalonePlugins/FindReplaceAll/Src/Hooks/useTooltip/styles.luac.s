MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K13 [".Component-useTooltip"]
       29 NEWTABLE                         R6 0 0
       31 NEWTABLE                         R7 0 7
       33 MOVE                             R8 R3
       34 LOADK                            R9 K14 [".Role-Tooltip"]
       35 DUPTABLE                         R10 K19 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
       36 LOADK                            R11 K20 ["$SemanticColorSurface300Inverse"]
       37 SETTABLEKS                       R11 R10 K15 ["BackgroundColor3"]
       39 LOADK                            R11 K21 ["$SemanticColorDivider"]
       40 SETTABLEKS                       R11 R10 K16 ["BorderColor3"]
       42 GETIMPORT                        R11 K24 [Enum.BorderMode.Inset]
       44 SETTABLEKS                       R11 R10 K17 ["BorderMode"]
       46 LOADN                            R11 2
       47 SETTABLEKS                       R11 R10 K18 ["BorderSizePixel"]
       49 CALL                             R8 2 1
       50 MOVE                             R9 R3
       51 LOADK                            R10 K25 [">> .Role-Surface"]
       52 DUPTABLE                         R11 K27 [{"BackgroundTransparency", "BorderSizePixel"}]
       53 LOADN                            R12 1
       54 SETTABLEKS                       R12 R11 K26 ["BackgroundTransparency"]
       56 LOADN                            R12 0
       57 SETTABLEKS                       R12 R11 K18 ["BorderSizePixel"]
       59 CALL                             R9 2 1
       60 MOVE                             R10 R3
       61 LOADK                            R11 K28 [">> .Text-Label"]
       62 DUPTABLE                         R12 K32 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       63 GETIMPORT                        R13 K34 [Enum.Font.SourceSans]
       65 SETTABLEKS                       R13 R12 K29 ["Font"]
       67 LOADK                            R13 K35 ["$SemanticColorContentStandardInverse"]
       68 SETTABLEKS                       R13 R12 K30 ["TextColor3"]
       70 LOADN                            R14 12
       71 GETTABLEKS                       R15 R2 K36 ["defaultFontScale"]
       73 MUL                              R13 R14 R15
       74 SETTABLEKS                       R13 R12 K31 ["TextSize"]
       76 LOADN                            R13 0
       77 SETTABLEKS                       R13 R12 K18 ["BorderSizePixel"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K26 ["BackgroundTransparency"]
       82 CALL                             R10 2 1
       83 MOVE                             R11 R3
       84 LOADK                            R12 K37 [">> .Text-Title"]
       85 DUPTABLE                         R13 K32 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       86 GETIMPORT                        R14 K39 [Enum.Font.SourceSansBold]
       88 SETTABLEKS                       R14 R13 K29 ["Font"]
       90 LOADK                            R14 K35 ["$SemanticColorContentStandardInverse"]
       91 SETTABLEKS                       R14 R13 K30 ["TextColor3"]
       93 LOADN                            R15 12
       94 GETTABLEKS                       R16 R2 K36 ["defaultFontScale"]
       96 MUL                              R14 R15 R16
       97 SETTABLEKS                       R14 R13 K31 ["TextSize"]
       99 LOADN                            R14 0
      100 SETTABLEKS                       R14 R13 K18 ["BorderSizePixel"]
      102 LOADN                            R14 1
      103 SETTABLEKS                       R14 R13 K26 ["BackgroundTransparency"]
      105 CALL                             R11 2 1
      106 MOVE                             R12 R3
      107 LOADK                            R13 K40 [">> .TooltipTextBounds"]
      108 DUPTABLE                         R14 K43 [{"TextWrapped", "TextXAlignment"}]
      109 LOADB                            R15 1
      110 SETTABLEKS                       R15 R14 K41 ["TextWrapped"]
      112 GETIMPORT                        R15 K45 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R15 R14 K42 ["TextXAlignment"]
      116 NEWTABLE                         R15 0 1
      118 MOVE                             R16 R3
      119 LOADK                            R17 K46 ["::UISizeConstraint"]
      120 DUPTABLE                         R18 K48 [{"MaxSize"}]
      121 GETIMPORT                        R19 K51 [Vector2.new]
      123 LOADN                            R20 144
      124 LOADK                            R21 K52 [∞]
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K47 ["MaxSize"]
      128 CALL                             R16 2 -1
      129 SETLIST                          R15 R16 -1 [1]
      131 CALL                             R12 3 1
      132 MOVE                             R13 R3
      133 LOADK                            R14 K53 [">> .X-PadTooltip ::UIPadding"]
      134 DUPTABLE                         R15 K58 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      135 GETIMPORT                        R16 K60 [UDim.new]
      137 LOADN                            R17 0
      138 LOADN                            R18 6
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K54 ["PaddingLeft"]
      142 GETIMPORT                        R16 K60 [UDim.new]
      144 LOADN                            R17 0
      145 LOADN                            R18 6
      146 CALL                             R16 2 1
      147 SETTABLEKS                       R16 R15 K55 ["PaddingRight"]
      149 GETIMPORT                        R16 K60 [UDim.new]
      151 LOADN                            R17 0
      152 LOADN                            R18 4
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K56 ["PaddingTop"]
      156 GETIMPORT                        R16 K60 [UDim.new]
      158 LOADN                            R17 0
      159 LOADN                            R18 4
      160 CALL                             R16 2 1
      161 SETTABLEKS                       R16 R15 K57 ["PaddingBottom"]
      163 CALL                             R13 2 1
      164 MOVE                             R14 R3
      165 LOADK                            R15 K61 [">> .X-RowSpace50"]
      166 NEWTABLE                         R16 0 0
      168 NEWTABLE                         R17 0 1
      170 MOVE                             R18 R3
      171 LOADK                            R19 K62 ["::UIListLayout"]
      172 DUPTABLE                         R20 K66 [{"FillDirection", "Padding", "SortOrder"}]
      173 GETIMPORT                        R21 K68 [Enum.FillDirection.Horizontal]
      175 SETTABLEKS                       R21 R20 K63 ["FillDirection"]
      177 GETIMPORT                        R21 K60 [UDim.new]
      179 LOADN                            R22 0
      180 LOADN                            R23 4
      181 CALL                             R21 2 1
      182 SETTABLEKS                       R21 R20 K64 ["Padding"]
      184 GETIMPORT                        R21 K70 [Enum.SortOrder.LayoutOrder]
      186 SETTABLEKS                       R21 R20 K65 ["SortOrder"]
      188 CALL                             R18 2 -1
      189 SETLIST                          R17 R18 -1 [1]
      191 CALL                             R14 3 -1
      192 SETLIST                          R7 R8 -1 [1]
      194 CALL                             R4 3 -1
      195 RETURN                           R4 -1
