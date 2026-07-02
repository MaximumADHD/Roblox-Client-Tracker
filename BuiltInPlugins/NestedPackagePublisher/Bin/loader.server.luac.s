PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
       22 GETTABLEKS                       R2 R2 K8 ["shouldPluginRun"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [require]
       31 GETTABLEKS                       R3 R0 K9 ["Packages"]
       33 GETTABLEKS                       R3 R3 K10 ["PluginLoader"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R2 K11 ["PluginLoaderBuilder"]
       38 GETTABLEKS                       R4 R0 K6 ["Src"]
       40 GETTABLEKS                       R4 R4 K12 ["Resources"]
       42 GETTABLEKS                       R4 R4 K13 ["Localization"]
       44 GETTABLEKS                       R4 R4 K14 ["SourceStrings"]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K12 ["Resources"]
       50 GETTABLEKS                       R5 R5 K13 ["Localization"]
       52 GETTABLEKS                       R5 R5 K15 ["LocalizedStrings"]
       54 DUPTABLE                         R6 K27 [{["plugin"], ["pluginName"] = "NestedPackagePublisher", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       55 GETIMPORT                        R7 K28 [plugin]
       57 SETTABLEKS                       R7 R6 K16 ["plugin"]
       59 SETTABLEKS                       R5 R6 K19 ["translationResourceTable"]
       61 SETTABLEKS                       R4 R6 K20 ["fallbackResourceTable"]
       63 DUPCLOSURE                       R7 K29 [PROTO_0]
       64 SETTABLEKS                       R7 R6 K24 ["getToolbarName"]
       66 DUPTABLE                         R7 K37 [{["getName"], ["getDescription"], ["icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       67 DUPCLOSURE                       R8 K38 [PROTO_1]
       68 SETTABLEKS                       R8 R7 K30 ["getName"]
       70 DUPCLOSURE                       R8 K39 [PROTO_2]
       71 SETTABLEKS                       R8 R7 K31 ["getDescription"]
       73 SETTABLEKS                       R7 R6 K25 ["buttonInfo"]
       75 DUPTABLE                         R7 K44 [{["id"] = "NestedPackagePublisher", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       76 GETIMPORT                        R8 K47 [DockWidgetPluginGuiInfo.new]
       78 GETIMPORT                        R9 K51 [Enum.InitialDockState.Bottom]
       80 LOADB                            R10 0
       81 LOADB                            R11 0
       82 LOADN                            R12 640
       83 LOADN                            R13 480
       84 LOADN                            R14 250
       85 LOADN                            R15 200
       86 CALL                             R8 7 1
       87 SETTABLEKS                       R8 R7 K41 ["dockWidgetPluginGuiInfo"]
       89 DUPCLOSURE                       R8 K52 [PROTO_3]
       90 SETTABLEKS                       R8 R7 K42 ["getDockTitle"]
       92 GETIMPORT                        R8 K55 [Enum.ZIndexBehavior.Sibling]
       94 SETTABLEKS                       R8 R7 K43 ["zIndexBehavior"]
       96 SETTABLEKS                       R7 R6 K26 ["dockWidgetInfo"]
       98 GETTABLEKS                       R7 R3 K56 ["build"]
      100 MOVE                             R8 R6
      101 CALL                             R7 1 1
      102 GETTABLEKS                       R8 R7 K57 ["pluginLoader"]
      104 NAMECALL                         R8 R8 K58 ["waitForUserInteraction"]
      106 CALL                             R8 1 1
      107 JUMPIF                           R8 ; [+1]
      108 RETURN                           R0 0
      109 GETIMPORT                        R9 K1 [require]
      111 GETIMPORT                        R10 K3 [script]
      113 GETTABLEKS                       R10 R10 K4 ["Parent"]
      115 GETTABLEKS                       R10 R10 K59 ["main"]
      117 CALL                             R9 1 1
      118 MOVE                             R10 R9
      119 GETIMPORT                        R11 K28 [plugin]
      121 MOVE                             R12 R7
      122 CALL                             R10 2 0
      123 RETURN                           R0 0
