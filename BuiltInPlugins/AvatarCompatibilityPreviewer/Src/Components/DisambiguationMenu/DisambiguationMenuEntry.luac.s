PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K2 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["useState"]
       12 LOADN                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["useRef"]
       17 LOADNIL                          R6
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K5 ["createElement"]
       22 GETUPVAL                         R7 3
       23 DUPTABLE                         R8 K10 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
       24 GETIMPORT                        R9 K13 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       28 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       30 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       32 GETIMPORT                        R9 K16 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R9 R8 K8 ["Layout"]
       36 GETTABLEKS                       R9 R2 K17 ["HorizontalSpacing"]
       38 SETTABLEKS                       R9 R8 K9 ["Spacing"]
       40 DUPTABLE                         R9 K21 [{"ItemIcon", "ItemNames", "Children"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R10 R11 K5 ["createElement"]
       44 GETUPVAL                         R11 3
       45 DUPTABLE                         R12 K24 [{"BackgroundColor3", "LayoutOrder", "Size"}]
       46 GETTABLEKS                       R13 R2 K25 ["IconBackground"]
       48 SETTABLEKS                       R13 R12 K22 ["BackgroundColor3"]
       50 NAMECALL                         R13 R1 K26 ["getNextOrder"]
       52 CALL                             R13 1 1
       53 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       55 GETTABLEKS                       R13 R2 K27 ["IconSize"]
       57 SETTABLEKS                       R13 R12 K23 ["Size"]
       59 DUPTABLE                         R13 K29 [{"ItemDataPreviewModel"}]
       60 GETUPVAL                         R15 2
       61 GETTABLEKS                       R14 R15 K5 ["createElement"]
       63 GETUPVAL                         R15 4
       64 DUPTABLE                         R16 K31 [{"Instance"}]
       65 GETTABLEKS                       R17 R0 K30 ["Instance"]
       67 SETTABLEKS                       R17 R16 K30 ["Instance"]
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K28 ["ItemDataPreviewModel"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K18 ["ItemIcon"]
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R10 R11 K5 ["createElement"]
       78 GETUPVAL                         R11 3
       79 DUPTABLE                         R12 K32 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "Size"}]
       80 GETIMPORT                        R13 K13 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
       84 NAMECALL                         R13 R1 K26 ["getNextOrder"]
       86 CALL                             R13 1 1
       87 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       89 GETIMPORT                        R13 K34 [Enum.FillDirection.Vertical]
       91 SETTABLEKS                       R13 R12 K8 ["Layout"]
       93 GETTABLEKS                       R13 R2 K35 ["TextSpacing"]
       95 SETTABLEKS                       R13 R12 K9 ["Spacing"]
       97 GETIMPORT                        R13 K37 [UDim2.new]
       99 LOADN                            R14 1
      100 GETTABLEKS                       R20 R2 K27 ["IconSize"]
      102 GETTABLEKS                       R19 R20 K38 ["X"]
      104 GETTABLEKS                       R18 R19 K39 ["Offset"]
      106 GETTABLEKS                       R19 R2 K17 ["HorizontalSpacing"]
      108 ADD                              R17 R18 R19
      109 ADD                              R16 R17 R3
      110 MINUS                            R15 R16
      111 LOADN                            R16 0
      112 LOADN                            R17 0
      113 CALL                             R13 4 1
      114 SETTABLEKS                       R13 R12 K23 ["Size"]
      116 DUPTABLE                         R13 K43 [{"ItemName", "Subtitle", "Warning"}]
      117 GETUPVAL                         R15 2
      118 GETTABLEKS                       R14 R15 K5 ["createElement"]
      120 GETUPVAL                         R15 5
      121 DUPTABLE                         R16 K47 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      122 GETIMPORT                        R17 K13 [Enum.AutomaticSize.Y]
      124 SETTABLEKS                       R17 R16 K6 ["AutomaticSize"]
      126 NAMECALL                         R17 R1 K26 ["getNextOrder"]
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      131 GETIMPORT                        R17 K49 [UDim2.fromScale]
      133 LOADN                            R18 1
      134 LOADN                            R19 0
      135 CALL                             R17 2 1
      136 SETTABLEKS                       R17 R16 K23 ["Size"]
      138 GETTABLEKS                       R17 R0 K50 ["Name"]
      140 SETTABLEKS                       R17 R16 K44 ["Text"]
      142 GETIMPORT                        R17 K52 [Enum.TextXAlignment.Left]
      144 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      146 GETIMPORT                        R17 K54 [Enum.TextTruncate.AtEnd]
      148 SETTABLEKS                       R17 R16 K46 ["TextTruncate"]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K40 ["ItemName"]
      153 GETTABLEKS                       R14 R0 K41 ["Subtitle"]
      155 JUMPIFNOT                        R14 ; [+37]
      156 GETUPVAL                         R15 2
      157 GETTABLEKS                       R14 R15 K5 ["createElement"]
      159 GETUPVAL                         R15 5
      160 DUPTABLE                         R16 K56 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      161 GETIMPORT                        R17 K13 [Enum.AutomaticSize.Y]
      163 SETTABLEKS                       R17 R16 K6 ["AutomaticSize"]
      165 NAMECALL                         R17 R1 K26 ["getNextOrder"]
      167 CALL                             R17 1 1
      168 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      170 LOADK                            R17 K57 ["SubText"]
      171 SETTABLEKS                       R17 R16 K55 ["Style"]
      173 GETIMPORT                        R17 K49 [UDim2.fromScale]
      175 LOADN                            R18 1
      176 LOADN                            R19 0
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K23 ["Size"]
      180 GETTABLEKS                       R17 R0 K41 ["Subtitle"]
      182 SETTABLEKS                       R17 R16 K44 ["Text"]
      184 GETIMPORT                        R17 K52 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      188 GETIMPORT                        R17 K54 [Enum.TextTruncate.AtEnd]
      190 SETTABLEKS                       R17 R16 K46 ["TextTruncate"]
      192 CALL                             R14 2 1
      193 SETTABLEKS                       R14 R13 K41 ["Subtitle"]
      195 GETTABLEKS                       R14 R0 K58 ["WarningText"]
      197 JUMPIFNOT                        R14 ; [+36]
      198 GETUPVAL                         R15 2
      199 GETTABLEKS                       R14 R15 K5 ["createElement"]
      201 GETUPVAL                         R15 5
      202 DUPTABLE                         R16 K60 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextWrapped"}]
      203 GETIMPORT                        R17 K13 [Enum.AutomaticSize.Y]
      205 SETTABLEKS                       R17 R16 K6 ["AutomaticSize"]
      207 NAMECALL                         R17 R1 K26 ["getNextOrder"]
      209 CALL                             R17 1 1
      210 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      212 LOADK                            R17 K42 ["Warning"]
      213 SETTABLEKS                       R17 R16 K55 ["Style"]
      215 GETIMPORT                        R17 K49 [UDim2.fromScale]
      217 LOADN                            R18 1
      218 LOADN                            R19 0
      219 CALL                             R17 2 1
      220 SETTABLEKS                       R17 R16 K23 ["Size"]
      222 GETTABLEKS                       R17 R0 K58 ["WarningText"]
      224 SETTABLEKS                       R17 R16 K44 ["Text"]
      226 GETIMPORT                        R17 K52 [Enum.TextXAlignment.Left]
      228 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      230 LOADB                            R17 1
      231 SETTABLEKS                       R17 R16 K59 ["TextWrapped"]
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K42 ["Warning"]
      236 CALL                             R10 3 1
      237 SETTABLEKS                       R10 R9 K19 ["ItemNames"]
      239 GETUPVAL                         R11 2
      240 GETTABLEKS                       R10 R11 K5 ["createElement"]
      242 GETUPVAL                         R11 3
      243 NEWTABLE                         R12 4 0
      245 GETIMPORT                        R13 K62 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
      249 NAMECALL                         R13 R1 K26 ["getNextOrder"]
      251 CALL                             R13 1 1
      252 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      254 SETTABLEKS                       R5 R12 K63 ["ref"]
      256 GETUPVAL                         R15 2
      257 GETTABLEKS                       R14 R15 K64 ["Change"]
      259 GETTABLEKS                       R13 R14 K65 ["AbsoluteSize"]
      261 NEWCLOSURE                       R14 P0
      262 CAPTURE                          VAL R4
      263 SETTABLE                         R14 R12 R13
      264 GETTABLEKS                       R13 R0 K66 ["children"]
      266 CALL                             R10 3 1
      267 SETTABLEKS                       R10 R9 K20 ["Children"]
      269 CALL                             R6 3 -1
      270 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["ItemDataPreview"]
       29 GETTABLEKS                       R4 R5 K12 ["ItemDataPreviewModel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Resources"]
       38 GETTABLEKS                       R5 R6 K14 ["Theme"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K15 ["UI"]
       43 GETTABLEKS                       R6 R5 K16 ["Pane"]
       45 GETTABLEKS                       R7 R5 K17 ["TextLabel"]
       47 GETTABLEKS                       R9 R1 K18 ["Util"]
       49 GETTABLEKS                       R8 R9 K19 ["LayoutOrderIterator"]
       51 GETTABLEKS                       R10 R1 K20 ["ContextServices"]
       53 GETTABLEKS                       R9 R10 K21 ["Stylizer"]
       55 DUPCLOSURE                       R10 K22 [PROTO_1]
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 RETURN                           R10 1
