PROTO_0:
        0 LOADK                            R0 K0 ["Alignment"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["AlignTool"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["WindowTitle"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       25 GETTABLEKS                       R3 R0 K9 ["Src"]
       27 GETTABLEKS                       R3 R3 K10 ["Resources"]
       29 GETTABLEKS                       R3 R3 K11 ["Localization"]
       31 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       33 GETTABLEKS                       R4 R0 K9 ["Src"]
       35 GETTABLEKS                       R4 R4 K10 ["Resources"]
       37 GETTABLEKS                       R4 R4 K11 ["Localization"]
       39 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       41 DUPTABLE                         R5 K25 [{["plugin"], ["pluginName"] = "AlignmentTool", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       42 GETIMPORT                        R6 K26 [plugin]
       44 SETTABLEKS                       R6 R5 K14 ["plugin"]
       46 SETTABLEKS                       R4 R5 K17 ["translationResourceTable"]
       48 SETTABLEKS                       R3 R5 K18 ["fallbackResourceTable"]
       50 DUPCLOSURE                       R6 K27 [PROTO_0]
       51 SETTABLEKS                       R6 R5 K22 ["getToolbarName"]
       53 DUPTABLE                         R6 K35 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       54 DUPCLOSURE                       R7 K36 [PROTO_1]
       55 SETTABLEKS                       R7 R6 K28 ["getName"]
       57 DUPCLOSURE                       R7 K37 [PROTO_2]
       58 SETTABLEKS                       R7 R6 K29 ["getDescription"]
       60 SETTABLEKS                       R6 R5 K23 ["buttonInfo"]
       62 DUPTABLE                         R6 K42 [{["id"] = "AlignmentTool", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       63 GETIMPORT                        R7 K45 [DockWidgetPluginGuiInfo.new]
       65 GETIMPORT                        R8 K49 [Enum.InitialDockState.Left]
       67 LOADB                            R9 0
       68 LOADB                            R10 0
       69 LOADN                            R11 300
       70 LOADN                            R12 250
       71 LOADN                            R13 175
       72 LOADN                            R14 250
       73 CALL                             R7 7 1
       74 SETTABLEKS                       R7 R6 K39 ["dockWidgetPluginGuiInfo"]
       76 DUPCLOSURE                       R7 K50 [PROTO_3]
       77 SETTABLEKS                       R7 R6 K40 ["getDockTitle"]
       79 GETIMPORT                        R7 K53 [Enum.ZIndexBehavior.Sibling]
       81 SETTABLEKS                       R7 R6 K41 ["zIndexBehavior"]
       83 SETTABLEKS                       R6 R5 K24 ["dockWidgetInfo"]
       85 GETTABLEKS                       R6 R2 K54 ["build"]
       87 MOVE                             R7 R5
       88 CALL                             R6 1 1
       89 GETTABLEKS                       R7 R6 K55 ["pluginLoader"]
       91 NAMECALL                         R7 R7 K56 ["waitForUserInteraction"]
       93 CALL                             R7 1 1
       94 JUMPIF                           R7 ; [+1]
       95 RETURN                           R0 0
       96 GETIMPORT                        R8 K1 [require]
       98 GETIMPORT                        R9 K3 [script]
      100 GETTABLEKS                       R9 R9 K4 ["Parent"]
      102 GETTABLEKS                       R9 R9 K57 ["main"]
      104 CALL                             R8 1 1
      105 MOVE                             R9 R8
      106 GETIMPORT                        R10 K26 [plugin]
      108 MOVE                             R11 R6
      109 CALL                             R9 2 0
      110 RETURN                           R0 0
