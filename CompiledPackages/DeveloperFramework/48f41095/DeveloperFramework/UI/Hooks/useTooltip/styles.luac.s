MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-useTooltip"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 7
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [".Role-Tooltip"]
       24 DUPTABLE                         R8 K15 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
       25 LOADK                            R9 K16 ["$SemanticColorSurface300Inverse"]
       26 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       28 LOADK                            R9 K17 ["$SemanticColorDivider"]
       29 SETTABLEKS                       R9 R8 K12 ["BorderColor3"]
       31 GETIMPORT                        R9 K20 [Enum.BorderMode.Inset]
       33 SETTABLEKS                       R9 R8 K13 ["BorderMode"]
       35 LOADN                            R9 2
       36 SETTABLEKS                       R9 R8 K14 ["BorderSizePixel"]
       38 CALL                             R6 2 1
       39 MOVE                             R7 R1
       40 LOADK                            R8 K21 [">> .Role-Surface"]
       41 DUPTABLE                         R9 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
       42 LOADN                            R10 1
       43 SETTABLEKS                       R10 R9 K22 ["BackgroundTransparency"]
       45 LOADN                            R10 0
       46 SETTABLEKS                       R10 R9 K14 ["BorderSizePixel"]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R1
       50 LOADK                            R9 K24 [">> .Text-Label"]
       51 DUPTABLE                         R10 K28 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       52 GETIMPORT                        R11 K30 [Enum.Font.SourceSans]
       54 SETTABLEKS                       R11 R10 K25 ["Font"]
       56 LOADK                            R11 K31 ["$SemanticColorContentStandardInverse"]
       57 SETTABLEKS                       R11 R10 K26 ["TextColor3"]
       59 LOADK                            R11 K32 [17.598]
       60 SETTABLEKS                       R11 R10 K27 ["TextSize"]
       62 LOADN                            R11 0
       63 SETTABLEKS                       R11 R10 K14 ["BorderSizePixel"]
       65 LOADN                            R11 1
       66 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
       68 CALL                             R8 2 1
       69 MOVE                             R9 R1
       70 LOADK                            R10 K33 [">> .Text-Title"]
       71 DUPTABLE                         R11 K28 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       72 GETIMPORT                        R12 K35 [Enum.Font.SourceSansBold]
       74 SETTABLEKS                       R12 R11 K25 ["Font"]
       76 LOADK                            R12 K31 ["$SemanticColorContentStandardInverse"]
       77 SETTABLEKS                       R12 R11 K26 ["TextColor3"]
       79 LOADK                            R12 K32 [17.598]
       80 SETTABLEKS                       R12 R11 K27 ["TextSize"]
       82 LOADN                            R12 0
       83 SETTABLEKS                       R12 R11 K14 ["BorderSizePixel"]
       85 LOADN                            R12 1
       86 SETTABLEKS                       R12 R11 K22 ["BackgroundTransparency"]
       88 CALL                             R9 2 1
       89 MOVE                             R10 R1
       90 LOADK                            R11 K36 [">> .TooltipTextBounds"]
       91 DUPTABLE                         R12 K39 [{"TextWrapped", "TextXAlignment"}]
       92 LOADB                            R13 1
       93 SETTABLEKS                       R13 R12 K37 ["TextWrapped"]
       95 GETIMPORT                        R13 K41 [Enum.TextXAlignment.Left]
       97 SETTABLEKS                       R13 R12 K38 ["TextXAlignment"]
       99 NEWTABLE                         R13 0 1
      101 MOVE                             R14 R1
      102 LOADK                            R15 K42 ["::UISizeConstraint"]
      103 DUPTABLE                         R16 K44 [{"MaxSize"}]
      104 GETIMPORT                        R17 K47 [Vector2.new]
      106 LOADN                            R18 144
      107 LOADK                            R19 K48 [∞]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K43 ["MaxSize"]
      111 CALL                             R14 2 -1
      112 SETLIST                          R13 R14 -1 [1]
      114 CALL                             R10 3 1
      115 MOVE                             R11 R1
      116 LOADK                            R12 K49 [">> .X-PadTooltip ::UIPadding"]
      117 DUPTABLE                         R13 K54 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      118 GETIMPORT                        R14 K56 [UDim.new]
      120 LOADN                            R15 0
      121 LOADN                            R16 6
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K50 ["PaddingLeft"]
      125 GETIMPORT                        R14 K56 [UDim.new]
      127 LOADN                            R15 0
      128 LOADN                            R16 6
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K51 ["PaddingRight"]
      132 GETIMPORT                        R14 K56 [UDim.new]
      134 LOADN                            R15 0
      135 LOADN                            R16 4
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K52 ["PaddingTop"]
      139 GETIMPORT                        R14 K56 [UDim.new]
      141 LOADN                            R15 0
      142 LOADN                            R16 4
      143 CALL                             R14 2 1
      144 SETTABLEKS                       R14 R13 K53 ["PaddingBottom"]
      146 CALL                             R11 2 1
      147 MOVE                             R12 R1
      148 LOADK                            R13 K57 [">> .X-RowSpace50"]
      149 NEWTABLE                         R14 0 0
      151 NEWTABLE                         R15 0 1
      153 MOVE                             R16 R1
      154 LOADK                            R17 K58 ["::UIListLayout"]
      155 DUPTABLE                         R18 K62 [{"FillDirection", "Padding", "SortOrder"}]
      156 GETIMPORT                        R19 K64 [Enum.FillDirection.Horizontal]
      158 SETTABLEKS                       R19 R18 K59 ["FillDirection"]
      160 GETIMPORT                        R19 K56 [UDim.new]
      162 LOADN                            R20 0
      163 LOADN                            R21 4
      164 CALL                             R19 2 1
      165 SETTABLEKS                       R19 R18 K60 ["Padding"]
      167 GETIMPORT                        R19 K66 [Enum.SortOrder.LayoutOrder]
      169 SETTABLEKS                       R19 R18 K61 ["SortOrder"]
      171 CALL                             R16 2 -1
      172 SETLIST                          R15 R16 -1 [1]
      174 CALL                             R12 3 -1
      175 SETLIST                          R5 R6 -1 [1]
      177 CALL                             R2 3 -1
      178 RETURN                           R2 -1
