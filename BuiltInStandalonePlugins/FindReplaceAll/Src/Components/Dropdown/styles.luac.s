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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["defineFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R1 K13 ["Styling"]
       34 GETTABLEKS                       R4 R5 K14 ["createStyleRule"]
       36 MOVE                             R5 R4
       37 LOADK                            R6 K15 [".FindReplaceAll-Dropdown"]
       38 DUPTABLE                         R7 K18 [{"AnchorPoint", "Position"}]
       39 GETIMPORT                        R8 K21 [Vector2.new]
       41 LOADK                            R9 K22 [0.5]
       42 LOADN                            R10 0
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K16 ["AnchorPoint"]
       46 GETIMPORT                        R8 K25 [UDim2.fromScale]
       48 LOADK                            R9 K22 [0.5]
       49 LOADN                            R10 0
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K17 ["Position"]
       53 NEWTABLE                         R8 0 7
       55 MOVE                             R9 R4
       56 LOADK                            R10 K26 ["::UIPadding"]
       57 DUPTABLE                         R11 K31 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       58 GETIMPORT                        R12 K33 [UDim.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 4
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K27 ["PaddingLeft"]
       65 GETIMPORT                        R12 K33 [UDim.new]
       67 LOADN                            R13 0
       68 LOADN                            R14 4
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K28 ["PaddingRight"]
       72 GETIMPORT                        R12 K33 [UDim.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 8
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K29 ["PaddingTop"]
       79 GETIMPORT                        R12 K33 [UDim.new]
       81 LOADN                            R13 0
       82 LOADN                            R14 8
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K30 ["PaddingBottom"]
       86 CALL                             R9 2 1
       87 MOVE                             R10 R4
       88 LOADK                            R11 K34 ["::UIStroke"]
       89 DUPTABLE                         R12 K38 [{"Color", "Transparency", "Thickness"}]
       90 LOADK                            R13 K39 ["$SemanticColorComponentInputFill"]
       91 SETTABLEKS                       R13 R12 K35 ["Color"]
       93 LOADK                            R13 K40 ["$SemanticColorComponentInputFillTransparency"]
       94 SETTABLEKS                       R13 R12 K36 ["Transparency"]
       96 LOADK                            R13 K41 [1.5]
       97 SETTABLEKS                       R13 R12 K37 ["Thickness"]
       99 CALL                             R10 2 1
      100 MOVE                             R11 R4
      101 LOADK                            R12 K42 ["::UICorner"]
      102 DUPTABLE                         R13 K44 [{"CornerRadius"}]
      103 GETIMPORT                        R14 K33 [UDim.new]
      105 LOADN                            R15 0
      106 GETTABLEKS                       R16 R2 K45 ["radiusSmall"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K43 ["CornerRadius"]
      111 CALL                             R11 2 1
      112 MOVE                             R12 R4
      113 LOADK                            R13 K46 [">> ScrollingFrame"]
      114 DUPTABLE                         R14 K54 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollBarImageColor3", "ScrollBarImageTransparency", "ScrollingDirection"}]
      115 GETIMPORT                        R15 K21 [Vector2.new]
      117 LOADK                            R16 K22 [0.5]
      118 LOADK                            R17 K22 [0.5]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K16 ["AnchorPoint"]
      122 GETIMPORT                        R15 K58 [Enum.AutomaticSize.Y]
      124 SETTABLEKS                       R15 R14 K47 ["AutomaticCanvasSize"]
      126 LOADN                            R15 1
      127 SETTABLEKS                       R15 R14 K48 ["BackgroundTransparency"]
      129 LOADN                            R15 0
      130 SETTABLEKS                       R15 R14 K49 ["BorderSizePixel"]
      132 GETIMPORT                        R15 K25 [UDim2.fromScale]
      134 LOADN                            R16 1
      135 LOADN                            R17 0
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K50 ["CanvasSize"]
      139 GETIMPORT                        R15 K25 [UDim2.fromScale]
      141 LOADK                            R16 K22 [0.5]
      142 LOADK                            R17 K22 [0.5]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K17 ["Position"]
      146 LOADK                            R15 K59 ["$SemanticColorActionSecondary"]
      147 SETTABLEKS                       R15 R14 K51 ["ScrollBarImageColor3"]
      149 LOADK                            R15 K60 ["$SemanticColorActionSecondaryTransparency"]
      150 SETTABLEKS                       R15 R14 K52 ["ScrollBarImageTransparency"]
      152 GETIMPORT                        R15 K61 [Enum.ScrollingDirection.Y]
      154 SETTABLEKS                       R15 R14 K53 ["ScrollingDirection"]
      156 CALL                             R12 2 1
      157 MOVE                             R13 R4
      158 LOADK                            R14 K62 [">> .FindReplaceAll-DropdownHeader"]
      159 DUPTABLE                         R15 K64 [{"BackgroundTransparency", "Size"}]
      160 LOADN                            R16 1
      161 SETTABLEKS                       R16 R15 K48 ["BackgroundTransparency"]
      163 GETIMPORT                        R16 K65 [UDim2.new]
      165 LOADN                            R17 1
      166 LOADN                            R18 0
      167 LOADN                            R19 0
      168 LOADN                            R20 25
      169 CALL                             R16 4 1
      170 SETTABLEKS                       R16 R15 K63 ["Size"]
      172 CALL                             R13 2 1
      173 MOVE                             R14 R4
      174 LOADK                            R15 K66 [">> .FindReplaceAll-DropdownTitle"]
      175 DUPTABLE                         R16 K72 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      176 LOADN                            R17 1
      177 SETTABLEKS                       R17 R16 K48 ["BackgroundTransparency"]
      179 GETTABLEKS                       R17 R2 K73 ["defaultFont"]
      181 SETTABLEKS                       R17 R16 K67 ["Font"]
      183 LOADK                            R17 K74 ["$SemanticColorContentMuted"]
      184 SETTABLEKS                       R17 R16 K68 ["TextColor3"]
      186 GETTABLEKS                       R18 R3 K75 ["getFFlagFindReplaceAllUseBuilderFont"]
      188 CALL                             R18 0 1
      189 JUMPIFNOT                        R18 ; [+5]
      190 LOADN                            R18 12
      191 GETTABLEKS                       R19 R2 K76 ["defaultFontScale"]
      193 MUL                              R17 R18 R19
      194 JUMP                             ; [+1]
      195 LOADK                            R17 K77 [17.598]
      196 SETTABLEKS                       R17 R16 K69 ["TextSize"]
      198 GETIMPORT                        R17 K79 [Enum.TextXAlignment.Left]
      200 SETTABLEKS                       R17 R16 K70 ["TextXAlignment"]
      202 GETIMPORT                        R17 K81 [Enum.TextYAlignment.Top]
      204 SETTABLEKS                       R17 R16 K71 ["TextYAlignment"]
      206 CALL                             R14 2 1
      207 MOVE                             R15 R4
      208 LOADK                            R16 K82 [">> .FindReplaceAll-DropdownItem"]
      209 DUPTABLE                         R17 K85 [{"BackgroundColor3", "Text"}]
      210 LOADK                            R18 K86 ["$SemanticColorStatesHover"]
      211 SETTABLEKS                       R18 R17 K83 ["BackgroundColor3"]
      213 LOADK                            R18 K87 [""]
      214 SETTABLEKS                       R18 R17 K84 ["Text"]
      216 NEWTABLE                         R18 0 2
      218 MOVE                             R19 R4
      219 LOADK                            R20 K88 [">> TextLabel"]
      220 DUPTABLE                         R21 K89 [{"BackgroundTransparency", "TextXAlignment"}]
      221 LOADN                            R22 1
      222 SETTABLEKS                       R22 R21 K48 ["BackgroundTransparency"]
      224 GETIMPORT                        R22 K79 [Enum.TextXAlignment.Left]
      226 SETTABLEKS                       R22 R21 K70 ["TextXAlignment"]
      228 CALL                             R19 2 1
      229 MOVE                             R20 R4
      230 LOADK                            R21 K42 ["::UICorner"]
      231 DUPTABLE                         R22 K44 [{"CornerRadius"}]
      232 GETIMPORT                        R23 K33 [UDim.new]
      234 LOADN                            R24 0
      235 GETTABLEKS                       R25 R2 K90 ["radiusMedium"]
      237 CALL                             R23 2 1
      238 SETTABLEKS                       R23 R22 K43 ["CornerRadius"]
      240 CALL                             R20 2 -1
      241 SETLIST                          R18 R19 -1 [1]
      243 CALL                             R15 3 -1
      244 SETLIST                          R8 R9 -1 [1]
      246 CALL                             R5 3 -1
      247 RETURN                           R5 -1
