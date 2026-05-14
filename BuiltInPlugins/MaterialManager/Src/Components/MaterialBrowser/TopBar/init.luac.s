PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Material"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["Material"]
        8 GETTABLEKS                       R1 R1 K1 ["Material"]
       10 JUMP                             ; [+7]
       11 GETTABLEKS                       R1 R0 K2 ["MaterialServiceController"]
       13 GETTABLEKS                       R3 R0 K3 ["Path"]
       15 NAMECALL                         R1 R1 K4 ["getCategoryDefaultMaterial"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLE                         R2 R3 R1
       20 JUMPIFNOT                        R2 ; [+1]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R1 K7 [Enum.Material.Plastic]
       24 GETTABLEKS                       R2 R0 K8 ["Search"]
       26 GETTABLEKS                       R3 R0 K9 ["GeneralServiceController"]
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 NAMECALL                         R3 R3 K10 ["createMaterialVariant"]
       32 CALL                             R3 3 1
       33 NEWTABLE                         R4 1 0
       35 GETUPVAL                         R5 2
       36 MOVE                             R6 R1
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K11 ["BaseMaterial"]
       40 GETTABLEKS                       R5 R0 K12 ["Analytics"]
       42 LOADK                            R7 K13 ["newMaterialVariant"]
       43 MOVE                             R8 R4
       44 GETUPVAL                         R9 3
       45 NAMECALL                         R5 R5 K14 ["report"]
       47 CALL                             R5 4 0
       48 GETTABLEKS                       R5 R0 K12 ["Analytics"]
       50 LOADK                            R7 K15 ["newMaterialVariantCounter"]
       51 NAMECALL                         R5 R5 K14 ["report"]
       53 CALL                             R5 2 0
       54 GETTABLEKS                       R5 R0 K2 ["MaterialServiceController"]
       56 GETUPVAL                         R7 4
       57 MOVE                             R8 R1
       58 CALL                             R7 1 -1
       59 NAMECALL                         R5 R5 K16 ["setPath"]
       61 CALL                             R5 -1 0
       62 GETTABLEKS                       R5 R0 K17 ["dispatchSetMaterialVariant"]
       64 MOVE                             R6 R3
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 6
       67 GETTABLEKS                       R5 R5 K18 ["createElement"]
       69 GETUPVAL                         R6 5
       70 DUPTABLE                         R7 K21 [{"LayoutOrder", "Size"}]
       71 LOADN                            R8 1
       72 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       74 GETIMPORT                        R8 K24 [UDim2.fromScale]
       76 LOADN                            R9 1
       77 LOADN                            R10 1
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K20 ["Size"]
       81 CALL                             R5 2 1
       82 SETUPVAL                         R5 5
       83 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Material"]
        5 JUMPIFNOT                        R1 ; [+24]
        6 GETTABLEKS                       R1 R0 K1 ["Material"]
        8 GETTABLEKS                       R1 R1 K2 ["MaterialVariant"]
       10 JUMPIFNOT                        R1 ; [+19]
       11 GETTABLEKS                       R1 R0 K3 ["GeneralServiceController"]
       13 NEWTABLE                         R3 0 1
       15 GETTABLEKS                       R4 R0 K1 ["Material"]
       17 GETTABLEKS                       R4 R4 K2 ["MaterialVariant"]
       19 SETLIST                          R3 R4 1 [1]
       21 NAMECALL                         R1 R1 K4 ["SetSelection"]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K5 ["Analytics"]
       26 LOADK                            R3 K6 ["showInExplorer"]
       27 NAMECALL                         R1 R1 K7 ["report"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["MaterialServiceController"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K2 ["setSearch"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["Analytics"]
       11 LOADK                            R4 K4 ["searchBar"]
       12 NAMECALL                         R2 R2 K5 ["report"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 SETTABLEKS                       R1 R0 K0 ["createMaterialVariant"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K1 ["showInExplorer"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K2 ["setSearch"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TopBar"]
        6 GETTABLEKS                       R3 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R4 R1 K4 ["Size"]
       10 GETTABLEKS                       R5 R1 K5 ["Localization"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["new"]
       15 CALL                             R6 0 1
       16 GETTABLEKS                       R7 R2 K7 ["CreateNewVariant"]
       18 GETTABLEKS                       R8 R2 K8 ["ShowInExplorer"]
       20 GETTABLEKS                       R9 R2 K9 ["BackgroundColor"]
       22 GETTABLEKS                       R10 R2 K10 ["ButtonSize"]
       24 GETTABLEKS                       R10 R10 K11 ["X"]
       26 GETTABLEKS                       R10 R10 K12 ["Offset"]
       28 GETTABLEKS                       R11 R2 K13 ["Padding"]
       30 GETTABLEKS                       R12 R2 K14 ["SpacerWidth"]
       32 GETTABLEKS                       R13 R2 K15 ["SearchBarMaxWidth"]
       34 GETTABLEKS                       R14 R2 K16 ["TopBarButtonWidth"]
       36 GETTABLEKS                       R15 R2 K17 ["ViewTypeSize"]
       38 GETTABLEKS                       R15 R15 K11 ["X"]
       40 GETTABLEKS                       R15 R15 K12 ["Offset"]
       42 GETTABLEKS                       R17 R1 K18 ["AbsoluteSize"]
       44 GETTABLEKS                       R17 R17 K11 ["X"]
       46 LOADN                            R20 2
       47 ADD                              R21 R10 R11
       48 MUL                              R19 R20 R21
       49 ADD                              R20 R15 R11
       50 ADD                              R18 R19 R20
       51 SUB                              R16 R17 R18
       52 LOADN                            R18 1
       53 MULK                             R21 R12 K19 [2]
       54 ADD                              R20 R21 R13
       55 DIV                              R19 R16 R20
       56 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       58 GETIMPORT                        R17 K22 [math.min]
       60 CALL                             R17 2 1
       61 GETTABLEKS                       R19 R1 K23 ["Material"]
       63 JUMPIFNOT                        R19 ; [+5]
       64 GETTABLEKS                       R19 R1 K23 ["Material"]
       66 GETTABLEKS                       R19 R19 K24 ["MaterialVariant"]
       68 JUMPIF                           R19 ; [+2]
       69 LOADB                            R18 1
       70 JUMP                             ; [+1]
       71 LOADB                            R18 0
       72 GETUPVAL                         R19 1
       73 GETTABLEKS                       R19 R19 K25 ["createElement"]
       75 GETUPVAL                         R20 2
       76 GETUPVAL                         R21 3
       77 DUPTABLE                         R22 K29 [{"BackgroundColor", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding", "Size", "Spacing"}]
       78 SETTABLEKS                       R9 R22 K9 ["BackgroundColor"]
       80 GETIMPORT                        R23 K33 [Enum.FillDirection.Horizontal]
       82 SETTABLEKS                       R23 R22 K26 ["Layout"]
       84 GETIMPORT                        R23 K35 [Enum.HorizontalAlignment.Left]
       86 SETTABLEKS                       R23 R22 K27 ["HorizontalAlignment"]
       88 SETTABLEKS                       R3 R22 K3 ["LayoutOrder"]
       90 SETTABLEKS                       R11 R22 K13 ["Padding"]
       92 SETTABLEKS                       R4 R22 K4 ["Size"]
       94 SETTABLEKS                       R11 R22 K28 ["Spacing"]
       96 GETTABLEKS                       R23 R1 K36 ["WrapperProps"]
       98 CALL                             R21 2 1
       99 DUPTABLE                         R22 K40 [{"CreateMaterialVariant", "ShowInExplorer", "RestPane", "ViewType"}]
      100 GETUPVAL                         R23 1
      101 GETTABLEKS                       R23 R23 K25 ["createElement"]
      103 GETUPVAL                         R24 4
      104 DUPTABLE                         R25 K45 [{"ImageStyle", "IsDisabled", "LayoutOrder", "OnClick", "TooltipText"}]
      105 SETTABLEKS                       R7 R25 K41 ["ImageStyle"]
      107 LOADB                            R26 0
      108 SETTABLEKS                       R26 R25 K42 ["IsDisabled"]
      110 NAMECALL                         R26 R6 K46 ["getNextOrder"]
      112 CALL                             R26 1 1
      113 SETTABLEKS                       R26 R25 K3 ["LayoutOrder"]
      115 GETTABLEKS                       R26 R0 K47 ["createMaterialVariant"]
      117 SETTABLEKS                       R26 R25 K43 ["OnClick"]
      119 LOADK                            R28 K2 ["TopBar"]
      120 LOADK                            R29 K48 ["Create"]
      121 NAMECALL                         R26 R5 K49 ["getText"]
      123 CALL                             R26 3 1
      124 SETTABLEKS                       R26 R25 K44 ["TooltipText"]
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K37 ["CreateMaterialVariant"]
      129 GETUPVAL                         R23 1
      130 GETTABLEKS                       R23 R23 K25 ["createElement"]
      132 GETUPVAL                         R24 4
      133 DUPTABLE                         R25 K45 [{"ImageStyle", "IsDisabled", "LayoutOrder", "OnClick", "TooltipText"}]
      134 SETTABLEKS                       R8 R25 K41 ["ImageStyle"]
      136 SETTABLEKS                       R18 R25 K42 ["IsDisabled"]
      138 NAMECALL                         R26 R6 K46 ["getNextOrder"]
      140 CALL                             R26 1 1
      141 SETTABLEKS                       R26 R25 K3 ["LayoutOrder"]
      143 GETTABLEKS                       R26 R0 K50 ["showInExplorer"]
      145 SETTABLEKS                       R26 R25 K43 ["OnClick"]
      147 LOADK                            R28 K2 ["TopBar"]
      148 LOADK                            R29 K51 ["Show"]
      149 NAMECALL                         R26 R5 K49 ["getText"]
      151 CALL                             R26 3 1
      152 SETTABLEKS                       R26 R25 K44 ["TooltipText"]
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K8 ["ShowInExplorer"]
      157 GETUPVAL                         R23 1
      158 GETTABLEKS                       R23 R23 K25 ["createElement"]
      160 GETUPVAL                         R24 2
      161 DUPTABLE                         R25 K52 [{"Size", "LayoutOrder"}]
      162 GETIMPORT                        R26 K54 [UDim2.new]
      164 LOADN                            R27 1
      165 LOADN                            R31 2
      166 ADD                              R32 R10 R11
      167 MUL                              R30 R31 R32
      168 ADD                              R31 R15 R11
      169 ADD                              R29 R30 R31
      170 MINUS                            R28 R29
      171 LOADN                            R29 1
      172 LOADN                            R30 0
      173 CALL                             R26 4 1
      174 SETTABLEKS                       R26 R25 K4 ["Size"]
      176 NAMECALL                         R26 R6 K46 ["getNextOrder"]
      178 CALL                             R26 1 1
      179 SETTABLEKS                       R26 R25 K3 ["LayoutOrder"]
      181 DUPTABLE                         R26 K56 [{"SearchBar"}]
      182 GETUPVAL                         R27 1
      183 GETTABLEKS                       R27 R27 K25 ["createElement"]
      185 GETUPVAL                         R28 5
      186 DUPTABLE                         R29 K63 [{"Position", "AnchorPoint", "OnSearchRequested", "PlaceholderText", "ShowSearchButton", "ShowSearchIcon", "Size"}]
      187 GETIMPORT                        R30 K54 [UDim2.new]
      189 LOADK                            R31 K64 [0.5]
      190 LOADN                            R32 0
      191 LOADN                            R33 0
      192 LOADN                            R34 0
      193 CALL                             R30 4 1
      194 SETTABLEKS                       R30 R29 K57 ["Position"]
      196 GETIMPORT                        R30 K66 [Vector2.new]
      198 LOADK                            R31 K64 [0.5]
      199 LOADN                            R32 0
      200 CALL                             R30 2 1
      201 SETTABLEKS                       R30 R29 K58 ["AnchorPoint"]
      203 GETTABLEKS                       R30 R0 K67 ["setSearch"]
      205 SETTABLEKS                       R30 R29 K59 ["OnSearchRequested"]
      207 LOADK                            R32 K2 ["TopBar"]
      208 LOADK                            R33 K68 ["Search"]
      209 NAMECALL                         R30 R5 K49 ["getText"]
      211 CALL                             R30 3 1
      212 SETTABLEKS                       R30 R29 K60 ["PlaceholderText"]
      214 LOADB                            R30 0
      215 SETTABLEKS                       R30 R29 K61 ["ShowSearchButton"]
      217 LOADB                            R30 1
      218 SETTABLEKS                       R30 R29 K62 ["ShowSearchIcon"]
      220 GETIMPORT                        R30 K54 [UDim2.new]
      222 LOADN                            R31 0
      223 MUL                              R32 R13 R17
      224 LOADN                            R33 0
      225 MOVE                             R34 R14
      226 CALL                             R30 4 1
      227 SETTABLEKS                       R30 R29 K4 ["Size"]
      229 CALL                             R27 2 1
      230 SETTABLEKS                       R27 R26 K55 ["SearchBar"]
      232 CALL                             R23 3 1
      233 SETTABLEKS                       R23 R22 K38 ["RestPane"]
      235 GETUPVAL                         R23 1
      236 GETTABLEKS                       R23 R23 K25 ["createElement"]
      238 GETUPVAL                         R24 6
      239 DUPTABLE                         R25 K69 [{"LayoutOrder"}]
      240 NAMECALL                         R26 R6 K46 ["getNextOrder"]
      242 CALL                             R26 1 1
      243 SETTABLEKS                       R26 R25 K3 ["LayoutOrder"]
      245 CALL                             R23 2 1
      246 SETTABLEKS                       R23 R22 K39 ["ViewType"]
      248 CALL                             R19 3 -1
      249 RETURN                           R19 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"Material", "Path", "Search"}]
        1 GETTABLEKS                       R2 R0 K4 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R2 R2 K0 ["Material"]
        5 SETTABLEKS                       R2 R1 K0 ["Material"]
        7 GETTABLEKS                       R2 R0 K4 ["MaterialBrowserReducer"]
        9 GETTABLEKS                       R2 R2 K1 ["Path"]
       11 SETTABLEKS                       R2 R1 K1 ["Path"]
       13 GETTABLEKS                       R2 R0 K4 ["MaterialBrowserReducer"]
       15 GETTABLEKS                       R2 R2 K2 ["Search"]
       17 SETTABLEKS                       R2 R1 K2 ["Search"]
       19 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMaterialVariant"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMaterialVariant"]
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
       39 GETTABLEKS                       R5 R4 K11 ["Util"]
       41 GETTABLEKS                       R6 R5 K12 ["LayoutOrderIterator"]
       43 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K14 ["withContext"]
       47 GETTABLEKS                       R9 R7 K15 ["Analytics"]
       49 GETTABLEKS                       R10 R7 K16 ["Localization"]
       51 GETTABLEKS                       R11 R4 K17 ["Wrappers"]
       53 GETTABLEKS                       R11 R11 K18 ["withAbsoluteSize"]
       55 GETTABLEKS                       R12 R4 K19 ["Dash"]
       57 GETTABLEKS                       R12 R12 K20 ["join"]
       59 GETTABLEKS                       R13 R4 K21 ["Style"]
       61 GETTABLEKS                       R13 R13 K22 ["Stylizer"]
       63 GETTABLEKS                       R14 R4 K23 ["UI"]
       65 GETTABLEKS                       R15 R14 K24 ["SearchBar"]
       67 GETTABLEKS                       R16 R14 K25 ["Pane"]
       69 GETTABLEKS                       R17 R0 K5 ["Src"]
       71 GETTABLEKS                       R17 R17 K26 ["Actions"]
       73 GETIMPORT                        R18 K4 [require]
       75 GETTABLEKS                       R19 R17 K27 ["SetMaterialVariant"]
       77 CALL                             R18 1 1
       78 GETIMPORT                        R19 K4 [require]
       80 GETTABLEKS                       R20 R0 K5 ["Src"]
       82 GETTABLEKS                       R20 R20 K28 ["Reducers"]
       84 GETTABLEKS                       R20 R20 K29 ["MainReducer"]
       86 CALL                             R19 1 1
       87 GETTABLEKS                       R20 R0 K5 ["Src"]
       89 GETTABLEKS                       R20 R20 K30 ["Controllers"]
       91 GETIMPORT                        R21 K4 [require]
       93 GETTABLEKS                       R22 R20 K31 ["GeneralServiceController"]
       95 CALL                             R21 1 1
       96 GETIMPORT                        R22 K4 [require]
       98 GETTABLEKS                       R23 R20 K32 ["MaterialServiceController"]
      100 CALL                             R22 1 1
      101 GETIMPORT                        R23 K4 [require]
      103 GETTABLEKS                       R24 R20 K33 ["PluginController"]
      105 CALL                             R23 1 1
      106 GETTABLEKS                       R24 R0 K5 ["Src"]
      108 GETTABLEKS                       R24 R24 K34 ["Components"]
      110 GETIMPORT                        R25 K4 [require]
      112 GETTABLEKS                       R26 R24 K35 ["MaterialBrowser"]
      114 GETTABLEKS                       R26 R26 K36 ["MaterialEditor"]
      116 CALL                             R25 1 1
      117 GETTABLEKS                       R26 R24 K35 ["MaterialBrowser"]
      119 GETTABLEKS                       R26 R26 K37 ["TopBar"]
      121 GETIMPORT                        R27 K4 [require]
      123 GETTABLEKS                       R28 R26 K38 ["ActionButton"]
      125 CALL                             R27 1 1
      126 GETIMPORT                        R28 K4 [require]
      128 GETTABLEKS                       R29 R26 K39 ["ViewTypeSelector"]
      130 CALL                             R28 1 1
      131 GETTABLEKS                       R29 R0 K5 ["Src"]
      133 GETTABLEKS                       R29 R29 K40 ["Resources"]
      135 GETTABLEKS                       R29 R29 K41 ["Constants"]
      137 GETIMPORT                        R30 K4 [require]
      139 GETTABLEKS                       R31 R29 K42 ["getMaterialName"]
      141 CALL                             R30 1 1
      142 GETIMPORT                        R31 K4 [require]
      144 GETTABLEKS                       R32 R29 K43 ["getMaterialPath"]
      146 CALL                             R31 1 1
      147 GETIMPORT                        R32 K4 [require]
      149 GETTABLEKS                       R33 R29 K44 ["getSupportedMaterials"]
      151 CALL                             R32 1 1
      152 GETIMPORT                        R33 K46 [game]
      154 LOADK                            R35 K47 ["InfluxReportMaterialManagerHundrethPercent2"]
      155 NAMECALL                         R33 R33 K48 ["GetFastInt"]
      157 CALL                             R33 2 1
      158 MOVE                             R34 R32
      159 CALL                             R34 0 1
      160 GETTABLEKS                       R35 R2 K49 ["PureComponent"]
      162 LOADK                            R37 K37 ["TopBar"]
      163 NAMECALL                         R35 R35 K50 ["extend"]
      165 CALL                             R35 2 1
      166 NEWCLOSURE                       R36 P0
      167 CAPTURE                          VAL R34
      168 CAPTURE                          VAL R30
      169 CAPTURE                          VAL R33
      170 CAPTURE                          VAL R31
      171 CAPTURE                          REF R25
      172 CAPTURE                          VAL R2
      173 SETTABLEKS                       R36 R35 K51 ["init"]
      175 DUPCLOSURE                       R36 K52 [PROTO_4]
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R28
      183 SETTABLEKS                       R36 R35 K53 ["render"]
      185 MOVE                             R36 R8
      186 DUPTABLE                         R37 K54 [{"Analytics", "GeneralServiceController", "Localization", "MaterialServiceController", "PluginController", "Stylizer"}]
      187 SETTABLEKS                       R9 R37 K15 ["Analytics"]
      189 SETTABLEKS                       R21 R37 K31 ["GeneralServiceController"]
      191 SETTABLEKS                       R10 R37 K16 ["Localization"]
      193 SETTABLEKS                       R22 R37 K32 ["MaterialServiceController"]
      195 SETTABLEKS                       R23 R37 K33 ["PluginController"]
      197 SETTABLEKS                       R13 R37 K22 ["Stylizer"]
      199 CALL                             R36 1 1
      200 MOVE                             R37 R35
      201 CALL                             R36 1 1
      202 MOVE                             R35 R36
      203 GETTABLEKS                       R36 R3 K55 ["connect"]
      205 DUPCLOSURE                       R37 K56 [PROTO_5]
      206 DUPCLOSURE                       R38 K57 [PROTO_7]
      207 CAPTURE                          VAL R18
      208 CALL                             R36 2 1
      209 MOVE                             R37 R11
      210 MOVE                             R38 R35
      211 CALL                             R37 1 -1
      212 CALL                             R36 -1 -1
      213 CLOSEUPVALS                      R25
      214 RETURN                           R36 -1
