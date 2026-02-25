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
       23 LOADK                            R3 K9 ["EnableStyleEditor"]
       24 NAMECALL                         R1 R1 K10 ["GetFastFlag"]
       26 CALL                             R1 2 1
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R1 K8 [game]
       31 LOADK                            R3 K11 ["GuiService"]
       32 NAMECALL                         R1 R1 K12 ["GetService"]
       34 CALL                             R1 2 1
       35 GETIMPORT                        R4 K3 [script]
       37 GETTABLEKS                       R3 R4 K4 ["Parent"]
       39 GETTABLEKS                       R2 R3 K4 ["Parent"]
       41 GETIMPORT                        R3 K1 [require]
       43 GETIMPORT                        R6 K3 [script]
       45 GETTABLEKS                       R5 R6 K4 ["Parent"]
       47 GETTABLEKS                       R4 R5 K13 ["main"]
       49 CALL                             R3 1 1
       50 GETIMPORT                        R4 K8 [game]
       52 LOADK                            R6 K14 ["StyleEditorUITab2"]
       53 NAMECALL                         R4 R4 K10 ["GetFastFlag"]
       55 CALL                             R4 2 1
       56 GETIMPORT                        R5 K16 [plugin]
       58 GETTABLEKS                       R6 R2 K17 ["Name"]
       60 SETTABLEKS                       R6 R5 K17 ["Name"]
       62 GETIMPORT                        R5 K1 [require]
       64 GETTABLEKS                       R7 R2 K18 ["Packages"]
       66 GETTABLEKS                       R6 R7 K19 ["PluginLoader"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R6 R5 K20 ["PluginLoaderBuilder"]
       71 GETTABLEKS                       R10 R2 K21 ["Src"]
       73 GETTABLEKS                       R9 R10 K22 ["Resources"]
       75 GETTABLEKS                       R8 R9 K23 ["Localization"]
       77 GETTABLEKS                       R7 R8 K24 ["SourceStrings"]
       79 GETTABLEKS                       R11 R2 K21 ["Src"]
       81 GETTABLEKS                       R10 R11 K22 ["Resources"]
       83 GETTABLEKS                       R9 R10 K23 ["Localization"]
       85 GETTABLEKS                       R8 R9 K25 ["LocalizedStrings"]
       87 DUPTABLE                         R9 K30 [{"getName", "getDescription", "icon", "enabled"}]
       88 DUPCLOSURE                       R10 K31 [PROTO_0]
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R10 R9 K26 ["getName"]
       92 DUPCLOSURE                       R10 K32 [PROTO_1]
       93 SETTABLEKS                       R10 R9 K27 ["getDescription"]
       95 LOADK                            R10 K33 [""]
       96 SETTABLEKS                       R10 R9 K28 ["icon"]
       98 LOADB                            R10 0
       99 SETTABLEKS                       R10 R9 K29 ["enabled"]
      101 DUPTABLE                         R10 K40 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
      102 GETIMPORT                        R11 K16 [plugin]
      104 SETTABLEKS                       R11 R10 K15 ["plugin"]
      106 LOADK                            R11 K41 ["StyleEditor"]
      107 SETTABLEKS                       R11 R10 K34 ["pluginName"]
      109 SETTABLEKS                       R8 R10 K35 ["translationResourceTable"]
      111 SETTABLEKS                       R7 R10 K36 ["fallbackResourceTable"]
      113 DUPCLOSURE                       R11 K42 [PROTO_2]
      114 CAPTURE                          VAL R4
      115 SETTABLEKS                       R11 R10 K37 ["getToolbarName"]
      117 SETTABLEKS                       R9 R10 K38 ["buttonInfo"]
      119 NEWTABLE                         R11 1 0
      121 DUPCLOSURE                       R12 K43 [PROTO_3]
      122 CAPTURE                          VAL R1
      123 SETTABLEKS                       R12 R11 K44 ["GuiService.OpenStyleEditor"]
      125 SETTABLEKS                       R11 R10 K39 ["extraTriggers"]
      127 GETIMPORT                        R11 K8 [game]
      129 LOADK                            R13 K45 ["RunService"]
      130 NAMECALL                         R11 R11 K12 ["GetService"]
      132 CALL                             R11 2 1
      133 NAMECALL                         R12 R11 K46 ["IsEdit"]
      135 CALL                             R12 1 1
      136 JUMPIFNOT                        R12 ; [+46]
      137 LOADB                            R12 1
      138 SETTABLEKS                       R12 R9 K29 ["enabled"]
      140 DUPTABLE                         R12 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      141 LOADK                            R13 K41 ["StyleEditor"]
      142 SETTABLEKS                       R13 R12 K47 ["id"]
      144 GETIMPORT                        R13 K54 [DockWidgetPluginGuiInfo.new]
      146 GETIMPORT                        R14 K58 [Enum.InitialDockState.Right]
      148 LOADB                            R15 0
      149 LOADB                            R16 0
      150 LOADN                            R17 68
      151 LOADN                            R18 244
      152 LOADN                            R19 250
      153 LOADN                            R20 200
      154 CALL                             R13 7 1
      155 SETTABLEKS                       R13 R12 K48 ["dockWidgetPluginGuiInfo"]
      157 DUPCLOSURE                       R13 K59 [PROTO_4]
      158 SETTABLEKS                       R13 R12 K49 ["getDockTitle"]
      160 GETIMPORT                        R13 K62 [Enum.ZIndexBehavior.Sibling]
      162 SETTABLEKS                       R13 R12 K50 ["zIndexBehavior"]
      164 SETTABLEKS                       R12 R10 K63 ["dockWidgetInfo"]
      166 GETTABLEKS                       R12 R6 K64 ["build"]
      168 MOVE                             R13 R10
      169 CALL                             R12 1 1
      170 GETTABLEKS                       R13 R12 K65 ["pluginLoader"]
      172 NAMECALL                         R13 R13 K66 ["waitForUserInteraction"]
      174 CALL                             R13 1 1
      175 JUMPIF                           R13 ; [+1]
      176 RETURN                           R0 0
      177 MOVE                             R14 R3
      178 GETIMPORT                        R15 K16 [plugin]
      180 MOVE                             R16 R12
      181 CALL                             R14 2 0
      182 RETURN                           R0 0
      183 GETTABLEKS                       R12 R6 K64 ["build"]
      185 MOVE                             R13 R10
      186 CALL                             R12 1 0
      187 RETURN                           R0 0
