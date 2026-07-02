PROTO_0:
        0 LOADK                            R0 K0 ["tagEditorToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["TagEditor"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R3 K0 [""]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_TagEditor"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K5 [script]
       11 GETTABLEKS                       R0 R0 K6 ["Parent"]
       13 GETTABLEKS                       R0 R0 K6 ["Parent"]
       15 GETIMPORT                        R1 K8 [require]
       17 GETTABLEKS                       R2 R0 K9 ["Src"]
       19 GETTABLEKS                       R2 R2 K10 ["Util"]
       21 GETTABLEKS                       R2 R2 K11 ["shouldPluginRun"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K8 [require]
       26 GETIMPORT                        R3 K5 [script]
       28 GETTABLEKS                       R3 R3 K6 ["Parent"]
       30 GETTABLEKS                       R3 R3 K12 ["defineLuaFlags"]
       32 CALL                             R2 1 0
       33 MOVE                             R2 R1
       34 CALL                             R2 0 1
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 0
       37 GETIMPORT                        R2 K8 [require]
       39 GETTABLEKS                       R3 R0 K13 ["Packages"]
       41 GETTABLEKS                       R3 R3 K14 ["PluginLoader"]
       43 CALL                             R2 1 1
       44 GETTABLEKS                       R3 R2 K15 ["PluginLoaderBuilder"]
       46 GETTABLEKS                       R4 R0 K9 ["Src"]
       48 GETTABLEKS                       R4 R4 K16 ["Resources"]
       50 GETTABLEKS                       R4 R4 K17 ["Localization"]
       52 GETTABLEKS                       R4 R4 K18 ["SourceStrings"]
       54 GETTABLEKS                       R5 R0 K9 ["Src"]
       56 GETTABLEKS                       R5 R5 K16 ["Resources"]
       58 GETTABLEKS                       R5 R5 K17 ["Localization"]
       60 GETTABLEKS                       R5 R5 K19 ["LocalizedStrings"]
       62 DUPTABLE                         R6 K31 [{["plugin"], ["pluginName"] = "TagEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       63 GETIMPORT                        R7 K32 [plugin]
       65 SETTABLEKS                       R7 R6 K20 ["plugin"]
       67 SETTABLEKS                       R5 R6 K23 ["translationResourceTable"]
       69 SETTABLEKS                       R4 R6 K24 ["fallbackResourceTable"]
       71 DUPCLOSURE                       R7 K33 [PROTO_0]
       72 SETTABLEKS                       R7 R6 K28 ["getToolbarName"]
       74 DUPTABLE                         R7 K41 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["ClickableWhenViewportHidden"] = True}]
       75 DUPCLOSURE                       R8 K42 [PROTO_1]
       76 SETTABLEKS                       R8 R7 K34 ["getName"]
       78 DUPCLOSURE                       R8 K43 [PROTO_2]
       79 SETTABLEKS                       R8 R7 K35 ["getDescription"]
       81 SETTABLEKS                       R7 R6 K29 ["buttonInfo"]
       83 DUPTABLE                         R7 K48 [{["id"] = "TagEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       84 GETIMPORT                        R8 K51 [DockWidgetPluginGuiInfo.new]
       86 GETIMPORT                        R9 K55 [Enum.InitialDockState.Right]
       88 LOADB                            R10 0
       89 LOADB                            R11 0
       90 LOADN                            R12 300
       91 LOADN                            R13 200
       92 LOADN                            R14 200
       93 LOADN                            R15 250
       94 CALL                             R8 7 1
       95 SETTABLEKS                       R8 R7 K45 ["dockWidgetPluginGuiInfo"]
       97 DUPCLOSURE                       R8 K56 [PROTO_3]
       98 SETTABLEKS                       R8 R7 K46 ["getDockTitle"]
      100 GETIMPORT                        R8 K59 [Enum.ZIndexBehavior.Sibling]
      102 SETTABLEKS                       R8 R7 K47 ["zIndexBehavior"]
      104 SETTABLEKS                       R7 R6 K30 ["dockWidgetInfo"]
      106 GETTABLEKS                       R7 R3 K60 ["build"]
      108 MOVE                             R8 R6
      109 CALL                             R7 1 1
      110 GETTABLEKS                       R8 R7 K61 ["pluginLoader"]
      112 NAMECALL                         R8 R8 K62 ["waitForUserInteraction"]
      114 CALL                             R8 1 1
      115 JUMPIF                           R8 ; [+1]
      116 RETURN                           R0 0
      117 GETIMPORT                        R9 K8 [require]
      119 GETIMPORT                        R10 K5 [script]
      121 GETTABLEKS                       R10 R10 K6 ["Parent"]
      123 GETTABLEKS                       R10 R10 K63 ["main"]
      125 CALL                             R9 1 1
      126 MOVE                             R10 R9
      127 GETIMPORT                        R11 K32 [plugin]
      129 MOVE                             R12 R7
      130 CALL                             R10 2 0
      131 RETURN                           R0 0
