MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-useTooltip"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 7
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [".Role-Tooltip"]
       24 DUPTABLE                         R8 K18 [{["BackgroundColor3"] = "$SemanticColorSurface300Inverse", ["BorderColor3"] = "$SemanticColorDivider", ["BorderMode"], ["BorderSizePixel"] = 2}]
       25 GETIMPORT                        R9 K21 [Enum.BorderMode.Inset]
       27 SETTABLEKS                       R9 R8 K15 ["BorderMode"]
       29 CALL                             R6 2 1
       30 MOVE                             R7 R1
       31 LOADK                            R8 K22 [">> .Role-Surface"]
       32 DUPTABLE                         R9 K26 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       33 CALL                             R7 2 1
       34 MOVE                             R8 R1
       35 LOADK                            R9 K27 [">> .Text-Label"]
       36 DUPTABLE                         R10 K33 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"] = 17.598, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       37 GETIMPORT                        R11 K35 [Enum.Font.SourceSans]
       39 SETTABLEKS                       R11 R10 K28 ["Font"]
       41 CALL                             R8 2 1
       42 MOVE                             R9 R1
       43 LOADK                            R10 K36 [">> .Text-Title"]
       44 DUPTABLE                         R11 K33 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"] = 17.598, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       45 GETIMPORT                        R12 K38 [Enum.Font.SourceSansBold]
       47 SETTABLEKS                       R12 R11 K28 ["Font"]
       49 CALL                             R9 2 1
       50 MOVE                             R10 R1
       51 LOADK                            R11 K39 [">> .TooltipTextBounds"]
       52 DUPTABLE                         R12 K43 [{["TextWrapped"] = True, ["TextXAlignment"]}]
       53 GETIMPORT                        R13 K45 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R13 R12 K42 ["TextXAlignment"]
       57 NEWTABLE                         R13 0 1
       59 MOVE                             R14 R1
       60 LOADK                            R15 K46 ["::UISizeConstraint"]
       61 DUPTABLE                         R16 K48 [{"MaxSize"}]
       62 GETIMPORT                        R17 K51 [Vector2.new]
       64 LOADN                            R18 400
       65 LOADK                            R19 K52 [∞]
       66 CALL                             R17 2 1
       67 SETTABLEKS                       R17 R16 K47 ["MaxSize"]
       69 CALL                             R14 2 -1
       70 SETLIST                          R13 R14 -1 [1]
       72 CALL                             R10 3 1
       73 MOVE                             R11 R1
       74 LOADK                            R12 K53 [">> .X-PadTooltip ::UIPadding"]
       75 DUPTABLE                         R13 K58 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       76 GETIMPORT                        R14 K60 [UDim.new]
       78 LOADN                            R15 0
       79 LOADN                            R16 6
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K54 ["PaddingLeft"]
       83 GETIMPORT                        R14 K60 [UDim.new]
       85 LOADN                            R15 0
       86 LOADN                            R16 6
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K55 ["PaddingRight"]
       90 GETIMPORT                        R14 K60 [UDim.new]
       92 LOADN                            R15 0
       93 LOADN                            R16 4
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K56 ["PaddingTop"]
       97 GETIMPORT                        R14 K60 [UDim.new]
       99 LOADN                            R15 0
      100 LOADN                            R16 4
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K57 ["PaddingBottom"]
      104 CALL                             R11 2 1
      105 MOVE                             R12 R1
      106 LOADK                            R13 K61 [">> .X-RowSpace50"]
      107 NEWTABLE                         R14 0 0
      109 NEWTABLE                         R15 0 1
      111 MOVE                             R16 R1
      112 LOADK                            R17 K62 ["::UIListLayout"]
      113 DUPTABLE                         R18 K66 [{"FillDirection", "Padding", "SortOrder"}]
      114 GETIMPORT                        R19 K68 [Enum.FillDirection.Horizontal]
      116 SETTABLEKS                       R19 R18 K63 ["FillDirection"]
      118 GETIMPORT                        R19 K60 [UDim.new]
      120 LOADN                            R20 0
      121 LOADN                            R21 4
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K64 ["Padding"]
      125 GETIMPORT                        R19 K70 [Enum.SortOrder.LayoutOrder]
      127 SETTABLEKS                       R19 R18 K65 ["SortOrder"]
      129 CALL                             R16 2 -1
      130 SETLIST                          R15 R16 -1 [1]
      132 CALL                             R12 3 -1
      133 SETLIST                          R5 R6 -1 [1]
      135 CALL                             R2 3 -1
      136 RETURN                           R2 -1
