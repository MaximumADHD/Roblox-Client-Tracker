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
       35 DUPTABLE                         R10 K22 [{["BackgroundColor3"] = "$SemanticColorSurface300Inverse", ["BorderColor3"] = "$SemanticColorDivider", ["BorderMode"], ["BorderSizePixel"] = 2}]
       36 GETIMPORT                        R11 K25 [Enum.BorderMode.Inset]
       38 SETTABLEKS                       R11 R10 K19 ["BorderMode"]
       40 CALL                             R8 2 1
       41 MOVE                             R9 R3
       42 LOADK                            R10 K26 [">> .Role-Surface"]
       43 DUPTABLE                         R11 K30 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       44 CALL                             R9 2 1
       45 MOVE                             R10 R3
       46 LOADK                            R11 K31 [">> .Text-Label"]
       47 DUPTABLE                         R12 K36 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       48 GETIMPORT                        R13 K38 [Enum.Font.SourceSans]
       50 SETTABLEKS                       R13 R12 K32 ["Font"]
       52 LOADN                            R14 12
       53 GETTABLEKS                       R15 R2 K39 ["defaultFontScale"]
       55 MUL                              R13 R14 R15
       56 SETTABLEKS                       R13 R12 K35 ["TextSize"]
       58 CALL                             R10 2 1
       59 MOVE                             R11 R3
       60 LOADK                            R12 K40 [">> .Text-Title"]
       61 DUPTABLE                         R13 K36 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       62 GETIMPORT                        R14 K42 [Enum.Font.SourceSansBold]
       64 SETTABLEKS                       R14 R13 K32 ["Font"]
       66 LOADN                            R15 12
       67 GETTABLEKS                       R16 R2 K39 ["defaultFontScale"]
       69 MUL                              R14 R15 R16
       70 SETTABLEKS                       R14 R13 K35 ["TextSize"]
       72 CALL                             R11 2 1
       73 MOVE                             R12 R3
       74 LOADK                            R13 K43 [">> .TooltipTextBounds"]
       75 DUPTABLE                         R14 K47 [{["TextWrapped"] = True, ["TextXAlignment"]}]
       76 GETIMPORT                        R15 K49 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R15 R14 K46 ["TextXAlignment"]
       80 NEWTABLE                         R15 0 1
       82 MOVE                             R16 R3
       83 LOADK                            R17 K50 ["::UISizeConstraint"]
       84 DUPTABLE                         R18 K52 [{"MaxSize"}]
       85 GETIMPORT                        R19 K55 [Vector2.new]
       87 LOADN                            R20 400
       88 LOADK                            R21 K56 [∞]
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K51 ["MaxSize"]
       92 CALL                             R16 2 -1
       93 SETLIST                          R15 R16 -1 [1]
       95 CALL                             R12 3 1
       96 MOVE                             R13 R3
       97 LOADK                            R14 K57 [">> .X-PadTooltip ::UIPadding"]
       98 DUPTABLE                         R15 K62 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       99 GETIMPORT                        R16 K64 [UDim.new]
      101 LOADN                            R17 0
      102 LOADN                            R18 6
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K58 ["PaddingLeft"]
      106 GETIMPORT                        R16 K64 [UDim.new]
      108 LOADN                            R17 0
      109 LOADN                            R18 6
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K59 ["PaddingRight"]
      113 GETIMPORT                        R16 K64 [UDim.new]
      115 LOADN                            R17 0
      116 LOADN                            R18 4
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K60 ["PaddingTop"]
      120 GETIMPORT                        R16 K64 [UDim.new]
      122 LOADN                            R17 0
      123 LOADN                            R18 4
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K61 ["PaddingBottom"]
      127 CALL                             R13 2 1
      128 MOVE                             R14 R3
      129 LOADK                            R15 K65 [">> .X-RowSpace50"]
      130 NEWTABLE                         R16 0 0
      132 NEWTABLE                         R17 0 1
      134 MOVE                             R18 R3
      135 LOADK                            R19 K66 ["::UIListLayout"]
      136 DUPTABLE                         R20 K70 [{"FillDirection", "Padding", "SortOrder"}]
      137 GETIMPORT                        R21 K72 [Enum.FillDirection.Horizontal]
      139 SETTABLEKS                       R21 R20 K67 ["FillDirection"]
      141 GETIMPORT                        R21 K64 [UDim.new]
      143 LOADN                            R22 0
      144 LOADN                            R23 4
      145 CALL                             R21 2 1
      146 SETTABLEKS                       R21 R20 K68 ["Padding"]
      148 GETIMPORT                        R21 K74 [Enum.SortOrder.LayoutOrder]
      150 SETTABLEKS                       R21 R20 K69 ["SortOrder"]
      152 CALL                             R18 2 -1
      153 SETLIST                          R17 R18 -1 [1]
      155 CALL                             R14 3 -1
      156 SETLIST                          R7 R8 -1 [1]
      158 CALL                             R4 3 -1
      159 RETURN                           R4 -1
