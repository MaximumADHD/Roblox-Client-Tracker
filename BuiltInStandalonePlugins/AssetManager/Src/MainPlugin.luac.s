PROTO_0:
        0 DUPTABLE                         R1 K6 [{"Input", "PluginController", "ExplorerController", "ItemsController", "SearchController", "LayoutController"}]
        1 GETTABLEKS                       R2 R0 K7 ["input"]
        3 SETTABLEKS                       R2 R1 K0 ["Input"]
        5 GETTABLEKS                       R2 R0 K8 ["pluginController"]
        7 SETTABLEKS                       R2 R1 K1 ["PluginController"]
        9 GETTABLEKS                       R2 R0 K9 ["explorerController"]
       11 SETTABLEKS                       R2 R1 K2 ["ExplorerController"]
       13 GETTABLEKS                       R2 R0 K10 ["itemsController"]
       15 SETTABLEKS                       R2 R1 K3 ["ItemsController"]
       17 GETTABLEKS                       R2 R0 K11 ["searchController"]
       19 SETTABLEKS                       R2 R1 K4 ["SearchController"]
       21 GETTABLEKS                       R2 R0 K12 ["layoutController"]
       23 SETTABLEKS                       R2 R1 K5 ["LayoutController"]
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["layoutController"]
        5 GETTABLEKS                       R5 R2 K1 ["Layout"]
        7 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+42]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+30]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["sendEnabledEvent"]
       12 DUPTABLE                         R1 K4 [{"actionType"}]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["Types"]
       16 GETTABLEKS                       R2 R2 K6 ["ActionType"]
       18 GETTABLEKS                       R2 R2 K7 ["RibbonClick"]
       20 SETTABLEKS                       R2 R1 K3 ["actionType"]
       22 DUPTABLE                         R2 K11 [{"ExplorerController", "LayoutController", "ItemsController"}]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K12 ["explorerController"]
       26 SETTABLEKS                       R3 R2 K8 ["ExplorerController"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K13 ["layoutController"]
       31 SETTABLEKS                       R3 R2 K9 ["LayoutController"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K14 ["itemsController"]
       36 SETTABLEKS                       R3 R2 K10 ["ItemsController"]
       38 CALL                             R0 2 0
       39 GETUPVAL                         R0 3
       40 CALL                             R0 0 1
       41 JUMPIF                           R0 ; [+6]
       42 DUPTABLE                         R0 K16 [{["actionType"] = "ribbon_click"}]
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R1 R1 K2 ["sendEnabledEvent"]
       46 MOVE                             R2 R0
       47 CALL                             R1 1 0
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K0 ["state"]
       51 GETTABLEKS                       R0 R0 K1 ["enabled"]
       53 JUMPIFNOT                        R0 ; [+9]
       54 GETUPVAL                         R0 5
       55 GETUPVAL                         R1 6
       56 GETTABLEKS                       R1 R1 K17 ["Plugin"]
       58 GETUPVAL                         R2 0
       59 NAMECALL                         R2 R2 K18 ["_getAllControllers"]
       61 CALL                             R2 1 -1
       62 CALL                             R0 -1 0
       63 GETUPVAL                         R0 0
       64 DUPCLOSURE                       R2 K19 [PROTO_2]
       65 NAMECALL                         R0 R0 K20 ["setState"]
       67 CALL                             R0 2 0
       68 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K4 ["Plugin"]
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K5 ["_getAllControllers"]
       12 CALL                             R2 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R0 K5 ["onClose"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K8 ["onDockWidgetCreated"]
       31 GETUPVAL                         R2 5
       32 GETTABLEKS                       R2 R2 K9 ["Localization"]
       34 GETTABLEKS                       R2 R2 K10 ["new"]
       36 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       37 GETUPVAL                         R4 6
       38 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       40 GETUPVAL                         R4 7
       41 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R0 K16 ["localization"]
       46 GETUPVAL                         R2 8
       47 GETTABLEKS                       R2 R2 K10 ["new"]
       49 CALL                             R2 0 1
       50 SETTABLEKS                       R2 R0 K17 ["DEPRECATED_stylizer"]
       52 GETUPVAL                         R2 9
       53 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       55 CALL                             R2 1 1
       56 SETTABLEKS                       R2 R0 K19 ["design"]
       58 GETUPVAL                         R2 10
       59 GETTABLEKS                       R2 R2 K10 ["new"]
       61 CALL                             R2 0 1
       62 SETTABLEKS                       R2 R0 K20 ["networking"]
       64 GETUPVAL                         R2 11
       65 GETTABLEKS                       R2 R2 K10 ["new"]
       67 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       69 GETTABLEKS                       R4 R0 K20 ["networking"]
       71 GETTABLEKS                       R5 R0 K16 ["localization"]
       73 CALL                             R2 3 1
       74 SETTABLEKS                       R2 R0 K21 ["pluginController"]
       76 GETUPVAL                         R2 12
       77 GETTABLEKS                       R2 R2 K10 ["new"]
       79 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       81 GETTABLEKS                       R4 R1 K22 ["PluginLoaderContext"]
       83 GETTABLEKS                       R4 R4 K23 ["mainDockWidget"]
       85 CALL                             R2 2 1
       86 SETTABLEKS                       R2 R0 K24 ["layoutController"]
       88 GETUPVAL                         R2 13
       89 GETTABLEKS                       R2 R2 K10 ["new"]
       91 DUPTABLE                         R3 K28 [{"PluginController", "LayoutController", "Networking"}]
       92 GETTABLEKS                       R4 R0 K21 ["pluginController"]
       94 SETTABLEKS                       R4 R3 K25 ["PluginController"]
       96 GETTABLEKS                       R4 R0 K24 ["layoutController"]
       98 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
      100 GETTABLEKS                       R4 R0 K20 ["networking"]
      102 SETTABLEKS                       R4 R3 K27 ["Networking"]
      104 CALL                             R2 1 1
      105 SETTABLEKS                       R2 R0 K29 ["explorerController"]
      107 GETUPVAL                         R2 14
      108 GETTABLEKS                       R2 R2 K10 ["new"]
      110 DUPTABLE                         R3 K31 [{"PluginController", "ExplorerController", "Networking"}]
      111 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      113 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      115 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      117 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      119 GETTABLEKS                       R4 R0 K20 ["networking"]
      121 SETTABLEKS                       R4 R3 K27 ["Networking"]
      123 CALL                             R2 1 1
      124 SETTABLEKS                       R2 R0 K32 ["searchController"]
      126 GETUPVAL                         R2 15
      127 GETTABLEKS                       R2 R2 K10 ["new"]
      129 DUPTABLE                         R3 K34 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking"}]
      130 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      132 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      134 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      136 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      138 GETTABLEKS                       R4 R0 K32 ["searchController"]
      140 SETTABLEKS                       R4 R3 K33 ["SearchController"]
      142 GETTABLEKS                       R4 R0 K24 ["layoutController"]
      144 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
      146 GETTABLEKS                       R4 R0 K20 ["networking"]
      148 SETTABLEKS                       R4 R3 K27 ["Networking"]
      150 CALL                             R2 1 1
      151 SETTABLEKS                       R2 R0 K35 ["itemsController"]
      153 GETUPVAL                         R2 16
      154 GETTABLEKS                       R2 R2 K10 ["new"]
      156 DUPTABLE                         R3 K37 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      157 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      159 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      161 GETTABLEKS                       R4 R0 K24 ["layoutController"]
      163 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
      165 GETTABLEKS                       R4 R0 K35 ["itemsController"]
      167 SETTABLEKS                       R4 R3 K36 ["ItemsController"]
      169 GETTABLEKS                       R4 R0 K32 ["searchController"]
      171 SETTABLEKS                       R4 R3 K33 ["SearchController"]
      173 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      175 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      177 CALL                             R2 1 1
      178 SETTABLEKS                       R2 R0 K38 ["input"]
      180 GETTABLEKS                       R4 R1 K18 ["Plugin"]
      182 NAMECALL                         R2 R0 K39 ["_loadSettingsIntoControllers"]
      184 CALL                             R2 2 0
      185 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["pluginController"]
        3 NAMECALL                         R2 R2 K1 ["getPlugin"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R3 R0 K2 ["_getAllControllers"]
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 0
       10 GETTABLEKS                       R1 R0 K3 ["input"]
       12 NAMECALL                         R1 R1 K4 ["destroy"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K5 ["networking"]
       17 NAMECALL                         R1 R1 K4 ["destroy"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K0 ["pluginController"]
       22 NAMECALL                         R1 R1 K4 ["destroy"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K6 ["explorerController"]
       27 NAMECALL                         R1 R1 K4 ["destroy"]
       29 CALL                             R1 1 0
       30 GETTABLEKS                       R1 R0 K7 ["itemsController"]
       32 NAMECALL                         R1 R1 K4 ["destroy"]
       34 CALL                             R1 1 0
       35 GETTABLEKS                       R1 R0 K8 ["searchController"]
       37 NAMECALL                         R1 R1 K4 ["destroy"]
       39 CALL                             R1 1 0
       40 GETTABLEKS                       R1 R0 K9 ["layoutController"]
       42 NAMECALL                         R1 R1 K4 ["destroy"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyDown"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyUp"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 LOADK                            R5 K4 [""]
        9 GETUPVAL                         R6 0
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+16]
       12 GETUPVAL                         R6 1
       13 JUMPIFEQKS                       R6 K5 ["<dev>"] ; [+14]
       15 GETUPVAL                         R6 2
       16 LOADK                            R8 K6 ["AssetManager"]
       17 NAMECALL                         R6 R6 K7 ["GetOTAPluginVersion"]
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 1
       21 LOADK                            R8 K8 [" %*-%*"]
       22 MOVE                             R10 R7
       23 MOVE                             R11 R6
       24 NAMECALL                         R8 R8 K9 ["format"]
       26 CALL                             R8 3 1
       27 MOVE                             R5 R8
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K10 ["provide"]
       31 NEWTABLE                         R7 0 13
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R8 R8 K11 ["new"]
       36 MOVE                             R9 R3
       37 CALL                             R8 1 1
       38 GETUPVAL                         R9 5
       39 GETTABLEKS                       R9 R9 K11 ["new"]
       41 NAMECALL                         R10 R3 K12 ["getMouse"]
       43 CALL                             R10 1 -1
       44 CALL                             R9 -1 1
       45 GETUPVAL                         R10 6
       46 GETTABLEKS                       R10 R10 K11 ["new"]
       48 GETTABLEKS                       R11 R0 K13 ["design"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R0 K14 ["DEPRECATED_stylizer"]
       53 GETTABLEKS                       R12 R0 K15 ["localization"]
       55 GETTABLEKS                       R13 R0 K16 ["analytics"]
       57 GETTABLEKS                       R14 R0 K17 ["input"]
       59 GETTABLEKS                       R15 R0 K18 ["pluginController"]
       61 GETTABLEKS                       R16 R0 K19 ["explorerController"]
       63 GETTABLEKS                       R17 R0 K20 ["itemsController"]
       65 GETTABLEKS                       R18 R0 K21 ["searchController"]
       67 GETTABLEKS                       R19 R0 K22 ["layoutController"]
       69 GETTABLEKS                       R20 R0 K23 ["networking"]
       71 SETLIST                          R7 R8 13 [1]
       73 DUPTABLE                         R8 K25 [{"MainWidget"}]
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R9 R9 K26 ["createElement"]
       77 GETUPVAL                         R10 8
       78 NEWTABLE                         R11 16 0
       80 LOADK                            R12 K6 ["AssetManager"]
       81 SETTABLEKS                       R12 R11 K27 ["Id"]
       83 SETTABLEKS                       R4 R11 K28 ["Enabled"]
       85 LOADK                            R13 K29 ["%*%*"]
       86 GETTABLEKS                       R15 R0 K15 ["localization"]
       88 LOADK                            R17 K2 ["Plugin"]
       89 LOADK                            R18 K30 ["Name"]
       90 NAMECALL                         R15 R15 K31 ["getText"]
       92 CALL                             R15 3 1
       93 MOVE                             R16 R5
       94 NAMECALL                         R13 R13 K9 ["format"]
       96 CALL                             R13 3 1
       97 MOVE                             R12 R13
       98 SETTABLEKS                       R12 R11 K32 ["Title"]
      100 GETIMPORT                        R12 K36 [Enum.ZIndexBehavior.Sibling]
      102 SETTABLEKS                       R12 R11 K34 ["ZIndexBehavior"]
      104 GETIMPORT                        R12 K39 [Enum.InitialDockState.Bottom]
      106 SETTABLEKS                       R12 R11 K37 ["InitialDockState"]
      108 GETIMPORT                        R12 K41 [Vector2.new]
      110 LOADN                            R13 640
      111 LOADN                            R14 480
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K42 ["Size"]
      115 GETIMPORT                        R12 K41 [Vector2.new]
      117 LOADN                            R13 250
      118 LOADN                            R14 200
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K43 ["MinSize"]
      122 GETTABLEKS                       R12 R0 K44 ["onClose"]
      124 SETTABLEKS                       R12 R11 K45 ["OnClose"]
      126 GETTABLEKS                       R12 R1 K46 ["PluginLoaderContext"]
      128 GETTABLEKS                       R12 R12 K47 ["mainDockWidget"]
      130 SETTABLEKS                       R12 R11 K48 ["Widget"]
      132 GETTABLEKS                       R12 R0 K49 ["onDockWidgetCreated"]
      134 SETTABLEKS                       R12 R11 K50 ["OnWidgetCreated"]
      136 GETTABLEKS                       R12 R0 K51 ["onRestore"]
      138 SETTABLEKS                       R12 R11 K52 ["OnWidgetRestored"]
      140 LOADB                            R12 1
      141 SETTABLEKS                       R12 R11 K53 ["ShouldRestore"]
      143 GETUPVAL                         R12 7
      144 GETTABLEKS                       R12 R12 K54 ["Change"]
      146 GETTABLEKS                       R12 R12 K28 ["Enabled"]
      148 GETTABLEKS                       R13 R0 K55 ["onWidgetEnabledChanged"]
      150 SETTABLE                         R13 R11 R12
      151 NEWTABLE                         R12 0 1
      153 GETUPVAL                         R13 7
      154 GETTABLEKS                       R13 R13 K26 ["createElement"]
      156 GETUPVAL                         R14 9
      157 DUPTABLE                         R15 K58 [{"theme", "plugin"}]
      158 GETUPVAL                         R16 10
      159 CALL                             R16 0 1
      160 SETTABLEKS                       R16 R15 K56 ["theme"]
      162 GETUPVAL                         R17 11
      163 CALL                             R17 0 1
      164 JUMPIFNOT                        R17 ; [+2]
      165 MOVE                             R16 R3
      166 JUMP                             ; [+1]
      167 LOADNIL                          R16
      168 SETTABLEKS                       R16 R15 K57 ["plugin"]
      170 DUPTABLE                         R16 K61 [{"App", "KeyboardListener"}]
      171 GETUPVAL                         R17 7
      172 GETTABLEKS                       R17 R17 K26 ["createElement"]
      174 GETUPVAL                         R18 12
      175 CALL                             R17 1 1
      176 SETTABLEKS                       R17 R16 K59 ["App"]
      178 GETUPVAL                         R17 7
      179 GETTABLEKS                       R17 R17 K26 ["createElement"]
      181 GETUPVAL                         R18 13
      182 DUPTABLE                         R19 K64 [{"OnKeyPressed", "OnKeyReleased"}]
      183 NEWCLOSURE                       R20 P0
      184 CAPTURE                          VAL R0
      185 SETTABLEKS                       R20 R19 K62 ["OnKeyPressed"]
      187 NEWCLOSURE                       R20 P1
      188 CAPTURE                          VAL R0
      189 SETTABLEKS                       R20 R19 K63 ["OnKeyReleased"]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K60 ["KeyboardListener"]
      194 CALL                             R13 3 -1
      195 SETLIST                          R12 R13 -1 [1]
      197 CALL                             R9 3 1
      198 SETTABLEKS                       R9 R8 K24 ["MainWidget"]
      200 CALL                             R6 2 -1
      201 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Version"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Services"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["GetService"]
       39 LOADK                            R6 K14 ["PluginManagementService"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["Framework"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["StudioFoundation"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K17 ["Components"]
       57 GETTABLEKS                       R8 R8 K18 ["FoundationProviderAdapter"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["DEPRECATED_Analytics"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Analytics"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R6 K21 ["UI"]
       75 GETTABLEKS                       R12 R11 K22 ["DockWidget"]
       77 GETTABLEKS                       R13 R11 K23 ["KeyboardListener"]
       79 GETTABLEKS                       R14 R6 K24 ["ContextServices"]
       81 GETTABLEKS                       R15 R14 K25 ["Plugin"]
       83 GETTABLEKS                       R16 R14 K26 ["Mouse"]
       85 GETTABLEKS                       R17 R14 K27 ["Design"]
       87 GETTABLEKS                       R18 R6 K28 ["Style"]
       89 GETTABLEKS                       R18 R18 K29 ["Themes"]
       91 GETTABLEKS                       R18 R18 K30 ["StudioTheme"]
       93 GETTABLEKS                       R19 R6 K31 ["Styling"]
       95 GETTABLEKS                       R19 R19 K32 ["registerPluginStyles"]
       97 GETTABLEKS                       R20 R0 K8 ["Src"]
       99 GETTABLEKS                       R20 R20 K33 ["Resources"]
      101 GETTABLEKS                       R20 R20 K34 ["Localization"]
      103 GETTABLEKS                       R20 R20 K35 ["SourceStrings"]
      105 GETTABLEKS                       R21 R0 K8 ["Src"]
      107 GETTABLEKS                       R21 R21 K33 ["Resources"]
      109 GETTABLEKS                       R21 R21 K34 ["Localization"]
      111 GETTABLEKS                       R21 R21 K36 ["LocalizedStrings"]
      113 GETIMPORT                        R22 K5 [require]
      115 GETTABLEKS                       R23 R0 K8 ["Src"]
      117 GETTABLEKS                       R23 R23 K17 ["Components"]
      119 GETTABLEKS                       R23 R23 K37 ["App"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R0 K8 ["Src"]
      126 GETTABLEKS                       R24 R24 K38 ["Controllers"]
      128 GETTABLEKS                       R24 R24 K39 ["Input"]
      130 CALL                             R23 1 1
      131 GETIMPORT                        R24 K5 [require]
      133 GETTABLEKS                       R25 R0 K8 ["Src"]
      135 GETTABLEKS                       R25 R25 K38 ["Controllers"]
      137 GETTABLEKS                       R25 R25 K40 ["ExplorerController"]
      139 CALL                             R24 1 1
      140 GETIMPORT                        R25 K5 [require]
      142 GETTABLEKS                       R26 R0 K8 ["Src"]
      144 GETTABLEKS                       R26 R26 K38 ["Controllers"]
      146 GETTABLEKS                       R26 R26 K41 ["ItemsController"]
      148 CALL                             R25 1 1
      149 GETIMPORT                        R26 K5 [require]
      151 GETTABLEKS                       R27 R0 K8 ["Src"]
      153 GETTABLEKS                       R27 R27 K38 ["Controllers"]
      155 GETTABLEKS                       R27 R27 K42 ["LayoutController"]
      157 CALL                             R26 1 1
      158 GETIMPORT                        R27 K5 [require]
      160 GETTABLEKS                       R28 R0 K8 ["Src"]
      162 GETTABLEKS                       R28 R28 K38 ["Controllers"]
      164 GETTABLEKS                       R28 R28 K43 ["PluginController"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K5 [require]
      169 GETTABLEKS                       R29 R0 K8 ["Src"]
      171 GETTABLEKS                       R29 R29 K38 ["Controllers"]
      173 GETTABLEKS                       R29 R29 K44 ["SearchController"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K5 [require]
      178 GETTABLEKS                       R30 R0 K8 ["Src"]
      180 GETTABLEKS                       R30 R30 K45 ["Networking"]
      182 CALL                             R29 1 1
      183 GETIMPORT                        R30 K5 [require]
      185 GETTABLEKS                       R31 R0 K8 ["Src"]
      187 GETTABLEKS                       R31 R31 K11 ["Util"]
      189 GETTABLEKS                       R31 R31 K46 ["getStudioTheme"]
      191 CALL                             R30 1 1
      192 GETIMPORT                        R31 K5 [require]
      194 GETTABLEKS                       R32 R0 K8 ["Src"]
      196 GETTABLEKS                       R32 R32 K11 ["Util"]
      198 GETTABLEKS                       R32 R32 K47 ["loadSettings"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K5 [require]
      203 GETTABLEKS                       R33 R0 K8 ["Src"]
      205 GETTABLEKS                       R33 R33 K11 ["Util"]
      207 GETTABLEKS                       R33 R33 K48 ["saveSettings"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K5 [require]
      212 GETTABLEKS                       R34 R0 K8 ["Src"]
      214 GETTABLEKS                       R34 R34 K49 ["Flags"]
      216 GETTABLEKS                       R34 R34 K50 ["getFFlagAmrUseQWidgetPopovers"]
      218 CALL                             R33 1 1
      219 GETIMPORT                        R34 K5 [require]
      221 GETTABLEKS                       R35 R0 K8 ["Src"]
      223 GETTABLEKS                       R35 R35 K49 ["Flags"]
      225 GETTABLEKS                       R35 R35 K51 ["getFFlagDebugAmrShowPluginVersion"]
      227 CALL                             R34 1 1
      228 GETIMPORT                        R35 K5 [require]
      230 GETTABLEKS                       R36 R0 K8 ["Src"]
      232 GETTABLEKS                       R36 R36 K49 ["Flags"]
      234 GETTABLEKS                       R36 R36 K52 ["getFFlagAmrEnableUnifiedEvent"]
      236 CALL                             R35 1 1
      237 GETIMPORT                        R36 K5 [require]
      239 GETTABLEKS                       R37 R0 K8 ["Src"]
      241 GETTABLEKS                       R37 R37 K49 ["Flags"]
      243 GETTABLEKS                       R37 R37 K53 ["getFFlagAmrDisableShardedEvent"]
      245 CALL                             R36 1 1
      246 GETTABLEKS                       R37 R1 K54 ["PureComponent"]
      248 LOADK                            R39 K55 ["MainPlugin"]
      249 NAMECALL                         R37 R37 K56 ["extend"]
      251 CALL                             R37 2 1
      252 DUPCLOSURE                       R38 K57 [PROTO_0]
      253 SETTABLEKS                       R38 R37 K58 ["_getAllControllers"]
      255 DUPCLOSURE                       R38 K59 [PROTO_1]
      256 CAPTURE                          VAL R31
      257 SETTABLEKS                       R38 R37 K60 ["_loadSettingsIntoControllers"]
      259 DUPCLOSURE                       R38 K61 [PROTO_8]
      260 CAPTURE                          VAL R35
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R36
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R20
      267 CAPTURE                          VAL R21
      268 CAPTURE                          VAL R18
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R29
      271 CAPTURE                          VAL R27
      272 CAPTURE                          VAL R26
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R28
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R23
      277 SETTABLEKS                       R38 R37 K62 ["init"]
      279 DUPCLOSURE                       R38 K63 [PROTO_9]
      280 SETTABLEKS                       R38 R37 K64 ["didUpdate"]
      282 DUPCLOSURE                       R38 K65 [PROTO_10]
      283 CAPTURE                          VAL R32
      284 SETTABLEKS                       R38 R37 K66 ["willUnmount"]
      286 DUPCLOSURE                       R38 K67 [PROTO_13]
      287 CAPTURE                          VAL R34
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R15
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R12
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R30
      298 CAPTURE                          VAL R33
      299 CAPTURE                          VAL R22
      300 CAPTURE                          VAL R13
      301 SETTABLEKS                       R38 R37 K68 ["render"]
      303 RETURN                           R37 1
