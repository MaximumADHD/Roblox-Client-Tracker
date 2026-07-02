PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 SETTABLEKS                       R0 R3 K0 ["Expansion"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Selection"}]
        2 SETTABLEKS                       R0 R3 K0 ["Selection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R2 R1 K4 ["dispatchSetScreen"]
       12 GETTABLEKS                       R3 R1 K5 ["CloseOverlay"]
       14 GETTABLEKS                       R4 R1 K6 ["RecentViewToggled"]
       16 GETTABLEKS                       R5 R1 K7 ["dispatchSetRecentViewToggled"]
       18 GETIMPORT                        R6 K9 [next]
       20 MOVE                             R7 R0
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R8 R6 K10 ["children"]
       24 LENGTH                           R7 R8
       25 JUMPIFNOTEQKN                    R7 K11 [0] ; [+14]
       27 JUMPIFNOT                        R4 ; [+3]
       28 MOVE                             R7 R5
       29 LOADB                            R8 0
       30 CALL                             R7 1 0
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R9 R6 K12 ["Screen"]
       34 GETTABLE                         R7 R8 R9
       35 MOVE                             R8 R2
       36 MOVE                             R9 R7
       37 CALL                             R8 1 0
       38 MOVE                             R8 R3
       39 CALL                             R8 0 0
       40 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Expansion", "Selection"}]
        1 NEWTABLE                         R2 1 0
        3 GETTABLEKS                       R4 R0 K3 ["props"]
        5 GETTABLEKS                       R4 R4 K4 ["FileExplorerData"]
        7 GETTABLEN                        R3 R4 1
        8 LOADB                            R4 1
        9 SETTABLE                         R4 R2 R3
       10 SETTABLEKS                       R2 R1 K0 ["Expansion"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K1 ["Selection"]
       16 SETTABLEKS                       R1 R0 K5 ["state"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["OnExpansionChange"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R1 R0 K7 ["onSelectionChange"]
       27 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Overlay"]
        6 GETTABLEKS                       R4 R1 K3 ["dispatchSetScreen"]
        8 GETTABLEKS                       R5 R1 K4 ["CloseOverlay"]
       10 GETTABLEKS                       R6 R1 K5 ["RecentViewToggled"]
       12 GETTABLEKS                       R7 R1 K6 ["dispatchSetRecentViewToggled"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 NEWTABLE                         R10 0 0
       20 DUPTABLE                         R11 K9 [{"Background", "Overlay"}]
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R12 R12 K7 ["createElement"]
       24 GETUPVAL                         R13 2
       25 DUPTABLE                         R14 K15 [{"BackgroundColor", "OnClick", "Position", "Size", "Transparency"}]
       26 GETIMPORT                        R15 K18 [Color3.new]
       28 LOADN                            R16 0
       29 LOADN                            R17 0
       30 LOADN                            R18 0
       31 CALL                             R15 3 1
       32 SETTABLEKS                       R15 R14 K10 ["BackgroundColor"]
       34 SETTABLEKS                       R5 R14 K11 ["OnClick"]
       36 GETIMPORT                        R15 K20 [UDim2.new]
       38 LOADN                            R16 1
       39 LOADN                            R17 0
       40 LOADN                            R18 0
       41 LOADN                            R19 0
       42 CALL                             R15 4 1
       43 SETTABLEKS                       R15 R14 K12 ["Position"]
       45 GETIMPORT                        R15 K20 [UDim2.new]
       47 GETTABLEKS                       R16 R3 K8 ["Background"]
       49 GETTABLEKS                       R16 R16 K21 ["WidthScale"]
       51 LOADN                            R17 0
       52 LOADN                            R18 1
       53 LOADN                            R19 0
       54 CALL                             R15 4 1
       55 SETTABLEKS                       R15 R14 K13 ["Size"]
       57 GETTABLEKS                       R15 R3 K8 ["Background"]
       59 GETTABLEKS                       R15 R15 K14 ["Transparency"]
       61 SETTABLEKS                       R15 R14 K14 ["Transparency"]
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K8 ["Background"]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K7 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K26 [{["BackgroundColor"], ["Layout"], ["LayoutOrder"] = 2, ["VerticalAlignment"], ["Size"]}]
       71 GETTABLEKS                       R15 R2 K10 ["BackgroundColor"]
       73 SETTABLEKS                       R15 R14 K10 ["BackgroundColor"]
       75 GETIMPORT                        R15 K30 [Enum.FillDirection.Vertical]
       77 SETTABLEKS                       R15 R14 K22 ["Layout"]
       79 GETIMPORT                        R15 K32 [Enum.VerticalAlignment.Top]
       81 SETTABLEKS                       R15 R14 K25 ["VerticalAlignment"]
       83 GETIMPORT                        R15 K20 [UDim2.new]
       85 GETTABLEKS                       R16 R3 K33 ["Foreground"]
       87 GETTABLEKS                       R16 R16 K21 ["WidthScale"]
       89 LOADN                            R17 0
       90 LOADN                            R18 1
       91 LOADN                            R19 0
       92 CALL                             R15 4 1
       93 SETTABLEKS                       R15 R14 K13 ["Size"]
       95 DUPTABLE                         R15 K36 [{"CloseButton", "FolderTree"}]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K7 ["createElement"]
       99 GETUPVAL                         R17 2
      100 DUPTABLE                         R18 K40 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 1, ["Padding"], ["Size"]}]
      101 GETIMPORT                        R19 K42 [Enum.HorizontalAlignment.Right]
      103 SETTABLEKS                       R19 R18 K37 ["HorizontalAlignment"]
      105 GETIMPORT                        R19 K44 [Enum.FillDirection.Horizontal]
      107 SETTABLEKS                       R19 R18 K22 ["Layout"]
      109 DUPTABLE                         R19 K45 [{"Right"}]
      110 GETTABLEKS                       R20 R3 K39 ["Padding"]
      112 GETTABLEKS                       R20 R20 K41 ["Right"]
      114 SETTABLEKS                       R20 R19 K41 ["Right"]
      116 SETTABLEKS                       R19 R18 K39 ["Padding"]
      118 GETIMPORT                        R19 K20 [UDim2.new]
      120 LOADN                            R20 1
      121 LOADN                            R21 0
      122 LOADN                            R22 0
      123 LOADN                            R23 24
      124 CALL                             R19 4 1
      125 SETTABLEKS                       R19 R18 K13 ["Size"]
      127 DUPTABLE                         R19 K47 [{"CloseIcon"}]
      128 GETUPVAL                         R20 0
      129 GETTABLEKS                       R20 R20 K7 ["createElement"]
      131 LOADK                            R21 K48 ["ImageButton"]
      132 NEWTABLE                         R22 8 0
      134 GETIMPORT                        R23 K50 [Vector2.new]
      136 LOADK                            R24 K51 [0.5]
      137 LOADK                            R25 K51 [0.5]
      138 CALL                             R23 2 1
      139 SETTABLEKS                       R23 R22 K52 ["AnchorPoint"]
      141 LOADN                            R23 1
      142 SETTABLEKS                       R23 R22 K53 ["BackgroundTransparency"]
      144 GETTABLEKS                       R23 R3 K34 ["CloseButton"]
      146 GETTABLEKS                       R23 R23 K54 ["Images"]
      148 GETTABLEKS                       R23 R23 K55 ["Close"]
      150 SETTABLEKS                       R23 R22 K56 ["Image"]
      152 GETIMPORT                        R23 K58 [UDim2.fromOffset]
      154 GETTABLEKS                       R24 R3 K34 ["CloseButton"]
      156 GETTABLEKS                       R24 R24 K13 ["Size"]
      158 GETTABLEKS                       R25 R3 K34 ["CloseButton"]
      160 GETTABLEKS                       R25 R25 K13 ["Size"]
      162 CALL                             R23 2 1
      163 SETTABLEKS                       R23 R22 K13 ["Size"]
      165 GETUPVAL                         R24 3
      166 JUMPIFNOT                        R24 ; [+3]
      167 GETTABLEKS                       R23 R2 K59 ["TextColor"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R23
      171 SETTABLEKS                       R23 R22 K60 ["ImageColor3"]
      173 GETUPVAL                         R23 0
      174 GETTABLEKS                       R23 R23 K61 ["Event"]
      176 GETTABLEKS                       R23 R23 K62 ["Activated"]
      178 SETTABLE                         R5 R22 R23
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K46 ["CloseIcon"]
      182 CALL                             R16 3 1
      183 SETTABLEKS                       R16 R15 K34 ["CloseButton"]
      185 GETUPVAL                         R16 0
      186 GETTABLEKS                       R16 R16 K7 ["createElement"]
      188 GETUPVAL                         R17 4
      189 DUPTABLE                         R18 K67 [{["RootItems"], ["Size"], ["Expansion"], ["LayoutOrder"] = 2, ["OnExpansionChange"], ["OnSelectionChange"]}]
      190 GETTABLEKS                       R19 R0 K0 ["props"]
      192 GETTABLEKS                       R19 R19 K68 ["FileExplorerData"]
      194 SETTABLEKS                       R19 R18 K63 ["RootItems"]
      196 GETIMPORT                        R19 K70 [UDim2.fromScale]
      198 LOADN                            R20 1
      199 LOADN                            R21 1
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K13 ["Size"]
      203 GETTABLEKS                       R19 R0 K71 ["state"]
      205 GETTABLEKS                       R19 R19 K64 ["Expansion"]
      207 SETTABLEKS                       R19 R18 K64 ["Expansion"]
      209 GETTABLEKS                       R19 R0 K65 ["OnExpansionChange"]
      211 SETTABLEKS                       R19 R18 K65 ["OnExpansionChange"]
      213 GETTABLEKS                       R19 R0 K72 ["onSelectionChange"]
      215 SETTABLEKS                       R19 R18 K66 ["OnSelectionChange"]
      217 CALL                             R16 2 1
      218 SETTABLEKS                       R16 R15 K35 ["FolderTree"]
      220 CALL                             R12 3 1
      221 SETTABLEKS                       R12 R11 K2 ["Overlay"]
      223 CALL                             R8 3 -1
      224 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"RecentViewToggled"}]
        1 GETTABLEKS                       R3 R0 K2 ["AssetManagerReducer"]
        3 GETTABLEKS                       R3 R3 K3 ["recentViewToggled"]
        5 SETTABLEKS                       R3 R2 K0 ["RecentViewToggled"]
        7 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"dispatchSetRecentViewToggled", "dispatchSetScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetRecentViewToggled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetScreen"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Pane"]
       38 GETTABLEKS                       R8 R6 K13 ["ShowOnTop"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Src"]
       44 GETTABLEKS                       R10 R10 K15 ["Components"]
       46 GETTABLEKS                       R10 R10 K16 ["FolderTreeItem"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K14 ["Src"]
       53 GETTABLEKS                       R11 R11 K17 ["Util"]
       55 GETTABLEKS                       R11 R11 K18 ["Screens"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K4 [require]
       60 GETTABLEKS                       R12 R0 K14 ["Src"]
       62 GETTABLEKS                       R12 R12 K19 ["Actions"]
       64 GETTABLEKS                       R12 R12 K20 ["SetRecentViewToggled"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R13 R0 K14 ["Src"]
       71 GETTABLEKS                       R13 R13 K19 ["Actions"]
       73 GETTABLEKS                       R13 R13 K21 ["SetScreen"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       78 LOADK                            R15 K23 ["ExplorerOverlay"]
       79 NAMECALL                         R13 R13 K24 ["extend"]
       81 CALL                             R13 2 1
       82 GETIMPORT                        R14 K26 [game]
       84 LOADK                            R16 K27 ["AssetManagerCloseButtonColorFix"]
       85 NAMECALL                         R14 R14 K28 ["GetFastFlag"]
       87 CALL                             R14 2 1
       88 GETTABLEKS                       R15 R3 K29 ["Dash"]
       90 GETTABLEKS                       R16 R15 K30 ["join"]
       92 GETTABLEKS                       R17 R6 K31 ["TreeView"]
       94 DUPCLOSURE                       R18 K32 [PROTO_2]
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R18 R13 K33 ["init"]
       98 DUPCLOSURE                       R18 K34 [PROTO_3]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R18 R13 K35 ["render"]
      106 MOVE                             R18 R5
      107 DUPTABLE                         R19 K38 [{"Stylizer", "Localization"}]
      108 GETTABLEKS                       R20 R4 K36 ["Stylizer"]
      110 SETTABLEKS                       R20 R19 K36 ["Stylizer"]
      112 GETTABLEKS                       R20 R4 K37 ["Localization"]
      114 SETTABLEKS                       R20 R19 K37 ["Localization"]
      116 CALL                             R18 1 1
      117 MOVE                             R19 R13
      118 CALL                             R18 1 1
      119 MOVE                             R13 R18
      120 DUPCLOSURE                       R18 K39 [PROTO_4]
      121 DUPCLOSURE                       R19 K40 [PROTO_7]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R12
      124 GETTABLEKS                       R20 R2 K41 ["connect"]
      126 MOVE                             R21 R18
      127 MOVE                             R22 R19
      128 CALL                             R20 2 1
      129 MOVE                             R21 R13
      130 CALL                             R20 1 -1
      131 RETURN                           R20 -1
