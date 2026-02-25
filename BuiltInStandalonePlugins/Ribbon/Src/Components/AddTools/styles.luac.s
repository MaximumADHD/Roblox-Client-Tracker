MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Role-AddTools"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #SearchBar > .Input"]
       26 DUPTABLE                         R9 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
       27 LOADK                            R10 K15 ["$SemanticColorComponentInputFill"]
       28 SETTABLEKS                       R10 R9 K12 ["BackgroundColor3"]
       30 LOADK                            R10 K16 ["$SemanticColorComponentInputFillTransparency"]
       31 SETTABLEKS                       R10 R9 K13 ["BackgroundTransparency"]
       33 NEWTABLE                         R10 0 0
       35 CALL                             R7 3 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K17 ["> .Component-TreeView >> .Component-ToolRow"]
       38 DUPTABLE                         R10 K20 [{"AutoButtonColor", "Text"}]
       39 LOADB                            R11 0
       40 SETTABLEKS                       R11 R10 K18 ["AutoButtonColor"]
       42 LOADK                            R11 K21 [""]
       43 SETTABLEKS                       R11 R10 K19 ["Text"]
       45 NEWTABLE                         R11 0 6
       47 MOVE                             R12 R2
       48 LOADK                            R13 K22 ["> #Icon"]
       49 DUPTABLE                         R14 K26 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
       50 LOADK                            R15 K27 ["$BorderNone"]
       51 SETTABLEKS                       R15 R14 K23 ["BorderSizePixel"]
       53 LOADK                            R15 K28 ["$Transparency100"]
       54 SETTABLEKS                       R15 R14 K13 ["BackgroundTransparency"]
       56 LOADN                            R15 1
       57 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
       59 LOADK                            R15 K29 ["$IconLarge"]
       60 SETTABLEKS                       R15 R14 K25 ["Size"]
       62 CALL                             R12 2 1
       63 MOVE                             R13 R2
       64 LOADK                            R14 K30 ["> #Text"]
       65 DUPTABLE                         R15 K32 [{"AutomaticSize"}]
       66 GETIMPORT                        R16 K35 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R16 R15 K31 ["AutomaticSize"]
       70 NEWTABLE                         R16 0 1
       72 MOVE                             R17 R2
       73 LOADK                            R18 K36 ["::UIFlexItem"]
       74 DUPTABLE                         R19 K40 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
       75 GETIMPORT                        R20 K43 [Enum.UIFlexMode.Custom]
       77 SETTABLEKS                       R20 R19 K37 ["FlexMode"]
       79 LOADN                            R20 1
       80 SETTABLEKS                       R20 R19 K38 ["GrowRatio"]
       82 LOADN                            R20 1
       83 SETTABLEKS                       R20 R19 K39 ["ShrinkRatio"]
       85 CALL                             R17 2 -1
       86 SETLIST                          R16 R17 -1 [1]
       88 CALL                             R13 3 1
       89 MOVE                             R14 R2
       90 LOADK                            R15 K44 ["> #Arrow > #Button"]
       91 DUPTABLE                         R16 K45 [{"Size", "BackgroundTransparency"}]
       92 LOADK                            R17 K46 ["$IconSmall"]
       93 SETTABLEKS                       R17 R16 K25 ["Size"]
       95 LOADN                            R17 1
       96 SETTABLEKS                       R17 R16 K13 ["BackgroundTransparency"]
       98 CALL                             R14 2 1
       99 MOVE                             R15 R2
      100 LOADK                            R16 K47 [">> TextLabel"]
      101 DUPTABLE                         R17 K52 [{"BackgroundTransparency", "Font", "Text", "TextXAlignment", "TextSize", "LayoutOrder", "TextColor3"}]
      102 LOADN                            R18 1
      103 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
      105 LOADK                            R18 K53 ["$FontWeight400"]
      106 SETTABLEKS                       R18 R17 K48 ["Font"]
      108 LOADK                            R18 K21 [""]
      109 SETTABLEKS                       R18 R17 K19 ["Text"]
      111 GETIMPORT                        R18 K55 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R18 R17 K49 ["TextXAlignment"]
      115 LOADK                            R18 K56 ["$FontSize25"]
      116 SETTABLEKS                       R18 R17 K50 ["TextSize"]
      118 LOADN                            R18 2
      119 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      121 LOADK                            R18 K57 ["$SemanticColorContentStandard"]
      122 SETTABLEKS                       R18 R17 K51 ["TextColor3"]
      124 NEWTABLE                         R18 0 2
      126 MOVE                             R19 R2
      127 LOADK                            R20 K58 ["#Title"]
      128 DUPTABLE                         R21 K59 [{"Font", "TextSize"}]
      129 LOADK                            R22 K60 ["$FontWeight600"]
      130 SETTABLEKS                       R22 R21 K48 ["Font"]
      132 LOADK                            R22 K61 ["$FontSize75"]
      133 SETTABLEKS                       R22 R21 K50 ["TextSize"]
      135 CALL                             R19 2 1
      136 MOVE                             R20 R2
      137 LOADK                            R21 K62 ["#Description"]
      138 DUPTABLE                         R22 K64 [{"TextTruncate"}]
      139 GETIMPORT                        R23 K66 [Enum.TextTruncate.AtEnd]
      141 SETTABLEKS                       R23 R22 K63 ["TextTruncate"]
      143 CALL                             R20 2 -1
      144 SETLIST                          R18 R19 -1 [1]
      146 CALL                             R15 3 1
      147 MOVE                             R16 R2
      148 LOADK                            R17 K67 [":hover"]
      149 DUPTABLE                         R18 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
      150 LOADK                            R19 K68 ["$SemanticColorStatesHover"]
      151 SETTABLEKS                       R19 R18 K12 ["BackgroundColor3"]
      153 LOADK                            R19 K69 ["$SemanticColorStatesHoverTransparency"]
      154 SETTABLEKS                       R19 R18 K13 ["BackgroundTransparency"]
      156 CALL                             R16 2 1
      157 MOVE                             R17 R2
      158 LOADK                            R18 K70 ["::UIPadding"]
      159 DUPTABLE                         R19 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      160 GETIMPORT                        R20 K78 [UDim.new]
      162 LOADN                            R21 0
      163 LOADN                            R22 0
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K71 ["PaddingLeft"]
      167 LOADK                            R20 K79 ["$GlobalSpace100"]
      168 SETTABLEKS                       R20 R19 K72 ["PaddingRight"]
      170 LOADK                            R20 K79 ["$GlobalSpace100"]
      171 SETTABLEKS                       R20 R19 K73 ["PaddingTop"]
      173 LOADK                            R20 K79 ["$GlobalSpace100"]
      174 SETTABLEKS                       R20 R19 K74 ["PaddingBottom"]
      176 CALL                             R17 2 -1
      177 SETLIST                          R11 R12 -1 [1]
      179 CALL                             R8 3 -1
      180 SETLIST                          R6 R7 -1 [1]
      182 CALL                             R3 3 -1
      183 RETURN                           R3 -1
