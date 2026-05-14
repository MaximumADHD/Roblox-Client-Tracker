PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"MaterialItem", "LayoutOrder"}]
        5 SETTABLEKS                       R1 R4 K1 ["MaterialItem"]
        7 SETTABLEKS                       R0 R4 K2 ["LayoutOrder"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetMenuHover"]
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetMenuHover"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["renderItem"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["onMouseEnter"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K3 ["onMouseLeave"]
       13 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialGrid"]
        6 GETTABLEKS                       R3 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R4 R1 K4 ["MaterialTileSize"]
       10 GETTABLEKS                       R5 R1 K5 ["Size"]
       12 GETTABLEKS                       R6 R1 K6 ["ViewType"]
       14 GETTABLEKS                       R7 R1 K7 ["OnShowButtonClicked"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K8 ["createElement"]
       19 GETUPVAL                         R9 1
       20 DUPTABLE                         R10 K10 [{"BackgroundColor", "LayoutOrder", "Size"}]
       21 GETTABLEKS                       R11 R2 K9 ["BackgroundColor"]
       23 SETTABLEKS                       R11 R10 K9 ["BackgroundColor"]
       25 SETTABLEKS                       R3 R10 K3 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R10 K5 ["Size"]
       29 DUPTABLE                         R11 K13 [{"Grid", "SidebarButton"}]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K8 ["createElement"]
       33 GETUPVAL                         R13 2
       34 DUPTABLE                         R14 K23 [{"AbsoluteMax", "CellPadding", "CellSize", "BufferedRows", "Items", "Loading", "Padding", "RenderItem", "Size", "ZIndex"}]
       35 GETTABLEKS                       R16 R1 K24 ["MaterialList"]
       37 LENGTH                           R15 R16
       38 SETTABLEKS                       R15 R14 K14 ["AbsoluteMax"]
       40 JUMPIFNOTEQKS                    R6 K11 ["Grid"] ; [+9]
       42 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       44 GETTABLEKS                       R16 R2 K28 ["GridPadding"]
       46 GETTABLEKS                       R17 R2 K28 ["GridPadding"]
       48 CALL                             R15 2 1
       49 JUMP                             ; [+7]
       50 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       52 GETTABLEKS                       R16 R2 K29 ["ListPadding"]
       54 GETTABLEKS                       R17 R2 K29 ["ListPadding"]
       56 CALL                             R15 2 1
       57 SETTABLEKS                       R15 R14 K15 ["CellPadding"]
       59 JUMPIFNOTEQKS                    R6 K11 ["Grid"] ; [+7]
       61 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       63 MOVE                             R16 R4
       64 MOVE                             R17 R4
       65 CALL                             R15 2 1
       66 JUMP                             ; [+8]
       67 GETIMPORT                        R15 K31 [UDim2.new]
       69 LOADN                            R16 1
       70 LOADN                            R17 236
       71 LOADN                            R18 0
       72 GETTABLEKS                       R19 R2 K32 ["ListHeight"]
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K16 ["CellSize"]
       77 LOADN                            R15 2
       78 SETTABLEKS                       R15 R14 K17 ["BufferedRows"]
       80 GETTABLEKS                       R15 R1 K24 ["MaterialList"]
       82 SETTABLEKS                       R15 R14 K18 ["Items"]
       84 LOADB                            R15 0
       85 SETTABLEKS                       R15 R14 K19 ["Loading"]
       87 GETTABLEKS                       R15 R2 K20 ["Padding"]
       89 SETTABLEKS                       R15 R14 K20 ["Padding"]
       91 GETTABLEKS                       R15 R0 K33 ["renderItem"]
       93 SETTABLEKS                       R15 R14 K21 ["RenderItem"]
       95 GETIMPORT                        R15 K35 [UDim2.fromScale]
       97 LOADN                            R16 1
       98 LOADN                            R17 1
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K5 ["Size"]
      102 LOADN                            R15 1
      103 SETTABLEKS                       R15 R14 K22 ["ZIndex"]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K11 ["Grid"]
      108 GETTABLEKS                       R13 R1 K36 ["SideBarVisible"]
      110 JUMPIF                           R13 ; [+51]
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K8 ["createElement"]
      114 GETUPVAL                         R13 3
      115 DUPTABLE                         R14 K44 [{"Size", "LeftIcon", "IconColor", "OnClick", "OnMouseEnter", "OnMouseLeave", "AnchorPoint", "Position", "ZIndex"}]
      116 GETTABLEKS                       R15 R2 K45 ["IconSize"]
      118 SETTABLEKS                       R15 R14 K5 ["Size"]
      120 GETTABLEKS                       R15 R2 K46 ["ChevronRight"]
      122 SETTABLEKS                       R15 R14 K37 ["LeftIcon"]
      124 GETTABLEKS                       R15 R2 K38 ["IconColor"]
      126 SETTABLEKS                       R15 R14 K38 ["IconColor"]
      128 MOVE                             R15 R7
      129 JUMPIF                           R15 ; [+1]
      130 DUPCLOSURE                       R15 K47 [PROTO_4]
      131 SETTABLEKS                       R15 R14 K39 ["OnClick"]
      133 GETTABLEKS                       R15 R0 K48 ["onMouseEnter"]
      135 SETTABLEKS                       R15 R14 K40 ["OnMouseEnter"]
      137 GETTABLEKS                       R15 R0 K49 ["onMouseLeave"]
      139 SETTABLEKS                       R15 R14 K41 ["OnMouseLeave"]
      141 GETIMPORT                        R15 K51 [Vector2.new]
      143 LOADN                            R16 0
      144 LOADN                            R17 1
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K42 ["AnchorPoint"]
      148 GETIMPORT                        R15 K31 [UDim2.new]
      150 LOADN                            R16 0
      151 LOADN                            R17 5
      152 LOADN                            R18 1
      153 LOADN                            R19 251
      154 CALL                             R15 4 1
      155 SETTABLEKS                       R15 R14 K43 ["Position"]
      157 LOADN                            R15 2
      158 SETTABLEKS                       R15 R14 K22 ["ZIndex"]
      160 CALL                             R12 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R12
      163 SETTABLEKS                       R12 R11 K12 ["SidebarButton"]
      165 CALL                             R8 3 -1
      166 RETURN                           R8 -1

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"MaterialList", "MaterialTileSize", "ViewType"}]
        1 GETTABLEKS                       R3 R0 K4 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["MaterialList"]
        5 SETTABLEKS                       R3 R2 K0 ["MaterialList"]
        7 GETTABLEKS                       R3 R0 K4 ["MaterialBrowserReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["MaterialTileSize"]
       11 SETTABLEKS                       R3 R2 K1 ["MaterialTileSize"]
       13 GETTABLEKS                       R3 R0 K4 ["MaterialBrowserReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["ViewType"]
       17 SETTABLEKS                       R3 R2 K2 ["ViewType"]
       19 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMenuHover"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMenuHover"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K12 ["withContext"]
       43 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       45 GETTABLEKS                       R8 R5 K14 ["Localization"]
       47 GETTABLEKS                       R9 R4 K15 ["Style"]
       49 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       51 GETTABLEKS                       R10 R4 K17 ["UI"]
       53 GETTABLEKS                       R11 R10 K18 ["Pane"]
       55 GETTABLEKS                       R12 R10 K19 ["InfiniteScrollingGrid"]
       57 GETTABLEKS                       R13 R10 K20 ["IconButton"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R0 K5 ["Src"]
       63 GETTABLEKS                       R15 R15 K21 ["Actions"]
       65 GETTABLEKS                       R15 R15 K22 ["SetMenuHover"]
       67 CALL                             R14 1 1
       68 GETTABLEKS                       R15 R0 K5 ["Src"]
       70 GETTABLEKS                       R15 R15 K23 ["Components"]
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R15 K24 ["MaterialBrowser"]
       76 GETTABLEKS                       R17 R17 K25 ["MaterialGrid"]
       78 GETTABLEKS                       R17 R17 K26 ["MaterialItem"]
       80 CALL                             R16 1 1
       81 GETTABLEKS                       R17 R2 K27 ["PureComponent"]
       83 LOADK                            R19 K25 ["MaterialGrid"]
       84 NAMECALL                         R17 R17 K28 ["extend"]
       86 CALL                             R17 2 1
       87 DUPCLOSURE                       R18 K29 [PROTO_3]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R16
       90 SETTABLEKS                       R18 R17 K30 ["init"]
       92 DUPCLOSURE                       R18 K31 [PROTO_5]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R13
       97 SETTABLEKS                       R18 R17 K32 ["render"]
       99 MOVE                             R18 R6
      100 DUPTABLE                         R19 K33 [{"Analytics", "Localization", "Stylizer"}]
      101 SETTABLEKS                       R7 R19 K13 ["Analytics"]
      103 SETTABLEKS                       R8 R19 K14 ["Localization"]
      105 SETTABLEKS                       R9 R19 K16 ["Stylizer"]
      107 CALL                             R18 1 1
      108 MOVE                             R19 R17
      109 CALL                             R18 1 1
      110 MOVE                             R17 R18
      111 GETTABLEKS                       R18 R3 K34 ["connect"]
      113 DUPCLOSURE                       R19 K35 [PROTO_6]
      114 DUPCLOSURE                       R20 K36 [PROTO_8]
      115 CAPTURE                          VAL R14
      116 CALL                             R18 2 1
      117 MOVE                             R19 R17
      118 CALL                             R18 1 -1
      119 RETURN                           R18 -1
