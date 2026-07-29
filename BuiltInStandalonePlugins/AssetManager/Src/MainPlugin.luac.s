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
        8 GETUPVAL                         R6 0
        9 CALL                             R6 0 1
       10 JUMPIFNOT                        R6 ; [+10]
       11 GETUPVAL                         R6 1
       12 JUMPIFEQKS                       R6 K4 ["<dev>"] ; [+8]
       14 LOADK                            R6 K5 [" %*"]
       15 GETUPVAL                         R8 1
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K7 [""]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K8 ["provide"]
       25 NEWTABLE                         R7 0 13
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K9 ["new"]
       30 MOVE                             R9 R3
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K9 ["new"]
       35 NAMECALL                         R10 R3 K10 ["getMouse"]
       37 CALL                             R10 1 -1
       38 CALL                             R9 -1 1
       39 GETUPVAL                         R10 5
       40 GETTABLEKS                       R10 R10 K9 ["new"]
       42 GETTABLEKS                       R11 R0 K11 ["design"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R11 R0 K12 ["DEPRECATED_stylizer"]
       47 GETTABLEKS                       R12 R0 K13 ["localization"]
       49 GETTABLEKS                       R13 R0 K14 ["analytics"]
       51 GETTABLEKS                       R14 R0 K15 ["input"]
       53 GETTABLEKS                       R15 R0 K16 ["pluginController"]
       55 GETTABLEKS                       R16 R0 K17 ["explorerController"]
       57 GETTABLEKS                       R17 R0 K18 ["itemsController"]
       59 GETTABLEKS                       R18 R0 K19 ["searchController"]
       61 GETTABLEKS                       R19 R0 K20 ["layoutController"]
       63 GETTABLEKS                       R20 R0 K21 ["networking"]
       65 SETLIST                          R7 R8 13 [1]
       67 DUPTABLE                         R8 K23 [{"MainWidget"}]
       68 GETUPVAL                         R9 6
       69 GETTABLEKS                       R9 R9 K24 ["createElement"]
       71 GETUPVAL                         R10 7
       72 NEWTABLE                         R11 16 0
       74 LOADK                            R12 K25 ["AssetManager"]
       75 SETTABLEKS                       R12 R11 K26 ["Id"]
       77 SETTABLEKS                       R4 R11 K27 ["Enabled"]
       79 LOADK                            R13 K28 ["%*%*"]
       80 GETTABLEKS                       R15 R0 K13 ["localization"]
       82 LOADK                            R17 K2 ["Plugin"]
       83 LOADK                            R18 K29 ["Name"]
       84 NAMECALL                         R15 R15 K30 ["getText"]
       86 CALL                             R15 3 1
       87 MOVE                             R16 R5
       88 NAMECALL                         R13 R13 K6 ["format"]
       90 CALL                             R13 3 1
       91 MOVE                             R12 R13
       92 SETTABLEKS                       R12 R11 K31 ["Title"]
       94 GETIMPORT                        R12 K35 [Enum.ZIndexBehavior.Sibling]
       96 SETTABLEKS                       R12 R11 K33 ["ZIndexBehavior"]
       98 GETIMPORT                        R12 K38 [Enum.InitialDockState.Bottom]
      100 SETTABLEKS                       R12 R11 K36 ["InitialDockState"]
      102 GETIMPORT                        R12 K40 [Vector2.new]
      104 LOADN                            R13 640
      105 LOADN                            R14 480
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K41 ["Size"]
      109 GETIMPORT                        R12 K40 [Vector2.new]
      111 LOADN                            R13 250
      112 LOADN                            R14 200
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K42 ["MinSize"]
      116 GETTABLEKS                       R12 R0 K43 ["onClose"]
      118 SETTABLEKS                       R12 R11 K44 ["OnClose"]
      120 GETTABLEKS                       R12 R1 K45 ["PluginLoaderContext"]
      122 GETTABLEKS                       R12 R12 K46 ["mainDockWidget"]
      124 SETTABLEKS                       R12 R11 K47 ["Widget"]
      126 GETTABLEKS                       R12 R0 K48 ["onDockWidgetCreated"]
      128 SETTABLEKS                       R12 R11 K49 ["OnWidgetCreated"]
      130 GETTABLEKS                       R12 R0 K50 ["onRestore"]
      132 SETTABLEKS                       R12 R11 K51 ["OnWidgetRestored"]
      134 LOADB                            R12 1
      135 SETTABLEKS                       R12 R11 K52 ["ShouldRestore"]
      137 GETUPVAL                         R12 6
      138 GETTABLEKS                       R12 R12 K53 ["Change"]
      140 GETTABLEKS                       R12 R12 K27 ["Enabled"]
      142 GETTABLEKS                       R13 R0 K54 ["onWidgetEnabledChanged"]
      144 SETTABLE                         R13 R11 R12
      145 NEWTABLE                         R12 0 1
      147 GETUPVAL                         R13 6
      148 GETTABLEKS                       R13 R13 K24 ["createElement"]
      150 GETUPVAL                         R14 8
      151 DUPTABLE                         R15 K57 [{"theme", "plugin"}]
      152 GETUPVAL                         R16 9
      153 CALL                             R16 0 1
      154 SETTABLEKS                       R16 R15 K55 ["theme"]
      156 GETUPVAL                         R17 10
      157 CALL                             R17 0 1
      158 JUMPIFNOT                        R17 ; [+2]
      159 MOVE                             R16 R3
      160 JUMP                             ; [+1]
      161 LOADNIL                          R16
      162 SETTABLEKS                       R16 R15 K56 ["plugin"]
      164 DUPTABLE                         R16 K60 [{"App", "KeyboardListener"}]
      165 GETUPVAL                         R17 6
      166 GETTABLEKS                       R17 R17 K24 ["createElement"]
      168 GETUPVAL                         R18 11
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K58 ["App"]
      172 GETUPVAL                         R17 6
      173 GETTABLEKS                       R17 R17 K24 ["createElement"]
      175 GETUPVAL                         R18 12
      176 DUPTABLE                         R19 K63 [{"OnKeyPressed", "OnKeyReleased"}]
      177 NEWCLOSURE                       R20 P0
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R20 R19 K61 ["OnKeyPressed"]
      181 NEWCLOSURE                       R20 P1
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R20 R19 K62 ["OnKeyReleased"]
      185 CALL                             R17 2 1
      186 SETTABLEKS                       R17 R16 K59 ["KeyboardListener"]
      188 CALL                             R13 3 -1
      189 SETLIST                          R12 R13 -1 [1]
      191 CALL                             R9 3 1
      192 SETTABLEKS                       R9 R8 K22 ["MainWidget"]
      194 CALL                             R6 2 -1
      195 RETURN                           R6 -1

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
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K13 ["Components"]
       44 GETTABLEKS                       R6 R6 K14 ["FoundationProviderAdapter"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Analytics"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R4 K16 ["UI"]
       55 GETTABLEKS                       R9 R8 K17 ["DockWidget"]
       57 GETTABLEKS                       R10 R8 K18 ["KeyboardListener"]
       59 GETTABLEKS                       R11 R4 K19 ["ContextServices"]
       61 GETTABLEKS                       R12 R11 K20 ["Plugin"]
       63 GETTABLEKS                       R13 R11 K21 ["Mouse"]
       65 GETTABLEKS                       R14 R11 K22 ["Design"]
       67 GETTABLEKS                       R15 R4 K23 ["Style"]
       69 GETTABLEKS                       R15 R15 K24 ["Themes"]
       71 GETTABLEKS                       R15 R15 K25 ["StudioTheme"]
       73 GETTABLEKS                       R16 R4 K26 ["Styling"]
       75 GETTABLEKS                       R16 R16 K27 ["registerPluginStyles"]
       77 GETTABLEKS                       R17 R0 K8 ["Src"]
       79 GETTABLEKS                       R17 R17 K28 ["Resources"]
       81 GETTABLEKS                       R17 R17 K29 ["Localization"]
       83 GETTABLEKS                       R17 R17 K30 ["SourceStrings"]
       85 GETTABLEKS                       R18 R0 K8 ["Src"]
       87 GETTABLEKS                       R18 R18 K28 ["Resources"]
       89 GETTABLEKS                       R18 R18 K29 ["Localization"]
       91 GETTABLEKS                       R18 R18 K31 ["LocalizedStrings"]
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R0 K8 ["Src"]
       97 GETTABLEKS                       R20 R20 K13 ["Components"]
       99 GETTABLEKS                       R20 R20 K32 ["App"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R0 K8 ["Src"]
      106 GETTABLEKS                       R21 R21 K33 ["Controllers"]
      108 GETTABLEKS                       R21 R21 K34 ["Input"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R22 R0 K8 ["Src"]
      115 GETTABLEKS                       R22 R22 K33 ["Controllers"]
      117 GETTABLEKS                       R22 R22 K35 ["ExplorerController"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R23 R0 K8 ["Src"]
      124 GETTABLEKS                       R23 R23 K33 ["Controllers"]
      126 GETTABLEKS                       R23 R23 K36 ["ItemsController"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K5 [require]
      131 GETTABLEKS                       R24 R0 K8 ["Src"]
      133 GETTABLEKS                       R24 R24 K33 ["Controllers"]
      135 GETTABLEKS                       R24 R24 K37 ["LayoutController"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K5 [require]
      140 GETTABLEKS                       R25 R0 K8 ["Src"]
      142 GETTABLEKS                       R25 R25 K33 ["Controllers"]
      144 GETTABLEKS                       R25 R25 K38 ["PluginController"]
      146 CALL                             R24 1 1
      147 GETIMPORT                        R25 K5 [require]
      149 GETTABLEKS                       R26 R0 K8 ["Src"]
      151 GETTABLEKS                       R26 R26 K33 ["Controllers"]
      153 GETTABLEKS                       R26 R26 K39 ["SearchController"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R27 R0 K8 ["Src"]
      160 GETTABLEKS                       R27 R27 K40 ["Networking"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K5 [require]
      165 GETTABLEKS                       R28 R0 K8 ["Src"]
      167 GETTABLEKS                       R28 R28 K41 ["Util"]
      169 GETTABLEKS                       R28 R28 K42 ["getStudioTheme"]
      171 CALL                             R27 1 1
      172 GETIMPORT                        R28 K5 [require]
      174 GETTABLEKS                       R29 R0 K8 ["Src"]
      176 GETTABLEKS                       R29 R29 K41 ["Util"]
      178 GETTABLEKS                       R29 R29 K43 ["loadSettings"]
      180 CALL                             R28 1 1
      181 GETIMPORT                        R29 K5 [require]
      183 GETTABLEKS                       R30 R0 K8 ["Src"]
      185 GETTABLEKS                       R30 R30 K41 ["Util"]
      187 GETTABLEKS                       R30 R30 K44 ["saveSettings"]
      189 CALL                             R29 1 1
      190 GETIMPORT                        R30 K5 [require]
      192 GETTABLEKS                       R31 R0 K8 ["Src"]
      194 GETTABLEKS                       R31 R31 K45 ["Flags"]
      196 GETTABLEKS                       R31 R31 K46 ["getFFlagAmrUseQWidgetPopovers"]
      198 CALL                             R30 1 1
      199 GETIMPORT                        R31 K5 [require]
      201 GETTABLEKS                       R32 R0 K8 ["Src"]
      203 GETTABLEKS                       R32 R32 K45 ["Flags"]
      205 GETTABLEKS                       R32 R32 K47 ["getFFlagDebugAmrShowPluginVersion"]
      207 CALL                             R31 1 1
      208 GETTABLEKS                       R32 R1 K48 ["PureComponent"]
      210 LOADK                            R34 K49 ["MainPlugin"]
      211 NAMECALL                         R32 R32 K50 ["extend"]
      213 CALL                             R32 2 1
      214 DUPCLOSURE                       R33 K51 [PROTO_0]
      215 SETTABLEKS                       R33 R32 K52 ["_getAllControllers"]
      217 DUPCLOSURE                       R33 K53 [PROTO_1]
      218 CAPTURE                          VAL R28
      219 SETTABLEKS                       R33 R32 K54 ["_loadSettingsIntoControllers"]
      221 DUPCLOSURE                       R33 K55 [PROTO_8]
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R29
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R20
      236 SETTABLEKS                       R33 R32 K56 ["init"]
      238 DUPCLOSURE                       R33 K57 [PROTO_9]
      239 SETTABLEKS                       R33 R32 K58 ["didUpdate"]
      241 DUPCLOSURE                       R33 K59 [PROTO_10]
      242 CAPTURE                          VAL R29
      243 SETTABLEKS                       R33 R32 K60 ["willUnmount"]
      245 DUPCLOSURE                       R33 K61 [PROTO_13]
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R30
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R10
      259 SETTABLEKS                       R33 R32 K62 ["render"]
      261 RETURN                           R32 1
