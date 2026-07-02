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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K6 [require]
       14 GETIMPORT                        R1 K8 [script]
       16 GETTABLEKS                       R1 R1 K9 ["Parent"]
       18 GETTABLEKS                       R1 R1 K10 ["defineLuaFlags"]
       20 CALL                             R0 1 0
       21 GETIMPORT                        R0 K8 [script]
       23 GETTABLEKS                       R0 R0 K9 ["Parent"]
       25 GETTABLEKS                       R0 R0 K9 ["Parent"]
       27 GETIMPORT                        R1 K6 [require]
       29 GETTABLEKS                       R2 R0 K11 ["Packages"]
       31 GETTABLEKS                       R2 R2 K12 ["PluginLoader"]
       33 CALL                             R1 1 1
       34 GETTABLEKS                       R2 R1 K13 ["PluginLoaderBuilder"]
       36 GETTABLEKS                       R3 R0 K14 ["Src"]
       38 GETTABLEKS                       R3 R3 K15 ["Resources"]
       40 GETTABLEKS                       R3 R3 K16 ["Localization"]
       42 GETTABLEKS                       R3 R3 K17 ["SourceStrings"]
       44 GETTABLEKS                       R4 R0 K14 ["Src"]
       46 GETTABLEKS                       R4 R4 K15 ["Resources"]
       48 GETTABLEKS                       R4 R4 K16 ["Localization"]
       50 GETTABLEKS                       R4 R4 K18 ["LocalizedStrings"]
       52 DUPTABLE                         R5 K30 [{["plugin"], ["pluginName"] = "EventEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       53 GETIMPORT                        R6 K31 [plugin]
       55 SETTABLEKS                       R6 R5 K19 ["plugin"]
       57 SETTABLEKS                       R4 R5 K22 ["translationResourceTable"]
       59 SETTABLEKS                       R3 R5 K23 ["fallbackResourceTable"]
       61 DUPCLOSURE                       R6 K32 [PROTO_0]
       62 SETTABLEKS                       R6 R5 K27 ["getToolbarName"]
       64 DUPTABLE                         R6 K40 [{["getName"], ["getDescription"], ["icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       65 DUPCLOSURE                       R7 K41 [PROTO_1]
       66 SETTABLEKS                       R7 R6 K33 ["getName"]
       68 DUPCLOSURE                       R7 K42 [PROTO_2]
       69 SETTABLEKS                       R7 R6 K34 ["getDescription"]
       71 SETTABLEKS                       R6 R5 K28 ["buttonInfo"]
       73 DUPTABLE                         R6 K47 [{["id"] = "EventEmulator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       74 GETIMPORT                        R7 K50 [DockWidgetPluginGuiInfo.new]
       76 GETIMPORT                        R8 K54 [Enum.InitialDockState.Left]
       78 LOADB                            R9 0
       79 LOADB                            R10 0
       80 LOADN                            R11 310
       81 LOADN                            R12 225
       82 LOADN                            R13 310
       83 LOADN                            R14 225
       84 CALL                             R7 7 1
       85 SETTABLEKS                       R7 R6 K44 ["dockWidgetPluginGuiInfo"]
       87 DUPCLOSURE                       R7 K55 [PROTO_3]
       88 SETTABLEKS                       R7 R6 K45 ["getDockTitle"]
       90 GETIMPORT                        R7 K58 [Enum.ZIndexBehavior.Sibling]
       92 SETTABLEKS                       R7 R6 K46 ["zIndexBehavior"]
       94 SETTABLEKS                       R6 R5 K29 ["dockWidgetInfo"]
       96 GETTABLEKS                       R6 R2 K59 ["build"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 GETTABLEKS                       R7 R6 K60 ["pluginLoader"]
      102 NAMECALL                         R7 R7 K61 ["waitForUserInteraction"]
      104 CALL                             R7 1 1
      105 JUMPIF                           R7 ; [+1]
      106 RETURN                           R0 0
      107 GETIMPORT                        R8 K6 [require]
      109 GETIMPORT                        R9 K8 [script]
      111 GETTABLEKS                       R9 R9 K9 ["Parent"]
      113 GETTABLEKS                       R9 R9 K62 ["main"]
      115 CALL                             R8 1 1
      116 MOVE                             R9 R8
      117 GETIMPORT                        R10 K31 [plugin]
      119 MOVE                             R11 R6
      120 CALL                             R9 2 0
      121 RETURN                           R0 0
