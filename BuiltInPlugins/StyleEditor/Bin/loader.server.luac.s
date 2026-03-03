PROTO_0:
        0 LOADK                            R0 K0 ["StyleEditorToolbarButton"]
        1 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R0 K0 ["StyleEditor"]
        1 RETURN                           R0 1

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
       42 GETIMPORT                        R4 K13 [plugin]
       44 GETTABLEKS                       R5 R2 K14 ["Name"]
       46 SETTABLEKS                       R5 R4 K14 ["Name"]
       48 GETIMPORT                        R4 K1 [require]
       50 GETTABLEKS                       R6 R2 K15 ["Packages"]
       52 GETTABLEKS                       R5 R6 K16 ["PluginLoader"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R4 K17 ["PluginLoaderBuilder"]
       57 GETTABLEKS                       R9 R2 K18 ["Src"]
       59 GETTABLEKS                       R8 R9 K19 ["Resources"]
       61 GETTABLEKS                       R7 R8 K20 ["Localization"]
       63 GETTABLEKS                       R6 R7 K21 ["SourceStrings"]
       65 GETTABLEKS                       R10 R2 K18 ["Src"]
       67 GETTABLEKS                       R9 R10 K19 ["Resources"]
       69 GETTABLEKS                       R8 R9 K20 ["Localization"]
       71 GETTABLEKS                       R7 R8 K22 ["LocalizedStrings"]
       73 DUPTABLE                         R8 K27 [{"getName", "getDescription", "icon", "enabled"}]
       74 DUPCLOSURE                       R9 K28 [PROTO_0]
       75 SETTABLEKS                       R9 R8 K23 ["getName"]
       77 DUPCLOSURE                       R9 K29 [PROTO_1]
       78 SETTABLEKS                       R9 R8 K24 ["getDescription"]
       80 LOADK                            R9 K30 [""]
       81 SETTABLEKS                       R9 R8 K25 ["icon"]
       83 LOADB                            R9 0
       84 SETTABLEKS                       R9 R8 K26 ["enabled"]
       86 DUPTABLE                         R9 K37 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
       87 GETIMPORT                        R10 K13 [plugin]
       89 SETTABLEKS                       R10 R9 K12 ["plugin"]
       91 LOADK                            R10 K38 ["StyleEditor"]
       92 SETTABLEKS                       R10 R9 K31 ["pluginName"]
       94 SETTABLEKS                       R7 R9 K32 ["translationResourceTable"]
       96 SETTABLEKS                       R6 R9 K33 ["fallbackResourceTable"]
       98 DUPCLOSURE                       R10 K39 [PROTO_2]
       99 SETTABLEKS                       R10 R9 K34 ["getToolbarName"]
      101 SETTABLEKS                       R8 R9 K35 ["buttonInfo"]
      103 NEWTABLE                         R10 1 0
      105 DUPCLOSURE                       R11 K40 [PROTO_3]
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R11 R10 K41 ["GuiService.OpenStyleEditor"]
      109 SETTABLEKS                       R10 R9 K36 ["extraTriggers"]
      111 GETIMPORT                        R10 K8 [game]
      113 LOADK                            R12 K42 ["RunService"]
      114 NAMECALL                         R10 R10 K10 ["GetService"]
      116 CALL                             R10 2 1
      117 NAMECALL                         R11 R10 K43 ["IsEdit"]
      119 CALL                             R11 1 1
      120 JUMPIFNOT                        R11 ; [+46]
      121 LOADB                            R11 1
      122 SETTABLEKS                       R11 R8 K26 ["enabled"]
      124 DUPTABLE                         R11 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      125 LOADK                            R12 K38 ["StyleEditor"]
      126 SETTABLEKS                       R12 R11 K44 ["id"]
      128 GETIMPORT                        R12 K51 [DockWidgetPluginGuiInfo.new]
      130 GETIMPORT                        R13 K55 [Enum.InitialDockState.Right]
      132 LOADB                            R14 0
      133 LOADB                            R15 0
      134 LOADN                            R16 68
      135 LOADN                            R17 244
      136 LOADN                            R18 250
      137 LOADN                            R19 200
      138 CALL                             R12 7 1
      139 SETTABLEKS                       R12 R11 K45 ["dockWidgetPluginGuiInfo"]
      141 DUPCLOSURE                       R12 K56 [PROTO_4]
      142 SETTABLEKS                       R12 R11 K46 ["getDockTitle"]
      144 GETIMPORT                        R12 K59 [Enum.ZIndexBehavior.Sibling]
      146 SETTABLEKS                       R12 R11 K47 ["zIndexBehavior"]
      148 SETTABLEKS                       R11 R9 K60 ["dockWidgetInfo"]
      150 GETTABLEKS                       R11 R5 K61 ["build"]
      152 MOVE                             R12 R9
      153 CALL                             R11 1 1
      154 GETTABLEKS                       R12 R11 K62 ["pluginLoader"]
      156 NAMECALL                         R12 R12 K63 ["waitForUserInteraction"]
      158 CALL                             R12 1 1
      159 JUMPIF                           R12 ; [+1]
      160 RETURN                           R0 0
      161 MOVE                             R13 R3
      162 GETIMPORT                        R14 K13 [plugin]
      164 MOVE                             R15 R11
      165 CALL                             R13 2 0
      166 RETURN                           R0 0
      167 GETTABLEKS                       R11 R5 K61 ["build"]
      169 MOVE                             R12 R9
      170 CALL                             R11 1 0
      171 RETURN                           R0 0
