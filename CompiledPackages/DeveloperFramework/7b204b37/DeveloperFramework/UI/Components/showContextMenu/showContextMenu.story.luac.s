PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action id"]
        3 GETTABLEKS                       R3 R0 K3 ["Id"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 5
       10 DUPTABLE                         R3 K6 [{"Id", "Text", "OnItemClicked"}]
       11 LOADK                            R4 K7 ["Id1"]
       12 SETTABLEKS                       R4 R3 K3 ["Id"]
       14 LOADK                            R4 K8 ["Action 1"]
       15 SETTABLEKS                       R4 R3 K4 ["Text"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K9 ["onClickedAction"]
       20 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       22 DUPTABLE                         R4 K11 [{"Id", "Text", "Checked", "OnItemClicked"}]
       23 LOADK                            R5 K12 ["Id2"]
       24 SETTABLEKS                       R5 R4 K3 ["Id"]
       26 LOADK                            R5 K13 ["Action 2"]
       27 SETTABLEKS                       R5 R4 K4 ["Text"]
       29 LOADB                            R5 1
       30 SETTABLEKS                       R5 R4 K10 ["Checked"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K9 ["onClickedAction"]
       35 SETTABLEKS                       R5 R4 K5 ["OnItemClicked"]
       37 DUPTABLE                         R5 K15 [{"Id", "Text", "Enabled", "OnItemClicked"}]
       38 LOADK                            R6 K16 ["Id3"]
       39 SETTABLEKS                       R6 R5 K3 ["Id"]
       41 LOADK                            R6 K17 ["Action 3 - Disabled"]
       42 SETTABLEKS                       R6 R5 K4 ["Text"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K14 ["Enabled"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K9 ["onClickedAction"]
       50 SETTABLEKS                       R6 R5 K5 ["OnItemClicked"]
       52 DUPTABLE                         R6 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
       53 LOADK                            R7 K20 ["Id4"]
       54 SETTABLEKS                       R7 R6 K3 ["Id"]
       56 LOADK                            R7 K21 ["Action 4 - icon"]
       57 SETTABLEKS                       R7 R6 K4 ["Text"]
       59 LOADK                            R7 K22 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       60 SETTABLEKS                       R7 R6 K18 ["Icon"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K9 ["onClickedAction"]
       65 SETTABLEKS                       R7 R6 K5 ["OnItemClicked"]
       67 DUPTABLE                         R7 K23 [{"Text", "OnItemClicked"}]
       68 LOADK                            R8 K24 ["Action 5 - Auto generated id"]
       69 SETTABLEKS                       R8 R7 K4 ["Text"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R8 R9 K9 ["onClickedAction"]
       74 SETTABLEKS                       R8 R7 K5 ["OnItemClicked"]
       76 SETLIST                          R2 R3 5 [1]
       78 GETUPVAL                         R3 1
       79 MOVE                             R4 R1
       80 MOVE                             R5 R2
       81 CALL                             R3 2 0
       82 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onButtonClicked"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Style", "Text", "Size", "OnClick"}]
        5 LOADK                            R4 K6 ["Round"]
        6 SETTABLEKS                       R4 R3 K1 ["Style"]
        8 LOADK                            R4 K7 ["Click Me!"]
        9 SETTABLEKS                       R4 R3 K2 ["Text"]
       11 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       13 LOADN                            R5 120
       14 LOADN                            R6 32
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K3 ["Size"]
       18 GETTABLEKS                       R4 R0 K11 ["onButtonClicked"]
       20 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action: "]
        3 GETTABLEKS                       R3 R0 K3 ["Text"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 3
       10 DUPTABLE                         R3 K6 [{"Text", "Icon", "OnItemClicked"}]
       11 LOADK                            R4 K7 ["Copy"]
       12 SETTABLEKS                       R4 R3 K3 ["Text"]
       14 LOADK                            R4 K8 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
       15 SETTABLEKS                       R4 R3 K4 ["Icon"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K9 ["onClickedAction"]
       20 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       22 DUPTABLE                         R4 K11 [{"ShowSeparator"}]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K10 ["ShowSeparator"]
       26 NEWTABLE                         R5 1 2
       28 LOADK                            R8 K12 ["Formatting Options"]
       29 SETTABLEKS                       R8 R5 K3 ["Text"]
       31 DUPTABLE                         R6 K6 [{"Text", "Icon", "OnItemClicked"}]
       32 LOADK                            R7 K13 ["Cut"]
       33 SETTABLEKS                       R7 R6 K3 ["Text"]
       35 LOADK                            R7 K14 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
       36 SETTABLEKS                       R7 R6 K4 ["Icon"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K9 ["onClickedAction"]
       41 SETTABLEKS                       R7 R6 K5 ["OnItemClicked"]
       43 DUPTABLE                         R7 K15 [{"Text", "OnItemClicked"}]
       44 LOADK                            R8 K16 ["Paste"]
       45 SETTABLEKS                       R8 R7 K3 ["Text"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K9 ["onClickedAction"]
       50 SETTABLEKS                       R8 R7 K5 ["OnItemClicked"]
       52 SETLIST                          R5 R6 2 [1]
       54 SETLIST                          R2 R3 3 [1]
       56 GETUPVAL                         R3 1
       57 MOVE                             R4 R1
       58 MOVE                             R5 R2
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_6:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onRightClick"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"Style", "AutomaticSize", "Layout", "Spacing", "Padding", "OnRightClick"}]
        5 LOADK                            R4 K8 ["BorderBox"]
        6 SETTABLEKS                       R4 R3 K1 ["Style"]
        8 GETIMPORT                        R4 K11 [Enum.AutomaticSize.XY]
       10 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       12 GETIMPORT                        R4 K14 [Enum.FillDirection.Horizontal]
       14 SETTABLEKS                       R4 R3 K3 ["Layout"]
       16 GETIMPORT                        R4 K17 [UDim.new]
       18 LOADN                            R5 0
       19 LOADN                            R6 10
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K4 ["Spacing"]
       23 LOADN                            R4 5
       24 SETTABLEKS                       R4 R3 K5 ["Padding"]
       26 GETTABLEKS                       R4 R0 K18 ["onRightClick"]
       28 SETTABLEKS                       R4 R3 K6 ["OnRightClick"]
       30 NEWTABLE                         R4 0 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K0 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K21 [{"AutomaticSize", "LayoutOrder", "Text"}]
       37 GETIMPORT                        R8 K11 [Enum.AutomaticSize.XY]
       39 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
       41 LOADN                            R8 1
       42 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       44 LOADK                            R8 K22 ["Right-click here to open context menu"]
       45 SETTABLEKS                       R8 R7 K20 ["Text"]
       47 CALL                             R5 2 -1
       48 SETLIST                          R4 R5 -1 [1]
       50 CALL                             R1 3 -1
       51 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action: "]
        3 GETTABLEKS                       R3 R0 K3 ["Text"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K5 [{"Text", "OnItemClicked"}]
       11 LOADK                            R4 K6 ["B"]
       12 SETTABLEKS                       R4 R3 K3 ["Text"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K7 ["onClickedAction"]
       17 SETTABLEKS                       R4 R3 K4 ["OnItemClicked"]
       19 SETTABLEKS                       R3 R2 K8 ["idB"]
       21 DUPTABLE                         R3 K5 [{"Text", "OnItemClicked"}]
       22 LOADK                            R4 K9 ["D"]
       23 SETTABLEKS                       R4 R3 K3 ["Text"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K7 ["onClickedAction"]
       28 SETTABLEKS                       R4 R3 K4 ["OnItemClicked"]
       30 SETTABLEKS                       R3 R2 K10 ["idD"]
       32 DUPTABLE                         R3 K5 [{"Text", "OnItemClicked"}]
       33 LOADK                            R4 K11 ["A"]
       34 SETTABLEKS                       R4 R3 K3 ["Text"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K7 ["onClickedAction"]
       39 SETTABLEKS                       R4 R3 K4 ["OnItemClicked"]
       41 SETTABLEKS                       R3 R2 K12 ["idA"]
       43 DUPTABLE                         R3 K5 [{"Text", "OnItemClicked"}]
       44 LOADK                            R4 K13 ["C"]
       45 SETTABLEKS                       R4 R3 K3 ["Text"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K7 ["onClickedAction"]
       50 SETTABLEKS                       R4 R3 K4 ["OnItemClicked"]
       52 SETTABLEKS                       R3 R2 K14 ["idC"]
       54 DUPTABLE                         R3 K5 [{"Text", "OnItemClicked"}]
       55 LOADK                            R4 K15 ["I"]
       56 SETTABLEKS                       R4 R3 K3 ["Text"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R4 R5 K7 ["onClickedAction"]
       61 SETTABLEKS                       R4 R3 K4 ["OnItemClicked"]
       63 SETTABLEKS                       R3 R2 K16 ["idI"]
       65 NEWTABLE                         R3 0 5
       67 LOADK                            R4 K12 ["idA"]
       68 LOADK                            R5 K8 ["idB"]
       69 LOADK                            R6 K14 ["idC"]
       70 LOADK                            R7 K10 ["idD"]
       71 LOADK                            R8 K16 ["idI"]
       72 SETLIST                          R3 R4 5 [1]
       74 GETTABLEKS                       R4 R2 K10 ["idD"]
       76 LOADB                            R5 0
       77 SETTABLEKS                       R5 R4 K17 ["Enabled"]
       79 GETUPVAL                         R4 1
       80 MOVE                             R5 R1
       81 MOVE                             R6 R2
       82 MOVE                             R7 R3
       83 CALL                             R4 3 0
       84 RETURN                           R0 0

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onButtonClicked"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Style", "Text", "Size", "OnClick"}]
        5 LOADK                            R4 K6 ["Round"]
        6 SETTABLEKS                       R4 R3 K1 ["Style"]
        8 LOADK                            R4 K7 ["Click Me!"]
        9 SETTABLEKS                       R4 R3 K2 ["Text"]
       11 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       13 LOADN                            R5 120
       14 LOADN                            R6 32
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K3 ["Size"]
       18 GETTABLEKS                       R4 R0 K11 ["onButtonClicked"]
       20 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["showContextMenu"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["Pane"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R8 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R8 K8 ["Components"]
       49 GETTABLEKS                       R6 R7 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R8 R0 K2 ["UI"]
       56 GETTABLEKS                       R7 R8 K13 ["ContextServices"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R6 K14 ["withContext"]
       61 GETTABLEKS                       R8 R1 K15 ["PureComponent"]
       63 LOADK                            R10 K16 ["ButtonContextMenuExample"]
       64 NAMECALL                         R8 R8 K17 ["extend"]
       66 CALL                             R8 2 1
       67 DUPCLOSURE                       R9 K18 [PROTO_2]
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R9 R8 K19 ["init"]
       71 DUPCLOSURE                       R9 K20 [PROTO_3]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R9 R8 K21 ["render"]
       76 MOVE                             R9 R7
       77 DUPTABLE                         R10 K23 [{"Plugin"}]
       78 GETTABLEKS                       R11 R6 K22 ["Plugin"]
       80 SETTABLEKS                       R11 R10 K22 ["Plugin"]
       82 CALL                             R9 1 1
       83 MOVE                             R10 R8
       84 CALL                             R9 1 1
       85 MOVE                             R8 R9
       86 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       88 LOADK                            R11 K24 ["PaneContextSubMenuExample"]
       89 NAMECALL                         R9 R9 K17 ["extend"]
       91 CALL                             R9 2 1
       92 DUPCLOSURE                       R10 K25 [PROTO_6]
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R10 R9 K19 ["init"]
       96 DUPCLOSURE                       R10 K26 [PROTO_7]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R10 R9 K21 ["render"]
      102 MOVE                             R10 R7
      103 DUPTABLE                         R11 K23 [{"Plugin"}]
      104 GETTABLEKS                       R12 R6 K22 ["Plugin"]
      106 SETTABLEKS                       R12 R11 K22 ["Plugin"]
      108 CALL                             R10 1 1
      109 MOVE                             R11 R9
      110 CALL                             R10 1 1
      111 MOVE                             R9 R10
      112 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
      114 LOADK                            R12 K27 ["OrderedContextMenuExample"]
      115 NAMECALL                         R10 R10 K17 ["extend"]
      117 CALL                             R10 2 1
      118 DUPCLOSURE                       R11 K28 [PROTO_10]
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R11 R10 K19 ["init"]
      122 DUPCLOSURE                       R11 K29 [PROTO_11]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R11 R10 K21 ["render"]
      127 MOVE                             R11 R7
      128 DUPTABLE                         R12 K23 [{"Plugin"}]
      129 GETTABLEKS                       R13 R6 K22 ["Plugin"]
      131 SETTABLEKS                       R13 R12 K22 ["Plugin"]
      133 CALL                             R11 1 1
      134 MOVE                             R12 R10
      135 CALL                             R11 1 1
      136 MOVE                             R10 R11
      137 DUPTABLE                         R11 K31 [{"stories"}]
      138 NEWTABLE                         R12 0 3
      140 DUPTABLE                         R13 K34 [{"name", "story"}]
      141 LOADK                            R14 K35 ["Button with Context Menu"]
      142 SETTABLEKS                       R14 R13 K32 ["name"]
      144 SETTABLEKS                       R8 R13 K33 ["story"]
      146 DUPTABLE                         R14 K34 [{"name", "story"}]
      147 LOADK                            R15 K36 ["Context Menu with sub-menus"]
      148 SETTABLEKS                       R15 R14 K32 ["name"]
      150 SETTABLEKS                       R9 R14 K33 ["story"]
      152 DUPTABLE                         R15 K34 [{"name", "story"}]
      153 LOADK                            R16 K37 ["Menu with a specific order"]
      154 SETTABLEKS                       R16 R15 K32 ["name"]
      156 SETTABLEKS                       R10 R15 K33 ["story"]
      158 SETLIST                          R12 R13 3 [1]
      160 SETTABLEKS                       R12 R11 K30 ["stories"]
      162 RETURN                           R11 1
