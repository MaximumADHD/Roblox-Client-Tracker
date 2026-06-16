PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hideSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["setAssetTypeFilter"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 2
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R6 R6 K2 ["useState"]
       17 GETIMPORT                        R7 K4 [UDim2.new]
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 LOADN                            R11 0
       23 CALL                             R7 4 -1
       24 CALL                             R6 -1 2
       25 NEWTABLE                         R8 0 2
       27 DUPTABLE                         R9 K7 [{"Text", "OnClick"}]
       28 LOADK                            R12 K8 ["SearchOptions"]
       29 LOADK                            R13 K9 ["Cancel"]
       30 NAMECALL                         R10 R2 K10 ["getText"]
       32 CALL                             R10 3 1
       33 SETTABLEKS                       R10 R9 K5 ["Text"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R10 R9 K6 ["OnClick"]
       39 DUPTABLE                         R10 K12 [{"Text", "Tags", "OnClick"}]
       40 LOADK                            R13 K8 ["SearchOptions"]
       41 LOADK                            R14 K13 ["Search"]
       42 NAMECALL                         R11 R2 K10 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R10 K5 ["Text"]
       47 LOADK                            R11 K14 ["PrimaryBrand"]
       48 SETTABLEKS                       R11 R10 K11 ["Tags"]
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R11 R10 K6 ["OnClick"]
       54 SETLIST                          R8 R9 2 [1]
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R9 R9 K15 ["createElement"]
       59 GETUPVAL                         R10 5
       60 NEWTABLE                         R11 2 0
       62 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
       64 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R12 R12 K17 ["Tag"]
       69 LOADK                            R13 K18 ["SearchOptions Explorer X-Column"]
       70 SETTABLE                         R13 R11 R12
       71 DUPTABLE                         R12 K21 [{"Contents", "Toolbar"}]
       72 GETUPVAL                         R13 4
       73 GETTABLEKS                       R13 R13 K15 ["createElement"]
       75 GETUPVAL                         R14 5
       76 NEWTABLE                         R15 2 0
       78 NAMECALL                         R16 R1 K22 ["getNextOrder"]
       80 CALL                             R16 1 1
       81 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       83 GETUPVAL                         R16 4
       84 GETTABLEKS                       R16 R16 K17 ["Tag"]
       86 LOADK                            R17 K23 ["X-Top X-Column fill"]
       87 SETTABLE                         R17 R15 R16
       88 DUPTABLE                         R16 K29 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
       89 GETUPVAL                         R17 4
       90 GETTABLEKS                       R17 R17 K15 ["createElement"]
       92 GETUPVAL                         R18 6
       93 NEWTABLE                         R19 4 0
       95 NAMECALL                         R20 R1 K22 ["getNextOrder"]
       97 CALL                             R20 1 1
       98 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      100 LOADK                            R22 K8 ["SearchOptions"]
      101 LOADK                            R23 K30 ["Inventory"]
      102 NAMECALL                         R20 R2 K10 ["getText"]
      104 CALL                             R20 3 1
      105 SETTABLEKS                       R20 R19 K5 ["Text"]
      107 GETUPVAL                         R20 4
      108 GETTABLEKS                       R20 R20 K17 ["Tag"]
      110 LOADK                            R21 K31 ["X-FitY Left Bold X-Pad"]
      111 SETTABLE                         R21 R19 R20
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K24 ["SourceHeader"]
      115 GETUPVAL                         R17 4
      116 GETTABLEKS                       R17 R17 K15 ["createElement"]
      118 GETUPVAL                         R18 5
      119 NEWTABLE                         R19 2 0
      121 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      123 CALL                             R20 1 1
      124 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      126 GETUPVAL                         R20 4
      127 GETTABLEKS                       R20 R20 K17 ["Tag"]
      129 LOADK                            R21 K32 ["ScopeSelector FitYPlusDragX"]
      130 SETTABLE                         R21 R19 R20
      131 DUPTABLE                         R20 K33 [{"Contents"}]
      132 GETUPVAL                         R21 4
      133 GETTABLEKS                       R21 R21 K15 ["createElement"]
      135 GETUPVAL                         R22 7
      136 DUPTABLE                         R23 K34 [{"LayoutOrder"}]
      137 NAMECALL                         R24 R1 K22 ["getNextOrder"]
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K19 ["Contents"]
      145 CALL                             R17 3 1
      146 SETTABLEKS                       R17 R16 K25 ["ScopeSelector"]
      148 GETUPVAL                         R17 4
      149 GETTABLEKS                       R17 R17 K15 ["createElement"]
      151 GETUPVAL                         R18 8
      152 DUPTABLE                         R19 K34 [{"LayoutOrder"}]
      153 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      155 CALL                             R20 1 1
      156 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K26 ["Separator"]
      161 GETUPVAL                         R17 4
      162 GETTABLEKS                       R17 R17 K15 ["createElement"]
      164 GETUPVAL                         R18 6
      165 NEWTABLE                         R19 4 0
      167 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      169 CALL                             R20 1 1
      170 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      172 LOADK                            R22 K35 ["AssetProperty"]
      173 LOADK                            R23 K36 ["AssetType"]
      174 NAMECALL                         R20 R2 K10 ["getText"]
      176 CALL                             R20 3 1
      177 SETTABLEKS                       R20 R19 K5 ["Text"]
      179 GETUPVAL                         R20 4
      180 GETTABLEKS                       R20 R20 K17 ["Tag"]
      182 LOADK                            R21 K31 ["X-FitY Left Bold X-Pad"]
      183 SETTABLE                         R21 R19 R20
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K27 ["AssetTypeHeader"]
      187 GETUPVAL                         R17 4
      188 GETTABLEKS                       R17 R17 K15 ["createElement"]
      190 GETUPVAL                         R18 5
      191 NEWTABLE                         R19 2 0
      193 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      195 CALL                             R20 1 1
      196 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      198 GETUPVAL                         R20 4
      199 GETTABLEKS                       R20 R20 K17 ["Tag"]
      201 LOADK                            R21 K37 ["X-ColumnM X-Center am-padding-left-medium fill"]
      202 SETTABLE                         R21 R19 R20
      203 DUPTABLE                         R20 K39 [{"RadioButtonListContainer"}]
      204 GETUPVAL                         R21 4
      205 GETTABLEKS                       R21 R21 K15 ["createElement"]
      207 GETUPVAL                         R22 9
      208 NEWTABLE                         R23 4 0
      210 NAMECALL                         R24 R1 K22 ["getNextOrder"]
      212 CALL                             R24 1 1
      213 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      215 SETTABLEKS                       R6 R23 K40 ["CanvasSize"]
      217 GETUPVAL                         R24 4
      218 GETTABLEKS                       R24 R24 K17 ["Tag"]
      220 LOADK                            R25 K41 ["am-padding-bottom-small fill"]
      221 SETTABLE                         R25 R23 R24
      222 NEWTABLE                         R24 0 1
      224 GETUPVAL                         R25 4
      225 GETTABLEKS                       R25 R25 K15 ["createElement"]
      227 GETUPVAL                         R26 5
      228 NEWTABLE                         R27 2 0
      230 GETUPVAL                         R28 4
      231 GETTABLEKS                       R28 R28 K42 ["Change"]
      233 GETTABLEKS                       R28 R28 K43 ["AbsoluteSize"]
      235 NEWCLOSURE                       R29 P2
      236 CAPTURE                          VAL R7
      237 SETTABLE                         R29 R27 R28
      238 GETUPVAL                         R28 4
      239 GETTABLEKS                       R28 R28 K17 ["Tag"]
      241 LOADK                            R29 K44 ["X-Fit"]
      242 SETTABLE                         R29 R27 R28
      243 DUPTABLE                         R28 K46 [{"RadioButtonList"}]
      244 GETUPVAL                         R29 4
      245 GETTABLEKS                       R29 R29 K15 ["createElement"]
      247 GETUPVAL                         R30 10
      248 DUPTABLE                         R31 K51 [{"LayoutOrder", "Buttons", "CurrentSelectedKey", "OnClick", "FillDirection", "TextXAlignment"}]
      249 NAMECALL                         R32 R1 K22 ["getNextOrder"]
      251 CALL                             R32 1 1
      252 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      254 SETTABLEKS                       R5 R31 K47 ["Buttons"]
      256 SETTABLEKS                       R4 R31 K48 ["CurrentSelectedKey"]
      258 NEWCLOSURE                       R32 P3
      259 CAPTURE                          VAL R3
      260 SETTABLEKS                       R32 R31 K6 ["OnClick"]
      262 GETIMPORT                        R32 K54 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R32 R31 K49 ["FillDirection"]
      266 GETIMPORT                        R32 K56 [Enum.TextXAlignment.Left]
      268 SETTABLEKS                       R32 R31 K50 ["TextXAlignment"]
      270 CALL                             R29 2 1
      271 SETTABLEKS                       R29 R28 K45 ["RadioButtonList"]
      273 CALL                             R25 3 -1
      274 SETLIST                          R24 R25 -1 [1]
      276 CALL                             R21 3 1
      277 SETTABLEKS                       R21 R20 K38 ["RadioButtonListContainer"]
      279 CALL                             R17 3 1
      280 SETTABLEKS                       R17 R16 K28 ["AssetTypes"]
      282 CALL                             R13 3 1
      283 SETTABLEKS                       R13 R12 K19 ["Contents"]
      285 GETUPVAL                         R13 4
      286 GETTABLEKS                       R13 R13 K15 ["createElement"]
      288 GETUPVAL                         R14 11
      289 DUPTABLE                         R15 K57 [{"LayoutOrder", "Buttons"}]
      290 NAMECALL                         R16 R1 K22 ["getNextOrder"]
      292 CALL                             R16 1 1
      293 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      295 SETTABLEKS                       R8 R15 K47 ["Buttons"]
      297 CALL                             R13 2 1
      298 SETTABLEKS                       R13 R12 K20 ["Toolbar"]
      300 CALL                             R9 3 -1
      301 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["ScrollingFrame"]
       31 GETTABLEKS                       R8 R5 K14 ["RadioButtonList"]
       33 GETTABLEKS                       R9 R5 K15 ["Separator"]
       35 GETTABLEKS                       R10 R5 K16 ["TextLabel"]
       37 GETIMPORT                        R11 K5 [require]
       39 GETTABLEKS                       R12 R0 K17 ["Src"]
       41 GETTABLEKS                       R12 R12 K18 ["Components"]
       43 GETTABLEKS                       R12 R12 K19 ["Shared"]
       45 GETTABLEKS                       R12 R12 K20 ["Toolbar"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R12 K5 [require]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R13 R13 K21 ["ScopeSelector"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Src"]
       59 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       61 GETTABLEKS                       R14 R14 K23 ["SearchController"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K17 ["Src"]
       68 GETTABLEKS                       R15 R15 K24 ["Hooks"]
       70 GETTABLEKS                       R15 R15 K25 ["useSearchFilters"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R2 K26 ["Util"]
       75 GETTABLEKS                       R15 R15 K27 ["LayoutOrderIterator"]
       77 DUPCLOSURE                       R16 K28 [PROTO_4]
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R11
       90 RETURN                           R16 1
