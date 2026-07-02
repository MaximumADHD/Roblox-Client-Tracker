PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action id"]
        3 GETTABLEKS                       R3 R0 K3 ["Id"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 5
       10 DUPTABLE                         R3 K8 [{["Id"] = "Id1", ["Text"] = "Action 1", ["OnItemClicked"]}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K9 ["onClickedAction"]
       14 SETTABLEKS                       R4 R3 K7 ["OnItemClicked"]
       16 DUPTABLE                         R4 K14 [{["Id"] = "Id2", ["Text"] = "Action 2", ["Checked"] = True, ["OnItemClicked"]}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K9 ["onClickedAction"]
       20 SETTABLEKS                       R5 R4 K7 ["OnItemClicked"]
       22 DUPTABLE                         R5 K19 [{["Id"] = "Id3", ["Text"] = "Action 3 - Disabled", ["Enabled"] = False, ["OnItemClicked"]}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K9 ["onClickedAction"]
       26 SETTABLEKS                       R6 R5 K7 ["OnItemClicked"]
       28 DUPTABLE                         R6 K24 [{["Id"] = "Id4", ["Text"] = "Action 4 - icon", ["Icon"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["OnItemClicked"]}]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K9 ["onClickedAction"]
       32 SETTABLEKS                       R7 R6 K7 ["OnItemClicked"]
       34 DUPTABLE                         R7 K26 [{["Text"] = "Action 5 - Auto generated id", ["OnItemClicked"]}]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K9 ["onClickedAction"]
       38 SETTABLEKS                       R8 R7 K7 ["OnItemClicked"]
       40 SETLIST                          R2 R3 5 [1]
       42 GETUPVAL                         R3 1
       43 MOVE                             R4 R1
       44 MOVE                             R5 R2
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onButtonClicked"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Style"] = "Round", ["Text"] = "Click Me!", ["Size"], ["OnClick"]}]
        5 GETIMPORT                        R4 K10 [UDim2.fromOffset]
        7 LOADN                            R5 120
        8 LOADN                            R6 32
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K5 ["Size"]
       12 GETTABLEKS                       R4 R0 K11 ["onButtonClicked"]
       14 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action: "]
        3 GETTABLEKS                       R3 R0 K3 ["Text"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 3
       10 DUPTABLE                         R3 K8 [{["Text"] = "Copy", ["Icon"] = "rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png", ["OnItemClicked"]}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K9 ["onClickedAction"]
       14 SETTABLEKS                       R4 R3 K7 ["OnItemClicked"]
       16 DUPTABLE                         R4 K12 [{["ShowSeparator"] = True}]
       17 NEWTABLE                         R5 1 2
       19 LOADK                            R8 K13 ["Formatting Options"]
       20 SETTABLEKS                       R8 R5 K3 ["Text"]
       22 DUPTABLE                         R6 K16 [{["Text"] = "Cut", ["Icon"] = "rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png", ["OnItemClicked"]}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K9 ["onClickedAction"]
       26 SETTABLEKS                       R7 R6 K7 ["OnItemClicked"]
       28 DUPTABLE                         R7 K18 [{["Text"] = "Paste", ["OnItemClicked"]}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K9 ["onClickedAction"]
       32 SETTABLEKS                       R8 R7 K7 ["OnItemClicked"]
       34 SETLIST                          R5 R6 2 [1]
       36 SETLIST                          R2 R3 3 [1]
       38 GETUPVAL                         R3 1
       39 MOVE                             R4 R1
       40 MOVE                             R5 R2
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_6:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onRightClick"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Style"] = "BorderBox", ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"] = 5, ["OnRightClick"]}]
        5 GETIMPORT                        R4 K12 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
        9 GETIMPORT                        R4 K15 [Enum.FillDirection.Horizontal]
       11 SETTABLEKS                       R4 R3 K4 ["Layout"]
       13 GETIMPORT                        R4 K18 [UDim.new]
       15 LOADN                            R5 0
       16 LOADN                            R6 10
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K5 ["Spacing"]
       20 GETTABLEKS                       R4 R0 K19 ["onRightClick"]
       22 SETTABLEKS                       R4 R3 K8 ["OnRightClick"]
       24 NEWTABLE                         R4 0 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K24 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"] = "Right-click here to open context menu"}]
       31 GETIMPORT                        R8 K12 [Enum.AutomaticSize.XY]
       33 SETTABLEKS                       R8 R7 K3 ["AutomaticSize"]
       35 CALL                             R5 2 -1
       36 SETLIST                          R4 R5 -1 [1]
       38 CALL                             R1 3 -1
       39 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Clicked action: "]
        3 GETTABLEKS                       R3 R0 K3 ["Text"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K6 [{["Text"] = "B", ["OnItemClicked"]}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["onClickedAction"]
       14 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       16 SETTABLEKS                       R3 R2 K8 ["idB"]
       18 DUPTABLE                         R3 K10 [{["Text"] = "D", ["OnItemClicked"]}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["onClickedAction"]
       22 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       24 SETTABLEKS                       R3 R2 K11 ["idD"]
       26 DUPTABLE                         R3 K13 [{["Text"] = "A", ["OnItemClicked"]}]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["onClickedAction"]
       30 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       32 SETTABLEKS                       R3 R2 K14 ["idA"]
       34 DUPTABLE                         R3 K16 [{["Text"] = "C", ["OnItemClicked"]}]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K7 ["onClickedAction"]
       38 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       40 SETTABLEKS                       R3 R2 K17 ["idC"]
       42 DUPTABLE                         R3 K19 [{["Text"] = "I", ["OnItemClicked"]}]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K7 ["onClickedAction"]
       46 SETTABLEKS                       R4 R3 K5 ["OnItemClicked"]
       48 SETTABLEKS                       R3 R2 K20 ["idI"]
       50 NEWTABLE                         R3 0 5
       52 LOADK                            R4 K14 ["idA"]
       53 LOADK                            R5 K8 ["idB"]
       54 LOADK                            R6 K17 ["idC"]
       55 LOADK                            R7 K11 ["idD"]
       56 LOADK                            R8 K20 ["idI"]
       57 SETLIST                          R3 R4 5 [1]
       59 GETTABLEKS                       R4 R2 K11 ["idD"]
       61 LOADB                            R5 0
       62 SETTABLEKS                       R5 R4 K21 ["Enabled"]
       64 GETUPVAL                         R4 1
       65 MOVE                             R5 R1
       66 MOVE                             R6 R2
       67 MOVE                             R7 R3
       68 CALL                             R4 3 0
       69 RETURN                           R0 0

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
        1 SETTABLEKS                       R1 R0 K1 ["onClickedAction"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K2 ["onButtonClicked"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Style"] = "Round", ["Text"] = "Click Me!", ["Size"], ["OnClick"]}]
        5 GETIMPORT                        R4 K10 [UDim2.fromOffset]
        7 LOADN                            R5 120
        8 LOADN                            R6 32
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K5 ["Size"]
       12 GETTABLEKS                       R4 R0 K11 ["onButtonClicked"]
       14 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["showContextMenu"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["Pane"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K8 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R7 R0 K2 ["UI"]
       56 GETTABLEKS                       R7 R7 K13 ["ContextServices"]
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
      140 DUPTABLE                         R13 K35 [{["name"] = "Button with Context Menu", ["story"]}]
      141 SETTABLEKS                       R8 R13 K34 ["story"]
      143 DUPTABLE                         R14 K37 [{["name"] = "Context Menu with sub-menus", ["story"]}]
      144 SETTABLEKS                       R9 R14 K34 ["story"]
      146 DUPTABLE                         R15 K39 [{["name"] = "Menu with a specific order", ["story"]}]
      147 SETTABLEKS                       R10 R15 K34 ["story"]
      149 SETLIST                          R12 R13 3 [1]
      151 SETTABLEKS                       R12 R11 K30 ["stories"]
      153 RETURN                           R11 1
