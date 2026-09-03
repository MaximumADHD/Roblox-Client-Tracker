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
        5 JUMPIF                           R0 ; [+53]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["ixpController"]
       12 NAMECALL                         R0 R0 K3 ["refreshForSession"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K4 ["sendEnabledEvent"]
       18 DUPTABLE                         R1 K6 [{"actionType"}]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K7 ["Types"]
       22 GETTABLEKS                       R2 R2 K8 ["ActionType"]
       24 GETTABLEKS                       R2 R2 K9 ["RibbonClick"]
       26 SETTABLEKS                       R2 R1 K5 ["actionType"]
       28 DUPTABLE                         R2 K14 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K15 ["explorerController"]
       32 SETTABLEKS                       R3 R2 K10 ["ExplorerController"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K16 ["layoutController"]
       37 SETTABLEKS                       R3 R2 K11 ["LayoutController"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K17 ["itemsController"]
       42 SETTABLEKS                       R3 R2 K12 ["ItemsController"]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K18 ["searchController"]
       47 SETTABLEKS                       R3 R2 K13 ["SearchController"]
       49 CALL                             R0 2 0
       50 GETUPVAL                         R0 3
       51 CALL                             R0 0 1
       52 JUMPIF                           R0 ; [+6]
       53 DUPTABLE                         R0 K20 [{["actionType"] = "ribbon_click"}]
       54 GETUPVAL                         R1 4
       55 GETTABLEKS                       R1 R1 K4 ["sendEnabledEvent"]
       57 MOVE                             R2 R0
       58 CALL                             R1 1 0
       59 GETUPVAL                         R0 0
       60 GETTABLEKS                       R0 R0 K0 ["state"]
       62 GETTABLEKS                       R0 R0 K1 ["enabled"]
       64 JUMPIFNOT                        R0 ; [+18]
       65 GETUPVAL                         R0 1
       66 CALL                             R0 0 1
       67 JUMPIFNOT                        R0 ; [+6]
       68 GETUPVAL                         R0 0
       69 GETTABLEKS                       R0 R0 K2 ["ixpController"]
       71 NAMECALL                         R0 R0 K21 ["cancelRefresh"]
       73 CALL                             R0 1 0
       74 GETUPVAL                         R0 5
       75 GETUPVAL                         R1 6
       76 GETTABLEKS                       R1 R1 K22 ["Plugin"]
       78 GETUPVAL                         R2 0
       79 NAMECALL                         R2 R2 K23 ["_getAllControllers"]
       81 CALL                             R2 1 -1
       82 CALL                             R0 -1 0
       83 GETUPVAL                         R0 0
       84 DUPCLOSURE                       R2 K24 [PROTO_2]
       85 NAMECALL                         R0 R0 K25 ["setState"]
       87 CALL                             R0 2 0
       88 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["ixpController"]
        6 NAMECALL                         R0 R0 K1 ["cancelRefresh"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 DUPTABLE                         R2 K4 [{["enabled"] = False}]
       11 NAMECALL                         R0 R0 K5 ["setState"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K6 ["Plugin"]
       18 GETUPVAL                         R2 1
       19 NAMECALL                         R2 R2 K7 ["_getAllControllers"]
       21 CALL                             R2 1 -1
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+49]
        3 JUMPIFNOT                        R0 ; [+42]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["sendEnabledEvent"]
        7 DUPTABLE                         R2 K2 [{"actionType"}]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Types"]
       11 GETTABLEKS                       R3 R3 K4 ["ActionType"]
       13 GETTABLEKS                       R3 R3 K5 ["Restore"]
       15 SETTABLEKS                       R3 R2 K1 ["actionType"]
       17 DUPTABLE                         R3 K10 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K11 ["explorerController"]
       21 SETTABLEKS                       R4 R3 K6 ["ExplorerController"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K12 ["layoutController"]
       26 SETTABLEKS                       R4 R3 K7 ["LayoutController"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K13 ["itemsController"]
       31 SETTABLEKS                       R4 R3 K8 ["ItemsController"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K14 ["searchController"]
       36 SETTABLEKS                       R4 R3 K9 ["SearchController"]
       38 CALL                             R1 2 0
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R1 R1 K15 ["ixpController"]
       42 NAMECALL                         R1 R1 K16 ["refreshForSession"]
       44 CALL                             R1 1 0
       45 JUMP                             ; [+6]
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K15 ["ixpController"]
       49 NAMECALL                         R1 R1 K17 ["cancelRefresh"]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 2
       53 DUPTABLE                         R3 K19 [{"enabled"}]
       54 SETTABLEKS                       R0 R3 K18 ["enabled"]
       56 NAMECALL                         R1 R1 K20 ["setState"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+51]
        3 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+42]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["sendEnabledEvent"]
        9 DUPTABLE                         R2 K3 [{"actionType"}]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Types"]
       13 GETTABLEKS                       R3 R3 K5 ["ActionType"]
       15 GETTABLEKS                       R3 R3 K6 ["WidgetEnabled"]
       17 SETTABLEKS                       R3 R2 K2 ["actionType"]
       19 DUPTABLE                         R3 K11 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K12 ["explorerController"]
       23 SETTABLEKS                       R4 R3 K7 ["ExplorerController"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K13 ["layoutController"]
       28 SETTABLEKS                       R4 R3 K8 ["LayoutController"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K14 ["itemsController"]
       33 SETTABLEKS                       R4 R3 K9 ["ItemsController"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K15 ["searchController"]
       38 SETTABLEKS                       R4 R3 K10 ["SearchController"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K16 ["ixpController"]
       44 NAMECALL                         R1 R1 K17 ["refreshForSession"]
       46 CALL                             R1 1 0
       47 JUMP                             ; [+6]
       48 GETUPVAL                         R1 2
       49 GETTABLEKS                       R1 R1 K16 ["ixpController"]
       51 NAMECALL                         R1 R1 K18 ["cancelRefresh"]
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 2
       55 DUPTABLE                         R3 K20 [{"enabled"}]
       56 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       58 SETTABLEKS                       R4 R3 K19 ["enabled"]
       60 NAMECALL                         R1 R1 K21 ["setState"]
       62 CALL                             R1 2 0
       63 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R2 R0 K7 ["toggleEnabled"]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R2 R0 K8 ["onClose"]
       32 NEWCLOSURE                       R2 P2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       38 NEWCLOSURE                       R2 P3
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       44 NEWCLOSURE                       R2 P4
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       48 GETUPVAL                         R2 8
       49 GETTABLEKS                       R2 R2 K12 ["Localization"]
       51 GETTABLEKS                       R2 R2 K13 ["new"]
       53 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       54 GETUPVAL                         R4 9
       55 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       57 GETUPVAL                         R4 10
       58 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R0 K19 ["localization"]
       63 GETUPVAL                         R2 11
       64 GETTABLEKS                       R2 R2 K13 ["new"]
       66 CALL                             R2 0 1
       67 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       69 GETUPVAL                         R2 12
       70 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       72 CALL                             R2 1 1
       73 SETTABLEKS                       R2 R0 K22 ["design"]
       75 GETUPVAL                         R2 13
       76 CALL                             R2 0 1
       77 JUMPIFNOT                        R2 ; [+8]
       78 GETUPVAL                         R2 14
       79 GETTABLEKS                       R2 R2 K23 ["init"]
       81 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       83 GETTABLEKS                       R4 R0 K19 ["localization"]
       85 CALL                             R2 2 0
       86 GETUPVAL                         R2 15
       87 GETTABLEKS                       R2 R2 K13 ["new"]
       89 CALL                             R2 0 1
       90 SETTABLEKS                       R2 R0 K24 ["ixpController"]
       92 GETUPVAL                         R2 16
       93 GETTABLEKS                       R2 R2 K13 ["new"]
       95 CALL                             R2 0 1
       96 SETTABLEKS                       R2 R0 K25 ["networking"]
       98 GETUPVAL                         R2 17
       99 GETTABLEKS                       R2 R2 K13 ["new"]
      101 GETTABLEKS                       R3 R1 K21 ["Plugin"]
      103 GETTABLEKS                       R4 R0 K25 ["networking"]
      105 GETTABLEKS                       R5 R0 K19 ["localization"]
      107 CALL                             R2 3 1
      108 SETTABLEKS                       R2 R0 K26 ["pluginController"]
      110 GETUPVAL                         R2 18
      111 GETTABLEKS                       R2 R2 K13 ["new"]
      113 GETTABLEKS                       R3 R1 K21 ["Plugin"]
      115 GETTABLEKS                       R4 R1 K27 ["PluginLoaderContext"]
      117 GETTABLEKS                       R4 R4 K28 ["mainDockWidget"]
      119 CALL                             R2 2 1
      120 SETTABLEKS                       R2 R0 K29 ["layoutController"]
      122 GETUPVAL                         R2 19
      123 GETTABLEKS                       R2 R2 K13 ["new"]
      125 DUPTABLE                         R3 K33 [{"PluginController", "LayoutController", "Networking"}]
      126 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      128 SETTABLEKS                       R4 R3 K30 ["PluginController"]
      130 GETTABLEKS                       R4 R0 K29 ["layoutController"]
      132 SETTABLEKS                       R4 R3 K31 ["LayoutController"]
      134 GETTABLEKS                       R4 R0 K25 ["networking"]
      136 SETTABLEKS                       R4 R3 K32 ["Networking"]
      138 CALL                             R2 1 1
      139 SETTABLEKS                       R2 R0 K34 ["explorerController"]
      141 GETUPVAL                         R2 20
      142 GETTABLEKS                       R2 R2 K13 ["new"]
      144 DUPTABLE                         R3 K36 [{"PluginController", "ExplorerController", "Networking"}]
      145 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      147 SETTABLEKS                       R4 R3 K30 ["PluginController"]
      149 GETTABLEKS                       R4 R0 K34 ["explorerController"]
      151 SETTABLEKS                       R4 R3 K35 ["ExplorerController"]
      153 GETTABLEKS                       R4 R0 K25 ["networking"]
      155 SETTABLEKS                       R4 R3 K32 ["Networking"]
      157 CALL                             R2 1 1
      158 SETTABLEKS                       R2 R0 K37 ["searchController"]
      160 GETUPVAL                         R2 21
      161 GETTABLEKS                       R2 R2 K13 ["new"]
      163 DUPTABLE                         R3 K39 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking"}]
      164 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      166 SETTABLEKS                       R4 R3 K30 ["PluginController"]
      168 GETTABLEKS                       R4 R0 K34 ["explorerController"]
      170 SETTABLEKS                       R4 R3 K35 ["ExplorerController"]
      172 GETTABLEKS                       R4 R0 K37 ["searchController"]
      174 SETTABLEKS                       R4 R3 K38 ["SearchController"]
      176 GETTABLEKS                       R4 R0 K29 ["layoutController"]
      178 SETTABLEKS                       R4 R3 K31 ["LayoutController"]
      180 GETTABLEKS                       R4 R0 K25 ["networking"]
      182 SETTABLEKS                       R4 R3 K32 ["Networking"]
      184 CALL                             R2 1 1
      185 SETTABLEKS                       R2 R0 K40 ["itemsController"]
      187 GETUPVAL                         R2 22
      188 GETTABLEKS                       R2 R2 K13 ["new"]
      190 DUPTABLE                         R3 K42 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      191 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      193 SETTABLEKS                       R4 R3 K30 ["PluginController"]
      195 GETTABLEKS                       R4 R0 K29 ["layoutController"]
      197 SETTABLEKS                       R4 R3 K31 ["LayoutController"]
      199 GETTABLEKS                       R4 R0 K40 ["itemsController"]
      201 SETTABLEKS                       R4 R3 K41 ["ItemsController"]
      203 GETTABLEKS                       R4 R0 K37 ["searchController"]
      205 SETTABLEKS                       R4 R3 K38 ["SearchController"]
      207 GETTABLEKS                       R4 R0 K34 ["explorerController"]
      209 SETTABLEKS                       R4 R3 K35 ["ExplorerController"]
      211 CALL                             R2 1 1
      212 SETTABLEKS                       R2 R0 K43 ["input"]
      214 GETTABLEKS                       R4 R1 K21 ["Plugin"]
      216 NAMECALL                         R2 R0 K44 ["_loadSettingsIntoControllers"]
      218 CALL                             R2 2 0
      219 RETURN                           R0 0

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
       45 GETTABLEKS                       R1 R0 K10 ["ixpController"]
       47 NAMECALL                         R1 R1 K4 ["destroy"]
       49 CALL                             R1 1 0
       50 RETURN                           R0 0

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
       31 NEWTABLE                         R7 0 14
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
       57 GETTABLEKS                       R14 R0 K17 ["ixpController"]
       59 GETTABLEKS                       R15 R0 K18 ["input"]
       61 GETTABLEKS                       R16 R0 K19 ["pluginController"]
       63 GETTABLEKS                       R17 R0 K20 ["explorerController"]
       65 GETTABLEKS                       R18 R0 K21 ["itemsController"]
       67 GETTABLEKS                       R19 R0 K22 ["searchController"]
       69 GETTABLEKS                       R20 R0 K23 ["layoutController"]
       71 GETTABLEKS                       R21 R0 K24 ["networking"]
       73 SETLIST                          R7 R8 14 [1]
       75 DUPTABLE                         R8 K26 [{"MainWidget"}]
       76 GETUPVAL                         R9 7
       77 GETTABLEKS                       R9 R9 K27 ["createElement"]
       79 GETUPVAL                         R10 8
       80 NEWTABLE                         R11 16 0
       82 LOADK                            R12 K6 ["AssetManager"]
       83 SETTABLEKS                       R12 R11 K28 ["Id"]
       85 SETTABLEKS                       R4 R11 K29 ["Enabled"]
       87 LOADK                            R13 K30 ["%*%*"]
       88 GETTABLEKS                       R15 R0 K15 ["localization"]
       90 LOADK                            R17 K2 ["Plugin"]
       91 LOADK                            R18 K31 ["Name"]
       92 NAMECALL                         R15 R15 K32 ["getText"]
       94 CALL                             R15 3 1
       95 MOVE                             R16 R5
       96 NAMECALL                         R13 R13 K9 ["format"]
       98 CALL                             R13 3 1
       99 MOVE                             R12 R13
      100 SETTABLEKS                       R12 R11 K33 ["Title"]
      102 GETIMPORT                        R12 K37 [Enum.ZIndexBehavior.Sibling]
      104 SETTABLEKS                       R12 R11 K35 ["ZIndexBehavior"]
      106 GETIMPORT                        R12 K40 [Enum.InitialDockState.Bottom]
      108 SETTABLEKS                       R12 R11 K38 ["InitialDockState"]
      110 GETIMPORT                        R12 K42 [Vector2.new]
      112 LOADN                            R13 640
      113 LOADN                            R14 480
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K43 ["Size"]
      117 GETIMPORT                        R12 K42 [Vector2.new]
      119 LOADN                            R13 250
      120 LOADN                            R14 200
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K44 ["MinSize"]
      124 GETTABLEKS                       R12 R0 K45 ["onClose"]
      126 SETTABLEKS                       R12 R11 K46 ["OnClose"]
      128 GETTABLEKS                       R12 R1 K47 ["PluginLoaderContext"]
      130 GETTABLEKS                       R12 R12 K48 ["mainDockWidget"]
      132 SETTABLEKS                       R12 R11 K49 ["Widget"]
      134 GETTABLEKS                       R12 R0 K50 ["onDockWidgetCreated"]
      136 SETTABLEKS                       R12 R11 K51 ["OnWidgetCreated"]
      138 GETTABLEKS                       R12 R0 K52 ["onRestore"]
      140 SETTABLEKS                       R12 R11 K53 ["OnWidgetRestored"]
      142 LOADB                            R12 1
      143 SETTABLEKS                       R12 R11 K54 ["ShouldRestore"]
      145 GETUPVAL                         R12 7
      146 GETTABLEKS                       R12 R12 K55 ["Change"]
      148 GETTABLEKS                       R12 R12 K29 ["Enabled"]
      150 GETTABLEKS                       R13 R0 K56 ["onWidgetEnabledChanged"]
      152 SETTABLE                         R13 R11 R12
      153 NEWTABLE                         R12 0 1
      155 GETUPVAL                         R13 7
      156 GETTABLEKS                       R13 R13 K27 ["createElement"]
      158 GETUPVAL                         R14 9
      159 DUPTABLE                         R15 K59 [{"theme", "plugin"}]
      160 GETUPVAL                         R16 10
      161 CALL                             R16 0 1
      162 SETTABLEKS                       R16 R15 K57 ["theme"]
      164 GETUPVAL                         R17 11
      165 CALL                             R17 0 1
      166 JUMPIFNOT                        R17 ; [+2]
      167 MOVE                             R16 R3
      168 JUMP                             ; [+1]
      169 LOADNIL                          R16
      170 SETTABLEKS                       R16 R15 K58 ["plugin"]
      172 DUPTABLE                         R16 K62 [{"App", "KeyboardListener"}]
      173 GETUPVAL                         R17 7
      174 GETTABLEKS                       R17 R17 K27 ["createElement"]
      176 GETUPVAL                         R18 12
      177 CALL                             R17 1 1
      178 SETTABLEKS                       R17 R16 K60 ["App"]
      180 GETUPVAL                         R17 7
      181 GETTABLEKS                       R17 R17 K27 ["createElement"]
      183 GETUPVAL                         R18 13
      184 DUPTABLE                         R19 K65 [{"OnKeyPressed", "OnKeyReleased"}]
      185 NEWCLOSURE                       R20 P0
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R20 R19 K63 ["OnKeyPressed"]
      189 NEWCLOSURE                       R20 P1
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R20 R19 K64 ["OnKeyReleased"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K61 ["KeyboardListener"]
      196 CALL                             R13 3 -1
      197 SETLIST                          R12 R13 -1 [1]
      199 CALL                             R9 3 1
      200 SETTABLEKS                       R9 R8 K25 ["MainWidget"]
      202 CALL                             R6 2 -1
      203 RETURN                           R6 -1

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
      164 GETTABLEKS                       R28 R28 K42 ["IxpController"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K5 [require]
      169 GETTABLEKS                       R29 R0 K8 ["Src"]
      171 GETTABLEKS                       R29 R29 K38 ["Controllers"]
      173 GETTABLEKS                       R29 R29 K43 ["LayoutController"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K5 [require]
      178 GETTABLEKS                       R30 R0 K8 ["Src"]
      180 GETTABLEKS                       R30 R30 K38 ["Controllers"]
      182 GETTABLEKS                       R30 R30 K44 ["PluginController"]
      184 CALL                             R29 1 1
      185 GETIMPORT                        R30 K5 [require]
      187 GETTABLEKS                       R31 R0 K8 ["Src"]
      189 GETTABLEKS                       R31 R31 K38 ["Controllers"]
      191 GETTABLEKS                       R31 R31 K45 ["SearchController"]
      193 CALL                             R30 1 1
      194 GETIMPORT                        R31 K5 [require]
      196 GETTABLEKS                       R32 R0 K8 ["Src"]
      198 GETTABLEKS                       R32 R32 K46 ["Networking"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K5 [require]
      203 GETTABLEKS                       R33 R0 K8 ["Src"]
      205 GETTABLEKS                       R33 R33 K10 ["Analytics"]
      207 GETTABLEKS                       R33 R33 K47 ["Benchmarking"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K5 [require]
      212 GETTABLEKS                       R34 R0 K8 ["Src"]
      214 GETTABLEKS                       R34 R34 K12 ["Util"]
      216 GETTABLEKS                       R34 R34 K48 ["getStudioTheme"]
      218 CALL                             R33 1 1
      219 GETIMPORT                        R34 K5 [require]
      221 GETTABLEKS                       R35 R0 K8 ["Src"]
      223 GETTABLEKS                       R35 R35 K12 ["Util"]
      225 GETTABLEKS                       R35 R35 K49 ["loadSettings"]
      227 CALL                             R34 1 1
      228 GETIMPORT                        R35 K5 [require]
      230 GETTABLEKS                       R36 R0 K8 ["Src"]
      232 GETTABLEKS                       R36 R36 K12 ["Util"]
      234 GETTABLEKS                       R36 R36 K50 ["saveSettings"]
      236 CALL                             R35 1 1
      237 GETIMPORT                        R36 K5 [require]
      239 GETTABLEKS                       R37 R0 K8 ["Src"]
      241 GETTABLEKS                       R37 R37 K12 ["Util"]
      243 GETTABLEKS                       R37 R37 K51 ["Notifications"]
      245 CALL                             R36 1 1
      246 GETIMPORT                        R37 K5 [require]
      248 GETTABLEKS                       R38 R0 K8 ["Src"]
      250 GETTABLEKS                       R38 R38 K52 ["Flags"]
      252 GETTABLEKS                       R38 R38 K53 ["getFFlagAmrUseQWidgetPopovers"]
      254 CALL                             R37 1 1
      255 GETIMPORT                        R38 K5 [require]
      257 GETTABLEKS                       R39 R0 K8 ["Src"]
      259 GETTABLEKS                       R39 R39 K52 ["Flags"]
      261 GETTABLEKS                       R39 R39 K54 ["getFFlagDebugAmrShowPluginVersion"]
      263 CALL                             R38 1 1
      264 GETIMPORT                        R39 K5 [require]
      266 GETTABLEKS                       R40 R0 K8 ["Src"]
      268 GETTABLEKS                       R40 R40 K52 ["Flags"]
      270 GETTABLEKS                       R40 R40 K55 ["getFFlagAmrDisableShardedEvent"]
      272 CALL                             R39 1 1
      273 GETIMPORT                        R40 K5 [require]
      275 GETTABLEKS                       R41 R0 K8 ["Src"]
      277 GETTABLEKS                       R41 R41 K52 ["Flags"]
      279 GETTABLEKS                       R41 R41 K56 ["getFFlagAmrEnableBenchmarking"]
      281 CALL                             R40 1 1
      282 GETIMPORT                        R41 K5 [require]
      284 GETTABLEKS                       R42 R0 K8 ["Src"]
      286 GETTABLEKS                       R42 R42 K52 ["Flags"]
      288 GETTABLEKS                       R42 R42 K57 ["getFFlagAmrStudioToastsIntegration"]
      290 CALL                             R41 1 1
      291 GETIMPORT                        R42 K5 [require]
      293 GETTABLEKS                       R43 R0 K8 ["Src"]
      295 GETTABLEKS                       R43 R43 K52 ["Flags"]
      297 GETTABLEKS                       R43 R43 K58 ["getFFlagAmrEnableIxp"]
      299 CALL                             R42 1 1
      300 GETTABLEKS                       R43 R1 K59 ["PureComponent"]
      302 LOADK                            R45 K60 ["MainPlugin"]
      303 NAMECALL                         R43 R43 K61 ["extend"]
      305 CALL                             R43 2 1
      306 DUPCLOSURE                       R44 K62 [PROTO_0]
      307 SETTABLEKS                       R44 R43 K63 ["_getAllControllers"]
      309 DUPCLOSURE                       R44 K64 [PROTO_1]
      310 CAPTURE                          VAL R34
      311 SETTABLEKS                       R44 R43 K65 ["_loadSettingsIntoControllers"]
      313 DUPCLOSURE                       R44 K66 [PROTO_8]
      314 CAPTURE                          VAL R40
      315 CAPTURE                          VAL R32
      316 CAPTURE                          VAL R3
      317 CAPTURE                          VAL R42
      318 CAPTURE                          VAL R11
      319 CAPTURE                          VAL R39
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R35
      322 CAPTURE                          VAL R15
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R19
      326 CAPTURE                          VAL R20
      327 CAPTURE                          VAL R41
      328 CAPTURE                          VAL R36
      329 CAPTURE                          VAL R27
      330 CAPTURE                          VAL R31
      331 CAPTURE                          VAL R29
      332 CAPTURE                          VAL R28
      333 CAPTURE                          VAL R25
      334 CAPTURE                          VAL R30
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R24
      337 SETTABLEKS                       R44 R43 K67 ["init"]
      339 DUPCLOSURE                       R44 K68 [PROTO_9]
      340 SETTABLEKS                       R44 R43 K69 ["didUpdate"]
      342 DUPCLOSURE                       R44 K70 [PROTO_10]
      343 CAPTURE                          VAL R35
      344 SETTABLEKS                       R44 R43 K71 ["willUnmount"]
      346 DUPCLOSURE                       R44 K72 [PROTO_13]
      347 CAPTURE                          VAL R38
      348 CAPTURE                          VAL R4
      349 CAPTURE                          VAL R6
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R16
      352 CAPTURE                          VAL R17
      353 CAPTURE                          VAL R18
      354 CAPTURE                          VAL R1
      355 CAPTURE                          VAL R13
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R33
      358 CAPTURE                          VAL R37
      359 CAPTURE                          VAL R23
      360 CAPTURE                          VAL R14
      361 SETTABLEKS                       R44 R43 K73 ["render"]
      363 RETURN                           R43 1
