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
       28 LOADK                            R5 K13 [".FindReplaceAll-SearchBox"]
       29 DUPTABLE                         R6 K15 [{"BackgroundTransparency"}]
       30 LOADN                            R7 1
       31 SETTABLEKS                       R7 R6 K14 ["BackgroundTransparency"]
       33 NEWTABLE                         R7 0 5
       35 MOVE                             R8 R3
       36 LOADK                            R9 K16 ["::UIPadding"]
       37 DUPTABLE                         R10 K18 [{"PaddingBottom"}]
       38 GETIMPORT                        R11 K21 [UDim.new]
       40 LOADN                            R12 0
       41 GETTABLEKS                       R13 R1 K22 ["paddingXSmall"]
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K17 ["PaddingBottom"]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R3
       48 LOADK                            R10 K23 [">> ImageButton"]
       49 DUPTABLE                         R11 K26 [{"BorderSizePixel", "BackgroundColor3"}]
       50 LOADN                            R12 1
       51 SETTABLEKS                       R12 R11 K24 ["BorderSizePixel"]
       53 LOADK                            R12 K27 ["$SemanticColorSurfaceOutline"]
       54 SETTABLEKS                       R12 R11 K25 ["BackgroundColor3"]
       56 CALL                             R9 2 1
       57 MOVE                             R10 R3
       58 LOADK                            R11 K28 [">> .FindReplaceAll-SearchBox-Corner ::UICorner"]
       59 DUPTABLE                         R12 K30 [{"CornerRadius"}]
       60 GETIMPORT                        R13 K21 [UDim.new]
       62 LOADN                            R14 0
       63 GETTABLEKS                       R15 R1 K31 ["radiusSmall"]
       65 CALL                             R13 2 1
       66 SETTABLEKS                       R13 R12 K29 ["CornerRadius"]
       68 CALL                             R10 2 1
       69 MOVE                             R11 R3
       70 LOADK                            R12 K32 [">> .FindReplaceAll-SearchBox-SearchBar"]
       71 DUPTABLE                         R13 K34 [{"ClipsDescendants"}]
       72 LOADB                            R14 1
       73 SETTABLEKS                       R14 R13 K33 ["ClipsDescendants"]
       75 NEWTABLE                         R14 0 2
       77 MOVE                             R15 R3
       78 LOADK                            R16 K35 [">> UIStroke"]
       79 DUPTABLE                         R17 K38 [{"Color", "Thickness"}]
       80 LOADK                            R18 K39 ["$SemanticColorActionPrimaryBrandFill"]
       81 SETTABLEKS                       R18 R17 K36 ["Color"]
       83 LOADK                            R18 K40 [1.5]
       84 SETTABLEKS                       R18 R17 K37 ["Thickness"]
       86 CALL                             R15 2 1
       87 MOVE                             R16 R3
       88 LOADK                            R17 K41 [">> TextBox"]
       89 DUPTABLE                         R18 K50 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
       90 GETIMPORT                        R19 K52 [Vector2.new]
       92 LOADK                            R20 K53 [0.5]
       93 LOADK                            R21 K53 [0.5]
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K42 ["AnchorPoint"]
       97 LOADN                            R19 1
       98 SETTABLEKS                       R19 R18 K14 ["BackgroundTransparency"]
      100 LOADN                            R19 0
      101 SETTABLEKS                       R19 R18 K24 ["BorderSizePixel"]
      103 LOADB                            R19 0
      104 SETTABLEKS                       R19 R18 K43 ["ClearTextOnFocus"]
      106 LOADB                            R19 1
      107 SETTABLEKS                       R19 R18 K33 ["ClipsDescendants"]
      109 GETTABLEKS                       R19 R1 K54 ["defaultFont"]
      111 SETTABLEKS                       R19 R18 K44 ["Font"]
      113 GETIMPORT                        R19 K57 [UDim2.fromScale]
      115 LOADK                            R20 K53 [0.5]
      116 LOADK                            R21 K53 [0.5]
      117 CALL                             R19 2 1
      118 SETTABLEKS                       R19 R18 K45 ["Position"]
      120 LOADK                            R19 K58 ["$SemanticColorContentMuted"]
      121 SETTABLEKS                       R19 R18 K46 ["TextColor3"]
      123 LOADK                            R19 K59 [""]
      124 SETTABLEKS                       R19 R18 K47 ["Text"]
      126 LOADN                            R20 12
      127 GETTABLEKS                       R21 R1 K60 ["defaultFontScale"]
      129 MUL                              R19 R20 R21
      130 SETTABLEKS                       R19 R18 K48 ["TextSize"]
      132 GETIMPORT                        R19 K63 [Enum.TextXAlignment.Left]
      134 SETTABLEKS                       R19 R18 K49 ["TextXAlignment"]
      136 CALL                             R16 2 -1
      137 SETLIST                          R14 R15 -1 [1]
      139 CALL                             R11 3 1
      140 MOVE                             R12 R3
      141 LOADK                            R13 K64 [">> .FindReplaceAll-SearchBar-Error"]
      142 DUPTABLE                         R14 K38 [{"Color", "Thickness"}]
      143 LOADK                            R15 K65 ["$ColorActionAlert"]
      144 SETTABLEKS                       R15 R14 K36 ["Color"]
      146 LOADK                            R15 K40 [1.5]
      147 SETTABLEKS                       R15 R14 K37 ["Thickness"]
      149 CALL                             R12 2 -1
      150 SETLIST                          R7 R8 -1 [1]
      152 CALL                             R4 3 -1
      153 RETURN                           R4 -1
