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
       20 GETUPVAL                         R3 2
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETTABLEKS                       R3 R0 K5 ["explorerController"]
       25 GETTABLEKS                       R5 R2 K6 ["Explorer"]
       27 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["pluginController"]
        6 NAMECALL                         R1 R1 K1 ["getTutorialController"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETTABLEKS                       R2 R0 K2 ["searchController"]
       12 NAMECALL                         R2 R2 K3 ["getIsSearchInitiated"]
       14 CALL                             R2 1 1
       15 JUMPIF                           R2 ; [+8]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["TutorialEvent"]
       19 GETTABLEKS                       R4 R4 K5 ["BrowseModeEntered"]
       21 NAMECALL                         R2 R1 K6 ["notify"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+41]
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
       47 GETUPVAL                         R0 0
       48 GETTABLEKS                       R0 R0 K0 ["state"]
       50 GETTABLEKS                       R0 R0 K1 ["enabled"]
       52 JUMPIFNOT                        R0 ; [+15]
       53 GETUPVAL                         R0 0
       54 GETTABLEKS                       R0 R0 K2 ["ixpController"]
       56 NAMECALL                         R0 R0 K19 ["cancelRefresh"]
       58 CALL                             R0 1 0
       59 GETUPVAL                         R0 2
       60 GETUPVAL                         R1 3
       61 GETTABLEKS                       R1 R1 K20 ["Plugin"]
       63 GETUPVAL                         R2 0
       64 NAMECALL                         R2 R2 K21 ["_getAllControllers"]
       66 CALL                             R2 1 -1
       67 CALL                             R0 -1 0
       68 GETUPVAL                         R0 0
       69 DUPCLOSURE                       R2 K22 [PROTO_3]
       70 NAMECALL                         R0 R0 K23 ["setState"]
       72 CALL                             R0 2 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K0 ["state"]
       76 GETTABLEKS                       R0 R0 K1 ["enabled"]
       78 JUMPIF                           R0 ; [+4]
       79 GETUPVAL                         R0 0
       80 NAMECALL                         R0 R0 K24 ["_notifyTutorialThatPluginIsEnabled"]
       82 CALL                             R0 1 0
       83 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       56 JUMPIFNOT                        R0 ; [+4]
       57 GETUPVAL                         R1 1
       58 NAMECALL                         R1 R1 K21 ["_notifyTutorialThatPluginIsEnabled"]
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_7:
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
       60 GETTABLEKS                       R1 R0 K0 ["Enabled"]
       62 JUMPIFNOT                        R1 ; [+4]
       63 GETUPVAL                         R1 1
       64 NAMECALL                         R1 R1 K22 ["_notifyTutorialThatPluginIsEnabled"]
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_9:
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
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R0 K7 ["toggleEnabled"]
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R2 R0 K8 ["onClose"]
       28 NEWCLOSURE                       R2 P2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       33 NEWCLOSURE                       R2 P3
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       38 NEWCLOSURE                       R2 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       42 GETUPVAL                         R2 5
       43 GETTABLEKS                       R2 R2 K12 ["Localization"]
       45 GETTABLEKS                       R2 R2 K13 ["new"]
       47 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       48 GETUPVAL                         R4 6
       49 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       51 GETUPVAL                         R4 7
       52 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R0 K19 ["localization"]
       57 GETUPVAL                         R2 8
       58 GETTABLEKS                       R2 R2 K13 ["new"]
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       63 GETUPVAL                         R2 9
       64 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       66 CALL                             R2 1 1
       67 SETTABLEKS                       R2 R0 K22 ["design"]
       69 GETUPVAL                         R2 10
       70 CALL                             R2 0 1
       71 JUMPIFNOT                        R2 ; [+8]
       72 GETUPVAL                         R2 11
       73 GETTABLEKS                       R2 R2 K23 ["init"]
       75 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       77 GETTABLEKS                       R4 R0 K19 ["localization"]
       79 CALL                             R2 2 0
       80 GETUPVAL                         R2 12
       81 GETTABLEKS                       R2 R2 K13 ["new"]
       83 CALL                             R2 0 1
       84 SETTABLEKS                       R2 R0 K24 ["ixpController"]
       86 GETUPVAL                         R2 13
       87 GETTABLEKS                       R2 R2 K13 ["new"]
       89 CALL                             R2 0 1
       90 SETTABLEKS                       R2 R0 K25 ["networking"]
       92 GETUPVAL                         R2 14
       93 GETTABLEKS                       R2 R2 K13 ["new"]
       95 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       97 GETTABLEKS                       R4 R0 K25 ["networking"]
       99 GETTABLEKS                       R5 R0 K19 ["localization"]
      101 CALL                             R2 3 1
      102 SETTABLEKS                       R2 R0 K26 ["pluginController"]
      104 GETUPVAL                         R2 15
      105 GETTABLEKS                       R2 R2 K13 ["new"]
      107 GETTABLEKS                       R3 R1 K21 ["Plugin"]
      109 GETTABLEKS                       R4 R1 K27 ["PluginLoaderContext"]
      111 GETTABLEKS                       R4 R4 K28 ["mainDockWidget"]
      113 DUPTABLE                         R5 K30 [{"PluginController"}]
      114 GETTABLEKS                       R6 R0 K26 ["pluginController"]
      116 SETTABLEKS                       R6 R5 K29 ["PluginController"]
      118 CALL                             R2 3 1
      119 SETTABLEKS                       R2 R0 K31 ["layoutController"]
      121 GETUPVAL                         R2 16
      122 GETTABLEKS                       R2 R2 K13 ["new"]
      124 DUPTABLE                         R3 K35 [{"PluginController", "LayoutController", "Networking", "IxpController"}]
      125 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      127 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      129 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      131 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      133 GETTABLEKS                       R4 R0 K25 ["networking"]
      135 SETTABLEKS                       R4 R3 K33 ["Networking"]
      137 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      139 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      141 CALL                             R2 1 1
      142 SETTABLEKS                       R2 R0 K36 ["explorerController"]
      144 GETUPVAL                         R2 17
      145 GETTABLEKS                       R2 R2 K13 ["new"]
      147 DUPTABLE                         R3 K38 [{"PluginController", "ExplorerController", "Networking", "IxpController"}]
      148 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      150 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      152 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      154 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      156 GETTABLEKS                       R4 R0 K25 ["networking"]
      158 SETTABLEKS                       R4 R3 K33 ["Networking"]
      160 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      162 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      164 CALL                             R2 1 1
      165 SETTABLEKS                       R2 R0 K39 ["searchController"]
      167 GETUPVAL                         R2 18
      168 GETTABLEKS                       R2 R2 K13 ["new"]
      170 DUPTABLE                         R3 K41 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking", "IxpController"}]
      171 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      173 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      175 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      177 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      179 GETTABLEKS                       R4 R0 K39 ["searchController"]
      181 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      183 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      185 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      187 GETTABLEKS                       R4 R0 K25 ["networking"]
      189 SETTABLEKS                       R4 R3 K33 ["Networking"]
      191 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      193 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      195 CALL                             R2 1 1
      196 SETTABLEKS                       R2 R0 K42 ["itemsController"]
      198 GETUPVAL                         R2 19
      199 GETTABLEKS                       R2 R2 K13 ["new"]
      201 DUPTABLE                         R3 K44 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      202 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      204 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      206 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      208 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      210 GETTABLEKS                       R4 R0 K42 ["itemsController"]
      212 SETTABLEKS                       R4 R3 K43 ["ItemsController"]
      214 GETTABLEKS                       R4 R0 K39 ["searchController"]
      216 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      218 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      220 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      222 CALL                             R2 1 1
      223 SETTABLEKS                       R2 R0 K45 ["input"]
      225 GETUPVAL                         R2 20
      226 CALL                             R2 0 1
      227 JUMPIFNOT                        R2 ; [+38]
      228 GETUPVAL                         R2 21
      229 GETTABLEKS                       R2 R2 K13 ["new"]
      231 DUPTABLE                         R3 K46 [{"PluginController", "ExplorerController", "LayoutController", "ItemsController", "SearchController", "IxpController"}]
      232 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      234 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      236 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      238 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      240 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      242 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      244 GETTABLEKS                       R4 R0 K42 ["itemsController"]
      246 SETTABLEKS                       R4 R3 K43 ["ItemsController"]
      248 GETTABLEKS                       R4 R0 K39 ["searchController"]
      250 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      252 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      254 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      256 CALL                             R2 1 1
      257 SETTABLEKS                       R2 R0 K47 ["tutorialController"]
      259 GETTABLEKS                       R2 R0 K26 ["pluginController"]
      261 GETTABLEKS                       R4 R0 K47 ["tutorialController"]
      263 NAMECALL                         R2 R2 K48 ["setTutorialController"]
      265 CALL                             R2 2 0
      266 GETTABLEKS                       R4 R1 K21 ["Plugin"]
      268 NAMECALL                         R2 R0 K49 ["_loadSettingsIntoControllers"]
      270 CALL                             R2 2 0
      271 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_11:
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
       35 GETTABLEKS                       R1 R0 K8 ["tutorialController"]
       37 JUMPIFNOT                        R1 ; [+5]
       38 GETTABLEKS                       R1 R0 K8 ["tutorialController"]
       40 NAMECALL                         R1 R1 K4 ["destroy"]
       42 CALL                             R1 1 0
       43 GETTABLEKS                       R1 R0 K9 ["searchController"]
       45 NAMECALL                         R1 R1 K4 ["destroy"]
       47 CALL                             R1 1 0
       48 GETTABLEKS                       R1 R0 K10 ["layoutController"]
       50 NAMECALL                         R1 R1 K4 ["destroy"]
       52 CALL                             R1 1 0
       53 GETTABLEKS                       R1 R0 K11 ["ixpController"]
       55 NAMECALL                         R1 R1 K4 ["destroy"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyDown"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyUp"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_14:
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
       87 LOADK                            R12 K30 ["%*%*"]
       88 GETTABLEKS                       R14 R0 K15 ["localization"]
       90 LOADK                            R16 K2 ["Plugin"]
       91 LOADK                            R17 K31 ["Name"]
       92 NAMECALL                         R14 R14 K32 ["getText"]
       94 CALL                             R14 3 1
       95 MOVE                             R15 R5
       96 NAMECALL                         R12 R12 K9 ["format"]
       98 CALL                             R12 3 1
       99 SETTABLEKS                       R12 R11 K33 ["Title"]
      101 GETIMPORT                        R12 K37 [Enum.ZIndexBehavior.Sibling]
      103 SETTABLEKS                       R12 R11 K35 ["ZIndexBehavior"]
      105 GETIMPORT                        R12 K40 [Enum.InitialDockState.Bottom]
      107 SETTABLEKS                       R12 R11 K38 ["InitialDockState"]
      109 GETIMPORT                        R12 K42 [Vector2.new]
      111 LOADN                            R13 640
      112 LOADN                            R14 480
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K43 ["Size"]
      116 GETIMPORT                        R12 K42 [Vector2.new]
      118 LOADN                            R13 250
      119 LOADN                            R14 200
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K44 ["MinSize"]
      123 GETTABLEKS                       R12 R0 K45 ["onClose"]
      125 SETTABLEKS                       R12 R11 K46 ["OnClose"]
      127 GETTABLEKS                       R12 R1 K47 ["PluginLoaderContext"]
      129 GETTABLEKS                       R12 R12 K48 ["mainDockWidget"]
      131 SETTABLEKS                       R12 R11 K49 ["Widget"]
      133 GETTABLEKS                       R12 R0 K50 ["onDockWidgetCreated"]
      135 SETTABLEKS                       R12 R11 K51 ["OnWidgetCreated"]
      137 GETTABLEKS                       R12 R0 K52 ["onRestore"]
      139 SETTABLEKS                       R12 R11 K53 ["OnWidgetRestored"]
      141 LOADB                            R12 1
      142 SETTABLEKS                       R12 R11 K54 ["ShouldRestore"]
      144 GETUPVAL                         R12 7
      145 GETTABLEKS                       R12 R12 K55 ["Change"]
      147 GETTABLEKS                       R12 R12 K29 ["Enabled"]
      149 GETTABLEKS                       R13 R0 K56 ["onWidgetEnabledChanged"]
      151 SETTABLE                         R13 R11 R12
      152 NEWTABLE                         R12 0 1
      154 GETUPVAL                         R13 7
      155 GETTABLEKS                       R13 R13 K27 ["createElement"]
      157 GETUPVAL                         R14 9
      158 DUPTABLE                         R15 K59 [{"theme", "plugin"}]
      159 GETUPVAL                         R16 10
      160 CALL                             R16 0 1
      161 SETTABLEKS                       R16 R15 K57 ["theme"]
      163 GETUPVAL                         R17 11
      164 CALL                             R17 0 1
      165 JUMPIFNOT                        R17 ; [+2]
      166 MOVE                             R16 R3
      167 JUMP                             ; [+1]
      168 LOADNIL                          R16
      169 SETTABLEKS                       R16 R15 K58 ["plugin"]
      171 DUPTABLE                         R16 K62 [{"App", "KeyboardListener"}]
      172 GETUPVAL                         R17 7
      173 GETTABLEKS                       R17 R17 K27 ["createElement"]
      175 GETUPVAL                         R18 12
      176 CALL                             R17 1 1
      177 SETTABLEKS                       R17 R16 K60 ["App"]
      179 GETUPVAL                         R17 7
      180 GETTABLEKS                       R17 R17 K27 ["createElement"]
      182 GETUPVAL                         R18 13
      183 DUPTABLE                         R19 K65 [{"OnKeyPressed", "OnKeyReleased"}]
      184 NEWCLOSURE                       R20 P0
      185 CAPTURE                          VAL R0
      186 SETTABLEKS                       R20 R19 K63 ["OnKeyPressed"]
      188 NEWCLOSURE                       R20 P1
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R20 R19 K64 ["OnKeyReleased"]
      192 CALL                             R17 2 1
      193 SETTABLEKS                       R17 R16 K61 ["KeyboardListener"]
      195 CALL                             R13 3 -1
      196 SETLIST                          R12 R13 -1 [1]
      198 CALL                             R9 3 1
      199 SETTABLEKS                       R9 R8 K25 ["MainWidget"]
      201 CALL                             R6 2 -1
      202 RETURN                           R6 -1

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
       72 GETTABLEKS                       R11 R11 K10 ["Analytics"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R7 K20 ["UI"]
       77 GETTABLEKS                       R12 R11 K21 ["DockWidget"]
       79 GETTABLEKS                       R13 R11 K22 ["KeyboardListener"]
       81 GETTABLEKS                       R14 R7 K23 ["ContextServices"]
       83 GETTABLEKS                       R15 R14 K24 ["Plugin"]
       85 GETTABLEKS                       R16 R14 K25 ["Mouse"]
       87 GETTABLEKS                       R17 R14 K26 ["Design"]
       89 GETTABLEKS                       R18 R7 K27 ["Style"]
       91 GETTABLEKS                       R18 R18 K28 ["Themes"]
       93 GETTABLEKS                       R18 R18 K29 ["StudioTheme"]
       95 GETTABLEKS                       R19 R7 K30 ["Styling"]
       97 GETTABLEKS                       R19 R19 K31 ["registerPluginStyles"]
       99 GETTABLEKS                       R20 R0 K8 ["Src"]
      101 GETTABLEKS                       R20 R20 K32 ["Resources"]
      103 GETTABLEKS                       R20 R20 K33 ["Localization"]
      105 GETTABLEKS                       R20 R20 K34 ["SourceStrings"]
      107 GETTABLEKS                       R21 R0 K8 ["Src"]
      109 GETTABLEKS                       R21 R21 K32 ["Resources"]
      111 GETTABLEKS                       R21 R21 K33 ["Localization"]
      113 GETTABLEKS                       R21 R21 K35 ["LocalizedStrings"]
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R23 R0 K8 ["Src"]
      119 GETTABLEKS                       R23 R23 K18 ["Components"]
      121 GETTABLEKS                       R23 R23 K36 ["App"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R0 K8 ["Src"]
      128 GETTABLEKS                       R24 R24 K37 ["Controllers"]
      130 GETTABLEKS                       R24 R24 K38 ["Input"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K5 [require]
      135 GETTABLEKS                       R25 R0 K8 ["Src"]
      137 GETTABLEKS                       R25 R25 K37 ["Controllers"]
      139 GETTABLEKS                       R25 R25 K39 ["ExplorerController"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K5 [require]
      144 GETTABLEKS                       R26 R0 K8 ["Src"]
      146 GETTABLEKS                       R26 R26 K37 ["Controllers"]
      148 GETTABLEKS                       R26 R26 K40 ["ItemsController"]
      150 CALL                             R25 1 1
      151 GETIMPORT                        R26 K5 [require]
      153 GETTABLEKS                       R27 R0 K8 ["Src"]
      155 GETTABLEKS                       R27 R27 K37 ["Controllers"]
      157 GETTABLEKS                       R27 R27 K41 ["IxpController"]
      159 CALL                             R26 1 1
      160 GETIMPORT                        R27 K5 [require]
      162 GETTABLEKS                       R28 R0 K8 ["Src"]
      164 GETTABLEKS                       R28 R28 K37 ["Controllers"]
      166 GETTABLEKS                       R28 R28 K42 ["LayoutController"]
      168 CALL                             R27 1 1
      169 GETIMPORT                        R28 K5 [require]
      171 GETTABLEKS                       R29 R0 K8 ["Src"]
      173 GETTABLEKS                       R29 R29 K37 ["Controllers"]
      175 GETTABLEKS                       R29 R29 K43 ["PluginController"]
      177 CALL                             R28 1 1
      178 GETIMPORT                        R29 K5 [require]
      180 GETTABLEKS                       R30 R0 K8 ["Src"]
      182 GETTABLEKS                       R30 R30 K37 ["Controllers"]
      184 GETTABLEKS                       R30 R30 K44 ["SearchController"]
      186 CALL                             R29 1 1
      187 GETIMPORT                        R30 K5 [require]
      189 GETTABLEKS                       R31 R0 K8 ["Src"]
      191 GETTABLEKS                       R31 R31 K37 ["Controllers"]
      193 GETTABLEKS                       R31 R31 K45 ["TutorialController"]
      195 CALL                             R30 1 1
      196 GETIMPORT                        R31 K5 [require]
      198 GETTABLEKS                       R32 R0 K8 ["Src"]
      200 GETTABLEKS                       R32 R32 K46 ["Networking"]
      202 CALL                             R31 1 1
      203 GETIMPORT                        R32 K5 [require]
      205 GETTABLEKS                       R33 R0 K8 ["Src"]
      207 GETTABLEKS                       R33 R33 K10 ["Analytics"]
      209 GETTABLEKS                       R33 R33 K47 ["Benchmarking"]
      211 CALL                             R32 1 1
      212 GETIMPORT                        R33 K5 [require]
      214 GETTABLEKS                       R34 R0 K8 ["Src"]
      216 GETTABLEKS                       R34 R34 K12 ["Util"]
      218 GETTABLEKS                       R34 R34 K48 ["getStudioTheme"]
      220 CALL                             R33 1 1
      221 GETIMPORT                        R34 K5 [require]
      223 GETTABLEKS                       R35 R0 K8 ["Src"]
      225 GETTABLEKS                       R35 R35 K12 ["Util"]
      227 GETTABLEKS                       R35 R35 K49 ["loadSettings"]
      229 CALL                             R34 1 1
      230 GETIMPORT                        R35 K5 [require]
      232 GETTABLEKS                       R36 R0 K8 ["Src"]
      234 GETTABLEKS                       R36 R36 K12 ["Util"]
      236 GETTABLEKS                       R36 R36 K50 ["saveSettings"]
      238 CALL                             R35 1 1
      239 GETIMPORT                        R36 K5 [require]
      241 GETTABLEKS                       R37 R0 K8 ["Src"]
      243 GETTABLEKS                       R37 R37 K12 ["Util"]
      245 GETTABLEKS                       R37 R37 K51 ["Notifications"]
      247 CALL                             R36 1 1
      248 GETIMPORT                        R37 K5 [require]
      250 GETTABLEKS                       R38 R0 K8 ["Src"]
      252 GETTABLEKS                       R38 R38 K52 ["Flags"]
      254 GETTABLEKS                       R38 R38 K53 ["getFFlagAmrUseQWidgetPopovers"]
      256 CALL                             R37 1 1
      257 GETIMPORT                        R38 K5 [require]
      259 GETTABLEKS                       R39 R0 K8 ["Src"]
      261 GETTABLEKS                       R39 R39 K52 ["Flags"]
      263 GETTABLEKS                       R39 R39 K54 ["getFFlagDebugAmrShowPluginVersion"]
      265 CALL                             R38 1 1
      266 GETIMPORT                        R39 K5 [require]
      268 GETTABLEKS                       R40 R0 K8 ["Src"]
      270 GETTABLEKS                       R40 R40 K52 ["Flags"]
      272 GETTABLEKS                       R40 R40 K55 ["getFFlagAmrEnableBenchmarking"]
      274 CALL                             R39 1 1
      275 GETIMPORT                        R40 K5 [require]
      277 GETTABLEKS                       R41 R0 K8 ["Src"]
      279 GETTABLEKS                       R41 R41 K52 ["Flags"]
      281 GETTABLEKS                       R41 R41 K56 ["getFFlagAmrStudioToastsIntegration"]
      283 CALL                             R40 1 1
      284 GETIMPORT                        R41 K5 [require]
      286 GETTABLEKS                       R42 R0 K8 ["Src"]
      288 GETTABLEKS                       R42 R42 K52 ["Flags"]
      290 GETTABLEKS                       R42 R42 K57 ["getFFlagAmrEnableTutorials"]
      292 CALL                             R41 1 1
      293 GETIMPORT                        R42 K5 [require]
      295 GETTABLEKS                       R43 R0 K8 ["Src"]
      297 GETTABLEKS                       R43 R43 K52 ["Flags"]
      299 GETTABLEKS                       R43 R43 K58 ["getFFlagAmrSaveToggledGroups"]
      301 CALL                             R42 1 1
      302 GETTABLEKS                       R43 R1 K59 ["PureComponent"]
      304 LOADK                            R45 K60 ["MainPlugin"]
      305 NAMECALL                         R43 R43 K61 ["extend"]
      307 CALL                             R43 2 1
      308 DUPCLOSURE                       R44 K62 [PROTO_0]
      309 SETTABLEKS                       R44 R43 K63 ["_getAllControllers"]
      311 DUPCLOSURE                       R44 K64 [PROTO_1]
      312 CAPTURE                          VAL R34
      313 CAPTURE                          VAL R41
      314 CAPTURE                          VAL R42
      315 SETTABLEKS                       R44 R43 K65 ["_loadSettingsIntoControllers"]
      317 DUPCLOSURE                       R44 K66 [PROTO_2]
      318 CAPTURE                          VAL R41
      319 CAPTURE                          VAL R2
      320 SETTABLEKS                       R44 R43 K67 ["_notifyTutorialThatPluginIsEnabled"]
      322 DUPCLOSURE                       R44 K68 [PROTO_9]
      323 CAPTURE                          VAL R39
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R3
      326 CAPTURE                          VAL R10
      327 CAPTURE                          VAL R35
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R20
      330 CAPTURE                          VAL R21
      331 CAPTURE                          VAL R18
      332 CAPTURE                          VAL R19
      333 CAPTURE                          VAL R40
      334 CAPTURE                          VAL R36
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R31
      337 CAPTURE                          VAL R28
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R24
      340 CAPTURE                          VAL R29
      341 CAPTURE                          VAL R25
      342 CAPTURE                          VAL R23
      343 CAPTURE                          VAL R41
      344 CAPTURE                          VAL R30
      345 SETTABLEKS                       R44 R43 K69 ["init"]
      347 DUPCLOSURE                       R44 K70 [PROTO_10]
      348 SETTABLEKS                       R44 R43 K71 ["didUpdate"]
      350 DUPCLOSURE                       R44 K72 [PROTO_11]
      351 CAPTURE                          VAL R35
      352 SETTABLEKS                       R44 R43 K73 ["willUnmount"]
      354 DUPCLOSURE                       R44 K74 [PROTO_14]
      355 CAPTURE                          VAL R38
      356 CAPTURE                          VAL R4
      357 CAPTURE                          VAL R6
      358 CAPTURE                          VAL R14
      359 CAPTURE                          VAL R15
      360 CAPTURE                          VAL R16
      361 CAPTURE                          VAL R17
      362 CAPTURE                          VAL R1
      363 CAPTURE                          VAL R12
      364 CAPTURE                          VAL R9
      365 CAPTURE                          VAL R33
      366 CAPTURE                          VAL R37
      367 CAPTURE                          VAL R22
      368 CAPTURE                          VAL R13
      369 SETTABLEKS                       R44 R43 K75 ["render"]
      371 RETURN                           R43 1
