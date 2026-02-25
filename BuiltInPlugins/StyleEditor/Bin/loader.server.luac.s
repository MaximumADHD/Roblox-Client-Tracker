PROTO_0:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+2]
        2 LOADK                            R3 K0 ["StyleEditorToolbarButton"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["Button"]
        9 CALL                             R3 4 1
       10 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+2]
        2 LOADK                            R3 K0 ["StyleEditor"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["Toolbar"]
        9 CALL                             R3 4 1
       10 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OpenStyleEditor"]
        3 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R2 R3 K4 ["Parent"]
       16 GETTABLEKS                       R1 R2 K6 ["runTests"]
       18 CALL                             R0 1 1
       19 MOVE                             R1 R0
       20 CALL                             R1 0 0
       21 GETIMPORT                        R1 K8 [game]
       23 LOADK                            R3 K9 ["GuiService"]
       24 NAMECALL                         R1 R1 K10 ["GetService"]
       26 CALL                             R1 2 1
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R3 R4 K4 ["Parent"]
       31 GETTABLEKS                       R2 R3 K4 ["Parent"]
       33 GETIMPORT                        R3 K1 [require]
       35 GETIMPORT                        R6 K3 [script]
       37 GETTABLEKS                       R5 R6 K4 ["Parent"]
       39 GETTABLEKS                       R4 R5 K11 ["main"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K8 [game]
       44 LOADK                            R6 K12 ["StyleEditorUITab2"]
       45 NAMECALL                         R4 R4 K13 ["GetFastFlag"]
       47 CALL                             R4 2 1
       48 GETIMPORT                        R5 K15 [plugin]
       50 GETTABLEKS                       R6 R2 K16 ["Name"]
       52 SETTABLEKS                       R6 R5 K16 ["Name"]
       54 GETIMPORT                        R5 K1 [require]
       56 GETTABLEKS                       R7 R2 K17 ["Packages"]
       58 GETTABLEKS                       R6 R7 K18 ["PluginLoader"]
       60 CALL                             R5 1 1
       61 GETTABLEKS                       R6 R5 K19 ["PluginLoaderBuilder"]
       63 GETTABLEKS                       R10 R2 K20 ["Src"]
       65 GETTABLEKS                       R9 R10 K21 ["Resources"]
       67 GETTABLEKS                       R8 R9 K22 ["Localization"]
       69 GETTABLEKS                       R7 R8 K23 ["SourceStrings"]
       71 GETTABLEKS                       R11 R2 K20 ["Src"]
       73 GETTABLEKS                       R10 R11 K21 ["Resources"]
       75 GETTABLEKS                       R9 R10 K22 ["Localization"]
       77 GETTABLEKS                       R8 R9 K24 ["LocalizedStrings"]
       79 DUPTABLE                         R9 K29 [{"getName", "getDescription", "icon", "enabled"}]
       80 DUPCLOSURE                       R10 K30 [PROTO_0]
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R10 R9 K25 ["getName"]
       84 DUPCLOSURE                       R10 K31 [PROTO_1]
       85 SETTABLEKS                       R10 R9 K26 ["getDescription"]
       87 LOADK                            R10 K32 [""]
       88 SETTABLEKS                       R10 R9 K27 ["icon"]
       90 LOADB                            R10 0
       91 SETTABLEKS                       R10 R9 K28 ["enabled"]
       93 DUPTABLE                         R10 K39 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
       94 GETIMPORT                        R11 K15 [plugin]
       96 SETTABLEKS                       R11 R10 K14 ["plugin"]
       98 LOADK                            R11 K40 ["StyleEditor"]
       99 SETTABLEKS                       R11 R10 K33 ["pluginName"]
      101 SETTABLEKS                       R8 R10 K34 ["translationResourceTable"]
      103 SETTABLEKS                       R7 R10 K35 ["fallbackResourceTable"]
      105 DUPCLOSURE                       R11 K41 [PROTO_2]
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R11 R10 K36 ["getToolbarName"]
      109 SETTABLEKS                       R9 R10 K37 ["buttonInfo"]
      111 NEWTABLE                         R11 1 0
      113 DUPCLOSURE                       R12 K42 [PROTO_3]
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R12 R11 K43 ["GuiService.OpenStyleEditor"]
      117 SETTABLEKS                       R11 R10 K38 ["extraTriggers"]
      119 GETIMPORT                        R11 K8 [game]
      121 LOADK                            R13 K44 ["RunService"]
      122 NAMECALL                         R11 R11 K10 ["GetService"]
      124 CALL                             R11 2 1
      125 NAMECALL                         R12 R11 K45 ["IsEdit"]
      127 CALL                             R12 1 1
      128 JUMPIFNOT                        R12 ; [+46]
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R9 K28 ["enabled"]
      132 DUPTABLE                         R12 K50 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      133 LOADK                            R13 K40 ["StyleEditor"]
      134 SETTABLEKS                       R13 R12 K46 ["id"]
      136 GETIMPORT                        R13 K53 [DockWidgetPluginGuiInfo.new]
      138 GETIMPORT                        R14 K57 [Enum.InitialDockState.Right]
      140 LOADB                            R15 0
      141 LOADB                            R16 0
      142 LOADN                            R17 68
      143 LOADN                            R18 244
      144 LOADN                            R19 250
      145 LOADN                            R20 200
      146 CALL                             R13 7 1
      147 SETTABLEKS                       R13 R12 K47 ["dockWidgetPluginGuiInfo"]
      149 DUPCLOSURE                       R13 K58 [PROTO_4]
      150 SETTABLEKS                       R13 R12 K48 ["getDockTitle"]
      152 GETIMPORT                        R13 K61 [Enum.ZIndexBehavior.Sibling]
      154 SETTABLEKS                       R13 R12 K49 ["zIndexBehavior"]
      156 SETTABLEKS                       R12 R10 K62 ["dockWidgetInfo"]
      158 GETTABLEKS                       R12 R6 K63 ["build"]
      160 MOVE                             R13 R10
      161 CALL                             R12 1 1
      162 GETTABLEKS                       R13 R12 K64 ["pluginLoader"]
      164 NAMECALL                         R13 R13 K65 ["waitForUserInteraction"]
      166 CALL                             R13 1 1
      167 JUMPIF                           R13 ; [+1]
      168 RETURN                           R0 0
      169 MOVE                             R14 R3
      170 GETIMPORT                        R15 K15 [plugin]
      172 MOVE                             R16 R12
      173 CALL                             R14 2 0
      174 RETURN                           R0 0
      175 GETTABLEKS                       R12 R6 K63 ["build"]
      177 MOVE                             R13 R10
      178 CALL                             R12 1 0
      179 RETURN                           R0 0
