MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R4 K12 ["createStyleRule"]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K13 [".FindReplaceAll-Dropdown"]
       29 DUPTABLE                         R6 K16 [{"AnchorPoint", "Position"}]
       30 GETIMPORT                        R7 K19 [Vector2.new]
       32 LOADK                            R8 K20 [0.5]
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K14 ["AnchorPoint"]
       37 GETIMPORT                        R7 K23 [UDim2.fromScale]
       39 LOADK                            R8 K20 [0.5]
       40 LOADN                            R9 0
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K15 ["Position"]
       44 NEWTABLE                         R7 0 7
       46 MOVE                             R8 R3
       47 LOADK                            R9 K24 ["::UIPadding"]
       48 DUPTABLE                         R10 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       49 GETIMPORT                        R11 K31 [UDim.new]
       51 LOADN                            R12 0
       52 LOADN                            R13 4
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K25 ["PaddingLeft"]
       56 GETIMPORT                        R11 K31 [UDim.new]
       58 LOADN                            R12 0
       59 LOADN                            R13 4
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K26 ["PaddingRight"]
       63 GETIMPORT                        R11 K31 [UDim.new]
       65 LOADN                            R12 0
       66 LOADN                            R13 8
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
       70 GETIMPORT                        R11 K31 [UDim.new]
       72 LOADN                            R12 0
       73 LOADN                            R13 8
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
       77 CALL                             R8 2 1
       78 MOVE                             R9 R3
       79 LOADK                            R10 K32 ["::UIStroke"]
       80 DUPTABLE                         R11 K36 [{"Color", "Transparency", "Thickness"}]
       81 LOADK                            R12 K37 ["$SemanticColorComponentInputFill"]
       82 SETTABLEKS                       R12 R11 K33 ["Color"]
       84 LOADK                            R12 K38 ["$SemanticColorComponentInputFillTransparency"]
       85 SETTABLEKS                       R12 R11 K34 ["Transparency"]
       87 LOADK                            R12 K39 [1.5]
       88 SETTABLEKS                       R12 R11 K35 ["Thickness"]
       90 CALL                             R9 2 1
       91 MOVE                             R10 R3
       92 LOADK                            R11 K40 ["::UICorner"]
       93 DUPTABLE                         R12 K42 [{"CornerRadius"}]
       94 GETIMPORT                        R13 K31 [UDim.new]
       96 LOADN                            R14 0
       97 GETTABLEKS                       R15 R2 K43 ["radiusSmall"]
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K41 ["CornerRadius"]
      102 CALL                             R10 2 1
      103 MOVE                             R11 R3
      104 LOADK                            R12 K44 [">> ScrollingFrame"]
      105 DUPTABLE                         R13 K52 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollBarImageColor3", "ScrollBarImageTransparency", "ScrollingDirection"}]
      106 GETIMPORT                        R14 K19 [Vector2.new]
      108 LOADK                            R15 K20 [0.5]
      109 LOADK                            R16 K20 [0.5]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K14 ["AnchorPoint"]
      113 GETIMPORT                        R14 K56 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R14 R13 K45 ["AutomaticCanvasSize"]
      117 LOADN                            R14 1
      118 SETTABLEKS                       R14 R13 K46 ["BackgroundTransparency"]
      120 LOADN                            R14 0
      121 SETTABLEKS                       R14 R13 K47 ["BorderSizePixel"]
      123 GETIMPORT                        R14 K23 [UDim2.fromScale]
      125 LOADN                            R15 1
      126 LOADN                            R16 0
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K48 ["CanvasSize"]
      130 GETIMPORT                        R14 K23 [UDim2.fromScale]
      132 LOADK                            R15 K20 [0.5]
      133 LOADK                            R16 K20 [0.5]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K15 ["Position"]
      137 LOADK                            R14 K57 ["$SemanticColorActionSecondary"]
      138 SETTABLEKS                       R14 R13 K49 ["ScrollBarImageColor3"]
      140 LOADK                            R14 K58 ["$SemanticColorActionSecondaryTransparency"]
      141 SETTABLEKS                       R14 R13 K50 ["ScrollBarImageTransparency"]
      143 GETIMPORT                        R14 K59 [Enum.ScrollingDirection.Y]
      145 SETTABLEKS                       R14 R13 K51 ["ScrollingDirection"]
      147 CALL                             R11 2 1
      148 MOVE                             R12 R3
      149 LOADK                            R13 K60 [">> .FindReplaceAll-DropdownHeader"]
      150 DUPTABLE                         R14 K62 [{"BackgroundTransparency", "Size"}]
      151 LOADN                            R15 1
      152 SETTABLEKS                       R15 R14 K46 ["BackgroundTransparency"]
      154 GETIMPORT                        R15 K63 [UDim2.new]
      156 LOADN                            R16 1
      157 LOADN                            R17 0
      158 LOADN                            R18 0
      159 LOADN                            R19 25
      160 CALL                             R15 4 1
      161 SETTABLEKS                       R15 R14 K61 ["Size"]
      163 CALL                             R12 2 1
      164 MOVE                             R13 R3
      165 LOADK                            R14 K64 [">> .FindReplaceAll-DropdownTitle"]
      166 DUPTABLE                         R15 K70 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      167 LOADN                            R16 1
      168 SETTABLEKS                       R16 R15 K46 ["BackgroundTransparency"]
      170 GETTABLEKS                       R16 R2 K71 ["defaultFont"]
      172 SETTABLEKS                       R16 R15 K65 ["Font"]
      174 LOADK                            R16 K72 ["$SemanticColorContentMuted"]
      175 SETTABLEKS                       R16 R15 K66 ["TextColor3"]
      177 LOADN                            R17 12
      178 GETTABLEKS                       R18 R2 K73 ["defaultFontScale"]
      180 MUL                              R16 R17 R18
      181 SETTABLEKS                       R16 R15 K67 ["TextSize"]
      183 GETIMPORT                        R16 K75 [Enum.TextXAlignment.Left]
      185 SETTABLEKS                       R16 R15 K68 ["TextXAlignment"]
      187 GETIMPORT                        R16 K77 [Enum.TextYAlignment.Top]
      189 SETTABLEKS                       R16 R15 K69 ["TextYAlignment"]
      191 CALL                             R13 2 1
      192 MOVE                             R14 R3
      193 LOADK                            R15 K78 [">> .FindReplaceAll-DropdownItem"]
      194 DUPTABLE                         R16 K81 [{"BackgroundColor3", "Text"}]
      195 LOADK                            R17 K82 ["$SemanticColorStatesHover"]
      196 SETTABLEKS                       R17 R16 K79 ["BackgroundColor3"]
      198 LOADK                            R17 K83 [""]
      199 SETTABLEKS                       R17 R16 K80 ["Text"]
      201 NEWTABLE                         R17 0 2
      203 MOVE                             R18 R3
      204 LOADK                            R19 K84 [">> TextLabel"]
      205 DUPTABLE                         R20 K85 [{"BackgroundTransparency", "TextXAlignment"}]
      206 LOADN                            R21 1
      207 SETTABLEKS                       R21 R20 K46 ["BackgroundTransparency"]
      209 GETIMPORT                        R21 K75 [Enum.TextXAlignment.Left]
      211 SETTABLEKS                       R21 R20 K68 ["TextXAlignment"]
      213 CALL                             R18 2 1
      214 MOVE                             R19 R3
      215 LOADK                            R20 K40 ["::UICorner"]
      216 DUPTABLE                         R21 K42 [{"CornerRadius"}]
      217 GETIMPORT                        R22 K31 [UDim.new]
      219 LOADN                            R23 0
      220 GETTABLEKS                       R24 R2 K86 ["radiusMedium"]
      222 CALL                             R22 2 1
      223 SETTABLEKS                       R22 R21 K41 ["CornerRadius"]
      225 CALL                             R19 2 -1
      226 SETLIST                          R17 R18 -1 [1]
      228 CALL                             R14 3 -1
      229 SETLIST                          R7 R8 -1 [1]
      231 CALL                             R4 3 -1
      232 RETURN                           R4 -1
