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
       30 DUPTABLE                         R8 K6 [{"LayoutOrder", "tag"}]
       31 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       33 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       35 LOADK                            R9 K7 ["col size-full-0 fill gap-xsmall padding-xsmall"]
       36 SETTABLEKS                       R9 R8 K5 ["tag"]
       38 DUPTABLE                         R9 K10 [{"Contents", "Buttons"}]
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K2 ["createElement"]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K3 ["View"]
       45 DUPTABLE                         R12 K6 [{"LayoutOrder", "tag"}]
       46 LOADN                            R13 1
       47 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       49 LOADK                            R13 K11 ["col size-full-0 fill gap-small"]
       50 SETTABLEKS                       R13 R12 K5 ["tag"]
       52 DUPTABLE                         R13 K17 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
       53 GETUPVAL                         R14 3
       54 GETTABLEKS                       R14 R14 K2 ["createElement"]
       56 GETUPVAL                         R15 5
       57 GETTABLEKS                       R15 R15 K18 ["Text"]
       59 DUPTABLE                         R16 K19 [{"LayoutOrder", "Text", "tag"}]
       60 LOADN                            R17 1
       61 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       63 LOADK                            R19 K20 ["SearchOptions"]
       64 LOADK                            R20 K21 ["Inventory"]
       65 NAMECALL                         R17 R1 K22 ["getText"]
       67 CALL                             R17 3 1
       68 SETTABLEKS                       R17 R16 K18 ["Text"]
       70 LOADK                            R17 K23 ["auto-xy text-title-small"]
       71 SETTABLEKS                       R17 R16 K5 ["tag"]
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K12 ["SourceHeader"]
       76 GETUPVAL                         R14 3
       77 GETTABLEKS                       R14 R14 K2 ["createElement"]
       79 GETUPVAL                         R15 6
       80 DUPTABLE                         R16 K26 [{"LayoutOrder", "ShowTitle", "FillWidth"}]
       81 LOADN                            R17 2
       82 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       84 LOADB                            R17 1
       85 SETTABLEKS                       R17 R16 K24 ["ShowTitle"]
       87 LOADB                            R17 1
       88 SETTABLEKS                       R17 R16 K25 ["FillWidth"]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K13 ["ScopeSelector"]
       93 GETUPVAL                         R14 3
       94 GETTABLEKS                       R14 R14 K2 ["createElement"]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R15 R15 K27 ["Divider"]
       99 DUPTABLE                         R16 K29 [{"LayoutOrder", "orientation"}]
      100 LOADN                            R17 3
      101 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      103 GETUPVAL                         R17 5
      104 GETTABLEKS                       R17 R17 K30 ["Enums"]
      106 GETTABLEKS                       R17 R17 K31 ["DividerOrientation"]
      108 GETTABLEKS                       R17 R17 K32 ["Horizontal"]
      110 SETTABLEKS                       R17 R16 K28 ["orientation"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K14 ["Separator"]
      115 GETUPVAL                         R14 3
      116 GETTABLEKS                       R14 R14 K2 ["createElement"]
      118 GETUPVAL                         R15 5
      119 GETTABLEKS                       R15 R15 K18 ["Text"]
      121 DUPTABLE                         R16 K19 [{"LayoutOrder", "Text", "tag"}]
      122 LOADN                            R17 4
      123 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      125 LOADK                            R19 K33 ["AssetProperty"]
      126 LOADK                            R20 K34 ["AssetType"]
      127 NAMECALL                         R17 R1 K22 ["getText"]
      129 CALL                             R17 3 1
      130 SETTABLEKS                       R17 R16 K18 ["Text"]
      132 LOADK                            R17 K23 ["auto-xy text-title-small"]
      133 SETTABLEKS                       R17 R16 K5 ["tag"]
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K15 ["AssetTypeHeader"]
      138 GETUPVAL                         R14 3
      139 GETTABLEKS                       R14 R14 K2 ["createElement"]
      141 GETUPVAL                         R15 5
      142 GETTABLEKS                       R15 R15 K35 ["ScrollView"]
      144 DUPTABLE                         R16 K38 [{"LayoutOrder", "tag", "layout", "scroll"}]
      145 LOADN                            R17 5
      146 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      148 LOADK                            R17 K39 ["size-full-0 fill"]
      149 SETTABLEKS                       R17 R16 K5 ["tag"]
      151 DUPTABLE                         R17 K41 [{"FillDirection"}]
      152 GETIMPORT                        R18 K44 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R18 R17 K40 ["FillDirection"]
      156 SETTABLEKS                       R17 R16 K36 ["layout"]
      158 DUPTABLE                         R17 K48 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      159 GETIMPORT                        R18 K51 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R18 R17 K45 ["AutomaticCanvasSize"]
      163 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      165 LOADN                            R19 0
      166 LOADN                            R20 0
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K46 ["CanvasSize"]
      170 GETIMPORT                        R18 K55 [Enum.ScrollingDirection.Y]
      172 SETTABLEKS                       R18 R17 K47 ["ScrollingDirection"]
      174 SETTABLEKS                       R17 R16 K37 ["scroll"]
      176 GETUPVAL                         R17 3
      177 GETTABLEKS                       R17 R17 K2 ["createElement"]
      179 GETUPVAL                         R18 5
      180 GETTABLEKS                       R18 R18 K56 ["RadioGroup"]
      182 GETTABLEKS                       R18 R18 K57 ["Root"]
      184 DUPTABLE                         R19 K60 [{"value", "onValueChanged"}]
      185 SETTABLEKS                       R3 R19 K58 ["value"]
      187 NEWCLOSURE                       R20 P1
      188 CAPTURE                          VAL R2
      189 SETTABLEKS                       R20 R19 K59 ["onValueChanged"]
      191 MOVE                             R20 R5
      192 CALL                             R17 3 -1
      193 CALL                             R14 -1 1
      194 SETTABLEKS                       R14 R13 K16 ["AssetTypes"]
      196 CALL                             R10 3 1
      197 SETTABLEKS                       R10 R9 K8 ["Contents"]
      199 GETUPVAL                         R10 3
      200 GETTABLEKS                       R10 R10 K2 ["createElement"]
      202 GETUPVAL                         R11 7
      203 DUPTABLE                         R12 K61 [{"LayoutOrder"}]
      204 LOADN                            R13 2
      205 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      207 CALL                             R10 2 1
      208 SETTABLEKS                       R10 R9 K9 ["Buttons"]
      210 CALL                             R6 3 -1
      211 RETURN                           R6 -1

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
