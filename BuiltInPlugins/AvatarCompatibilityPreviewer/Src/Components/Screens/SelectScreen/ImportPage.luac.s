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
       27 DUPTABLE                         R11 K14 [{["Layout"], ["Style"] = "SubtleBox", ["Size"]}]
       28 GETIMPORT                        R12 K18 [Enum.FillDirection.Horizontal]
       30 SETTABLEKS                       R12 R11 K10 ["Layout"]
       32 GETIMPORT                        R12 K20 [UDim2.new]
       34 LOADN                            R13 1
       35 LOADN                            R14 0
       36 LOADN                            R15 0
       37 GETTABLEKS                       R16 R1 K21 ["HeaderHeight"]
       39 CALL                             R12 4 1
       40 SETTABLEKS                       R12 R11 K13 ["Size"]
       42 DUPTABLE                         R12 K24 [{"LeftSide", "SearchBar"}]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K6 ["createElement"]
       46 GETUPVAL                         R14 3
       47 NEWTABLE                         R15 8 0
       49 GETIMPORT                        R16 K27 [Enum.AutomaticSize.X]
       51 SETTABLEKS                       R16 R15 K25 ["AutomaticSize"]
       53 GETIMPORT                        R16 K18 [Enum.FillDirection.Horizontal]
       55 SETTABLEKS                       R16 R15 K10 ["Layout"]
       57 NAMECALL                         R16 R4 K28 ["getNextOrder"]
       59 CALL                             R16 1 1
       60 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
       62 GETIMPORT                        R16 K31 [UDim2.fromScale]
       64 LOADN                            R17 0
       65 LOADN                            R18 1
       66 CALL                             R16 2 1
       67 SETTABLEKS                       R16 R15 K13 ["Size"]
       69 GETUPVAL                         R16 4
       70 GETTABLEKS                       R16 R16 K32 ["Change"]
       72 GETTABLEKS                       R16 R16 K33 ["AbsoluteSize"]
       74 NEWCLOSURE                       R17 P0
       75 CAPTURE                          VAL R3
       76 SETTABLE                         R17 R15 R16
       77 DUPTABLE                         R16 K38 [{"Padding", "GoBackButton", "Separator", "TitleLabel"}]
       78 GETUPVAL                         R17 1
       79 GETTABLEKS                       R17 R17 K6 ["createElement"]
       81 LOADK                            R18 K39 ["UIPadding"]
       82 DUPTABLE                         R19 K41 [{"PaddingRight"}]
       83 GETIMPORT                        R20 K43 [UDim.new]
       85 LOADN                            R21 0
       86 LOADN                            R22 4
       87 CALL                             R20 2 1
       88 SETTABLEKS                       R20 R19 K40 ["PaddingRight"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K34 ["Padding"]
       93 GETUPVAL                         R17 1
       94 GETTABLEKS                       R17 R17 K6 ["createElement"]
       96 GETUPVAL                         R18 3
       97 DUPTABLE                         R19 K44 [{"LayoutOrder", "Size"}]
       98 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      100 CALL                             R20 1 1
      101 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      103 GETTABLEKS                       R20 R1 K45 ["BackButton"]
      105 GETTABLEKS                       R20 R20 K13 ["Size"]
      107 SETTABLEKS                       R20 R19 K13 ["Size"]
      109 DUPTABLE                         R20 K47 [{"IconButton"}]
      110 GETUPVAL                         R21 1
      111 GETTABLEKS                       R21 R21 K6 ["createElement"]
      113 GETUPVAL                         R22 5
      114 DUPTABLE                         R23 K57 [{["BackgroundStyle"] = "None", ["IconColor"], ["LeftIcon"], ["IconScaleType"], ["IconSize"], ["Rotation"] = -90, ["Size"], ["OnClick"]}]
      115 GETTABLEKS                       R24 R1 K58 ["ArrowColor"]
      117 SETTABLEKS                       R24 R23 K50 ["IconColor"]
      119 GETTABLEKS                       R24 R1 K59 ["ArrowImage"]
      121 SETTABLEKS                       R24 R23 K51 ["LeftIcon"]
      123 GETIMPORT                        R24 K62 [Enum.ScaleType.Stretch]
      125 SETTABLEKS                       R24 R23 K52 ["IconScaleType"]
      127 GETTABLEKS                       R24 R1 K45 ["BackButton"]
      129 GETTABLEKS                       R24 R24 K53 ["IconSize"]
      131 SETTABLEKS                       R24 R23 K53 ["IconSize"]
      133 GETIMPORT                        R24 K31 [UDim2.fromScale]
      135 LOADN                            R25 1
      136 LOADN                            R26 1
      137 CALL                             R24 2 1
      138 SETTABLEKS                       R24 R23 K13 ["Size"]
      140 GETTABLEKS                       R24 R0 K63 ["GoBack"]
      142 SETTABLEKS                       R24 R23 K56 ["OnClick"]
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K46 ["IconButton"]
      147 CALL                             R17 3 1
      148 SETTABLEKS                       R17 R16 K35 ["GoBackButton"]
      150 GETUPVAL                         R17 1
      151 GETTABLEKS                       R17 R17 K6 ["createElement"]
      153 GETUPVAL                         R18 6
      154 DUPTABLE                         R19 K66 [{["DominantAxis"], ["LayoutOrder"], ["Style"] = "SelectScreenSeparator"}]
      155 GETIMPORT                        R20 K68 [Enum.DominantAxis.Height]
      157 SETTABLEKS                       R20 R19 K64 ["DominantAxis"]
      159 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      161 CALL                             R20 1 1
      162 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K36 ["Separator"]
      167 GETUPVAL                         R17 1
      168 GETTABLEKS                       R17 R17 K6 ["createElement"]
      170 GETUPVAL                         R18 7
      171 DUPTABLE                         R19 K70 [{"AutomaticSize", "LayoutOrder", "Text"}]
      172 GETIMPORT                        R20 K72 [Enum.AutomaticSize.XY]
      174 SETTABLEKS                       R20 R19 K25 ["AutomaticSize"]
      176 NAMECALL                         R20 R4 K28 ["getNextOrder"]
      178 CALL                             R20 1 1
      179 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      181 GETTABLEKS                       R20 R0 K73 ["Title"]
      183 SETTABLEKS                       R20 R19 K69 ["Text"]
      185 DUPTABLE                         R20 K74 [{"Padding"}]
      186 GETUPVAL                         R21 1
      187 GETTABLEKS                       R21 R21 K6 ["createElement"]
      189 LOADK                            R22 K39 ["UIPadding"]
      190 DUPTABLE                         R23 K76 [{"PaddingLeft"}]
      191 GETIMPORT                        R24 K43 [UDim.new]
      193 LOADN                            R25 0
      194 LOADN                            R26 4
      195 CALL                             R24 2 1
      196 SETTABLEKS                       R24 R23 K75 ["PaddingLeft"]
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K34 ["Padding"]
      201 CALL                             R17 3 1
      202 SETTABLEKS                       R17 R16 K37 ["TitleLabel"]
      204 CALL                             R13 3 1
      205 SETTABLEKS                       R13 R12 K22 ["LeftSide"]
      207 GETUPVAL                         R13 1
      208 GETTABLEKS                       R13 R13 K6 ["createElement"]
      210 GETUPVAL                         R14 8
      211 DUPTABLE                         R15 K78 [{"LayoutOrder", "Size", "Text", "OnTextChanged"}]
      212 NAMECALL                         R16 R4 K28 ["getNextOrder"]
      214 CALL                             R16 1 1
      215 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
      217 NEWCLOSURE                       R18 P1
      218 CAPTURE                          VAL R1
      219 NAMECALL                         R16 R2 K79 ["map"]
      221 CALL                             R16 2 1
      222 SETTABLEKS                       R16 R15 K13 ["Size"]
      224 GETTABLEKS                       R16 R0 K80 ["Search"]
      226 SETTABLEKS                       R16 R15 K69 ["Text"]
      228 GETTABLEKS                       R16 R0 K81 ["SetSearch"]
      230 SETTABLEKS                       R16 R15 K77 ["OnTextChanged"]
      232 CALL                             R13 2 1
      233 SETTABLEKS                       R13 R12 K23 ["SearchBar"]
      235 CALL                             R9 3 1
      236 SETTABLEKS                       R9 R8 K7 ["Header"]
      238 GETUPVAL                         R9 1
      239 GETTABLEKS                       R9 R9 K6 ["createElement"]
      241 GETUPVAL                         R10 3
      242 DUPTABLE                         R11 K83 [{"Position", "Size"}]
      243 GETIMPORT                        R12 K85 [UDim2.fromOffset]
      245 LOADN                            R13 0
      246 GETTABLEKS                       R14 R1 K21 ["HeaderHeight"]
      248 CALL                             R12 2 1
      249 SETTABLEKS                       R12 R11 K82 ["Position"]
      251 GETIMPORT                        R12 K20 [UDim2.new]
      253 LOADN                            R13 1
      254 LOADN                            R14 0
      255 LOADN                            R15 1
      256 GETTABLEKS                       R17 R1 K21 ["HeaderHeight"]
      258 MINUS                            R16 R17
      259 CALL                             R12 4 1
      260 SETTABLEKS                       R12 R11 K13 ["Size"]
      262 GETTABLEKS                       R12 R0 K86 ["children"]
      264 CALL                             R9 3 1
      265 SETTABLEKS                       R9 R8 K8 ["Contents"]
      267 CALL                             R5 3 -1
      268 RETURN                           R5 -1

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
