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
       28 LOADK                            R5 K13 [">> .FindReplaceAll-ReplaceControls"]
       29 DUPTABLE                         R6 K19 [{["AnchorPoint"], ["ClipsDescendants"] = True, ["BackgroundTransparency"] = 1}]
       30 GETIMPORT                        R7 K22 [Vector2.new]
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K14 ["AnchorPoint"]
       37 NEWTABLE                         R7 0 1
       39 MOVE                             R8 R3
       40 LOADK                            R9 K23 [">> TextButton"]
       41 DUPTABLE                         R10 K34 [{["BackgroundColor3"] = "$SemanticColorSurfaceOutline", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["Font"], ["TextColor3"] = "$SemanticColorActionUtilityForeground", ["TextTransparency"] = 0, ["TextSize"], ["TextXAlignment"]}]
       42 GETTABLEKS                       R11 R1 K35 ["defaultFontBold"]
       44 SETTABLEKS                       R11 R10 K28 ["Font"]
       46 LOADN                            R12 12
       47 GETTABLEKS                       R13 R1 K36 ["defaultFontScale"]
       49 MUL                              R11 R12 R13
       50 SETTABLEKS                       R11 R10 K32 ["TextSize"]
       52 GETIMPORT                        R11 K39 [Enum.TextXAlignment.Center]
       54 SETTABLEKS                       R11 R10 K33 ["TextXAlignment"]
       56 NEWTABLE                         R11 0 4
       58 MOVE                             R12 R3
       59 LOADK                            R13 K40 [".Hover"]
       60 DUPTABLE                         R14 K41 [{"BackgroundTransparency"}]
       61 GETTABLEKS                       R15 R1 K42 ["hoveredTransparency"]
       63 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
       65 CALL                             R12 2 1
       66 MOVE                             R13 R3
       67 LOADK                            R14 K43 [".Disabled"]
       68 DUPTABLE                         R15 K45 [{["TextTransparency"] = 0.5}]
       69 CALL                             R13 2 1
       70 MOVE                             R14 R3
       71 LOADK                            R15 K46 ["::UIPadding"]
       72 DUPTABLE                         R16 K51 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       73 GETIMPORT                        R17 K53 [UDim.new]
       75 LOADN                            R18 0
       76 GETTABLEKS                       R19 R1 K54 ["paddingSmall"]
       78 CALL                             R17 2 1
       79 SETTABLEKS                       R17 R16 K47 ["PaddingLeft"]
       81 GETIMPORT                        R17 K53 [UDim.new]
       83 LOADN                            R18 0
       84 GETTABLEKS                       R19 R1 K54 ["paddingSmall"]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K48 ["PaddingRight"]
       89 GETIMPORT                        R17 K53 [UDim.new]
       91 LOADN                            R18 0
       92 GETTABLEKS                       R19 R1 K54 ["paddingSmall"]
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K49 ["PaddingTop"]
       97 GETIMPORT                        R17 K53 [UDim.new]
       99 LOADN                            R18 0
      100 GETTABLEKS                       R19 R1 K54 ["paddingSmall"]
      102 CALL                             R17 2 1
      103 SETTABLEKS                       R17 R16 K50 ["PaddingBottom"]
      105 CALL                             R14 2 1
      106 MOVE                             R15 R3
      107 LOADK                            R16 K55 ["::UICorner"]
      108 DUPTABLE                         R17 K57 [{"CornerRadius"}]
      109 GETIMPORT                        R18 K53 [UDim.new]
      111 LOADN                            R19 0
      112 GETTABLEKS                       R20 R1 K58 ["radiusMedium"]
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K56 ["CornerRadius"]
      117 CALL                             R15 2 -1
      118 SETLIST                          R11 R12 -1 [1]
      120 CALL                             R8 3 -1
      121 SETLIST                          R7 R8 -1 [1]
      123 CALL                             R4 3 -1
      124 RETURN                           R4 -1
