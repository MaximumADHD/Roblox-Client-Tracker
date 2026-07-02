PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Tooltip"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["RadioGroup"]
       12 GETTABLEKS                       R4 R4 K3 ["Item"]
       14 DUPTABLE                         R5 K9 [{"LayoutOrder", "value", "label", "isDisabled", "size"}]
       15 JUMPIF                           R2 ; [+2]
       16 MOVE                             R6 R1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       21 GETTABLEKS                       R6 R0 K10 ["Key"]
       23 SETTABLEKS                       R6 R5 K5 ["value"]
       25 GETTABLEKS                       R6 R0 K11 ["Text"]
       27 SETTABLEKS                       R6 R5 K6 ["label"]
       29 GETTABLEKS                       R6 R0 K12 ["Disabled"]
       31 SETTABLEKS                       R6 R5 K7 ["isDisabled"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K13 ["Enums"]
       36 GETTABLEKS                       R6 R6 K14 ["InputSize"]
       38 GETTABLEKS                       R6 R6 K15 ["XSmall"]
       40 SETTABLEKS                       R6 R5 K8 ["size"]
       42 CALL                             R3 2 1
       43 JUMPIFNOT                        R2 ; [+25]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K1 ["createElement"]
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K0 ["Tooltip"]
       50 DUPTABLE                         R6 K18 [{"LayoutOrder", "title", "side"}]
       51 SETTABLEKS                       R1 R6 K4 ["LayoutOrder"]
       53 GETTABLEKS                       R7 R0 K0 ["Tooltip"]
       55 SETTABLEKS                       R7 R6 K16 ["title"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K13 ["Enums"]
       60 GETTABLEKS                       R7 R7 K19 ["PopoverSide"]
       62 GETTABLEKS                       R7 R7 K20 ["Bottom"]
       64 SETTABLEKS                       R7 R6 K17 ["side"]
       66 MOVE                             R7 R3
       67 CALL                             R4 3 1
       68 RETURN                           R4 1
       69 MOVE                             R4 R3
       70 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setAssetTypeFilter"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 2
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R7 0 1
       20 MOVE                             R8 R4
       21 SETLIST                          R7 R8 1 [1]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K2 ["createElement"]
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K3 ["View"]
       30 DUPTABLE                         R8 K7 [{["LayoutOrder"], ["tag"] = "col fill gap-xsmall size-full-0 padding-xsmall"}]
       31 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       33 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       35 DUPTABLE                         R9 K10 [{"Contents", "Buttons"}]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K2 ["createElement"]
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K3 ["View"]
       42 DUPTABLE                         R12 K13 [{["LayoutOrder"] = 1, ["tag"] = "col fill gap-small size-full-0"}]
       43 DUPTABLE                         R13 K19 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R14 R14 K2 ["createElement"]
       47 GETUPVAL                         R15 5
       48 GETTABLEKS                       R15 R15 K20 ["Text"]
       50 DUPTABLE                         R16 K22 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-small"}]
       51 LOADK                            R19 K23 ["SearchOptions"]
       52 LOADK                            R20 K24 ["Inventory"]
       53 NAMECALL                         R17 R1 K25 ["getText"]
       55 CALL                             R17 3 1
       56 SETTABLEKS                       R17 R16 K20 ["Text"]
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K14 ["SourceHeader"]
       61 GETUPVAL                         R14 3
       62 GETTABLEKS                       R14 R14 K2 ["createElement"]
       64 GETUPVAL                         R15 6
       65 DUPTABLE                         R16 K30 [{["LayoutOrder"] = 2, ["ShowTitle"] = True, ["FillWidth"] = True}]
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K15 ["ScopeSelector"]
       69 GETUPVAL                         R14 3
       70 GETTABLEKS                       R14 R14 K2 ["createElement"]
       72 GETUPVAL                         R15 5
       73 GETTABLEKS                       R15 R15 K31 ["Divider"]
       75 DUPTABLE                         R16 K34 [{["LayoutOrder"] = 3, ["orientation"]}]
       76 GETUPVAL                         R17 5
       77 GETTABLEKS                       R17 R17 K35 ["Enums"]
       79 GETTABLEKS                       R17 R17 K36 ["DividerOrientation"]
       81 GETTABLEKS                       R17 R17 K37 ["Horizontal"]
       83 SETTABLEKS                       R17 R16 K33 ["orientation"]
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K16 ["Separator"]
       88 GETUPVAL                         R14 3
       89 GETTABLEKS                       R14 R14 K2 ["createElement"]
       91 GETUPVAL                         R15 5
       92 GETTABLEKS                       R15 R15 K20 ["Text"]
       94 DUPTABLE                         R16 K39 [{["LayoutOrder"] = 4, ["Text"], ["tag"] = "auto-xy text-title-small"}]
       95 LOADK                            R19 K40 ["AssetProperty"]
       96 LOADK                            R20 K41 ["AssetType"]
       97 NAMECALL                         R17 R1 K25 ["getText"]
       99 CALL                             R17 3 1
      100 SETTABLEKS                       R17 R16 K20 ["Text"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K17 ["AssetTypeHeader"]
      105 GETUPVAL                         R14 3
      106 GETTABLEKS                       R14 R14 K2 ["createElement"]
      108 GETUPVAL                         R15 5
      109 GETTABLEKS                       R15 R15 K42 ["ScrollView"]
      111 DUPTABLE                         R16 K47 [{["LayoutOrder"] = 5, ["tag"] = "fill size-full-0", ["layout"], ["scroll"]}]
      112 DUPTABLE                         R17 K49 [{"FillDirection"}]
      113 GETIMPORT                        R18 K52 [Enum.FillDirection.Vertical]
      115 SETTABLEKS                       R18 R17 K48 ["FillDirection"]
      117 SETTABLEKS                       R17 R16 K45 ["layout"]
      119 DUPTABLE                         R17 K56 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      120 GETIMPORT                        R18 K59 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R18 R17 K53 ["AutomaticCanvasSize"]
      124 GETIMPORT                        R18 K62 [UDim2.fromOffset]
      126 LOADN                            R19 0
      127 LOADN                            R20 0
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K54 ["CanvasSize"]
      131 GETIMPORT                        R18 K63 [Enum.ScrollingDirection.Y]
      133 SETTABLEKS                       R18 R17 K55 ["ScrollingDirection"]
      135 SETTABLEKS                       R17 R16 K46 ["scroll"]
      137 GETUPVAL                         R17 3
      138 GETTABLEKS                       R17 R17 K2 ["createElement"]
      140 GETUPVAL                         R18 5
      141 GETTABLEKS                       R18 R18 K64 ["RadioGroup"]
      143 GETTABLEKS                       R18 R18 K65 ["Root"]
      145 DUPTABLE                         R19 K68 [{"value", "onValueChanged"}]
      146 SETTABLEKS                       R3 R19 K66 ["value"]
      148 NEWCLOSURE                       R20 P1
      149 CAPTURE                          VAL R2
      150 SETTABLEKS                       R20 R19 K67 ["onValueChanged"]
      152 MOVE                             R20 R5
      153 CALL                             R17 3 -1
      154 CALL                             R14 -1 1
      155 SETTABLEKS                       R14 R13 K18 ["AssetTypes"]
      157 CALL                             R10 3 1
      158 SETTABLEKS                       R10 R9 K8 ["Contents"]
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R10 R10 K2 ["createElement"]
      163 GETUPVAL                         R11 7
      164 DUPTABLE                         R12 K69 [{["LayoutOrder"] = 2}]
      165 CALL                             R10 2 1
      166 SETTABLEKS                       R10 R9 K9 ["Buttons"]
      168 CALL                             R6 3 -1
      169 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hideSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["setAssetTypeFilter"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_8:
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
       39 DUPTABLE                         R10 K13 [{["Text"], ["Tags"] = "PrimaryBrand", ["OnClick"]}]
       40 LOADK                            R13 K8 ["SearchOptions"]
       41 LOADK                            R14 K14 ["Search"]
       42 NAMECALL                         R11 R2 K10 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R10 K5 ["Text"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R11 R10 K6 ["OnClick"]
       51 SETLIST                          R8 R9 2 [1]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K15 ["createElement"]
       56 GETUPVAL                         R10 5
       57 NEWTABLE                         R11 2 0
       59 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
       61 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R12 R12 K17 ["Tag"]
       66 LOADK                            R13 K18 ["SearchOptions Explorer X-Column"]
       67 SETTABLE                         R13 R11 R12
       68 DUPTABLE                         R12 K21 [{"Contents", "Toolbar"}]
       69 GETUPVAL                         R13 4
       70 GETTABLEKS                       R13 R13 K15 ["createElement"]
       72 GETUPVAL                         R14 5
       73 NEWTABLE                         R15 2 0
       75 NAMECALL                         R16 R1 K22 ["getNextOrder"]
       77 CALL                             R16 1 1
       78 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       80 GETUPVAL                         R16 4
       81 GETTABLEKS                       R16 R16 K17 ["Tag"]
       83 LOADK                            R17 K23 ["X-Top X-Column fill"]
       84 SETTABLE                         R17 R15 R16
       85 DUPTABLE                         R16 K29 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
       86 GETUPVAL                         R17 4
       87 GETTABLEKS                       R17 R17 K15 ["createElement"]
       89 GETUPVAL                         R18 6
       90 NEWTABLE                         R19 4 0
       92 NAMECALL                         R20 R1 K22 ["getNextOrder"]
       94 CALL                             R20 1 1
       95 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
       97 LOADK                            R22 K8 ["SearchOptions"]
       98 LOADK                            R23 K30 ["Inventory"]
       99 NAMECALL                         R20 R2 K10 ["getText"]
      101 CALL                             R20 3 1
      102 SETTABLEKS                       R20 R19 K5 ["Text"]
      104 GETUPVAL                         R20 4
      105 GETTABLEKS                       R20 R20 K17 ["Tag"]
      107 LOADK                            R21 K31 ["X-FitY Left Bold X-Pad"]
      108 SETTABLE                         R21 R19 R20
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K24 ["SourceHeader"]
      112 GETUPVAL                         R17 4
      113 GETTABLEKS                       R17 R17 K15 ["createElement"]
      115 GETUPVAL                         R18 5
      116 NEWTABLE                         R19 2 0
      118 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      120 CALL                             R20 1 1
      121 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R20 R20 K17 ["Tag"]
      126 LOADK                            R21 K32 ["ScopeSelector FitYPlusDragX"]
      127 SETTABLE                         R21 R19 R20
      128 DUPTABLE                         R20 K33 [{"Contents"}]
      129 GETUPVAL                         R21 4
      130 GETTABLEKS                       R21 R21 K15 ["createElement"]
      132 GETUPVAL                         R22 7
      133 DUPTABLE                         R23 K34 [{"LayoutOrder"}]
      134 NAMECALL                         R24 R1 K22 ["getNextOrder"]
      136 CALL                             R24 1 1
      137 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K19 ["Contents"]
      142 CALL                             R17 3 1
      143 SETTABLEKS                       R17 R16 K25 ["ScopeSelector"]
      145 GETUPVAL                         R17 4
      146 GETTABLEKS                       R17 R17 K15 ["createElement"]
      148 GETUPVAL                         R18 8
      149 DUPTABLE                         R19 K34 [{"LayoutOrder"}]
      150 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      152 CALL                             R20 1 1
      153 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K26 ["Separator"]
      158 GETUPVAL                         R17 4
      159 GETTABLEKS                       R17 R17 K15 ["createElement"]
      161 GETUPVAL                         R18 6
      162 NEWTABLE                         R19 4 0
      164 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      166 CALL                             R20 1 1
      167 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      169 LOADK                            R22 K35 ["AssetProperty"]
      170 LOADK                            R23 K36 ["AssetType"]
      171 NAMECALL                         R20 R2 K10 ["getText"]
      173 CALL                             R20 3 1
      174 SETTABLEKS                       R20 R19 K5 ["Text"]
      176 GETUPVAL                         R20 4
      177 GETTABLEKS                       R20 R20 K17 ["Tag"]
      179 LOADK                            R21 K31 ["X-FitY Left Bold X-Pad"]
      180 SETTABLE                         R21 R19 R20
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K27 ["AssetTypeHeader"]
      184 GETUPVAL                         R17 4
      185 GETTABLEKS                       R17 R17 K15 ["createElement"]
      187 GETUPVAL                         R18 5
      188 NEWTABLE                         R19 2 0
      190 NAMECALL                         R20 R1 K22 ["getNextOrder"]
      192 CALL                             R20 1 1
      193 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      195 GETUPVAL                         R20 4
      196 GETTABLEKS                       R20 R20 K17 ["Tag"]
      198 LOADK                            R21 K37 ["X-ColumnM X-Center am-padding-left-medium fill"]
      199 SETTABLE                         R21 R19 R20
      200 DUPTABLE                         R20 K39 [{"RadioButtonListContainer"}]
      201 GETUPVAL                         R21 4
      202 GETTABLEKS                       R21 R21 K15 ["createElement"]
      204 GETUPVAL                         R22 9
      205 NEWTABLE                         R23 4 0
      207 NAMECALL                         R24 R1 K22 ["getNextOrder"]
      209 CALL                             R24 1 1
      210 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      212 SETTABLEKS                       R6 R23 K40 ["CanvasSize"]
      214 GETUPVAL                         R24 4
      215 GETTABLEKS                       R24 R24 K17 ["Tag"]
      217 LOADK                            R25 K41 ["am-padding-bottom-small fill"]
      218 SETTABLE                         R25 R23 R24
      219 NEWTABLE                         R24 0 1
      221 GETUPVAL                         R25 4
      222 GETTABLEKS                       R25 R25 K15 ["createElement"]
      224 GETUPVAL                         R26 5
      225 NEWTABLE                         R27 2 0
      227 GETUPVAL                         R28 4
      228 GETTABLEKS                       R28 R28 K42 ["Change"]
      230 GETTABLEKS                       R28 R28 K43 ["AbsoluteSize"]
      232 NEWCLOSURE                       R29 P2
      233 CAPTURE                          VAL R7
      234 SETTABLE                         R29 R27 R28
      235 GETUPVAL                         R28 4
      236 GETTABLEKS                       R28 R28 K17 ["Tag"]
      238 LOADK                            R29 K44 ["X-Fit"]
      239 SETTABLE                         R29 R27 R28
      240 DUPTABLE                         R28 K46 [{"RadioButtonList"}]
      241 GETUPVAL                         R29 4
      242 GETTABLEKS                       R29 R29 K15 ["createElement"]
      244 GETUPVAL                         R30 10
      245 DUPTABLE                         R31 K51 [{"LayoutOrder", "Buttons", "CurrentSelectedKey", "OnClick", "FillDirection", "TextXAlignment"}]
      246 NAMECALL                         R32 R1 K22 ["getNextOrder"]
      248 CALL                             R32 1 1
      249 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      251 SETTABLEKS                       R5 R31 K47 ["Buttons"]
      253 SETTABLEKS                       R4 R31 K48 ["CurrentSelectedKey"]
      255 NEWCLOSURE                       R32 P3
      256 CAPTURE                          VAL R3
      257 SETTABLEKS                       R32 R31 K6 ["OnClick"]
      259 GETIMPORT                        R32 K54 [Enum.FillDirection.Vertical]
      261 SETTABLEKS                       R32 R31 K49 ["FillDirection"]
      263 GETIMPORT                        R32 K56 [Enum.TextXAlignment.Left]
      265 SETTABLEKS                       R32 R31 K50 ["TextXAlignment"]
      267 CALL                             R29 2 1
      268 SETTABLEKS                       R29 R28 K45 ["RadioButtonList"]
      270 CALL                             R25 3 -1
      271 SETLIST                          R24 R25 -1 [1]
      273 CALL                             R21 3 1
      274 SETTABLEKS                       R21 R20 K38 ["RadioButtonListContainer"]
      276 CALL                             R17 3 1
      277 SETTABLEKS                       R17 R16 K28 ["AssetTypes"]
      279 CALL                             R13 3 1
      280 SETTABLEKS                       R13 R12 K19 ["Contents"]
      282 GETUPVAL                         R13 4
      283 GETTABLEKS                       R13 R13 K15 ["createElement"]
      285 GETUPVAL                         R14 11
      286 DUPTABLE                         R15 K57 [{"LayoutOrder", "Buttons"}]
      287 NAMECALL                         R16 R1 K22 ["getNextOrder"]
      289 CALL                             R16 1 1
      290 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      292 SETTABLEKS                       R8 R15 K47 ["Buttons"]
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K20 ["Toolbar"]
      297 CALL                             R9 3 -1
      298 RETURN                           R9 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R3 K13 ["UI"]
       41 GETTABLEKS                       R8 R7 K14 ["Pane"]
       43 GETTABLEKS                       R9 R7 K15 ["ScrollingFrame"]
       45 GETTABLEKS                       R10 R7 K16 ["RadioButtonList"]
       47 GETTABLEKS                       R11 R7 K17 ["Separator"]
       49 GETTABLEKS                       R12 R7 K18 ["TextLabel"]
       51 GETIMPORT                        R13 K5 [require]
       53 GETTABLEKS                       R14 R0 K19 ["Src"]
       55 GETTABLEKS                       R14 R14 K20 ["Components"]
       57 GETTABLEKS                       R14 R14 K21 ["Shared"]
       59 GETTABLEKS                       R14 R14 K22 ["Toolbar"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETIMPORT                        R15 K1 [script]
       66 GETTABLEKS                       R15 R15 K23 ["ScopeSelector_DEPRECATED"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K5 [require]
       71 GETTABLEKS                       R16 R0 K19 ["Src"]
       73 GETTABLEKS                       R16 R16 K20 ["Components"]
       75 GETTABLEKS                       R16 R16 K21 ["Shared"]
       77 GETTABLEKS                       R16 R16 K24 ["SearchButtons"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R17 R0 K19 ["Src"]
       84 GETTABLEKS                       R17 R17 K20 ["Components"]
       86 GETTABLEKS                       R17 R17 K21 ["Shared"]
       88 GETTABLEKS                       R17 R17 K25 ["ScopeSelector"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K5 [require]
       93 GETTABLEKS                       R18 R0 K19 ["Src"]
       95 GETTABLEKS                       R18 R18 K26 ["Controllers"]
       97 GETTABLEKS                       R18 R18 K27 ["SearchController"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K5 [require]
      102 GETTABLEKS                       R19 R0 K19 ["Src"]
      104 GETTABLEKS                       R19 R19 K28 ["Hooks"]
      106 GETTABLEKS                       R19 R19 K29 ["useSearchFilters"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K5 [require]
      111 GETTABLEKS                       R20 R0 K19 ["Src"]
      113 GETTABLEKS                       R20 R20 K30 ["Flags"]
      115 GETTABLEKS                       R20 R20 K31 ["getFFlagAmrFoundationifySearch"]
      117 CALL                             R19 1 1
      118 GETTABLEKS                       R20 R3 K32 ["Util"]
      120 GETTABLEKS                       R20 R20 K33 ["LayoutOrderIterator"]
      122 DUPCLOSURE                       R21 K34 [PROTO_3]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R15
      131 DUPCLOSURE                       R22 K35 [PROTO_8]
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R13
      144 MOVE                             R24 R19
      145 CALL                             R24 0 1
      146 JUMPIFNOT                        R24 ; [+2]
      147 MOVE                             R23 R21
      148 RETURN                           R23 1
      149 MOVE                             R23 R22
      150 RETURN                           R23 1
