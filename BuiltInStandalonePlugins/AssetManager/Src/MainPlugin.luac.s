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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+9]
        6 DUPTABLE                         R0 K3 [{"actionType"}]
        7 LOADK                            R1 K4 ["ribbon_click"]
        8 SETTABLEKS                       R1 R0 K2 ["actionType"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K5 ["sendEnabledEvent"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["state"]
       18 GETTABLEKS                       R0 R1 K1 ["enabled"]
       20 JUMPIFNOT                        R0 ; [+9]
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K6 ["Plugin"]
       25 GETUPVAL                         R2 0
       26 NAMECALL                         R2 R2 K7 ["_getAllControllers"]
       28 CALL                             R2 1 -1
       29 CALL                             R0 -1 0
       30 GETUPVAL                         R0 0
       31 DUPCLOSURE                       R2 K8 [PROTO_2]
       32 NAMECALL                         R0 R0 K9 ["setState"]
       34 CALL                             R0 2 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K3 ["Plugin"]
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K4 ["_getAllControllers"]
       15 CALL                             R2 1 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R0 K4 ["onClose"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K7 ["onDockWidgetCreated"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K8 ["setPlugin"]
       34 GETTABLEKS                       R3 R1 K9 ["Plugin"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K10 ["Localization"]
       40 GETTABLEKS                       R2 R3 K11 ["new"]
       42 DUPTABLE                         R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       43 GETUPVAL                         R4 3
       44 SETTABLEKS                       R4 R3 K12 ["stringResourceTable"]
       46 GETUPVAL                         R4 4
       47 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       49 LOADK                            R4 K16 ["AssetManager"]
       50 SETTABLEKS                       R4 R3 K14 ["pluginName"]
       52 CALL                             R2 1 1
       53 SETTABLEKS                       R2 R0 K17 ["localization"]
       55 GETUPVAL                         R3 5
       56 GETTABLEKS                       R2 R3 K11 ["new"]
       58 CALL                             R2 0 1
       59 SETTABLEKS                       R2 R0 K18 ["DEPRECATED_stylizer"]
       61 GETUPVAL                         R2 6
       62 GETTABLEKS                       R3 R1 K9 ["Plugin"]
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R0 K19 ["design"]
       67 GETUPVAL                         R3 7
       68 GETTABLEKS                       R2 R3 K11 ["new"]
       70 CALL                             R2 0 1
       71 SETTABLEKS                       R2 R0 K20 ["networking"]
       73 GETUPVAL                         R3 8
       74 GETTABLEKS                       R2 R3 K11 ["new"]
       76 GETTABLEKS                       R3 R1 K9 ["Plugin"]
       78 GETTABLEKS                       R4 R0 K20 ["networking"]
       80 GETTABLEKS                       R5 R0 K17 ["localization"]
       82 CALL                             R2 3 1
       83 SETTABLEKS                       R2 R0 K21 ["pluginController"]
       85 GETUPVAL                         R3 9
       86 GETTABLEKS                       R2 R3 K11 ["new"]
       88 GETTABLEKS                       R3 R0 K21 ["pluginController"]
       90 GETTABLEKS                       R4 R0 K20 ["networking"]
       92 CALL                             R2 2 1
       93 SETTABLEKS                       R2 R0 K22 ["explorerController"]
       95 GETUPVAL                         R3 10
       96 GETTABLEKS                       R2 R3 K11 ["new"]
       98 DUPTABLE                         R3 K26 [{"PluginController", "ExplorerController", "Networking"}]
       99 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      101 SETTABLEKS                       R4 R3 K23 ["PluginController"]
      103 GETTABLEKS                       R4 R0 K22 ["explorerController"]
      105 SETTABLEKS                       R4 R3 K24 ["ExplorerController"]
      107 GETTABLEKS                       R4 R0 K20 ["networking"]
      109 SETTABLEKS                       R4 R3 K25 ["Networking"]
      111 CALL                             R2 1 1
      112 SETTABLEKS                       R2 R0 K27 ["searchController"]
      114 GETUPVAL                         R3 11
      115 GETTABLEKS                       R2 R3 K11 ["new"]
      117 GETTABLEKS                       R3 R1 K9 ["Plugin"]
      119 CALL                             R2 1 1
      120 SETTABLEKS                       R2 R0 K28 ["layoutController"]
      122 GETUPVAL                         R3 12
      123 GETTABLEKS                       R2 R3 K11 ["new"]
      125 DUPTABLE                         R3 K31 [{"PluginController", "SearchController", "LayoutController", "Networking"}]
      126 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      128 SETTABLEKS                       R4 R3 K23 ["PluginController"]
      130 GETTABLEKS                       R4 R0 K27 ["searchController"]
      132 SETTABLEKS                       R4 R3 K29 ["SearchController"]
      134 GETTABLEKS                       R4 R0 K28 ["layoutController"]
      136 SETTABLEKS                       R4 R3 K30 ["LayoutController"]
      138 GETTABLEKS                       R4 R0 K20 ["networking"]
      140 SETTABLEKS                       R4 R3 K25 ["Networking"]
      142 CALL                             R2 1 1
      143 SETTABLEKS                       R2 R0 K32 ["itemsController"]
      145 GETUPVAL                         R3 13
      146 GETTABLEKS                       R2 R3 K11 ["new"]
      148 DUPTABLE                         R3 K34 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      149 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      151 SETTABLEKS                       R4 R3 K23 ["PluginController"]
      153 GETTABLEKS                       R4 R0 K28 ["layoutController"]
      155 SETTABLEKS                       R4 R3 K30 ["LayoutController"]
      157 GETTABLEKS                       R4 R0 K32 ["itemsController"]
      159 SETTABLEKS                       R4 R3 K33 ["ItemsController"]
      161 GETTABLEKS                       R4 R0 K27 ["searchController"]
      163 SETTABLEKS                       R4 R3 K29 ["SearchController"]
      165 GETTABLEKS                       R4 R0 K22 ["explorerController"]
      167 SETTABLEKS                       R4 R3 K24 ["ExplorerController"]
      169 CALL                             R2 1 1
      170 SETTABLEKS                       R2 R0 K35 ["input"]
      172 GETTABLEKS                       R4 R1 K9 ["Plugin"]
      174 NAMECALL                         R2 R0 K36 ["_loadSettingsIntoControllers"]
      176 CALL                             R2 2 0
      177 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyDown"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["input"]
        3 GETTABLEKS                       R3 R0 K1 ["KeyCode"]
        5 NAMECALL                         R1 R1 K2 ["handleKeyUp"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 13
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K5 ["new"]
       28 GETTABLEKS                       R10 R0 K7 ["design"]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R0 K8 ["DEPRECATED_stylizer"]
       33 GETTABLEKS                       R11 R0 K9 ["localization"]
       35 GETTABLEKS                       R12 R0 K10 ["analytics"]
       37 GETTABLEKS                       R13 R0 K11 ["input"]
       39 GETTABLEKS                       R14 R0 K12 ["pluginController"]
       41 GETTABLEKS                       R15 R0 K13 ["explorerController"]
       43 GETTABLEKS                       R16 R0 K14 ["itemsController"]
       45 GETTABLEKS                       R17 R0 K15 ["searchController"]
       47 GETTABLEKS                       R18 R0 K16 ["layoutController"]
       49 GETTABLEKS                       R19 R0 K17 ["networking"]
       51 SETLIST                          R6 R7 13 [1]
       53 DUPTABLE                         R7 K19 [{"MainWidget"}]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K20 ["createElement"]
       57 GETUPVAL                         R9 5
       58 NEWTABLE                         R10 16 0
       60 LOADK                            R11 K21 ["AssetManager"]
       61 SETTABLEKS                       R11 R10 K22 ["Id"]
       63 SETTABLEKS                       R4 R10 K23 ["Enabled"]
       65 GETTABLEKS                       R11 R0 K9 ["localization"]
       67 LOADK                            R13 K2 ["Plugin"]
       68 LOADK                            R14 K24 ["Name"]
       69 NAMECALL                         R11 R11 K25 ["getText"]
       71 CALL                             R11 3 1
       72 SETTABLEKS                       R11 R10 K26 ["Title"]
       74 GETIMPORT                        R11 K30 [Enum.ZIndexBehavior.Sibling]
       76 SETTABLEKS                       R11 R10 K28 ["ZIndexBehavior"]
       78 GETIMPORT                        R11 K33 [Enum.InitialDockState.Bottom]
       80 SETTABLEKS                       R11 R10 K31 ["InitialDockState"]
       82 GETIMPORT                        R11 K35 [Vector2.new]
       84 LOADN                            R12 128
       85 LOADN                            R13 224
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K36 ["Size"]
       89 GETIMPORT                        R11 K35 [Vector2.new]
       91 LOADN                            R12 250
       92 LOADN                            R13 200
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K37 ["MinSize"]
       96 GETTABLEKS                       R11 R0 K38 ["onClose"]
       98 SETTABLEKS                       R11 R10 K39 ["OnClose"]
      100 GETTABLEKS                       R12 R1 K40 ["PluginLoaderContext"]
      102 GETTABLEKS                       R11 R12 K41 ["mainDockWidget"]
      104 SETTABLEKS                       R11 R10 K42 ["Widget"]
      106 GETTABLEKS                       R11 R0 K43 ["onDockWidgetCreated"]
      108 SETTABLEKS                       R11 R10 K44 ["OnWidgetCreated"]
      110 GETTABLEKS                       R11 R0 K45 ["onRestore"]
      112 SETTABLEKS                       R11 R10 K46 ["OnWidgetRestored"]
      114 LOADB                            R11 1
      115 SETTABLEKS                       R11 R10 K47 ["ShouldRestore"]
      117 GETUPVAL                         R13 4
      118 GETTABLEKS                       R12 R13 K48 ["Change"]
      120 GETTABLEKS                       R11 R12 K23 ["Enabled"]
      122 GETTABLEKS                       R12 R0 K49 ["onWidgetEnabledChanged"]
      124 SETTABLE                         R12 R10 R11
      125 NEWTABLE                         R11 0 1
      127 GETUPVAL                         R13 4
      128 GETTABLEKS                       R12 R13 K20 ["createElement"]
      130 GETUPVAL                         R13 6
      131 DUPTABLE                         R14 K51 [{"theme"}]
      132 GETUPVAL                         R15 7
      133 CALL                             R15 0 1
      134 SETTABLEKS                       R15 R14 K50 ["theme"]
      136 DUPTABLE                         R15 K54 [{"App", "KeyboardListener"}]
      137 GETUPVAL                         R17 4
      138 GETTABLEKS                       R16 R17 K20 ["createElement"]
      140 GETUPVAL                         R17 8
      141 CALL                             R16 1 1
      142 SETTABLEKS                       R16 R15 K52 ["App"]
      144 GETUPVAL                         R17 4
      145 GETTABLEKS                       R16 R17 K20 ["createElement"]
      147 GETUPVAL                         R17 9
      148 DUPTABLE                         R18 K57 [{"OnKeyPressed", "OnKeyReleased"}]
      149 NEWCLOSURE                       R19 P0
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R19 R18 K55 ["OnKeyPressed"]
      153 NEWCLOSURE                       R19 P1
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R19 R18 K56 ["OnKeyReleased"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K53 ["KeyboardListener"]
      160 CALL                             R12 3 -1
      161 SETLIST                          R11 R12 -1 [1]
      163 CALL                             R8 3 1
      164 SETTABLEKS                       R8 R7 K18 ["MainWidget"]
      166 CALL                             R5 2 -1
      167 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K12 ["Components"]
       37 GETTABLEKS                       R5 R6 K13 ["FoundationProviderAdapter"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Analytics"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K15 ["UI"]
       48 GETTABLEKS                       R8 R7 K16 ["DockWidget"]
       50 GETTABLEKS                       R9 R7 K17 ["KeyboardListener"]
       52 GETTABLEKS                       R10 R3 K18 ["ContextServices"]
       54 GETTABLEKS                       R11 R10 K19 ["Plugin"]
       56 GETTABLEKS                       R12 R10 K20 ["Mouse"]
       58 GETTABLEKS                       R13 R10 K21 ["Design"]
       60 GETTABLEKS                       R16 R3 K22 ["Style"]
       62 GETTABLEKS                       R15 R16 K23 ["Themes"]
       64 GETTABLEKS                       R14 R15 K24 ["StudioTheme"]
       66 GETTABLEKS                       R16 R3 K25 ["Styling"]
       68 GETTABLEKS                       R15 R16 K26 ["registerPluginStyles"]
       70 GETTABLEKS                       R19 R0 K8 ["Src"]
       72 GETTABLEKS                       R18 R19 K27 ["Resources"]
       74 GETTABLEKS                       R17 R18 K28 ["Localization"]
       76 GETTABLEKS                       R16 R17 K29 ["SourceStrings"]
       78 GETTABLEKS                       R20 R0 K8 ["Src"]
       80 GETTABLEKS                       R19 R20 K27 ["Resources"]
       82 GETTABLEKS                       R18 R19 K28 ["Localization"]
       84 GETTABLEKS                       R17 R18 K30 ["LocalizedStrings"]
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R21 R0 K8 ["Src"]
       90 GETTABLEKS                       R20 R21 K12 ["Components"]
       92 GETTABLEKS                       R19 R20 K31 ["App"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R22 R0 K8 ["Src"]
       99 GETTABLEKS                       R21 R22 K32 ["Controllers"]
      101 GETTABLEKS                       R20 R21 K33 ["Input"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K5 [require]
      106 GETTABLEKS                       R23 R0 K8 ["Src"]
      108 GETTABLEKS                       R22 R23 K32 ["Controllers"]
      110 GETTABLEKS                       R21 R22 K34 ["ExplorerController"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K5 [require]
      115 GETTABLEKS                       R24 R0 K8 ["Src"]
      117 GETTABLEKS                       R23 R24 K32 ["Controllers"]
      119 GETTABLEKS                       R22 R23 K35 ["ItemsController"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K5 [require]
      124 GETTABLEKS                       R25 R0 K8 ["Src"]
      126 GETTABLEKS                       R24 R25 K32 ["Controllers"]
      128 GETTABLEKS                       R23 R24 K36 ["LayoutController"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R26 R0 K8 ["Src"]
      135 GETTABLEKS                       R25 R26 K32 ["Controllers"]
      137 GETTABLEKS                       R24 R25 K37 ["PluginController"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K5 [require]
      142 GETTABLEKS                       R27 R0 K8 ["Src"]
      144 GETTABLEKS                       R26 R27 K32 ["Controllers"]
      146 GETTABLEKS                       R25 R26 K38 ["SearchController"]
      148 CALL                             R24 1 1
      149 GETIMPORT                        R25 K5 [require]
      151 GETTABLEKS                       R27 R0 K8 ["Src"]
      153 GETTABLEKS                       R26 R27 K39 ["Networking"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R29 R0 K8 ["Src"]
      160 GETTABLEKS                       R28 R29 K40 ["Util"]
      162 GETTABLEKS                       R27 R28 K41 ["getStudioTheme"]
      164 CALL                             R26 1 1
      165 GETIMPORT                        R27 K5 [require]
      167 GETTABLEKS                       R30 R0 K8 ["Src"]
      169 GETTABLEKS                       R29 R30 K40 ["Util"]
      171 GETTABLEKS                       R28 R29 K42 ["loadSettings"]
      173 CALL                             R27 1 1
      174 GETIMPORT                        R28 K5 [require]
      176 GETTABLEKS                       R31 R0 K8 ["Src"]
      178 GETTABLEKS                       R30 R31 K40 ["Util"]
      180 GETTABLEKS                       R29 R30 K43 ["saveSettings"]
      182 CALL                             R28 1 1
      183 GETTABLEKS                       R29 R1 K44 ["PureComponent"]
      185 LOADK                            R31 K45 ["MainPlugin"]
      186 NAMECALL                         R29 R29 K46 ["extend"]
      188 CALL                             R29 2 1
      189 DUPCLOSURE                       R30 K47 [PROTO_0]
      190 SETTABLEKS                       R30 R29 K48 ["_getAllControllers"]
      192 DUPCLOSURE                       R30 K49 [PROTO_1]
      193 CAPTURE                          VAL R27
      194 SETTABLEKS                       R30 R29 K50 ["_loadSettingsIntoControllers"]
      196 DUPCLOSURE                       R30 K51 [PROTO_8]
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R19
      211 SETTABLEKS                       R30 R29 K52 ["init"]
      213 DUPCLOSURE                       R30 K53 [PROTO_9]
      214 SETTABLEKS                       R30 R29 K54 ["didUpdate"]
      216 DUPCLOSURE                       R30 K55 [PROTO_10]
      217 CAPTURE                          VAL R28
      218 SETTABLEKS                       R30 R29 K56 ["willUnmount"]
      220 DUPCLOSURE                       R30 K57 [PROTO_13]
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R9
      231 SETTABLEKS                       R30 R29 K58 ["render"]
      233 RETURN                           R29 1
