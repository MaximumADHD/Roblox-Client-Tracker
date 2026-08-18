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
        5 JUMPIF                           R0 ; [+39]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["sendEnabledEvent"]
        9 DUPTABLE                         R1 K4 [{"actionType"}]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["Types"]
       13 GETTABLEKS                       R2 R2 K6 ["ActionType"]
       15 GETTABLEKS                       R2 R2 K7 ["RibbonClick"]
       17 SETTABLEKS                       R2 R1 K3 ["actionType"]
       19 DUPTABLE                         R2 K11 [{"ExplorerController", "LayoutController", "ItemsController"}]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K12 ["explorerController"]
       23 SETTABLEKS                       R3 R2 K8 ["ExplorerController"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K13 ["layoutController"]
       28 SETTABLEKS                       R3 R2 K9 ["LayoutController"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K14 ["itemsController"]
       33 SETTABLEKS                       R3 R2 K10 ["ItemsController"]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 2
       37 CALL                             R0 0 1
       38 JUMPIF                           R0 ; [+6]
       39 DUPTABLE                         R0 K16 [{["actionType"] = "ribbon_click"}]
       40 GETUPVAL                         R1 3
       41 GETTABLEKS                       R1 R1 K2 ["sendEnabledEvent"]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 GETUPVAL                         R0 0
       46 GETTABLEKS                       R0 R0 K0 ["state"]
       48 GETTABLEKS                       R0 R0 K1 ["enabled"]
       50 JUMPIFNOT                        R0 ; [+9]
       51 GETUPVAL                         R0 4
       52 GETUPVAL                         R1 5
       53 GETTABLEKS                       R1 R1 K17 ["Plugin"]
       55 GETUPVAL                         R2 0
       56 NAMECALL                         R2 R2 K18 ["_getAllControllers"]
       58 CALL                             R2 1 -1
       59 CALL                             R0 -1 0
       60 GETUPVAL                         R0 0
       61 DUPCLOSURE                       R2 K19 [PROTO_2]
       62 NAMECALL                         R0 R0 K20 ["setState"]
       64 CALL                             R0 2 0
       65 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["eventStart"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R3 R3 K2 ["FirstLoad"]
       11 CALL                             R2 1 0
       12 DUPTABLE                         R2 K5 [{["enabled"] = False}]
       13 SETTABLEKS                       R2 R0 K6 ["state"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R2 R0 K7 ["toggleEnabled"]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R2 R0 K8 ["onClose"]
       30 NEWCLOSURE                       R2 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       34 NEWCLOSURE                       R2 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       38 NEWCLOSURE                       R2 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R2 R2 K12 ["Localization"]
       45 GETTABLEKS                       R2 R2 K13 ["new"]
       47 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       48 GETUPVAL                         R4 8
       49 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       51 GETUPVAL                         R4 9
       52 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R0 K19 ["localization"]
       57 GETUPVAL                         R2 10
       58 GETTABLEKS                       R2 R2 K13 ["new"]
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       63 GETUPVAL                         R2 11
       64 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       66 CALL                             R2 1 1
       67 SETTABLEKS                       R2 R0 K22 ["design"]
       69 GETUPVAL                         R2 12
       70 GETTABLEKS                       R2 R2 K13 ["new"]
       72 CALL                             R2 0 1
       73 SETTABLEKS                       R2 R0 K23 ["networking"]
       75 GETUPVAL                         R2 13
       76 GETTABLEKS                       R2 R2 K13 ["new"]
       78 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       80 GETTABLEKS                       R4 R0 K23 ["networking"]
       82 GETTABLEKS                       R5 R0 K19 ["localization"]
       84 CALL                             R2 3 1
       85 SETTABLEKS                       R2 R0 K24 ["pluginController"]
       87 GETUPVAL                         R2 14
       88 GETTABLEKS                       R2 R2 K13 ["new"]
       90 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       92 GETTABLEKS                       R4 R1 K25 ["PluginLoaderContext"]
       94 GETTABLEKS                       R4 R4 K26 ["mainDockWidget"]
       96 CALL                             R2 2 1
       97 SETTABLEKS                       R2 R0 K27 ["layoutController"]
       99 GETUPVAL                         R2 15
      100 GETTABLEKS                       R2 R2 K13 ["new"]
      102 DUPTABLE                         R3 K31 [{"PluginController", "LayoutController", "Networking"}]
      103 GETTABLEKS                       R4 R0 K24 ["pluginController"]
      105 SETTABLEKS                       R4 R3 K28 ["PluginController"]
      107 GETTABLEKS                       R4 R0 K27 ["layoutController"]
      109 SETTABLEKS                       R4 R3 K29 ["LayoutController"]
      111 GETTABLEKS                       R4 R0 K23 ["networking"]
      113 SETTABLEKS                       R4 R3 K30 ["Networking"]
      115 CALL                             R2 1 1
      116 SETTABLEKS                       R2 R0 K32 ["explorerController"]
      118 GETUPVAL                         R2 16
      119 GETTABLEKS                       R2 R2 K13 ["new"]
      121 DUPTABLE                         R3 K34 [{"PluginController", "ExplorerController", "Networking"}]
      122 GETTABLEKS                       R4 R0 K24 ["pluginController"]
      124 SETTABLEKS                       R4 R3 K28 ["PluginController"]
      126 GETTABLEKS                       R4 R0 K32 ["explorerController"]
      128 SETTABLEKS                       R4 R3 K33 ["ExplorerController"]
      130 GETTABLEKS                       R4 R0 K23 ["networking"]
      132 SETTABLEKS                       R4 R3 K30 ["Networking"]
      134 CALL                             R2 1 1
      135 SETTABLEKS                       R2 R0 K35 ["searchController"]
      137 GETUPVAL                         R2 17
      138 GETTABLEKS                       R2 R2 K13 ["new"]
      140 DUPTABLE                         R3 K37 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking"}]
      141 GETTABLEKS                       R4 R0 K24 ["pluginController"]
      143 SETTABLEKS                       R4 R3 K28 ["PluginController"]
      145 GETTABLEKS                       R4 R0 K32 ["explorerController"]
      147 SETTABLEKS                       R4 R3 K33 ["ExplorerController"]
      149 GETTABLEKS                       R4 R0 K35 ["searchController"]
      151 SETTABLEKS                       R4 R3 K36 ["SearchController"]
      153 GETTABLEKS                       R4 R0 K27 ["layoutController"]
      155 SETTABLEKS                       R4 R3 K29 ["LayoutController"]
      157 GETTABLEKS                       R4 R0 K23 ["networking"]
      159 SETTABLEKS                       R4 R3 K30 ["Networking"]
      161 CALL                             R2 1 1
      162 SETTABLEKS                       R2 R0 K38 ["itemsController"]
      164 GETUPVAL                         R2 18
      165 GETTABLEKS                       R2 R2 K13 ["new"]
      167 DUPTABLE                         R3 K40 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      168 GETTABLEKS                       R4 R0 K24 ["pluginController"]
      170 SETTABLEKS                       R4 R3 K28 ["PluginController"]
      172 GETTABLEKS                       R4 R0 K27 ["layoutController"]
      174 SETTABLEKS                       R4 R3 K29 ["LayoutController"]
      176 GETTABLEKS                       R4 R0 K38 ["itemsController"]
      178 SETTABLEKS                       R4 R3 K39 ["ItemsController"]
      180 GETTABLEKS                       R4 R0 K35 ["searchController"]
      182 SETTABLEKS                       R4 R3 K36 ["SearchController"]
      184 GETTABLEKS                       R4 R0 K32 ["explorerController"]
      186 SETTABLEKS                       R4 R3 K33 ["ExplorerController"]
      188 CALL                             R2 1 1
      189 SETTABLEKS                       R2 R0 K41 ["input"]
      191 GETTABLEKS                       R4 R1 K21 ["Plugin"]
      193 NAMECALL                         R2 R0 K42 ["_loadSettingsIntoControllers"]
      195 CALL                             R2 2 0
      196 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Version"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["Services"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K14 ["GetService"]
       48 LOADK                            R7 K15 ["PluginManagementService"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Packages"]
       54 GETTABLEKS                       R8 R8 K16 ["Framework"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K6 ["Packages"]
       61 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R8 K18 ["Components"]
       66 GETTABLEKS                       R9 R9 K19 ["FoundationProviderAdapter"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R11 R11 K20 ["DEPRECATED_Analytics"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R12 R12 K10 ["Analytics"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R7 K21 ["UI"]
       84 GETTABLEKS                       R13 R12 K22 ["DockWidget"]
       86 GETTABLEKS                       R14 R12 K23 ["KeyboardListener"]
       88 GETTABLEKS                       R15 R7 K24 ["ContextServices"]
       90 GETTABLEKS                       R16 R15 K25 ["Plugin"]
       92 GETTABLEKS                       R17 R15 K26 ["Mouse"]
       94 GETTABLEKS                       R18 R15 K27 ["Design"]
       96 GETTABLEKS                       R19 R7 K28 ["Style"]
       98 GETTABLEKS                       R19 R19 K29 ["Themes"]
      100 GETTABLEKS                       R19 R19 K30 ["StudioTheme"]
      102 GETTABLEKS                       R20 R7 K31 ["Styling"]
      104 GETTABLEKS                       R20 R20 K32 ["registerPluginStyles"]
      106 GETTABLEKS                       R21 R0 K8 ["Src"]
      108 GETTABLEKS                       R21 R21 K33 ["Resources"]
      110 GETTABLEKS                       R21 R21 K34 ["Localization"]
      112 GETTABLEKS                       R21 R21 K35 ["SourceStrings"]
      114 GETTABLEKS                       R22 R0 K8 ["Src"]
      116 GETTABLEKS                       R22 R22 K33 ["Resources"]
      118 GETTABLEKS                       R22 R22 K34 ["Localization"]
      120 GETTABLEKS                       R22 R22 K36 ["LocalizedStrings"]
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R0 K8 ["Src"]
      126 GETTABLEKS                       R24 R24 K18 ["Components"]
      128 GETTABLEKS                       R24 R24 K37 ["App"]
      130 CALL                             R23 1 1
      131 GETIMPORT                        R24 K5 [require]
      133 GETTABLEKS                       R25 R0 K8 ["Src"]
      135 GETTABLEKS                       R25 R25 K38 ["Controllers"]
      137 GETTABLEKS                       R25 R25 K39 ["Input"]
      139 CALL                             R24 1 1
      140 GETIMPORT                        R25 K5 [require]
      142 GETTABLEKS                       R26 R0 K8 ["Src"]
      144 GETTABLEKS                       R26 R26 K38 ["Controllers"]
      146 GETTABLEKS                       R26 R26 K40 ["ExplorerController"]
      148 CALL                             R25 1 1
      149 GETIMPORT                        R26 K5 [require]
      151 GETTABLEKS                       R27 R0 K8 ["Src"]
      153 GETTABLEKS                       R27 R27 K38 ["Controllers"]
      155 GETTABLEKS                       R27 R27 K41 ["ItemsController"]
      157 CALL                             R26 1 1
      158 GETIMPORT                        R27 K5 [require]
      160 GETTABLEKS                       R28 R0 K8 ["Src"]
      162 GETTABLEKS                       R28 R28 K38 ["Controllers"]
      164 GETTABLEKS                       R28 R28 K42 ["LayoutController"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K5 [require]
      169 GETTABLEKS                       R29 R0 K8 ["Src"]
      171 GETTABLEKS                       R29 R29 K38 ["Controllers"]
      173 GETTABLEKS                       R29 R29 K43 ["PluginController"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K5 [require]
      178 GETTABLEKS                       R30 R0 K8 ["Src"]
      180 GETTABLEKS                       R30 R30 K38 ["Controllers"]
      182 GETTABLEKS                       R30 R30 K44 ["SearchController"]
      184 CALL                             R29 1 1
      185 GETIMPORT                        R30 K5 [require]
      187 GETTABLEKS                       R31 R0 K8 ["Src"]
      189 GETTABLEKS                       R31 R31 K45 ["Networking"]
      191 CALL                             R30 1 1
      192 GETIMPORT                        R31 K5 [require]
      194 GETTABLEKS                       R32 R0 K8 ["Src"]
      196 GETTABLEKS                       R32 R32 K10 ["Analytics"]
      198 GETTABLEKS                       R32 R32 K46 ["Benchmarking"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K5 [require]
      203 GETTABLEKS                       R33 R0 K8 ["Src"]
      205 GETTABLEKS                       R33 R33 K12 ["Util"]
      207 GETTABLEKS                       R33 R33 K47 ["getStudioTheme"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K5 [require]
      212 GETTABLEKS                       R34 R0 K8 ["Src"]
      214 GETTABLEKS                       R34 R34 K12 ["Util"]
      216 GETTABLEKS                       R34 R34 K48 ["loadSettings"]
      218 CALL                             R33 1 1
      219 GETIMPORT                        R34 K5 [require]
      221 GETTABLEKS                       R35 R0 K8 ["Src"]
      223 GETTABLEKS                       R35 R35 K12 ["Util"]
      225 GETTABLEKS                       R35 R35 K49 ["saveSettings"]
      227 CALL                             R34 1 1
      228 GETIMPORT                        R35 K5 [require]
      230 GETTABLEKS                       R36 R0 K8 ["Src"]
      232 GETTABLEKS                       R36 R36 K50 ["Flags"]
      234 GETTABLEKS                       R36 R36 K51 ["getFFlagAmrUseQWidgetPopovers"]
      236 CALL                             R35 1 1
      237 GETIMPORT                        R36 K5 [require]
      239 GETTABLEKS                       R37 R0 K8 ["Src"]
      241 GETTABLEKS                       R37 R37 K50 ["Flags"]
      243 GETTABLEKS                       R37 R37 K52 ["getFFlagDebugAmrShowPluginVersion"]
      245 CALL                             R36 1 1
      246 GETIMPORT                        R37 K5 [require]
      248 GETTABLEKS                       R38 R0 K8 ["Src"]
      250 GETTABLEKS                       R38 R38 K50 ["Flags"]
      252 GETTABLEKS                       R38 R38 K53 ["getFFlagAmrDisableShardedEvent"]
      254 CALL                             R37 1 1
      255 GETIMPORT                        R38 K5 [require]
      257 GETTABLEKS                       R39 R0 K8 ["Src"]
      259 GETTABLEKS                       R39 R39 K50 ["Flags"]
      261 GETTABLEKS                       R39 R39 K54 ["getFFlagAmrEnableBenchmarking"]
      263 CALL                             R38 1 1
      264 GETTABLEKS                       R39 R1 K55 ["PureComponent"]
      266 LOADK                            R41 K56 ["MainPlugin"]
      267 NAMECALL                         R39 R39 K57 ["extend"]
      269 CALL                             R39 2 1
      270 DUPCLOSURE                       R40 K58 [PROTO_0]
      271 SETTABLEKS                       R40 R39 K59 ["_getAllControllers"]
      273 DUPCLOSURE                       R40 K60 [PROTO_1]
      274 CAPTURE                          VAL R33
      275 SETTABLEKS                       R40 R39 K61 ["_loadSettingsIntoControllers"]
      277 DUPCLOSURE                       R40 K62 [PROTO_8]
      278 CAPTURE                          VAL R38
      279 CAPTURE                          VAL R31
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R10
      284 CAPTURE                          VAL R34
      285 CAPTURE                          VAL R15
      286 CAPTURE                          VAL R21
      287 CAPTURE                          VAL R22
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R20
      290 CAPTURE                          VAL R30
      291 CAPTURE                          VAL R28
      292 CAPTURE                          VAL R27
      293 CAPTURE                          VAL R25
      294 CAPTURE                          VAL R29
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R24
      297 SETTABLEKS                       R40 R39 K63 ["init"]
      299 DUPCLOSURE                       R40 K64 [PROTO_9]
      300 SETTABLEKS                       R40 R39 K65 ["didUpdate"]
      302 DUPCLOSURE                       R40 K66 [PROTO_10]
      303 CAPTURE                          VAL R34
      304 SETTABLEKS                       R40 R39 K67 ["willUnmount"]
      306 DUPCLOSURE                       R40 K68 [PROTO_13]
      307 CAPTURE                          VAL R36
      308 CAPTURE                          VAL R4
      309 CAPTURE                          VAL R6
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R16
      312 CAPTURE                          VAL R17
      313 CAPTURE                          VAL R18
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R32
      318 CAPTURE                          VAL R35
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R14
      321 SETTABLEKS                       R40 R39 K69 ["render"]
      323 RETURN                           R39 1
