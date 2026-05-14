PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETIMPORT                        R2 K4 [UDim.new]
        4 LOADN                            R3 1
        5 GETTABLEKS                       R5 R0 K5 ["X"]
        7 MINUS                            R4 R5
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K6 ["SearchBarHeight"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ImportPage"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useBinding"]
        8 GETIMPORT                        R3 K5 [Vector2.new]
       10 CALL                             R3 0 -1
       11 CALL                             R2 -1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["new"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K6 ["createElement"]
       19 GETUPVAL                         R6 3
       20 NEWTABLE                         R7 0 0
       22 DUPTABLE                         R8 K9 [{"Header", "Contents"}]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K6 ["createElement"]
       26 GETUPVAL                         R10 3
       27 DUPTABLE                         R11 K13 [{"Layout", "Style", "Size"}]
       28 GETIMPORT                        R12 K17 [Enum.FillDirection.Horizontal]
       30 SETTABLEKS                       R12 R11 K10 ["Layout"]
       32 LOADK                            R12 K18 ["SubtleBox"]
       33 SETTABLEKS                       R12 R11 K11 ["Style"]
       35 GETIMPORT                        R12 K20 [UDim2.new]
       37 LOADN                            R13 1
       38 LOADN                            R14 0
       39 LOADN                            R15 0
       40 GETTABLEKS                       R16 R1 K21 ["HeaderHeight"]
       42 CALL                             R12 4 1
       43 SETTABLEKS                       R12 R11 K12 ["Size"]
       45 DUPTABLE                         R12 K24 [{"LeftSide", "SearchBar"}]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K6 ["createElement"]
       49 GETUPVAL                         R14 3
       50 NEWTABLE                         R15 8 0
       52 GETIMPORT                        R16 K27 [Enum.AutomaticSize.X]
       54 SETTABLEKS                       R16 R15 K25 ["AutomaticSize"]
       56 GETIMPORT                        R16 K17 [Enum.FillDirection.Horizontal]
       58 SETTABLEKS                       R16 R15 K10 ["Layout"]
       60 NAMECALL                         R16 R4 K28 ["getNextOrder"]
       62 CALL                             R16 1 1
       63 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
       65 GETIMPORT                        R16 K31 [UDim2.fromScale]
       67 LOADN                            R17 0
       68 LOADN                            R18 1
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K12 ["Size"]
       72 GETUPVAL                         R16 4
       73 GETTABLEKS                       R16 R16 K32 ["Change"]
       75 GETTABLEKS                       R16 R16 K33 ["AbsoluteSize"]
       77 NEWCLOSURE                       R17 P0
       78 CAPTURE                          VAL R3
       79 SETTABLE                         R17 R15 R16
       80 DUPTABLE                         R16 K38 [{"Padding", "GoBackButton", "Separator", "TitleLabel"}]
       81 GETUPVAL                         R17 1
       82 GETTABLEKS                       R17 R17 K6 ["createElement"]
       84 LOADK                            R18 K39 ["UIPadding"]
       85 DUPTABLE                         R19 K41 [{"PaddingRight"}]
       86 GETIMPORT                        R20 K43 [UDim.new]
       88 LOADN                            R21 0
       89 LOADN                            R22 4
       90 CALL                             R20 2 1
       91 SETTABLEKS                       R20 R19 K40 ["PaddingRight"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K34 ["Padding"]
       96 GETUPVAL                         R17 1
       97 GETTABLEKS                       R17 R17 K6 ["createElement"]
       99 GETUPVAL                         R18 3
      100 DUPTABLE                         R19 K44 [{"LayoutOrder", "Size"}]
      101 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      103 CALL                             R20 1 1
      104 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      106 GETTABLEKS                       R20 R1 K45 ["BackButton"]
      108 GETTABLEKS                       R20 R20 K12 ["Size"]
      110 SETTABLEKS                       R20 R19 K12 ["Size"]
      112 DUPTABLE                         R20 K47 [{"IconButton"}]
      113 GETUPVAL                         R21 1
      114 GETTABLEKS                       R21 R21 K6 ["createElement"]
      116 GETUPVAL                         R22 5
      117 DUPTABLE                         R23 K55 [{"BackgroundStyle", "IconColor", "LeftIcon", "IconScaleType", "IconSize", "Rotation", "Size", "OnClick"}]
      118 LOADK                            R24 K56 ["None"]
      119 SETTABLEKS                       R24 R23 K48 ["BackgroundStyle"]
      121 GETTABLEKS                       R24 R1 K57 ["ArrowColor"]
      123 SETTABLEKS                       R24 R23 K49 ["IconColor"]
      125 GETTABLEKS                       R24 R1 K58 ["ArrowImage"]
      127 SETTABLEKS                       R24 R23 K50 ["LeftIcon"]
      129 GETIMPORT                        R24 K61 [Enum.ScaleType.Stretch]
      131 SETTABLEKS                       R24 R23 K51 ["IconScaleType"]
      133 GETTABLEKS                       R24 R1 K45 ["BackButton"]
      135 GETTABLEKS                       R24 R24 K52 ["IconSize"]
      137 SETTABLEKS                       R24 R23 K52 ["IconSize"]
      139 LOADN                            R24 166
      140 SETTABLEKS                       R24 R23 K53 ["Rotation"]
      142 GETIMPORT                        R24 K31 [UDim2.fromScale]
      144 LOADN                            R25 1
      145 LOADN                            R26 1
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K12 ["Size"]
      149 GETTABLEKS                       R24 R0 K62 ["GoBack"]
      151 SETTABLEKS                       R24 R23 K54 ["OnClick"]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K46 ["IconButton"]
      156 CALL                             R17 3 1
      157 SETTABLEKS                       R17 R16 K35 ["GoBackButton"]
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K6 ["createElement"]
      162 GETUPVAL                         R18 6
      163 DUPTABLE                         R19 K64 [{"DominantAxis", "LayoutOrder", "Style"}]
      164 GETIMPORT                        R20 K66 [Enum.DominantAxis.Height]
      166 SETTABLEKS                       R20 R19 K63 ["DominantAxis"]
      168 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      170 CALL                             R20 1 1
      171 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      173 LOADK                            R20 K67 ["SelectScreenSeparator"]
      174 SETTABLEKS                       R20 R19 K11 ["Style"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K36 ["Separator"]
      179 GETUPVAL                         R17 1
      180 GETTABLEKS                       R17 R17 K6 ["createElement"]
      182 GETUPVAL                         R18 7
      183 DUPTABLE                         R19 K69 [{"AutomaticSize", "LayoutOrder", "Text"}]
      184 GETIMPORT                        R20 K71 [Enum.AutomaticSize.XY]
      186 SETTABLEKS                       R20 R19 K25 ["AutomaticSize"]
      188 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      190 CALL                             R20 1 1
      191 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      193 GETTABLEKS                       R20 R0 K72 ["Title"]
      195 SETTABLEKS                       R20 R19 K68 ["Text"]
      197 DUPTABLE                         R20 K73 [{"Padding"}]
      198 GETUPVAL                         R21 1
      199 GETTABLEKS                       R21 R21 K6 ["createElement"]
      201 LOADK                            R22 K39 ["UIPadding"]
      202 DUPTABLE                         R23 K75 [{"PaddingLeft"}]
      203 GETIMPORT                        R24 K43 [UDim.new]
      205 LOADN                            R25 0
      206 LOADN                            R26 4
      207 CALL                             R24 2 1
      208 SETTABLEKS                       R24 R23 K74 ["PaddingLeft"]
      210 CALL                             R21 2 1
      211 SETTABLEKS                       R21 R20 K34 ["Padding"]
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K37 ["TitleLabel"]
      216 CALL                             R13 3 1
      217 SETTABLEKS                       R13 R12 K22 ["LeftSide"]
      219 GETUPVAL                         R13 1
      220 GETTABLEKS                       R13 R13 K6 ["createElement"]
      222 GETUPVAL                         R14 8
      223 DUPTABLE                         R15 K77 [{"LayoutOrder", "Size", "Text", "OnTextChanged"}]
      224 NAMECALL                         R16 R4 K28 ["getNextOrder"]
      226 CALL                             R16 1 1
      227 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
      229 NEWCLOSURE                       R18 P1
      230 CAPTURE                          VAL R1
      231 NAMECALL                         R16 R2 K78 ["map"]
      233 CALL                             R16 2 1
      234 SETTABLEKS                       R16 R15 K12 ["Size"]
      236 GETTABLEKS                       R16 R0 K79 ["Search"]
      238 SETTABLEKS                       R16 R15 K68 ["Text"]
      240 GETTABLEKS                       R16 R0 K80 ["SetSearch"]
      242 SETTABLEKS                       R16 R15 K76 ["OnTextChanged"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R12 K23 ["SearchBar"]
      247 CALL                             R9 3 1
      248 SETTABLEKS                       R9 R8 K7 ["Header"]
      250 GETUPVAL                         R9 1
      251 GETTABLEKS                       R9 R9 K6 ["createElement"]
      253 GETUPVAL                         R10 3
      254 DUPTABLE                         R11 K82 [{"Position", "Size"}]
      255 GETIMPORT                        R12 K84 [UDim2.fromOffset]
      257 LOADN                            R13 0
      258 GETTABLEKS                       R14 R1 K21 ["HeaderHeight"]
      260 CALL                             R12 2 1
      261 SETTABLEKS                       R12 R11 K81 ["Position"]
      263 GETIMPORT                        R12 K20 [UDim2.new]
      265 LOADN                            R13 1
      266 LOADN                            R14 0
      267 LOADN                            R15 1
      268 GETTABLEKS                       R17 R1 K21 ["HeaderHeight"]
      270 MINUS                            R16 R17
      271 CALL                             R12 4 1
      272 SETTABLEKS                       R12 R11 K12 ["Size"]
      274 GETTABLEKS                       R12 R0 K85 ["children"]
      276 CALL                             R9 3 1
      277 SETTABLEKS                       R9 R8 K8 ["Contents"]
      279 CALL                             R5 3 -1
      280 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["IconButton"]
       41 GETTABLEKS                       R7 R5 K15 ["Pane"]
       43 GETTABLEKS                       R8 R5 K16 ["SearchBar"]
       45 GETTABLEKS                       R9 R5 K17 ["Separator"]
       47 GETTABLEKS                       R10 R5 K18 ["TextLabel"]
       49 GETTABLEKS                       R11 R1 K19 ["ContextServices"]
       51 GETTABLEKS                       R11 R11 K20 ["Stylizer"]
       53 GETTABLEKS                       R12 R1 K21 ["Util"]
       55 GETTABLEKS                       R12 R12 K22 ["LayoutOrderIterator"]
       57 DUPCLOSURE                       R13 K23 [PROTO_2]
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 RETURN                           R13 1
