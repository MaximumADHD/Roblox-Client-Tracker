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
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["Shared"]
       47 GETTABLEKS                       R8 R8 K16 ["SearchButtons"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K13 ["Src"]
       54 GETTABLEKS                       R9 R9 K14 ["Components"]
       56 GETTABLEKS                       R9 R9 K15 ["Shared"]
       58 GETTABLEKS                       R9 R9 K17 ["ScopeSelector"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K13 ["Src"]
       65 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       67 GETTABLEKS                       R10 R10 K19 ["SearchController"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K13 ["Src"]
       74 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K21 ["useSearchFilters"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K22 [PROTO_3]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 RETURN                           R11 1
