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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OpenStyleEditor"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [require]
       12 GETIMPORT                        R1 K3 [script]
       14 GETTABLEKS                       R1 R1 K4 ["Parent"]
       16 GETTABLEKS                       R1 R1 K6 ["runTests"]
       18 CALL                             R0 1 1
       19 MOVE                             R1 R0
       20 CALL                             R1 0 0
       21 GETIMPORT                        R1 K8 [game]
       23 LOADK                            R3 K9 ["GuiService"]
       24 NAMECALL                         R1 R1 K10 ["GetService"]
       26 CALL                             R1 2 1
       27 GETIMPORT                        R2 K3 [script]
       29 GETTABLEKS                       R2 R2 K4 ["Parent"]
       31 GETTABLEKS                       R2 R2 K4 ["Parent"]
       33 GETIMPORT                        R3 K1 [require]
       35 GETIMPORT                        R4 K3 [script]
       37 GETTABLEKS                       R4 R4 K4 ["Parent"]
       39 GETTABLEKS                       R4 R4 K11 ["main"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K13 [plugin]
       44 GETTABLEKS                       R5 R2 K14 ["Name"]
       46 SETTABLEKS                       R5 R4 K14 ["Name"]
       48 GETIMPORT                        R4 K1 [require]
       50 GETTABLEKS                       R5 R2 K15 ["Packages"]
       52 GETTABLEKS                       R5 R5 K16 ["PluginLoader"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R4 K17 ["PluginLoaderBuilder"]
       57 GETTABLEKS                       R6 R2 K18 ["Src"]
       59 GETTABLEKS                       R6 R6 K19 ["Resources"]
       61 GETTABLEKS                       R6 R6 K20 ["Localization"]
       63 GETTABLEKS                       R6 R6 K21 ["SourceStrings"]
       65 GETTABLEKS                       R7 R2 K18 ["Src"]
       67 GETTABLEKS                       R7 R7 K19 ["Resources"]
       69 GETTABLEKS                       R7 R7 K20 ["Localization"]
       71 GETTABLEKS                       R7 R7 K22 ["LocalizedStrings"]
       73 DUPTABLE                         R8 K29 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False}]
       74 DUPCLOSURE                       R9 K30 [PROTO_0]
       75 SETTABLEKS                       R9 R8 K23 ["getName"]
       77 DUPCLOSURE                       R9 K31 [PROTO_1]
       78 SETTABLEKS                       R9 R8 K24 ["getDescription"]
       80 DUPTABLE                         R9 K39 [{["plugin"], ["pluginName"] = "StyleEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"], ["extraTriggers"]}]
       81 GETIMPORT                        R10 K13 [plugin]
       83 SETTABLEKS                       R10 R9 K12 ["plugin"]
       85 SETTABLEKS                       R7 R9 K34 ["translationResourceTable"]
       87 SETTABLEKS                       R6 R9 K35 ["fallbackResourceTable"]
       89 DUPCLOSURE                       R10 K40 [PROTO_2]
       90 SETTABLEKS                       R10 R9 K36 ["getToolbarName"]
       92 SETTABLEKS                       R8 R9 K37 ["buttonInfo"]
       94 NEWTABLE                         R10 1 0
       96 DUPCLOSURE                       R11 K41 [PROTO_3]
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R11 R10 K42 ["GuiService.OpenStyleEditor"]
      100 SETTABLEKS                       R10 R9 K38 ["extraTriggers"]
      102 GETIMPORT                        R10 K8 [game]
      104 LOADK                            R12 K43 ["RunService"]
      105 NAMECALL                         R10 R10 K10 ["GetService"]
      107 CALL                             R10 2 1
      108 NAMECALL                         R11 R10 K44 ["IsEdit"]
      110 CALL                             R11 1 1
      111 JUMPIFNOT                        R11 ; [+43]
      112 LOADB                            R11 1
      113 SETTABLEKS                       R11 R8 K27 ["enabled"]
      115 DUPTABLE                         R11 K49 [{["id"] = "StyleEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      116 GETIMPORT                        R12 K52 [DockWidgetPluginGuiInfo.new]
      118 GETIMPORT                        R13 K56 [Enum.InitialDockState.Right]
      120 LOADB                            R14 0
      121 LOADB                            R15 0
      122 LOADN                            R16 580
      123 LOADN                            R17 500
      124 LOADN                            R18 250
      125 LOADN                            R19 200
      126 CALL                             R12 7 1
      127 SETTABLEKS                       R12 R11 K46 ["dockWidgetPluginGuiInfo"]
      129 DUPCLOSURE                       R12 K57 [PROTO_4]
      130 SETTABLEKS                       R12 R11 K47 ["getDockTitle"]
      132 GETIMPORT                        R12 K60 [Enum.ZIndexBehavior.Sibling]
      134 SETTABLEKS                       R12 R11 K48 ["zIndexBehavior"]
      136 SETTABLEKS                       R11 R9 K61 ["dockWidgetInfo"]
      138 GETTABLEKS                       R11 R5 K62 ["build"]
      140 MOVE                             R12 R9
      141 CALL                             R11 1 1
      142 GETTABLEKS                       R12 R11 K63 ["pluginLoader"]
      144 NAMECALL                         R12 R12 K64 ["waitForUserInteraction"]
      146 CALL                             R12 1 1
      147 JUMPIF                           R12 ; [+1]
      148 RETURN                           R0 0
      149 MOVE                             R13 R3
      150 GETIMPORT                        R14 K13 [plugin]
      152 MOVE                             R15 R11
      153 CALL                             R13 2 0
      154 RETURN                           R0 0
      155 GETTABLEKS                       R11 R5 K62 ["build"]
      157 MOVE                             R12 R9
      158 CALL                             R11 1 0
      159 RETURN                           R0 0
