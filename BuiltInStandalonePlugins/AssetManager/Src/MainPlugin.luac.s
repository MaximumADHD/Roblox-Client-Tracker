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
        5 JUMPIF                           R0 ; [+6]
        6 DUPTABLE                         R0 K4 [{["actionType"] = "ribbon_click"}]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["sendEnabledEvent"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["state"]
       15 GETTABLEKS                       R0 R0 K1 ["enabled"]
       17 JUMPIFNOT                        R0 ; [+9]
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K6 ["Plugin"]
       22 GETUPVAL                         R2 0
       23 NAMECALL                         R2 R2 K7 ["_getAllControllers"]
       25 CALL                             R2 1 -1
       26 CALL                             R0 -1 0
       27 GETUPVAL                         R0 0
       28 DUPCLOSURE                       R2 K8 [PROTO_2]
       29 NAMECALL                         R0 R0 K9 ["setState"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

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
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R0 K5 ["onClose"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       20 NEWCLOSURE                       R2 P3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K8 ["onDockWidgetCreated"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K9 ["Localization"]
       31 GETTABLEKS                       R2 R2 K10 ["new"]
       33 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetManager"}]
       34 GETUPVAL                         R4 3
       35 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       37 GETUPVAL                         R4 4
       38 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R0 K16 ["localization"]
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R2 R2 K10 ["new"]
       46 CALL                             R2 0 1
       47 SETTABLEKS                       R2 R0 K17 ["DEPRECATED_stylizer"]
       49 GETUPVAL                         R2 6
       50 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       52 CALL                             R2 1 1
       53 SETTABLEKS                       R2 R0 K19 ["design"]
       55 GETUPVAL                         R2 7
       56 GETTABLEKS                       R2 R2 K10 ["new"]
       58 CALL                             R2 0 1
       59 SETTABLEKS                       R2 R0 K20 ["networking"]
       61 GETUPVAL                         R2 8
       62 GETTABLEKS                       R2 R2 K10 ["new"]
       64 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       66 GETTABLEKS                       R4 R0 K20 ["networking"]
       68 GETTABLEKS                       R5 R0 K16 ["localization"]
       70 CALL                             R2 3 1
       71 SETTABLEKS                       R2 R0 K21 ["pluginController"]
       73 GETUPVAL                         R2 9
       74 GETTABLEKS                       R2 R2 K10 ["new"]
       76 GETTABLEKS                       R3 R1 K18 ["Plugin"]
       78 GETTABLEKS                       R4 R1 K22 ["PluginLoaderContext"]
       80 GETTABLEKS                       R4 R4 K23 ["mainDockWidget"]
       82 CALL                             R2 2 1
       83 SETTABLEKS                       R2 R0 K24 ["layoutController"]
       85 GETUPVAL                         R2 10
       86 GETTABLEKS                       R2 R2 K10 ["new"]
       88 DUPTABLE                         R3 K28 [{"PluginController", "LayoutController", "Networking"}]
       89 GETTABLEKS                       R4 R0 K21 ["pluginController"]
       91 SETTABLEKS                       R4 R3 K25 ["PluginController"]
       93 GETTABLEKS                       R4 R0 K24 ["layoutController"]
       95 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
       97 GETTABLEKS                       R4 R0 K20 ["networking"]
       99 SETTABLEKS                       R4 R3 K27 ["Networking"]
      101 CALL                             R2 1 1
      102 SETTABLEKS                       R2 R0 K29 ["explorerController"]
      104 GETUPVAL                         R2 11
      105 GETTABLEKS                       R2 R2 K10 ["new"]
      107 DUPTABLE                         R3 K31 [{"PluginController", "ExplorerController", "Networking"}]
      108 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      110 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      112 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      114 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      116 GETTABLEKS                       R4 R0 K20 ["networking"]
      118 SETTABLEKS                       R4 R3 K27 ["Networking"]
      120 CALL                             R2 1 1
      121 SETTABLEKS                       R2 R0 K32 ["searchController"]
      123 GETUPVAL                         R2 12
      124 GETTABLEKS                       R2 R2 K10 ["new"]
      126 DUPTABLE                         R3 K34 [{"PluginController", "ExplorerController", "SearchController", "LayoutController", "Networking"}]
      127 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      129 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      131 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      133 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      135 GETTABLEKS                       R4 R0 K32 ["searchController"]
      137 SETTABLEKS                       R4 R3 K33 ["SearchController"]
      139 GETTABLEKS                       R4 R0 K24 ["layoutController"]
      141 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
      143 GETTABLEKS                       R4 R0 K20 ["networking"]
      145 SETTABLEKS                       R4 R3 K27 ["Networking"]
      147 CALL                             R2 1 1
      148 SETTABLEKS                       R2 R0 K35 ["itemsController"]
      150 GETUPVAL                         R2 13
      151 GETTABLEKS                       R2 R2 K10 ["new"]
      153 DUPTABLE                         R3 K37 [{"PluginController", "LayoutController", "ItemsController", "SearchController", "ExplorerController"}]
      154 GETTABLEKS                       R4 R0 K21 ["pluginController"]
      156 SETTABLEKS                       R4 R3 K25 ["PluginController"]
      158 GETTABLEKS                       R4 R0 K24 ["layoutController"]
      160 SETTABLEKS                       R4 R3 K26 ["LayoutController"]
      162 GETTABLEKS                       R4 R0 K35 ["itemsController"]
      164 SETTABLEKS                       R4 R3 K36 ["ItemsController"]
      166 GETTABLEKS                       R4 R0 K32 ["searchController"]
      168 SETTABLEKS                       R4 R3 K33 ["SearchController"]
      170 GETTABLEKS                       R4 R0 K29 ["explorerController"]
      172 SETTABLEKS                       R4 R3 K30 ["ExplorerController"]
      174 CALL                             R2 1 1
      175 SETTABLEKS                       R2 R0 K38 ["input"]
      177 GETTABLEKS                       R4 R1 K18 ["Plugin"]
      179 NAMECALL                         R2 R0 K39 ["_loadSettingsIntoControllers"]
      181 CALL                             R2 2 0
      182 RETURN                           R0 0

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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 13
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K5 ["new"]
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
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K20 ["createElement"]
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
       84 LOADN                            R12 640
       85 LOADN                            R13 480
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K36 ["Size"]
       89 GETIMPORT                        R11 K35 [Vector2.new]
       91 LOADN                            R12 250
       92 LOADN                            R13 200
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K37 ["MinSize"]
       96 GETTABLEKS                       R11 R0 K38 ["onClose"]
       98 SETTABLEKS                       R11 R10 K39 ["OnClose"]
      100 GETTABLEKS                       R11 R1 K40 ["PluginLoaderContext"]
      102 GETTABLEKS                       R11 R11 K41 ["mainDockWidget"]
      104 SETTABLEKS                       R11 R10 K42 ["Widget"]
      106 GETTABLEKS                       R11 R0 K43 ["onDockWidgetCreated"]
      108 SETTABLEKS                       R11 R10 K44 ["OnWidgetCreated"]
      110 GETTABLEKS                       R11 R0 K45 ["onRestore"]
      112 SETTABLEKS                       R11 R10 K46 ["OnWidgetRestored"]
      114 LOADB                            R11 1
      115 SETTABLEKS                       R11 R10 K47 ["ShouldRestore"]
      117 GETUPVAL                         R11 4
      118 GETTABLEKS                       R11 R11 K48 ["Change"]
      120 GETTABLEKS                       R11 R11 K23 ["Enabled"]
      122 GETTABLEKS                       R12 R0 K49 ["onWidgetEnabledChanged"]
      124 SETTABLE                         R12 R10 R11
      125 NEWTABLE                         R11 0 1
      127 GETUPVAL                         R12 4
      128 GETTABLEKS                       R12 R12 K20 ["createElement"]
      130 GETUPVAL                         R13 6
      131 DUPTABLE                         R14 K52 [{"theme", "plugin"}]
      132 GETUPVAL                         R15 7
      133 CALL                             R15 0 1
      134 SETTABLEKS                       R15 R14 K50 ["theme"]
      136 GETUPVAL                         R16 8
      137 CALL                             R16 0 1
      138 JUMPIFNOT                        R16 ; [+2]
      139 MOVE                             R15 R3
      140 JUMP                             ; [+1]
      141 LOADNIL                          R15
      142 SETTABLEKS                       R15 R14 K51 ["plugin"]
      144 DUPTABLE                         R15 K55 [{"App", "KeyboardListener"}]
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R16 R16 K20 ["createElement"]
      148 GETUPVAL                         R17 9
      149 CALL                             R16 1 1
      150 SETTABLEKS                       R16 R15 K53 ["App"]
      152 GETUPVAL                         R16 4
      153 GETTABLEKS                       R16 R16 K20 ["createElement"]
      155 GETUPVAL                         R17 10
      156 DUPTABLE                         R18 K58 [{"OnKeyPressed", "OnKeyReleased"}]
      157 NEWCLOSURE                       R19 P0
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R19 R18 K56 ["OnKeyPressed"]
      161 NEWCLOSURE                       R19 P1
      162 CAPTURE                          VAL R0
      163 SETTABLEKS                       R19 R18 K57 ["OnKeyReleased"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K54 ["KeyboardListener"]
      168 CALL                             R12 3 -1
      169 SETLIST                          R11 R12 -1 [1]
      171 CALL                             R8 3 1
      172 SETTABLEKS                       R8 R7 K18 ["MainWidget"]
      174 CALL                             R5 2 -1
      175 RETURN                           R5 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["Components"]
       37 GETTABLEKS                       R5 R5 K13 ["FoundationProviderAdapter"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["DEPRECATED_Analytics"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K15 ["UI"]
       48 GETTABLEKS                       R8 R7 K16 ["DockWidget"]
       50 GETTABLEKS                       R9 R7 K17 ["KeyboardListener"]
       52 GETTABLEKS                       R10 R3 K18 ["ContextServices"]
       54 GETTABLEKS                       R11 R10 K19 ["Plugin"]
       56 GETTABLEKS                       R12 R10 K20 ["Mouse"]
       58 GETTABLEKS                       R13 R10 K21 ["Design"]
       60 GETTABLEKS                       R14 R3 K22 ["Style"]
       62 GETTABLEKS                       R14 R14 K23 ["Themes"]
       64 GETTABLEKS                       R14 R14 K24 ["StudioTheme"]
       66 GETTABLEKS                       R15 R3 K25 ["Styling"]
       68 GETTABLEKS                       R15 R15 K26 ["registerPluginStyles"]
       70 GETTABLEKS                       R16 R0 K8 ["Src"]
       72 GETTABLEKS                       R16 R16 K27 ["Resources"]
       74 GETTABLEKS                       R16 R16 K28 ["Localization"]
       76 GETTABLEKS                       R16 R16 K29 ["SourceStrings"]
       78 GETTABLEKS                       R17 R0 K8 ["Src"]
       80 GETTABLEKS                       R17 R17 K27 ["Resources"]
       82 GETTABLEKS                       R17 R17 K28 ["Localization"]
       84 GETTABLEKS                       R17 R17 K30 ["LocalizedStrings"]
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R0 K8 ["Src"]
       90 GETTABLEKS                       R19 R19 K12 ["Components"]
       92 GETTABLEKS                       R19 R19 K31 ["App"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R0 K8 ["Src"]
       99 GETTABLEKS                       R20 R20 K32 ["Controllers"]
      101 GETTABLEKS                       R20 R20 K33 ["Input"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K5 [require]
      106 GETTABLEKS                       R21 R0 K8 ["Src"]
      108 GETTABLEKS                       R21 R21 K32 ["Controllers"]
      110 GETTABLEKS                       R21 R21 K34 ["ExplorerController"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K5 [require]
      115 GETTABLEKS                       R22 R0 K8 ["Src"]
      117 GETTABLEKS                       R22 R22 K32 ["Controllers"]
      119 GETTABLEKS                       R22 R22 K35 ["ItemsController"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K5 [require]
      124 GETTABLEKS                       R23 R0 K8 ["Src"]
      126 GETTABLEKS                       R23 R23 K32 ["Controllers"]
      128 GETTABLEKS                       R23 R23 K36 ["LayoutController"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R24 R0 K8 ["Src"]
      135 GETTABLEKS                       R24 R24 K32 ["Controllers"]
      137 GETTABLEKS                       R24 R24 K37 ["PluginController"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K5 [require]
      142 GETTABLEKS                       R25 R0 K8 ["Src"]
      144 GETTABLEKS                       R25 R25 K32 ["Controllers"]
      146 GETTABLEKS                       R25 R25 K38 ["SearchController"]
      148 CALL                             R24 1 1
      149 GETIMPORT                        R25 K5 [require]
      151 GETTABLEKS                       R26 R0 K8 ["Src"]
      153 GETTABLEKS                       R26 R26 K39 ["Networking"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R27 R0 K8 ["Src"]
      160 GETTABLEKS                       R27 R27 K40 ["Util"]
      162 GETTABLEKS                       R27 R27 K41 ["getStudioTheme"]
      164 CALL                             R26 1 1
      165 GETIMPORT                        R27 K5 [require]
      167 GETTABLEKS                       R28 R0 K8 ["Src"]
      169 GETTABLEKS                       R28 R28 K40 ["Util"]
      171 GETTABLEKS                       R28 R28 K42 ["loadSettings"]
      173 CALL                             R27 1 1
      174 GETIMPORT                        R28 K5 [require]
      176 GETTABLEKS                       R29 R0 K8 ["Src"]
      178 GETTABLEKS                       R29 R29 K40 ["Util"]
      180 GETTABLEKS                       R29 R29 K43 ["saveSettings"]
      182 CALL                             R28 1 1
      183 GETIMPORT                        R29 K5 [require]
      185 GETTABLEKS                       R30 R0 K8 ["Src"]
      187 GETTABLEKS                       R30 R30 K44 ["Flags"]
      189 GETTABLEKS                       R30 R30 K45 ["getFFlagAmrUseQWidgetPopovers"]
      191 CALL                             R29 1 1
      192 GETTABLEKS                       R30 R1 K46 ["PureComponent"]
      194 LOADK                            R32 K47 ["MainPlugin"]
      195 NAMECALL                         R30 R30 K48 ["extend"]
      197 CALL                             R30 2 1
      198 DUPCLOSURE                       R31 K49 [PROTO_0]
      199 SETTABLEKS                       R31 R30 K50 ["_getAllControllers"]
      201 DUPCLOSURE                       R31 K51 [PROTO_1]
      202 CAPTURE                          VAL R27
      203 SETTABLEKS                       R31 R30 K52 ["_loadSettingsIntoControllers"]
      205 DUPCLOSURE                       R31 K53 [PROTO_8]
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 SETTABLEKS                       R31 R30 K54 ["init"]
      222 DUPCLOSURE                       R31 K55 [PROTO_9]
      223 SETTABLEKS                       R31 R30 K56 ["didUpdate"]
      225 DUPCLOSURE                       R31 K57 [PROTO_10]
      226 CAPTURE                          VAL R28
      227 SETTABLEKS                       R31 R30 K58 ["willUnmount"]
      229 DUPCLOSURE                       R31 K59 [PROTO_13]
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R5
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R9
      241 SETTABLEKS                       R31 R30 K60 ["render"]
      243 RETURN                           R30 1
