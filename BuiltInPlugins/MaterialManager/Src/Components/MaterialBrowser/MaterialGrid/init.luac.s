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
       34 DUPTABLE                         R14 K26 [{["AbsoluteMax"], ["CellPadding"], ["CellSize"], ["BufferedRows"] = 2, ["Items"], ["Loading"] = False, ["Padding"], ["RenderItem"], ["Size"], ["ZIndex"] = 1}]
       35 GETTABLEKS                       R16 R1 K27 ["MaterialList"]
       37 LENGTH                           R15 R16
       38 SETTABLEKS                       R15 R14 K14 ["AbsoluteMax"]
       40 JUMPIFNOTEQKS                    R6 K11 ["Grid"] ; [+9]
       42 GETIMPORT                        R15 K30 [UDim2.fromOffset]
       44 GETTABLEKS                       R16 R2 K31 ["GridPadding"]
       46 GETTABLEKS                       R17 R2 K31 ["GridPadding"]
       48 CALL                             R15 2 1
       49 JUMP                             ; [+7]
       50 GETIMPORT                        R15 K30 [UDim2.fromOffset]
       52 GETTABLEKS                       R16 R2 K32 ["ListPadding"]
       54 GETTABLEKS                       R17 R2 K32 ["ListPadding"]
       56 CALL                             R15 2 1
       57 SETTABLEKS                       R15 R14 K15 ["CellPadding"]
       59 JUMPIFNOTEQKS                    R6 K11 ["Grid"] ; [+7]
       61 GETIMPORT                        R15 K30 [UDim2.fromOffset]
       63 MOVE                             R16 R4
       64 MOVE                             R17 R4
       65 CALL                             R15 2 1
       66 JUMP                             ; [+8]
       67 GETIMPORT                        R15 K34 [UDim2.new]
       69 LOADN                            R16 1
       70 LOADN                            R17 -20
       71 LOADN                            R18 0
       72 GETTABLEKS                       R19 R2 K35 ["ListHeight"]
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K16 ["CellSize"]
       77 GETTABLEKS                       R15 R1 K27 ["MaterialList"]
       79 SETTABLEKS                       R15 R14 K19 ["Items"]
       81 GETTABLEKS                       R15 R2 K22 ["Padding"]
       83 SETTABLEKS                       R15 R14 K22 ["Padding"]
       85 GETTABLEKS                       R15 R0 K36 ["renderItem"]
       87 SETTABLEKS                       R15 R14 K23 ["RenderItem"]
       89 GETIMPORT                        R15 K38 [UDim2.fromScale]
       91 LOADN                            R16 1
       92 LOADN                            R17 1
       93 CALL                             R15 2 1
       94 SETTABLEKS                       R15 R14 K5 ["Size"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K11 ["Grid"]
       99 GETTABLEKS                       R13 R1 K39 ["SideBarVisible"]
      101 JUMPIF                           R13 ; [+48]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K8 ["createElement"]
      105 GETUPVAL                         R13 3
      106 DUPTABLE                         R14 K47 [{["Size"], ["LeftIcon"], ["IconColor"], ["OnClick"], ["OnMouseEnter"], ["OnMouseLeave"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      107 GETTABLEKS                       R15 R2 K48 ["IconSize"]
      109 SETTABLEKS                       R15 R14 K5 ["Size"]
      111 GETTABLEKS                       R15 R2 K49 ["ChevronRight"]
      113 SETTABLEKS                       R15 R14 K40 ["LeftIcon"]
      115 GETTABLEKS                       R15 R2 K41 ["IconColor"]
      117 SETTABLEKS                       R15 R14 K41 ["IconColor"]
      119 MOVE                             R15 R7
      120 JUMPIF                           R15 ; [+1]
      121 DUPCLOSURE                       R15 K50 [PROTO_4]
      122 SETTABLEKS                       R15 R14 K42 ["OnClick"]
      124 GETTABLEKS                       R15 R0 K51 ["onMouseEnter"]
      126 SETTABLEKS                       R15 R14 K43 ["OnMouseEnter"]
      128 GETTABLEKS                       R15 R0 K52 ["onMouseLeave"]
      130 SETTABLEKS                       R15 R14 K44 ["OnMouseLeave"]
      132 GETIMPORT                        R15 K54 [Vector2.new]
      134 LOADN                            R16 0
      135 LOADN                            R17 1
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      139 GETIMPORT                        R15 K34 [UDim2.new]
      141 LOADN                            R16 0
      142 LOADN                            R17 5
      143 LOADN                            R18 1
      144 LOADN                            R19 -5
      145 CALL                             R15 4 1
      146 SETTABLEKS                       R15 R14 K46 ["Position"]
      148 CALL                             R12 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R12
      151 SETTABLEKS                       R12 R11 K12 ["SidebarButton"]
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1

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
