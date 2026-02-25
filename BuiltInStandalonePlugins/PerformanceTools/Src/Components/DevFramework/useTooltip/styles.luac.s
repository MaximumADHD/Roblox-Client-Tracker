MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-useTooltip"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 8
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [".Role-Tooltip"]
       26 DUPTABLE                         R9 K16 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
       27 LOADK                            R10 K17 ["$SemanticColorSurface300Inverse"]
       28 SETTABLEKS                       R10 R9 K12 ["BackgroundColor3"]
       30 LOADK                            R10 K18 ["$SemanticColorDivider"]
       31 SETTABLEKS                       R10 R9 K13 ["BorderColor3"]
       33 GETIMPORT                        R10 K21 [Enum.BorderMode.Inset]
       35 SETTABLEKS                       R10 R9 K14 ["BorderMode"]
       37 LOADN                            R10 2
       38 SETTABLEKS                       R10 R9 K15 ["BorderSizePixel"]
       40 CALL                             R7 2 1
       41 MOVE                             R8 R2
       42 LOADK                            R9 K22 [">> .Role-Surface"]
       43 DUPTABLE                         R10 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
       44 LOADN                            R11 1
       45 SETTABLEKS                       R11 R10 K23 ["BackgroundTransparency"]
       47 LOADN                            R11 0
       48 SETTABLEKS                       R11 R10 K15 ["BorderSizePixel"]
       50 CALL                             R8 2 1
       51 MOVE                             R9 R2
       52 LOADK                            R10 K25 [">> .Text-Label"]
       53 DUPTABLE                         R11 K29 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       54 GETIMPORT                        R12 K31 [Enum.Font.SourceSans]
       56 SETTABLEKS                       R12 R11 K26 ["Font"]
       58 LOADK                            R12 K32 ["$SemanticColorContentStandardInverse"]
       59 SETTABLEKS                       R12 R11 K27 ["TextColor3"]
       61 LOADK                            R12 K33 [17.598]
       62 SETTABLEKS                       R12 R11 K28 ["TextSize"]
       64 LOADN                            R12 0
       65 SETTABLEKS                       R12 R11 K15 ["BorderSizePixel"]
       67 LOADN                            R12 1
       68 SETTABLEKS                       R12 R11 K23 ["BackgroundTransparency"]
       70 CALL                             R9 2 1
       71 MOVE                             R10 R2
       72 LOADK                            R11 K34 [">> .Text-Title"]
       73 DUPTABLE                         R12 K29 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       74 GETIMPORT                        R13 K36 [Enum.Font.SourceSansBold]
       76 SETTABLEKS                       R13 R12 K26 ["Font"]
       78 LOADK                            R13 K32 ["$SemanticColorContentStandardInverse"]
       79 SETTABLEKS                       R13 R12 K27 ["TextColor3"]
       81 LOADK                            R13 K33 [17.598]
       82 SETTABLEKS                       R13 R12 K28 ["TextSize"]
       84 LOADN                            R13 0
       85 SETTABLEKS                       R13 R12 K15 ["BorderSizePixel"]
       87 LOADN                            R13 1
       88 SETTABLEKS                       R13 R12 K23 ["BackgroundTransparency"]
       90 CALL                             R10 2 1
       91 MOVE                             R11 R2
       92 LOADK                            R12 K37 [">> .TooltipTextBounds"]
       93 DUPTABLE                         R13 K40 [{"TextWrapped", "TextXAlignment"}]
       94 LOADB                            R14 1
       95 SETTABLEKS                       R14 R13 K38 ["TextWrapped"]
       97 GETIMPORT                        R14 K42 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R14 R13 K39 ["TextXAlignment"]
      101 NEWTABLE                         R14 0 1
      103 MOVE                             R15 R2
      104 LOADK                            R16 K43 ["::UISizeConstraint"]
      105 DUPTABLE                         R17 K45 [{"MaxSize"}]
      106 GETIMPORT                        R18 K48 [Vector2.new]
      108 LOADN                            R19 144
      109 LOADK                            R20 K49 [∞]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K44 ["MaxSize"]
      113 CALL                             R15 2 -1
      114 SETLIST                          R14 R15 -1 [1]
      116 CALL                             R11 3 1
      117 MOVE                             R12 R2
      118 LOADK                            R13 K50 [">> .X-PadTooltip ::UIPadding"]
      119 DUPTABLE                         R14 K55 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      120 GETIMPORT                        R15 K57 [UDim.new]
      122 LOADN                            R16 0
      123 LOADN                            R17 6
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K51 ["PaddingLeft"]
      127 GETIMPORT                        R15 K57 [UDim.new]
      129 LOADN                            R16 0
      130 LOADN                            R17 6
      131 CALL                             R15 2 1
      132 SETTABLEKS                       R15 R14 K52 ["PaddingRight"]
      134 GETIMPORT                        R15 K57 [UDim.new]
      136 LOADN                            R16 0
      137 LOADN                            R17 4
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K53 ["PaddingTop"]
      141 GETIMPORT                        R15 K57 [UDim.new]
      143 LOADN                            R16 0
      144 LOADN                            R17 4
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K54 ["PaddingBottom"]
      148 CALL                             R12 2 1
      149 MOVE                             R13 R2
      150 LOADK                            R14 K58 [">> .X-RowSpace50"]
      151 NEWTABLE                         R15 0 0
      153 NEWTABLE                         R16 0 1
      155 MOVE                             R17 R2
      156 LOADK                            R18 K59 ["::UIListLayout"]
      157 DUPTABLE                         R19 K63 [{"FillDirection", "Padding", "SortOrder"}]
      158 GETIMPORT                        R20 K65 [Enum.FillDirection.Horizontal]
      160 SETTABLEKS                       R20 R19 K60 ["FillDirection"]
      162 GETIMPORT                        R20 K57 [UDim.new]
      164 LOADN                            R21 0
      165 LOADN                            R22 4
      166 CALL                             R20 2 1
      167 SETTABLEKS                       R20 R19 K61 ["Padding"]
      169 GETIMPORT                        R20 K67 [Enum.SortOrder.LayoutOrder]
      171 SETTABLEKS                       R20 R19 K62 ["SortOrder"]
      173 CALL                             R17 2 -1
      174 SETLIST                          R16 R17 -1 [1]
      176 CALL                             R13 3 1
      177 MOVE                             R14 R2
      178 LOADK                            R15 K68 [">> .X-ColumnSpace25"]
      179 NEWTABLE                         R16 0 0
      181 NEWTABLE                         R17 0 1
      183 MOVE                             R18 R2
      184 LOADK                            R19 K59 ["::UIListLayout"]
      185 DUPTABLE                         R20 K63 [{"FillDirection", "Padding", "SortOrder"}]
      186 GETIMPORT                        R21 K70 [Enum.FillDirection.Vertical]
      188 SETTABLEKS                       R21 R20 K60 ["FillDirection"]
      190 GETIMPORT                        R21 K57 [UDim.new]
      192 LOADN                            R22 0
      193 LOADN                            R23 2
      194 CALL                             R21 2 1
      195 SETTABLEKS                       R21 R20 K61 ["Padding"]
      197 GETIMPORT                        R21 K67 [Enum.SortOrder.LayoutOrder]
      199 SETTABLEKS                       R21 R20 K62 ["SortOrder"]
      201 CALL                             R18 2 -1
      202 SETLIST                          R17 R18 -1 [1]
      204 CALL                             R14 3 -1
      205 SETLIST                          R6 R7 -1 [1]
      207 CALL                             R3 3 -1
      208 RETURN                           R3 -1
