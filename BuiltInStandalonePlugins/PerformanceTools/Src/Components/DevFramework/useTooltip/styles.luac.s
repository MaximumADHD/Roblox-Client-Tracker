MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-useTooltip"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 8
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [".Role-Tooltip"]
       26 DUPTABLE                         R9 K19 [{["BackgroundColor3"] = "$SemanticColorSurface300Inverse", ["BorderColor3"] = "$SemanticColorDivider", ["BorderMode"], ["BorderSizePixel"] = 2}]
       27 GETIMPORT                        R10 K22 [Enum.BorderMode.Inset]
       29 SETTABLEKS                       R10 R9 K16 ["BorderMode"]
       31 CALL                             R7 2 1
       32 MOVE                             R8 R2
       33 LOADK                            R9 K23 [">> .Role-Surface"]
       34 DUPTABLE                         R10 K27 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       35 CALL                             R8 2 1
       36 MOVE                             R9 R2
       37 LOADK                            R10 K28 [">> .Text-Label"]
       38 DUPTABLE                         R11 K34 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"] = 17.598, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       39 GETIMPORT                        R12 K36 [Enum.Font.SourceSans]
       41 SETTABLEKS                       R12 R11 K29 ["Font"]
       43 CALL                             R9 2 1
       44 MOVE                             R10 R2
       45 LOADK                            R11 K37 [">> .Text-Title"]
       46 DUPTABLE                         R12 K34 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"] = 17.598, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       47 GETIMPORT                        R13 K39 [Enum.Font.SourceSansBold]
       49 SETTABLEKS                       R13 R12 K29 ["Font"]
       51 CALL                             R10 2 1
       52 MOVE                             R11 R2
       53 LOADK                            R12 K40 [">> .TooltipTextBounds"]
       54 DUPTABLE                         R13 K44 [{["TextWrapped"] = True, ["TextXAlignment"]}]
       55 GETIMPORT                        R14 K46 [Enum.TextXAlignment.Left]
       57 SETTABLEKS                       R14 R13 K43 ["TextXAlignment"]
       59 NEWTABLE                         R14 0 1
       61 MOVE                             R15 R2
       62 LOADK                            R16 K47 ["::UISizeConstraint"]
       63 DUPTABLE                         R17 K49 [{"MaxSize"}]
       64 GETIMPORT                        R18 K52 [Vector2.new]
       66 LOADN                            R19 400
       67 LOADK                            R20 K53 [∞]
       68 CALL                             R18 2 1
       69 SETTABLEKS                       R18 R17 K48 ["MaxSize"]
       71 CALL                             R15 2 -1
       72 SETLIST                          R14 R15 -1 [1]
       74 CALL                             R11 3 1
       75 MOVE                             R12 R2
       76 LOADK                            R13 K54 [">> .X-PadTooltip ::UIPadding"]
       77 DUPTABLE                         R14 K59 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       78 GETIMPORT                        R15 K61 [UDim.new]
       80 LOADN                            R16 0
       81 LOADN                            R17 6
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K55 ["PaddingLeft"]
       85 GETIMPORT                        R15 K61 [UDim.new]
       87 LOADN                            R16 0
       88 LOADN                            R17 6
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K56 ["PaddingRight"]
       92 GETIMPORT                        R15 K61 [UDim.new]
       94 LOADN                            R16 0
       95 LOADN                            R17 4
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K57 ["PaddingTop"]
       99 GETIMPORT                        R15 K61 [UDim.new]
      101 LOADN                            R16 0
      102 LOADN                            R17 4
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K58 ["PaddingBottom"]
      106 CALL                             R12 2 1
      107 MOVE                             R13 R2
      108 LOADK                            R14 K62 [">> .X-RowSpace50"]
      109 NEWTABLE                         R15 0 0
      111 NEWTABLE                         R16 0 1
      113 MOVE                             R17 R2
      114 LOADK                            R18 K63 ["::UIListLayout"]
      115 DUPTABLE                         R19 K67 [{"FillDirection", "Padding", "SortOrder"}]
      116 GETIMPORT                        R20 K69 [Enum.FillDirection.Horizontal]
      118 SETTABLEKS                       R20 R19 K64 ["FillDirection"]
      120 GETIMPORT                        R20 K61 [UDim.new]
      122 LOADN                            R21 0
      123 LOADN                            R22 4
      124 CALL                             R20 2 1
      125 SETTABLEKS                       R20 R19 K65 ["Padding"]
      127 GETIMPORT                        R20 K71 [Enum.SortOrder.LayoutOrder]
      129 SETTABLEKS                       R20 R19 K66 ["SortOrder"]
      131 CALL                             R17 2 -1
      132 SETLIST                          R16 R17 -1 [1]
      134 CALL                             R13 3 1
      135 MOVE                             R14 R2
      136 LOADK                            R15 K72 [">> .X-ColumnSpace25"]
      137 NEWTABLE                         R16 0 0
      139 NEWTABLE                         R17 0 1
      141 MOVE                             R18 R2
      142 LOADK                            R19 K63 ["::UIListLayout"]
      143 DUPTABLE                         R20 K67 [{"FillDirection", "Padding", "SortOrder"}]
      144 GETIMPORT                        R21 K74 [Enum.FillDirection.Vertical]
      146 SETTABLEKS                       R21 R20 K64 ["FillDirection"]
      148 GETIMPORT                        R21 K61 [UDim.new]
      150 LOADN                            R22 0
      151 LOADN                            R23 2
      152 CALL                             R21 2 1
      153 SETTABLEKS                       R21 R20 K65 ["Padding"]
      155 GETIMPORT                        R21 K71 [Enum.SortOrder.LayoutOrder]
      157 SETTABLEKS                       R21 R20 K66 ["SortOrder"]
      159 CALL                             R18 2 -1
      160 SETLIST                          R17 R18 -1 [1]
      162 CALL                             R14 3 -1
      163 SETLIST                          R6 R7 -1 [1]
      165 CALL                             R3 3 -1
      166 RETURN                           R3 -1
