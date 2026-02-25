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
       37 LOADK                            R6 K15 [".FindReplaceAll-SearchBox"]
       38 DUPTABLE                         R7 K17 [{"BackgroundTransparency"}]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K16 ["BackgroundTransparency"]
       42 NEWTABLE                         R8 0 5
       44 MOVE                             R9 R4
       45 LOADK                            R10 K18 ["::UIPadding"]
       46 DUPTABLE                         R11 K20 [{"PaddingBottom"}]
       47 GETIMPORT                        R12 K23 [UDim.new]
       49 LOADN                            R13 0
       50 GETTABLEKS                       R14 R1 K24 ["paddingXSmall"]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K19 ["PaddingBottom"]
       55 CALL                             R9 2 1
       56 MOVE                             R10 R4
       57 LOADK                            R11 K25 [">> ImageButton"]
       58 DUPTABLE                         R12 K28 [{"BorderSizePixel", "BackgroundColor3"}]
       59 LOADN                            R13 1
       60 SETTABLEKS                       R13 R12 K26 ["BorderSizePixel"]
       62 LOADK                            R13 K29 ["$SemanticColorSurfaceOutline"]
       63 SETTABLEKS                       R13 R12 K27 ["BackgroundColor3"]
       65 CALL                             R10 2 1
       66 MOVE                             R11 R4
       67 LOADK                            R12 K30 [">> .FindReplaceAll-SearchBox-Corner ::UICorner"]
       68 DUPTABLE                         R13 K32 [{"CornerRadius"}]
       69 GETIMPORT                        R14 K23 [UDim.new]
       71 LOADN                            R15 0
       72 GETTABLEKS                       R16 R1 K33 ["radiusSmall"]
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K31 ["CornerRadius"]
       77 CALL                             R11 2 1
       78 MOVE                             R12 R4
       79 LOADK                            R13 K34 [">> .FindReplaceAll-SearchBox-SearchBar"]
       80 DUPTABLE                         R14 K36 [{"ClipsDescendants"}]
       81 LOADB                            R15 1
       82 SETTABLEKS                       R15 R14 K35 ["ClipsDescendants"]
       84 NEWTABLE                         R15 0 2
       86 MOVE                             R16 R4
       87 LOADK                            R17 K37 [">> UIStroke"]
       88 DUPTABLE                         R18 K40 [{"Color", "Thickness"}]
       89 LOADK                            R19 K41 ["$SemanticColorActionPrimaryBrandFill"]
       90 SETTABLEKS                       R19 R18 K38 ["Color"]
       92 LOADK                            R19 K42 [1.5]
       93 SETTABLEKS                       R19 R18 K39 ["Thickness"]
       95 CALL                             R16 2 1
       96 MOVE                             R17 R4
       97 LOADK                            R18 K43 [">> TextBox"]
       98 DUPTABLE                         R19 K52 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
       99 GETIMPORT                        R20 K54 [Vector2.new]
      101 LOADK                            R21 K55 [0.5]
      102 LOADK                            R22 K55 [0.5]
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K44 ["AnchorPoint"]
      106 LOADN                            R20 1
      107 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      109 LOADN                            R20 0
      110 SETTABLEKS                       R20 R19 K26 ["BorderSizePixel"]
      112 LOADB                            R20 0
      113 SETTABLEKS                       R20 R19 K45 ["ClearTextOnFocus"]
      115 LOADB                            R20 1
      116 SETTABLEKS                       R20 R19 K35 ["ClipsDescendants"]
      118 GETTABLEKS                       R20 R1 K56 ["defaultFont"]
      120 SETTABLEKS                       R20 R19 K46 ["Font"]
      122 GETIMPORT                        R20 K59 [UDim2.fromScale]
      124 LOADK                            R21 K55 [0.5]
      125 LOADK                            R22 K55 [0.5]
      126 CALL                             R20 2 1
      127 SETTABLEKS                       R20 R19 K47 ["Position"]
      129 LOADK                            R20 K60 ["$SemanticColorContentMuted"]
      130 SETTABLEKS                       R20 R19 K48 ["TextColor3"]
      132 LOADK                            R20 K61 [""]
      133 SETTABLEKS                       R20 R19 K49 ["Text"]
      135 GETTABLEKS                       R21 R3 K62 ["getFFlagFindReplaceAllUseBuilderFont"]
      137 CALL                             R21 0 1
      138 JUMPIFNOT                        R21 ; [+5]
      139 LOADN                            R21 12
      140 GETTABLEKS                       R22 R1 K63 ["defaultFontScale"]
      142 MUL                              R20 R21 R22
      143 JUMP                             ; [+1]
      144 LOADK                            R20 K64 [17.598]
      145 SETTABLEKS                       R20 R19 K50 ["TextSize"]
      147 GETIMPORT                        R20 K67 [Enum.TextXAlignment.Left]
      149 SETTABLEKS                       R20 R19 K51 ["TextXAlignment"]
      151 CALL                             R17 2 -1
      152 SETLIST                          R15 R16 -1 [1]
      154 CALL                             R12 3 1
      155 MOVE                             R13 R4
      156 LOADK                            R14 K68 [">> .FindReplaceAll-SearchBar-Error"]
      157 DUPTABLE                         R15 K40 [{"Color", "Thickness"}]
      158 LOADK                            R16 K69 ["$ColorActionAlert"]
      159 SETTABLEKS                       R16 R15 K38 ["Color"]
      161 LOADK                            R16 K42 [1.5]
      162 SETTABLEKS                       R16 R15 K39 ["Thickness"]
      164 CALL                             R13 2 -1
      165 SETLIST                          R8 R9 -1 [1]
      167 CALL                             R5 3 -1
      168 RETURN                           R5 -1
