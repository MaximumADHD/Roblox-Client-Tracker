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
       28 LOADK                            R5 K13 [".FindReplaceAll-SearchBox"]
       29 DUPTABLE                         R6 K16 [{["BackgroundTransparency"] = 1}]
       30 NEWTABLE                         R7 0 5
       32 MOVE                             R8 R3
       33 LOADK                            R9 K17 ["::UIPadding"]
       34 DUPTABLE                         R10 K19 [{"PaddingBottom"}]
       35 GETIMPORT                        R11 K22 [UDim.new]
       37 LOADN                            R12 0
       38 GETTABLEKS                       R13 R1 K23 ["paddingXSmall"]
       40 CALL                             R11 2 1
       41 SETTABLEKS                       R11 R10 K18 ["PaddingBottom"]
       43 CALL                             R8 2 1
       44 MOVE                             R9 R3
       45 LOADK                            R10 K24 [">> ImageButton"]
       46 DUPTABLE                         R11 K28 [{["BorderSizePixel"] = 1, ["BackgroundColor3"] = "$SemanticColorSurfaceOutline"}]
       47 CALL                             R9 2 1
       48 MOVE                             R10 R3
       49 LOADK                            R11 K29 [">> .FindReplaceAll-SearchBox-Corner ::UICorner"]
       50 DUPTABLE                         R12 K31 [{"CornerRadius"}]
       51 GETIMPORT                        R13 K22 [UDim.new]
       53 LOADN                            R14 0
       54 GETTABLEKS                       R15 R1 K32 ["radiusSmall"]
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K30 ["CornerRadius"]
       59 CALL                             R10 2 1
       60 MOVE                             R11 R3
       61 LOADK                            R12 K33 [">> .FindReplaceAll-SearchBox-SearchBar"]
       62 DUPTABLE                         R13 K36 [{["ClipsDescendants"] = True}]
       63 NEWTABLE                         R14 0 2
       65 MOVE                             R15 R3
       66 LOADK                            R16 K37 [">> UIStroke"]
       67 DUPTABLE                         R17 K42 [{["Color"] = "$SemanticColorActionPrimaryBrandFill", ["Thickness"] = 1.5}]
       68 CALL                             R15 2 1
       69 MOVE                             R16 R3
       70 LOADK                            R17 K43 [">> TextBox"]
       71 DUPTABLE                         R18 K56 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["ClipsDescendants"] = True, ["Font"], ["Position"], ["TextColor3"] = "$SemanticColorContentMuted", ["Text"] = "", ["TextSize"], ["TextXAlignment"]}]
       72 GETIMPORT                        R19 K58 [Vector2.new]
       74 LOADK                            R20 K59 [0.5]
       75 LOADK                            R21 K59 [0.5]
       76 CALL                             R19 2 1
       77 SETTABLEKS                       R19 R18 K44 ["AnchorPoint"]
       79 GETTABLEKS                       R19 R1 K60 ["defaultFont"]
       81 SETTABLEKS                       R19 R18 K48 ["Font"]
       83 GETIMPORT                        R19 K63 [UDim2.fromScale]
       85 LOADK                            R20 K59 [0.5]
       86 LOADK                            R21 K59 [0.5]
       87 CALL                             R19 2 1
       88 SETTABLEKS                       R19 R18 K49 ["Position"]
       90 LOADN                            R20 12
       91 GETTABLEKS                       R21 R1 K64 ["defaultFontScale"]
       93 MUL                              R19 R20 R21
       94 SETTABLEKS                       R19 R18 K54 ["TextSize"]
       96 GETIMPORT                        R19 K67 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R19 R18 K55 ["TextXAlignment"]
      100 CALL                             R16 2 -1
      101 SETLIST                          R14 R15 -1 [1]
      103 CALL                             R11 3 1
      104 MOVE                             R12 R3
      105 LOADK                            R13 K68 [">> .FindReplaceAll-SearchBar-Error"]
      106 DUPTABLE                         R14 K70 [{["Color"] = "$ColorActionAlert", ["Thickness"] = 1.5}]
      107 CALL                             R12 2 -1
      108 SETLIST                          R7 R8 -1 [1]
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1
