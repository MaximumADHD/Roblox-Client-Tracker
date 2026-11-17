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
       80 DUPTABLE                         R11 K39 [{["Color"] = "$SemanticColorComponentInputFill", ["Transparency"] = "$SemanticColorComponentInputFillTransparency", ["Thickness"] = 1.5}]
       81 CALL                             R9 2 1
       82 MOVE                             R10 R3
       83 LOADK                            R11 K40 ["::UICorner"]
       84 DUPTABLE                         R12 K42 [{"CornerRadius"}]
       85 GETIMPORT                        R13 K31 [UDim.new]
       87 LOADN                            R14 0
       88 GETTABLEKS                       R15 R2 K43 ["radiusSmall"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K41 ["CornerRadius"]
       93 CALL                             R10 2 1
       94 MOVE                             R11 R3
       95 LOADK                            R12 K44 [">> ScrollingFrame"]
       96 DUPTABLE                         R13 K56 [{["AnchorPoint"], ["AutomaticCanvasSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["CanvasSize"], ["Position"], ["ScrollBarImageColor3"] = "$SemanticColorActionSecondary", ["ScrollBarImageTransparency"] = "$SemanticColorActionSecondaryTransparency", ["ScrollingDirection"]}]
       97 GETIMPORT                        R14 K19 [Vector2.new]
       99 LOADK                            R15 K20 [0.5]
      100 LOADK                            R16 K20 [0.5]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K14 ["AnchorPoint"]
      104 GETIMPORT                        R14 K60 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R14 R13 K45 ["AutomaticCanvasSize"]
      108 GETIMPORT                        R14 K23 [UDim2.fromScale]
      110 LOADN                            R15 1
      111 LOADN                            R16 0
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K50 ["CanvasSize"]
      115 GETIMPORT                        R14 K23 [UDim2.fromScale]
      117 LOADK                            R15 K20 [0.5]
      118 LOADK                            R16 K20 [0.5]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K15 ["Position"]
      122 GETIMPORT                        R14 K61 [Enum.ScrollingDirection.Y]
      124 SETTABLEKS                       R14 R13 K55 ["ScrollingDirection"]
      126 CALL                             R11 2 1
      127 MOVE                             R12 R3
      128 LOADK                            R13 K62 [">> .FindReplaceAll-DropdownHeader"]
      129 DUPTABLE                         R14 K64 [{["BackgroundTransparency"] = 1, ["Size"]}]
      130 GETIMPORT                        R15 K65 [UDim2.new]
      132 LOADN                            R16 1
      133 LOADN                            R17 0
      134 LOADN                            R18 0
      135 LOADN                            R19 25
      136 CALL                             R15 4 1
      137 SETTABLEKS                       R15 R14 K63 ["Size"]
      139 CALL                             R12 2 1
      140 MOVE                             R13 R3
      141 LOADK                            R14 K66 [">> .FindReplaceAll-DropdownTitle"]
      142 DUPTABLE                         R15 K73 [{["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"] = "$SemanticColorContentMuted", ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      143 GETTABLEKS                       R16 R2 K74 ["defaultFont"]
      145 SETTABLEKS                       R16 R15 K67 ["Font"]
      147 LOADN                            R17 12
      148 GETTABLEKS                       R18 R2 K75 ["defaultFontScale"]
      150 MUL                              R16 R17 R18
      151 SETTABLEKS                       R16 R15 K70 ["TextSize"]
      153 GETIMPORT                        R16 K77 [Enum.TextXAlignment.Left]
      155 SETTABLEKS                       R16 R15 K71 ["TextXAlignment"]
      157 GETIMPORT                        R16 K79 [Enum.TextYAlignment.Top]
      159 SETTABLEKS                       R16 R15 K72 ["TextYAlignment"]
      161 CALL                             R13 2 1
      162 MOVE                             R14 R3
      163 LOADK                            R15 K80 [">> .FindReplaceAll-DropdownItem"]
      164 DUPTABLE                         R16 K85 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["Text"] = ""}]
      165 NEWTABLE                         R17 0 2
      167 MOVE                             R18 R3
      168 LOADK                            R19 K86 [">> TextLabel"]
      169 DUPTABLE                         R20 K87 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      170 GETIMPORT                        R21 K77 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R21 R20 K71 ["TextXAlignment"]
      174 CALL                             R18 2 1
      175 MOVE                             R19 R3
      176 LOADK                            R20 K40 ["::UICorner"]
      177 DUPTABLE                         R21 K42 [{"CornerRadius"}]
      178 GETIMPORT                        R22 K31 [UDim.new]
      180 LOADN                            R23 0
      181 GETTABLEKS                       R24 R2 K88 ["radiusMedium"]
      183 CALL                             R22 2 1
      184 SETTABLEKS                       R22 R21 K41 ["CornerRadius"]
      186 CALL                             R19 2 -1
      187 SETLIST                          R17 R18 -1 [1]
      189 CALL                             R14 3 -1
      190 SETLIST                          R7 R8 -1 [1]
      192 CALL                             R4 3 -1
      193 RETURN                           R4 -1
