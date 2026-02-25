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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["props"]
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
        3 GETTABLEKS                       R5 R0 K3 ["props"]
        5 GETTABLEKS                       R4 R5 K4 ["FileExplorerData"]
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
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 NEWTABLE                         R10 0 0
       20 DUPTABLE                         R11 K9 [{"Background", "Overlay"}]
       21 GETUPVAL                         R13 0
       22 GETTABLEKS                       R12 R13 K7 ["createElement"]
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
       47 GETTABLEKS                       R17 R3 K8 ["Background"]
       49 GETTABLEKS                       R16 R17 K21 ["WidthScale"]
       51 LOADN                            R17 0
       52 LOADN                            R18 1
       53 LOADN                            R19 0
       54 CALL                             R15 4 1
       55 SETTABLEKS                       R15 R14 K13 ["Size"]
       57 GETTABLEKS                       R16 R3 K8 ["Background"]
       59 GETTABLEKS                       R15 R16 K14 ["Transparency"]
       61 SETTABLEKS                       R15 R14 K14 ["Transparency"]
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K8 ["Background"]
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K7 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K25 [{"BackgroundColor", "Layout", "LayoutOrder", "VerticalAlignment", "Size"}]
       71 GETTABLEKS                       R15 R2 K10 ["BackgroundColor"]
       73 SETTABLEKS                       R15 R14 K10 ["BackgroundColor"]
       75 GETIMPORT                        R15 K29 [Enum.FillDirection.Vertical]
       77 SETTABLEKS                       R15 R14 K22 ["Layout"]
       79 LOADN                            R15 2
       80 SETTABLEKS                       R15 R14 K23 ["LayoutOrder"]
       82 GETIMPORT                        R15 K31 [Enum.VerticalAlignment.Top]
       84 SETTABLEKS                       R15 R14 K24 ["VerticalAlignment"]
       86 GETIMPORT                        R15 K20 [UDim2.new]
       88 GETTABLEKS                       R17 R3 K32 ["Foreground"]
       90 GETTABLEKS                       R16 R17 K21 ["WidthScale"]
       92 LOADN                            R17 0
       93 LOADN                            R18 1
       94 LOADN                            R19 0
       95 CALL                             R15 4 1
       96 SETTABLEKS                       R15 R14 K13 ["Size"]
       98 DUPTABLE                         R15 K35 [{"CloseButton", "FolderTree"}]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R16 R17 K7 ["createElement"]
      102 GETUPVAL                         R17 2
      103 DUPTABLE                         R18 K38 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size"}]
      104 GETIMPORT                        R19 K40 [Enum.HorizontalAlignment.Right]
      106 SETTABLEKS                       R19 R18 K36 ["HorizontalAlignment"]
      108 GETIMPORT                        R19 K42 [Enum.FillDirection.Horizontal]
      110 SETTABLEKS                       R19 R18 K22 ["Layout"]
      112 LOADN                            R19 1
      113 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      115 DUPTABLE                         R19 K43 [{"Right"}]
      116 GETTABLEKS                       R21 R3 K37 ["Padding"]
      118 GETTABLEKS                       R20 R21 K39 ["Right"]
      120 SETTABLEKS                       R20 R19 K39 ["Right"]
      122 SETTABLEKS                       R19 R18 K37 ["Padding"]
      124 GETIMPORT                        R19 K20 [UDim2.new]
      126 LOADN                            R20 1
      127 LOADN                            R21 0
      128 LOADN                            R22 0
      129 LOADN                            R23 24
      130 CALL                             R19 4 1
      131 SETTABLEKS                       R19 R18 K13 ["Size"]
      133 DUPTABLE                         R19 K45 [{"CloseIcon"}]
      134 GETUPVAL                         R21 0
      135 GETTABLEKS                       R20 R21 K7 ["createElement"]
      137 LOADK                            R21 K46 ["ImageButton"]
      138 NEWTABLE                         R22 8 0
      140 GETIMPORT                        R23 K48 [Vector2.new]
      142 LOADK                            R24 K49 [0.5]
      143 LOADK                            R25 K49 [0.5]
      144 CALL                             R23 2 1
      145 SETTABLEKS                       R23 R22 K50 ["AnchorPoint"]
      147 LOADN                            R23 1
      148 SETTABLEKS                       R23 R22 K51 ["BackgroundTransparency"]
      150 GETTABLEKS                       R25 R3 K33 ["CloseButton"]
      152 GETTABLEKS                       R24 R25 K52 ["Images"]
      154 GETTABLEKS                       R23 R24 K53 ["Close"]
      156 SETTABLEKS                       R23 R22 K54 ["Image"]
      158 GETIMPORT                        R23 K56 [UDim2.fromOffset]
      160 GETTABLEKS                       R25 R3 K33 ["CloseButton"]
      162 GETTABLEKS                       R24 R25 K13 ["Size"]
      164 GETTABLEKS                       R26 R3 K33 ["CloseButton"]
      166 GETTABLEKS                       R25 R26 K13 ["Size"]
      168 CALL                             R23 2 1
      169 SETTABLEKS                       R23 R22 K13 ["Size"]
      171 GETUPVAL                         R24 3
      172 JUMPIFNOT                        R24 ; [+3]
      173 GETTABLEKS                       R23 R2 K57 ["TextColor"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R23
      177 SETTABLEKS                       R23 R22 K58 ["ImageColor3"]
      179 GETUPVAL                         R25 0
      180 GETTABLEKS                       R24 R25 K59 ["Event"]
      182 GETTABLEKS                       R23 R24 K60 ["Activated"]
      184 SETTABLE                         R5 R22 R23
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K44 ["CloseIcon"]
      188 CALL                             R16 3 1
      189 SETTABLEKS                       R16 R15 K33 ["CloseButton"]
      191 GETUPVAL                         R17 0
      192 GETTABLEKS                       R16 R17 K7 ["createElement"]
      194 GETUPVAL                         R17 4
      195 DUPTABLE                         R18 K65 [{"RootItems", "Size", "Expansion", "LayoutOrder", "OnExpansionChange", "OnSelectionChange"}]
      196 GETTABLEKS                       R20 R0 K0 ["props"]
      198 GETTABLEKS                       R19 R20 K66 ["FileExplorerData"]
      200 SETTABLEKS                       R19 R18 K61 ["RootItems"]
      202 GETIMPORT                        R19 K68 [UDim2.fromScale]
      204 LOADN                            R20 1
      205 LOADN                            R21 1
      206 CALL                             R19 2 1
      207 SETTABLEKS                       R19 R18 K13 ["Size"]
      209 GETTABLEKS                       R20 R0 K69 ["state"]
      211 GETTABLEKS                       R19 R20 K62 ["Expansion"]
      213 SETTABLEKS                       R19 R18 K62 ["Expansion"]
      215 LOADN                            R19 2
      216 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      218 GETTABLEKS                       R19 R0 K63 ["OnExpansionChange"]
      220 SETTABLEKS                       R19 R18 K63 ["OnExpansionChange"]
      222 GETTABLEKS                       R19 R0 K70 ["onSelectionChange"]
      224 SETTABLEKS                       R19 R18 K64 ["OnSelectionChange"]
      226 CALL                             R16 2 1
      227 SETTABLEKS                       R16 R15 K34 ["FolderTree"]
      229 CALL                             R12 3 1
      230 SETTABLEKS                       R12 R11 K2 ["Overlay"]
      232 CALL                             R8 3 -1
      233 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"RecentViewToggled"}]
        1 GETTABLEKS                       R4 R0 K2 ["AssetManagerReducer"]
        3 GETTABLEKS                       R3 R4 K3 ["recentViewToggled"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Pane"]
       38 GETTABLEKS                       R8 R6 K13 ["ShowOnTop"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R12 R0 K14 ["Src"]
       44 GETTABLEKS                       R11 R12 K15 ["Components"]
       46 GETTABLEKS                       R10 R11 K16 ["FolderTreeItem"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R13 R0 K14 ["Src"]
       53 GETTABLEKS                       R12 R13 K17 ["Util"]
       55 GETTABLEKS                       R11 R12 K18 ["Screens"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K4 [require]
       60 GETTABLEKS                       R14 R0 K14 ["Src"]
       62 GETTABLEKS                       R13 R14 K19 ["Actions"]
       64 GETTABLEKS                       R12 R13 K20 ["SetRecentViewToggled"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R15 R0 K14 ["Src"]
       71 GETTABLEKS                       R14 R15 K19 ["Actions"]
       73 GETTABLEKS                       R13 R14 K21 ["SetScreen"]
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
