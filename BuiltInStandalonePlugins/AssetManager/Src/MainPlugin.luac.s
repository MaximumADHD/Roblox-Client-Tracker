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
       10 GETTABLEKS                       R3 R0 K3 ["tutorialController"]
       12 GETTABLEKS                       R5 R2 K4 ["Tutorial"]
       14 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R0 K5 ["explorerController"]
       19 GETTABLEKS                       R5 R2 K6 ["Explorer"]
       21 NAMECALL                         R3 R3 K2 ["populateSavedSettings"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getTutorialController"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETTABLEKS                       R2 R0 K2 ["searchController"]
        8 NAMECALL                         R2 R2 K3 ["getIsSearchInitiated"]
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["TutorialEvent"]
       15 GETTABLEKS                       R4 R4 K5 ["BrowseModeEntered"]
       17 NAMECALL                         R2 R1 K6 ["notify"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendOpenFromTriggerEvent"]
        3 DUPTABLE                         R2 K7 [{"source", "wasEnabled", "assetTypes", "filteredAssetTypes", "isPackage", "scopeType"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K8 ["Source"]
        7 SETTABLEKS                       R3 R2 K1 ["source"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["wasEnabled"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K9 ["ItemTypes"]
       15 JUMPIF                           R3 ; [+2]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K3 ["assetTypes"]
       20 GETTABLEKS                       R3 R0 K10 ["FilteredAssetTypes"]
       22 SETTABLEKS                       R3 R2 K4 ["filteredAssetTypes"]
       24 GETTABLEKS                       R3 R0 K11 ["IsPackage"]
       26 SETTABLEKS                       R3 R2 K5 ["isPackage"]
       28 GETTABLEKS                       R3 R0 K12 ["Scope"]
       30 GETTABLEKS                       R3 R3 K13 ["Type"]
       32 SETTABLEKS                       R3 R2 K6 ["scopeType"]
       34 GETUPVAL                         R3 3
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R5 K3 [{["enabled"] = True}]
        5 NAMECALL                         R3 R0 K4 ["setState"]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R3 R0 K5 ["cancelPendingOpenFromExternalTrigger"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R3 R0 K5 ["cancelPendingOpenFromExternalTrigger"]
       13 CALL                             R3 0 0
       14 DUPTABLE                         R3 K10 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       15 GETTABLEKS                       R4 R0 K11 ["explorerController"]
       17 SETTABLEKS                       R4 R3 K6 ["ExplorerController"]
       19 GETTABLEKS                       R4 R0 K12 ["layoutController"]
       21 SETTABLEKS                       R4 R3 K7 ["LayoutController"]
       23 GETTABLEKS                       R4 R0 K13 ["itemsController"]
       25 SETTABLEKS                       R4 R3 K8 ["ItemsController"]
       27 GETTABLEKS                       R4 R0 K14 ["searchController"]
       29 SETTABLEKS                       R4 R3 K9 ["SearchController"]
       31 GETUPVAL                         R4 0
       32 MOVE                             R5 R1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K15 ["join"]
       36 MOVE                             R7 R3
       37 DUPTABLE                         R8 K17 [{"PluginController"}]
       38 GETTABLEKS                       R9 R0 K18 ["pluginController"]
       40 SETTABLEKS                       R9 R8 K16 ["PluginController"]
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R0 K5 ["cancelPendingOpenFromExternalTrigger"]
       51 GETTABLEKS                       R4 R0 K19 ["props"]
       53 GETTABLEKS                       R4 R4 K20 ["PluginLoaderContext"]
       55 GETTABLEKS                       R4 R4 K21 ["mainDockWidget"]
       57 JUMPIFNOT                        R4 ; [+3]
       58 NAMECALL                         R5 R4 K22 ["RequestRaise"]
       60 CALL                             R5 1 0
       61 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_6:
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
       69 DUPCLOSURE                       R2 K22 [PROTO_5]
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["eventStart"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["BenchmarkingEvent"]
        6 GETTABLEKS                       R3 R3 K2 ["FirstLoad"]
        8 CALL                             R2 1 0
        9 DUPTABLE                         R2 K5 [{["enabled"] = False}]
       10 SETTABLEKS                       R2 R0 K6 ["state"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R0 K7 ["toggleEnabled"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R2 R0 K8 ["onClose"]
       25 NEWCLOSURE                       R2 P2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       30 NEWCLOSURE                       R2 P3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       35 NEWCLOSURE                       R2 P4
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K12 ["Localization"]
       42 GETTABLEKS                       R2 R2 K13 ["new"]
       44 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       45 GETUPVAL                         R4 5
       46 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       48 GETUPVAL                         R4 6
       49 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R0 K19 ["localization"]
       54 GETUPVAL                         R2 7
       55 GETTABLEKS                       R2 R2 K13 ["new"]
       57 CALL                             R2 0 1
       58 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       60 GETUPVAL                         R2 8
       61 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       63 CALL                             R2 1 1
       64 SETTABLEKS                       R2 R0 K22 ["design"]
       66 GETUPVAL                         R2 9
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+8]
       69 GETUPVAL                         R2 10
       70 GETTABLEKS                       R2 R2 K23 ["init"]
       72 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       74 GETTABLEKS                       R4 R0 K19 ["localization"]
       76 CALL                             R2 2 0
       77 GETUPVAL                         R2 11
       78 GETTABLEKS                       R2 R2 K13 ["new"]
       80 CALL                             R2 0 1
       81 SETTABLEKS                       R2 R0 K24 ["ixpController"]
       83 GETUPVAL                         R2 12
       84 GETTABLEKS                       R2 R2 K13 ["new"]
       86 CALL                             R2 0 1
       87 SETTABLEKS                       R2 R0 K25 ["networking"]
       89 GETUPVAL                         R2 13
       90 GETTABLEKS                       R2 R2 K13 ["new"]
       92 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       94 GETTABLEKS                       R4 R0 K25 ["networking"]
       96 GETTABLEKS                       R5 R0 K19 ["localization"]
       98 CALL                             R2 3 1
       99 SETTABLEKS                       R2 R0 K26 ["pluginController"]
      101 GETUPVAL                         R2 14
      102 GETTABLEKS                       R2 R2 K13 ["new"]
      104 GETTABLEKS                       R3 R1 K21 ["Plugin"]
      106 GETTABLEKS                       R4 R1 K27 ["PluginLoaderContext"]
      108 GETTABLEKS                       R4 R4 K28 ["mainDockWidget"]
      110 DUPTABLE                         R5 K30 [{"PluginController"}]
      111 GETTABLEKS                       R6 R0 K26 ["pluginController"]
      113 SETTABLEKS                       R6 R5 K29 ["PluginController"]
      115 CALL                             R2 3 1
      116 SETTABLEKS                       R2 R0 K31 ["layoutController"]
      118 GETUPVAL                         R2 15
      119 GETTABLEKS                       R2 R2 K13 ["new"]
      121 DUPTABLE                         R3 K35 [{"PluginController", "LayoutController", "Networking", "IxpController"}]
      122 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      124 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      126 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      128 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      130 GETTABLEKS                       R4 R0 K25 ["networking"]
      132 SETTABLEKS                       R4 R3 K33 ["Networking"]
      134 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      136 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      138 CALL                             R2 1 1
      139 SETTABLEKS                       R2 R0 K36 ["explorerController"]
      141 GETUPVAL                         R2 16
      142 GETTABLEKS                       R2 R2 K13 ["new"]
      144 DUPTABLE                         R3 K38 [{"PluginController", "ExplorerController", "Networking", "IxpController"}]
      145 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      147 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      149 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      151 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      153 GETTABLEKS                       R4 R0 K25 ["networking"]
      155 SETTABLEKS                       R4 R3 K33 ["Networking"]
      157 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      159 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      161 CALL                             R2 1 1
      162 SETTABLEKS                       R2 R0 K39 ["searchController"]
      164 GETUPVAL                         R2 17
      165 GETTABLEKS                       R2 R2 K13 ["new"]
      167 DUPTABLE                         R3 K41 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking", "IxpController"}]
      168 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      170 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      172 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      174 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      176 GETTABLEKS                       R4 R0 K39 ["searchController"]
      178 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      180 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      182 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      184 GETTABLEKS                       R4 R0 K25 ["networking"]
      186 SETTABLEKS                       R4 R3 K33 ["Networking"]
      188 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      190 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      192 CALL                             R2 1 1
      193 SETTABLEKS                       R2 R0 K42 ["itemsController"]
      195 GETUPVAL                         R2 18
      196 GETTABLEKS                       R2 R2 K13 ["new"]
      198 DUPTABLE                         R3 K44 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      199 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      201 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      203 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      205 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      207 GETTABLEKS                       R4 R0 K42 ["itemsController"]
      209 SETTABLEKS                       R4 R3 K43 ["ItemsController"]
      211 GETTABLEKS                       R4 R0 K39 ["searchController"]
      213 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      215 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      217 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      219 CALL                             R2 1 1
      220 SETTABLEKS                       R2 R0 K45 ["input"]
      222 GETUPVAL                         R2 19
      223 GETTABLEKS                       R2 R2 K13 ["new"]
      225 DUPTABLE                         R3 K46 [{"PluginController", "ExplorerController", "LayoutController", "ItemsController", "SearchController", "IxpController"}]
      226 GETTABLEKS                       R4 R0 K26 ["pluginController"]
      228 SETTABLEKS                       R4 R3 K29 ["PluginController"]
      230 GETTABLEKS                       R4 R0 K36 ["explorerController"]
      232 SETTABLEKS                       R4 R3 K37 ["ExplorerController"]
      234 GETTABLEKS                       R4 R0 K31 ["layoutController"]
      236 SETTABLEKS                       R4 R3 K32 ["LayoutController"]
      238 GETTABLEKS                       R4 R0 K42 ["itemsController"]
      240 SETTABLEKS                       R4 R3 K43 ["ItemsController"]
      242 GETTABLEKS                       R4 R0 K39 ["searchController"]
      244 SETTABLEKS                       R4 R3 K40 ["SearchController"]
      246 GETTABLEKS                       R4 R0 K24 ["ixpController"]
      248 SETTABLEKS                       R4 R3 K34 ["IxpController"]
      250 CALL                             R2 1 1
      251 SETTABLEKS                       R2 R0 K47 ["tutorialController"]
      253 GETTABLEKS                       R2 R0 K26 ["pluginController"]
      255 GETTABLEKS                       R4 R0 K47 ["tutorialController"]
      257 NAMECALL                         R2 R2 K48 ["setTutorialController"]
      259 CALL                             R2 2 0
      260 GETTABLEKS                       R4 R1 K21 ["Plugin"]
      262 NAMECALL                         R2 R0 K49 ["_loadSettingsIntoControllers"]
      264 CALL                             R2 2 0
      265 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R2 R2 K2 ["mainDockWidget"]
        6 GETTABLEKS                       R3 R2 K3 ["Enabled"]
        8 JUMPIF                           R3 ; [+3]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K3 ["Enabled"]
       12 NAMECALL                         R3 R2 K4 ["RequestRaise"]
       14 CALL                             R3 1 0
       15 GETTABLEKS                       R3 R0 K5 ["itemsController"]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R3 K6 ["showAsset"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_openFromExternalTrigger"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_showRequestedAsset"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["signals"]
        6 MOVE                             R2 R1
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETTABLEKS                       R2 R1 K3 ["OpenFromExternalTrigger"]
       10 JUMPIFNOT                        R2 ; [+7]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R2 K4 ["Connect"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R0 K5 ["openFromExternalTriggerSignalConnection"]
       18 GETUPVAL                         R3 0
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+12]
       21 MOVE                             R3 R1
       22 JUMPIFNOT                        R3 ; [+2]
       23 GETTABLEKS                       R3 R1 K6 ["ShowAssetRequested"]
       25 JUMPIFNOT                        R3 ; [+7]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R4 R3 K4 ["Connect"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R0 K7 ["showAssetConnection"]
       33 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["pluginController"]
        3 NAMECALL                         R2 R2 K1 ["getPlugin"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R3 R0 K2 ["_getAllControllers"]
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 0
       10 GETTABLEKS                       R1 R0 K3 ["cancelPendingOpenFromExternalTrigger"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R1 R0 K3 ["cancelPendingOpenFromExternalTrigger"]
       15 CALL                             R1 0 0
       16 GETTABLEKS                       R1 R0 K4 ["openFromExternalTriggerSignalConnection"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K4 ["openFromExternalTriggerSignalConnection"]
       21 NAMECALL                         R1 R1 K5 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K6 ["showAssetConnection"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K6 ["showAssetConnection"]
       29 NAMECALL                         R1 R1 K5 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K7 ["input"]
       34 NAMECALL                         R1 R1 K8 ["destroy"]
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K9 ["networking"]
       39 NAMECALL                         R1 R1 K8 ["destroy"]
       41 CALL                             R1 1 0
       42 GETTABLEKS                       R1 R0 K0 ["pluginController"]
       44 NAMECALL                         R1 R1 K8 ["destroy"]
       46 CALL                             R1 1 0
       47 GETTABLEKS                       R1 R0 K10 ["explorerController"]
       49 NAMECALL                         R1 R1 K8 ["destroy"]
       51 CALL                             R1 1 0
       52 GETTABLEKS                       R1 R0 K11 ["itemsController"]
       54 NAMECALL                         R1 R1 K8 ["destroy"]
       56 CALL                             R1 1 0
       57 GETTABLEKS                       R1 R0 K12 ["tutorialController"]
       59 NAMECALL                         R1 R1 K8 ["destroy"]
       61 CALL                             R1 1 0
       62 GETTABLEKS                       R1 R0 K13 ["searchController"]
       64 NAMECALL                         R1 R1 K8 ["destroy"]
       66 CALL                             R1 1 0
       67 GETTABLEKS                       R1 R0 K14 ["layoutController"]
       69 NAMECALL                         R1 R1 K8 ["destroy"]
       71 CALL                             R1 1 0
       72 GETTABLEKS                       R1 R0 K15 ["ixpController"]
       74 NAMECALL                         R1 R1 K8 ["destroy"]
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyDown"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyUp"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_20:
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
       61 GETTABLEKS                       R9 R9 K17 ["Dash"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K6 ["Packages"]
       68 GETTABLEKS                       R10 R10 K18 ["SharedPluginConstants"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K6 ["Packages"]
       75 GETTABLEKS                       R11 R11 K19 ["StudioFoundation"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R10 K20 ["Components"]
       80 GETTABLEKS                       R11 R11 K21 ["FoundationProviderAdapter"]
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R13 R13 K10 ["Analytics"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R7 K22 ["UI"]
       91 GETTABLEKS                       R14 R13 K23 ["DockWidget"]
       93 GETTABLEKS                       R15 R13 K24 ["KeyboardListener"]
       95 GETTABLEKS                       R16 R7 K25 ["ContextServices"]
       97 GETTABLEKS                       R17 R16 K26 ["Plugin"]
       99 GETTABLEKS                       R18 R16 K27 ["Mouse"]
      101 GETTABLEKS                       R19 R16 K28 ["Design"]
      103 GETTABLEKS                       R20 R7 K29 ["Style"]
      105 GETTABLEKS                       R20 R20 K30 ["Themes"]
      107 GETTABLEKS                       R20 R20 K31 ["StudioTheme"]
      109 GETTABLEKS                       R21 R7 K32 ["Styling"]
      111 GETTABLEKS                       R21 R21 K33 ["registerPluginStyles"]
      113 GETTABLEKS                       R22 R0 K8 ["Src"]
      115 GETTABLEKS                       R22 R22 K34 ["Resources"]
      117 GETTABLEKS                       R22 R22 K35 ["Localization"]
      119 GETTABLEKS                       R22 R22 K36 ["SourceStrings"]
      121 GETTABLEKS                       R23 R0 K8 ["Src"]
      123 GETTABLEKS                       R23 R23 K34 ["Resources"]
      125 GETTABLEKS                       R23 R23 K35 ["Localization"]
      127 GETTABLEKS                       R23 R23 K37 ["LocalizedStrings"]
      129 GETIMPORT                        R24 K5 [require]
      131 GETTABLEKS                       R25 R0 K8 ["Src"]
      133 GETTABLEKS                       R25 R25 K20 ["Components"]
      135 GETTABLEKS                       R25 R25 K38 ["App"]
      137 CALL                             R24 1 1
      138 GETIMPORT                        R25 K5 [require]
      140 GETTABLEKS                       R26 R0 K8 ["Src"]
      142 GETTABLEKS                       R26 R26 K39 ["Controllers"]
      144 GETTABLEKS                       R26 R26 K40 ["Input"]
      146 CALL                             R25 1 1
      147 GETIMPORT                        R26 K5 [require]
      149 GETTABLEKS                       R27 R0 K8 ["Src"]
      151 GETTABLEKS                       R27 R27 K39 ["Controllers"]
      153 GETTABLEKS                       R27 R27 K41 ["ExplorerController"]
      155 CALL                             R26 1 1
      156 GETIMPORT                        R27 K5 [require]
      158 GETTABLEKS                       R28 R0 K8 ["Src"]
      160 GETTABLEKS                       R28 R28 K39 ["Controllers"]
      162 GETTABLEKS                       R28 R28 K42 ["ItemsController"]
      164 CALL                             R27 1 1
      165 GETIMPORT                        R28 K5 [require]
      167 GETTABLEKS                       R29 R0 K8 ["Src"]
      169 GETTABLEKS                       R29 R29 K39 ["Controllers"]
      171 GETTABLEKS                       R29 R29 K43 ["IxpController"]
      173 CALL                             R28 1 1
      174 GETIMPORT                        R29 K5 [require]
      176 GETTABLEKS                       R30 R0 K8 ["Src"]
      178 GETTABLEKS                       R30 R30 K39 ["Controllers"]
      180 GETTABLEKS                       R30 R30 K44 ["LayoutController"]
      182 CALL                             R29 1 1
      183 GETIMPORT                        R30 K5 [require]
      185 GETTABLEKS                       R31 R0 K8 ["Src"]
      187 GETTABLEKS                       R31 R31 K39 ["Controllers"]
      189 GETTABLEKS                       R31 R31 K45 ["PluginController"]
      191 CALL                             R30 1 1
      192 GETIMPORT                        R31 K5 [require]
      194 GETTABLEKS                       R32 R0 K8 ["Src"]
      196 GETTABLEKS                       R32 R32 K39 ["Controllers"]
      198 GETTABLEKS                       R32 R32 K46 ["SearchController"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K5 [require]
      203 GETTABLEKS                       R33 R0 K8 ["Src"]
      205 GETTABLEKS                       R33 R33 K39 ["Controllers"]
      207 GETTABLEKS                       R33 R33 K47 ["TutorialController"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K5 [require]
      212 GETTABLEKS                       R34 R0 K8 ["Src"]
      214 GETTABLEKS                       R34 R34 K48 ["Networking"]
      216 CALL                             R33 1 1
      217 GETIMPORT                        R34 K5 [require]
      219 GETTABLEKS                       R35 R0 K8 ["Src"]
      221 GETTABLEKS                       R35 R35 K10 ["Analytics"]
      223 GETTABLEKS                       R35 R35 K49 ["Benchmarking"]
      225 CALL                             R34 1 1
      226 GETIMPORT                        R35 K5 [require]
      228 GETTABLEKS                       R36 R0 K8 ["Src"]
      230 GETTABLEKS                       R36 R36 K12 ["Util"]
      232 GETTABLEKS                       R36 R36 K50 ["getStudioTheme"]
      234 CALL                             R35 1 1
      235 GETIMPORT                        R36 K5 [require]
      237 GETTABLEKS                       R37 R0 K8 ["Src"]
      239 GETTABLEKS                       R37 R37 K12 ["Util"]
      241 GETTABLEKS                       R37 R37 K51 ["openFromExternalTrigger"]
      243 CALL                             R36 1 1
      244 GETIMPORT                        R37 K5 [require]
      246 GETTABLEKS                       R38 R0 K8 ["Src"]
      248 GETTABLEKS                       R38 R38 K12 ["Util"]
      250 GETTABLEKS                       R38 R38 K52 ["loadSettings"]
      252 CALL                             R37 1 1
      253 GETIMPORT                        R38 K5 [require]
      255 GETTABLEKS                       R39 R0 K8 ["Src"]
      257 GETTABLEKS                       R39 R39 K12 ["Util"]
      259 GETTABLEKS                       R39 R39 K53 ["saveSettings"]
      261 CALL                             R38 1 1
      262 GETIMPORT                        R39 K5 [require]
      264 GETTABLEKS                       R40 R0 K8 ["Src"]
      266 GETTABLEKS                       R40 R40 K12 ["Util"]
      268 GETTABLEKS                       R40 R40 K54 ["Notifications"]
      270 CALL                             R39 1 1
      271 GETIMPORT                        R40 K5 [require]
      273 GETTABLEKS                       R41 R0 K8 ["Src"]
      275 GETTABLEKS                       R41 R41 K55 ["Flags"]
      277 GETTABLEKS                       R41 R41 K56 ["getFFlagAmrUseQWidgetPopovers"]
      279 CALL                             R40 1 1
      280 GETIMPORT                        R41 K5 [require]
      282 GETTABLEKS                       R42 R0 K8 ["Src"]
      284 GETTABLEKS                       R42 R42 K55 ["Flags"]
      286 GETTABLEKS                       R42 R42 K57 ["getFFlagDebugAmrShowPluginVersion"]
      288 CALL                             R41 1 1
      289 GETIMPORT                        R42 K5 [require]
      291 GETTABLEKS                       R43 R0 K8 ["Src"]
      293 GETTABLEKS                       R43 R43 K55 ["Flags"]
      295 GETTABLEKS                       R43 R43 K58 ["getFFlagAmrStudioToastsIntegration"]
      297 CALL                             R42 1 1
      298 GETIMPORT                        R43 K5 [require]
      300 GETTABLEKS                       R44 R0 K8 ["Src"]
      302 GETTABLEKS                       R44 R44 K55 ["Flags"]
      304 GETTABLEKS                       R44 R44 K59 ["getFFlagAssetManagerShowAsset"]
      306 CALL                             R43 1 1
      307 GETTABLEKS                       R44 R1 K60 ["PureComponent"]
      309 LOADK                            R46 K61 ["MainPlugin"]
      310 NAMECALL                         R44 R44 K62 ["extend"]
      312 CALL                             R44 2 1
      313 DUPCLOSURE                       R45 K63 [PROTO_0]
      314 SETTABLEKS                       R45 R44 K64 ["_getAllControllers"]
      316 DUPCLOSURE                       R45 K65 [PROTO_1]
      317 CAPTURE                          VAL R37
      318 SETTABLEKS                       R45 R44 K66 ["_loadSettingsIntoControllers"]
      320 DUPCLOSURE                       R45 K67 [PROTO_2]
      321 CAPTURE                          VAL R2
      322 SETTABLEKS                       R45 R44 K68 ["_notifyTutorialThatPluginIsEnabled"]
      324 DUPCLOSURE                       R45 K69 [PROTO_4]
      325 CAPTURE                          VAL R36
      326 CAPTURE                          VAL R8
      327 CAPTURE                          VAL R12
      328 SETTABLEKS                       R45 R44 K70 ["_openFromExternalTrigger"]
      330 DUPCLOSURE                       R45 K71 [PROTO_11]
      331 CAPTURE                          VAL R34
      332 CAPTURE                          VAL R3
      333 CAPTURE                          VAL R12
      334 CAPTURE                          VAL R38
      335 CAPTURE                          VAL R16
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R23
      338 CAPTURE                          VAL R20
      339 CAPTURE                          VAL R21
      340 CAPTURE                          VAL R42
      341 CAPTURE                          VAL R39
      342 CAPTURE                          VAL R28
      343 CAPTURE                          VAL R33
      344 CAPTURE                          VAL R30
      345 CAPTURE                          VAL R29
      346 CAPTURE                          VAL R26
      347 CAPTURE                          VAL R31
      348 CAPTURE                          VAL R27
      349 CAPTURE                          VAL R25
      350 CAPTURE                          VAL R32
      351 SETTABLEKS                       R45 R44 K72 ["init"]
      353 DUPCLOSURE                       R45 K73 [PROTO_12]
      354 SETTABLEKS                       R45 R44 K74 ["_showRequestedAsset"]
      356 DUPCLOSURE                       R45 K75 [PROTO_15]
      357 CAPTURE                          VAL R43
      358 SETTABLEKS                       R45 R44 K76 ["didMount"]
      360 DUPCLOSURE                       R45 K77 [PROTO_16]
      361 SETTABLEKS                       R45 R44 K78 ["didUpdate"]
      363 DUPCLOSURE                       R45 K79 [PROTO_17]
      364 CAPTURE                          VAL R38
      365 SETTABLEKS                       R45 R44 K80 ["willUnmount"]
      367 DUPCLOSURE                       R45 K81 [PROTO_20]
      368 CAPTURE                          VAL R41
      369 CAPTURE                          VAL R4
      370 CAPTURE                          VAL R6
      371 CAPTURE                          VAL R16
      372 CAPTURE                          VAL R17
      373 CAPTURE                          VAL R18
      374 CAPTURE                          VAL R19
      375 CAPTURE                          VAL R1
      376 CAPTURE                          VAL R14
      377 CAPTURE                          VAL R11
      378 CAPTURE                          VAL R35
      379 CAPTURE                          VAL R40
      380 CAPTURE                          VAL R24
      381 CAPTURE                          VAL R15
      382 SETTABLEKS                       R45 R44 K82 ["render"]
      384 RETURN                           R44 1
