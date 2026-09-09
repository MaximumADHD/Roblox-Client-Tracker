PROTO_0:
        0 DUPTABLE                         R1 K7 [{"Input", "PluginController", "ExplorerController", "ItemsController", "SearchController", "LayoutController", "TutorialController"}]
        1 GETTABLEKS                       R2 R0 K8 ["input"]
        3 SETTABLEKS                       R2 R1 K0 ["Input"]
        5 GETTABLEKS                       R2 R0 K9 ["pluginController"]
        7 SETTABLEKS                       R2 R1 K1 ["PluginController"]
        9 GETTABLEKS                       R2 R0 K10 ["explorerController"]
       11 SETTABLEKS                       R2 R1 K2 ["ExplorerController"]
       13 GETTABLEKS                       R2 R0 K11 ["itemsController"]
       15 SETTABLEKS                       R2 R1 K3 ["ItemsController"]
       17 GETTABLEKS                       R2 R0 K12 ["searchController"]
       19 SETTABLEKS                       R2 R1 K4 ["SearchController"]
       21 GETTABLEKS                       R2 R0 K13 ["layoutController"]
       23 SETTABLEKS                       R2 R1 K5 ["LayoutController"]
       25 GETTABLEKS                       R2 R0 K14 ["tutorialController"]
       27 SETTABLEKS                       R2 R1 K6 ["TutorialController"]
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["layoutController"]
        5 GETTABLEKS                       R5 R2 K1 ["Layout"]
        7 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETTABLEKS                       R3 R0 K3 ["tutorialController"]
       15 GETTABLEKS                       R5 R2 K4 ["Tutorial"]
       17 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

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
        5 JUMPIF                           R0 ; [+50]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["ixpController"]
        9 NAMECALL                         R0 R0 K3 ["refreshForSession"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K4 ["sendEnabledEvent"]
       15 DUPTABLE                         R1 K6 [{"actionType"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K7 ["Types"]
       19 GETTABLEKS                       R2 R2 K8 ["ActionType"]
       21 GETTABLEKS                       R2 R2 K9 ["RibbonClick"]
       23 SETTABLEKS                       R2 R1 K5 ["actionType"]
       25 DUPTABLE                         R2 K14 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K15 ["explorerController"]
       29 SETTABLEKS                       R3 R2 K10 ["ExplorerController"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K16 ["layoutController"]
       34 SETTABLEKS                       R3 R2 K11 ["LayoutController"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K17 ["itemsController"]
       39 SETTABLEKS                       R3 R2 K12 ["ItemsController"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K18 ["searchController"]
       44 SETTABLEKS                       R3 R2 K13 ["SearchController"]
       46 CALL                             R0 2 0
       47 GETUPVAL                         R0 2
       48 CALL                             R0 0 1
       49 JUMPIF                           R0 ; [+6]
       50 DUPTABLE                         R0 K20 [{["actionType"] = "ribbon_click"}]
       51 GETUPVAL                         R1 3
       52 GETTABLEKS                       R1 R1 K4 ["sendEnabledEvent"]
       54 MOVE                             R2 R0
       55 CALL                             R1 1 0
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K0 ["state"]
       59 GETTABLEKS                       R0 R0 K1 ["enabled"]
       61 JUMPIFNOT                        R0 ; [+15]
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K2 ["ixpController"]
       65 NAMECALL                         R0 R0 K21 ["cancelRefresh"]
       67 CALL                             R0 1 0
       68 GETUPVAL                         R0 4
       69 GETUPVAL                         R1 5
       70 GETTABLEKS                       R1 R1 K22 ["Plugin"]
       72 GETUPVAL                         R2 0
       73 NAMECALL                         R2 R2 K23 ["_getAllControllers"]
       75 CALL                             R2 1 -1
       76 CALL                             R0 -1 0
       77 GETUPVAL                         R0 0
       78 DUPCLOSURE                       R2 K24 [PROTO_2]
       79 NAMECALL                         R0 R0 K25 ["setState"]
       81 CALL                             R0 2 0
       82 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ixpController"]
        3 NAMECALL                         R0 R0 K1 ["cancelRefresh"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K4 [{["enabled"] = False}]
        8 NAMECALL                         R0 R0 K5 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K6 ["Plugin"]
       15 GETUPVAL                         R2 0
       16 NAMECALL                         R2 R2 K7 ["_getAllControllers"]
       18 CALL                             R2 1 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+42]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["sendEnabledEvent"]
        4 DUPTABLE                         R2 K2 [{"actionType"}]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["Types"]
        8 GETTABLEKS                       R3 R3 K4 ["ActionType"]
       10 GETTABLEKS                       R3 R3 K5 ["Restore"]
       12 SETTABLEKS                       R3 R2 K1 ["actionType"]
       14 DUPTABLE                         R3 K10 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K11 ["explorerController"]
       18 SETTABLEKS                       R4 R3 K6 ["ExplorerController"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K12 ["layoutController"]
       23 SETTABLEKS                       R4 R3 K7 ["LayoutController"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K13 ["itemsController"]
       28 SETTABLEKS                       R4 R3 K8 ["ItemsController"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K14 ["searchController"]
       33 SETTABLEKS                       R4 R3 K9 ["SearchController"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K15 ["ixpController"]
       39 NAMECALL                         R1 R1 K16 ["refreshForSession"]
       41 CALL                             R1 1 0
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K15 ["ixpController"]
       46 NAMECALL                         R1 R1 K17 ["cancelRefresh"]
       48 CALL                             R1 1 0
       49 GETUPVAL                         R1 1
       50 DUPTABLE                         R3 K19 [{"enabled"}]
       51 SETTABLEKS                       R0 R3 K18 ["enabled"]
       53 NAMECALL                         R1 R1 K20 ["setState"]
       55 CALL                             R1 2 0
       56 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+42]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["sendEnabledEvent"]
        6 DUPTABLE                         R2 K3 [{"actionType"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K4 ["Types"]
       10 GETTABLEKS                       R3 R3 K5 ["ActionType"]
       12 GETTABLEKS                       R3 R3 K6 ["WidgetEnabled"]
       14 SETTABLEKS                       R3 R2 K2 ["actionType"]
       16 DUPTABLE                         R3 K11 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K12 ["explorerController"]
       20 SETTABLEKS                       R4 R3 K7 ["ExplorerController"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K13 ["layoutController"]
       25 SETTABLEKS                       R4 R3 K8 ["LayoutController"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K14 ["itemsController"]
       30 SETTABLEKS                       R4 R3 K9 ["ItemsController"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K15 ["searchController"]
       35 SETTABLEKS                       R4 R3 K10 ["SearchController"]
       37 CALL                             R1 2 0
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K16 ["ixpController"]
       41 NAMECALL                         R1 R1 K17 ["refreshForSession"]
       43 CALL                             R1 1 0
       44 JUMP                             ; [+6]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K16 ["ixpController"]
       48 NAMECALL                         R1 R1 K18 ["cancelRefresh"]
       50 CALL                             R1 1 0
       51 GETUPVAL                         R1 1
       52 DUPTABLE                         R3 K20 [{"enabled"}]
       53 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       55 SETTABLEKS                       R4 R3 K19 ["enabled"]
       57 NAMECALL                         R1 R1 K21 ["setState"]
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

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
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       35 NEWCLOSURE                       R2 P3
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       40 NEWCLOSURE                       R2 P4
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       44 GETUPVAL                         R2 7
       45 GETTABLEKS                       R2 R2 K12 ["Localization"]
       47 GETTABLEKS                       R2 R2 K13 ["new"]
       49 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       50 GETUPVAL                         R4 8
       51 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       53 GETUPVAL                         R4 9
       54 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       56 CALL                             R2 1 1
       57 SETTABLEKS                       R2 R0 K19 ["localization"]
       59 GETUPVAL                         R2 10
       60 GETTABLEKS                       R2 R2 K13 ["new"]
       62 CALL                             R2 0 1
       63 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       65 GETUPVAL                         R2 11
       66 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K22 ["design"]
       71 GETUPVAL                         R2 12
       72 CALL                             R2 0 1
       73 JUMPIFNOT                        R2 ; [+8]
       74 GETUPVAL                         R2 13
       75 GETTABLEKS                       R2 R2 K23 ["init"]
       77 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       79 GETTABLEKS                       R4 R0 K19 ["localization"]
       81 CALL                             R2 2 0
       82 GETUPVAL                         R2 14
       83 GETTABLEKS                       R2 R2 K13 ["new"]
       85 CALL                             R2 0 1
       86 SETTABLEKS                       R2 R0 K24 ["ixpController"]
       88 GETUPVAL                         R2 15
       89 GETTABLEKS                       R2 R2 K13 ["new"]
       91 CALL                             R2 0 1
       92 SETTABLEKS                       R2 R0 K25 ["networking"]
       94 GETUPVAL                         R2 16
       95 GETTABLEKS                       R2 R2 K13 ["new"]
       97 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       99 GETTABLEKS                       R4 R0 K25 ["networking"]
      101 GETTABLEKS                       R5 R0 K19 ["localization"]
      103 CALL                             R2 3 1
      104 SETTABLEKS                       R2 R0 K26 ["pluginController"]
      106 GETUPVAL                         R2 17
      107 GETTABLEKS                       R2 R2 K13 ["new"]
      109 GETTABLEKS                       R3 R1 K21 ["Plugin"]
      111 GETTABLEKS                       R4 R1 K27 ["PluginLoaderContext"]
      113 GETTABLEKS                       R4 R4 K28 ["mainDockWidget"]
      115 DUPTABLE                         R5 K30 [{"PluginController"}]
      116 GETTABLEKS                       R6 R0 K26 ["pluginController"]
      118 SETTABLEKS                       R6 R5 K29 ["PluginController"]
      120 CALL                             R2 3 1
      121 SETTABLEKS                       R2 R0 K31 ["layoutController"]
      123 GETUPVAL                         R2 18
      124 GETTABLEKS                       R2 R2 K13 ["new"]
      126 DUPTABLE                         R3 K34 [{"PluginController", "LayoutController", "Networking"}]
      127 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      129 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      131 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      133 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      135 GETTABLEKS                       R4 R0 K25 ["networking"]
      137 SETTABLEKS                       R4 R3 K33 ["Networking"]
      139 CALL                             R2 1 1
      140 SETTABLEKS                       R2 R0 K35 ["explorerController"]
      142 GETUPVAL                         R2 19
      143 GETTABLEKS                       R2 R2 K13 ["new"]
      145 DUPTABLE                         R3 K37 [{"PluginController", "ExplorerController", "Networking"}]
      146 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      148 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      150 GETTABLEKS                       R4 R0 K35 ["explorerController"]
      152 SETTABLEKS                       R4 R3 K36 ["ExplorerController"]
      154 GETTABLEKS                       R4 R0 K25 ["networking"]
      156 SETTABLEKS                       R4 R3 K33 ["Networking"]
      158 CALL                             R2 1 1
      159 SETTABLEKS                       R2 R0 K38 ["searchController"]
      161 GETUPVAL                         R2 20
      162 GETTABLEKS                       R2 R2 K13 ["new"]
      164 DUPTABLE                         R3 K40 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking"}]
      165 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      167 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      169 GETTABLEKS                       R4 R0 K35 ["explorerController"]
      171 SETTABLEKS                       R4 R3 K36 ["ExplorerController"]
      173 GETTABLEKS                       R4 R0 K38 ["searchController"]
      175 SETTABLEKS                       R4 R3 K39 ["SearchController"]
      177 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      179 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      181 GETTABLEKS                       R4 R0 K25 ["networking"]
      183 SETTABLEKS                       R4 R3 K33 ["Networking"]
      185 CALL                             R2 1 1
      186 SETTABLEKS                       R2 R0 K41 ["itemsController"]
      188 GETUPVAL                         R2 21
      189 GETTABLEKS                       R2 R2 K13 ["new"]
      191 DUPTABLE                         R3 K43 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      192 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      194 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      196 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      198 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      200 GETTABLEKS                       R4 R0 K41 ["itemsController"]
      202 SETTABLEKS                       R4 R3 K42 ["ItemsController"]
      204 GETTABLEKS                       R4 R0 K38 ["searchController"]
      206 SETTABLEKS                       R4 R3 K39 ["SearchController"]
      208 GETTABLEKS                       R4 R0 K35 ["explorerController"]
      210 SETTABLEKS                       R4 R3 K36 ["ExplorerController"]
      212 CALL                             R2 1 1
      213 SETTABLEKS                       R2 R0 K44 ["input"]
      215 GETUPVAL                         R2 22
      216 CALL                             R2 0 1
      217 JUMPIFNOT                        R2 ; [+34]
      218 GETUPVAL                         R2 23
      219 GETTABLEKS                       R2 R2 K13 ["new"]
      221 DUPTABLE                         R3 K45 [{"PluginController", "ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
      222 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      224 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      226 GETTABLEKS                       R4 R0 K35 ["explorerController"]
      228 SETTABLEKS                       R4 R3 K36 ["ExplorerController"]
      230 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      232 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      234 GETTABLEKS                       R4 R0 K41 ["itemsController"]
      236 SETTABLEKS                       R4 R3 K42 ["ItemsController"]
      238 GETTABLEKS                       R4 R0 K38 ["searchController"]
      240 SETTABLEKS                       R4 R3 K39 ["SearchController"]
      242 CALL                             R2 1 1
      243 SETTABLEKS                       R2 R0 K46 ["tutorialController"]
      245 GETTABLEKS                       R2 R0 K26 ["pluginController"]
      247 GETTABLEKS                       R4 R0 K46 ["tutorialController"]
      249 NAMECALL                         R2 R2 K47 ["setTutorialController"]
      251 CALL                             R2 2 0
      252 GETTABLEKS                       R4 R1 K21 ["Plugin"]
      254 NAMECALL                         R2 R0 K48 ["_loadSettingsIntoControllers"]
      256 CALL                             R2 2 0
      257 RETURN                           R0 0

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
      198 GETTABLEKS                       R32 R32 K38 ["Controllers"]
      200 GETTABLEKS                       R32 R32 K46 ["TutorialController"]
      202 CALL                             R31 1 1
      203 GETIMPORT                        R32 K5 [require]
      205 GETTABLEKS                       R33 R0 K8 ["Src"]
      207 GETTABLEKS                       R33 R33 K47 ["Networking"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K5 [require]
      212 GETTABLEKS                       R34 R0 K8 ["Src"]
      214 GETTABLEKS                       R34 R34 K10 ["Analytics"]
      216 GETTABLEKS                       R34 R34 K48 ["Benchmarking"]
      218 CALL                             R33 1 1
      219 GETIMPORT                        R34 K5 [require]
      221 GETTABLEKS                       R35 R0 K8 ["Src"]
      223 GETTABLEKS                       R35 R35 K12 ["Util"]
      225 GETTABLEKS                       R35 R35 K49 ["getStudioTheme"]
      227 CALL                             R34 1 1
      228 GETIMPORT                        R35 K5 [require]
      230 GETTABLEKS                       R36 R0 K8 ["Src"]
      232 GETTABLEKS                       R36 R36 K12 ["Util"]
      234 GETTABLEKS                       R36 R36 K50 ["loadSettings"]
      236 CALL                             R35 1 1
      237 GETIMPORT                        R36 K5 [require]
      239 GETTABLEKS                       R37 R0 K8 ["Src"]
      241 GETTABLEKS                       R37 R37 K12 ["Util"]
      243 GETTABLEKS                       R37 R37 K51 ["saveSettings"]
      245 CALL                             R36 1 1
      246 GETIMPORT                        R37 K5 [require]
      248 GETTABLEKS                       R38 R0 K8 ["Src"]
      250 GETTABLEKS                       R38 R38 K12 ["Util"]
      252 GETTABLEKS                       R38 R38 K52 ["Notifications"]
      254 CALL                             R37 1 1
      255 GETIMPORT                        R38 K5 [require]
      257 GETTABLEKS                       R39 R0 K8 ["Src"]
      259 GETTABLEKS                       R39 R39 K53 ["Flags"]
      261 GETTABLEKS                       R39 R39 K54 ["getFFlagAmrUseQWidgetPopovers"]
      263 CALL                             R38 1 1
      264 GETIMPORT                        R39 K5 [require]
      266 GETTABLEKS                       R40 R0 K8 ["Src"]
      268 GETTABLEKS                       R40 R40 K53 ["Flags"]
      270 GETTABLEKS                       R40 R40 K55 ["getFFlagDebugAmrShowPluginVersion"]
      272 CALL                             R39 1 1
      273 GETIMPORT                        R40 K5 [require]
      275 GETTABLEKS                       R41 R0 K8 ["Src"]
      277 GETTABLEKS                       R41 R41 K53 ["Flags"]
      279 GETTABLEKS                       R41 R41 K56 ["getFFlagAmrDisableShardedEvent"]
      281 CALL                             R40 1 1
      282 GETIMPORT                        R41 K5 [require]
      284 GETTABLEKS                       R42 R0 K8 ["Src"]
      286 GETTABLEKS                       R42 R42 K53 ["Flags"]
      288 GETTABLEKS                       R42 R42 K57 ["getFFlagAmrEnableBenchmarking"]
      290 CALL                             R41 1 1
      291 GETIMPORT                        R42 K5 [require]
      293 GETTABLEKS                       R43 R0 K8 ["Src"]
      295 GETTABLEKS                       R43 R43 K53 ["Flags"]
      297 GETTABLEKS                       R43 R43 K58 ["getFFlagAmrStudioToastsIntegration"]
      299 CALL                             R42 1 1
      300 GETIMPORT                        R43 K5 [require]
      302 GETTABLEKS                       R44 R0 K8 ["Src"]
      304 GETTABLEKS                       R44 R44 K53 ["Flags"]
      306 GETTABLEKS                       R44 R44 K59 ["getFFlagAmrEnableTutorials"]
      308 CALL                             R43 1 1
      309 GETTABLEKS                       R44 R1 K60 ["PureComponent"]
      311 LOADK                            R46 K61 ["MainPlugin"]
      312 NAMECALL                         R44 R44 K62 ["extend"]
      314 CALL                             R44 2 1
      315 DUPCLOSURE                       R45 K63 [PROTO_0]
      316 SETTABLEKS                       R45 R44 K64 ["_getAllControllers"]
      318 DUPCLOSURE                       R45 K65 [PROTO_1]
      319 CAPTURE                          VAL R35
      320 CAPTURE                          VAL R43
      321 SETTABLEKS                       R45 R44 K66 ["_loadSettingsIntoControllers"]
      323 DUPCLOSURE                       R45 K67 [PROTO_8]
      324 CAPTURE                          VAL R41
      325 CAPTURE                          VAL R33
      326 CAPTURE                          VAL R3
      327 CAPTURE                          VAL R11
      328 CAPTURE                          VAL R40
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R36
      331 CAPTURE                          VAL R15
      332 CAPTURE                          VAL R21
      333 CAPTURE                          VAL R22
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R42
      337 CAPTURE                          VAL R37
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R32
      340 CAPTURE                          VAL R29
      341 CAPTURE                          VAL R28
      342 CAPTURE                          VAL R25
      343 CAPTURE                          VAL R30
      344 CAPTURE                          VAL R26
      345 CAPTURE                          VAL R24
      346 CAPTURE                          VAL R43
      347 CAPTURE                          VAL R31
      348 SETTABLEKS                       R45 R44 K68 ["init"]
      350 DUPCLOSURE                       R45 K69 [PROTO_9]
      351 SETTABLEKS                       R45 R44 K70 ["didUpdate"]
      353 DUPCLOSURE                       R45 K71 [PROTO_10]
      354 CAPTURE                          VAL R36
      355 SETTABLEKS                       R45 R44 K72 ["willUnmount"]
      357 DUPCLOSURE                       R45 K73 [PROTO_13]
      358 CAPTURE                          VAL R39
      359 CAPTURE                          VAL R4
      360 CAPTURE                          VAL R6
      361 CAPTURE                          VAL R15
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R17
      364 CAPTURE                          VAL R18
      365 CAPTURE                          VAL R1
      366 CAPTURE                          VAL R13
      367 CAPTURE                          VAL R9
      368 CAPTURE                          VAL R34
      369 CAPTURE                          VAL R38
      370 CAPTURE                          VAL R23
      371 CAPTURE                          VAL R14
      372 SETTABLEKS                       R45 R44 K74 ["render"]
      374 RETURN                           R44 1
