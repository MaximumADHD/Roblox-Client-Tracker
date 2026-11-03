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
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADK                            R2 K4 ["EventEmulatorFlags"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 MOVE                             R1 R0
       12 JUMPIFNOT                        R1 ; [+4]
       13 LOADK                            R3 K6 ["RunningUnderCLI"]
       14 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETTABLEKS                       R2 R1 K7 ["Value"]
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K1 [game]
       24 LOADK                            R4 K8 ["StudioService"]
       25 NAMECALL                         R2 R2 K3 ["GetService"]
       27 CALL                             R2 2 1
       28 NAMECALL                         R2 R2 K9 ["HasInternalPermission"]
       30 CALL                             R2 1 1
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K11 [require]
       35 GETIMPORT                        R3 K13 [script]
       37 GETTABLEKS                       R3 R3 K14 ["Parent"]
       39 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       41 CALL                             R2 1 0
       42 GETIMPORT                        R2 K13 [script]
       44 GETTABLEKS                       R2 R2 K14 ["Parent"]
       46 GETTABLEKS                       R2 R2 K14 ["Parent"]
       48 GETIMPORT                        R3 K11 [require]
       50 GETTABLEKS                       R4 R2 K16 ["Packages"]
       52 GETTABLEKS                       R4 R4 K17 ["PluginLoader"]
       54 CALL                             R3 1 1
       55 GETTABLEKS                       R4 R3 K18 ["PluginLoaderBuilder"]
       57 GETTABLEKS                       R5 R2 K19 ["Src"]
       59 GETTABLEKS                       R5 R5 K20 ["Resources"]
       61 GETTABLEKS                       R5 R5 K21 ["Localization"]
       63 GETTABLEKS                       R5 R5 K22 ["SourceStrings"]
       65 GETTABLEKS                       R6 R2 K19 ["Src"]
       67 GETTABLEKS                       R6 R6 K20 ["Resources"]
       69 GETTABLEKS                       R6 R6 K21 ["Localization"]
       71 GETTABLEKS                       R6 R6 K23 ["LocalizedStrings"]
       73 DUPTABLE                         R7 K35 [{["plugin"], ["pluginName"] = "EventEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       74 GETIMPORT                        R8 K36 [plugin]
       76 SETTABLEKS                       R8 R7 K24 ["plugin"]
       78 SETTABLEKS                       R6 R7 K27 ["translationResourceTable"]
       80 SETTABLEKS                       R5 R7 K28 ["fallbackResourceTable"]
       82 DUPCLOSURE                       R8 K37 [PROTO_0]
       83 SETTABLEKS                       R8 R7 K32 ["getToolbarName"]
       85 DUPTABLE                         R8 K45 [{["getName"], ["getDescription"], ["icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       86 DUPCLOSURE                       R9 K46 [PROTO_1]
       87 SETTABLEKS                       R9 R8 K38 ["getName"]
       89 DUPCLOSURE                       R9 K47 [PROTO_2]
       90 SETTABLEKS                       R9 R8 K39 ["getDescription"]
       92 SETTABLEKS                       R8 R7 K33 ["buttonInfo"]
       94 DUPTABLE                         R8 K52 [{["id"] = "EventEmulator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       95 GETIMPORT                        R9 K55 [DockWidgetPluginGuiInfo.new]
       97 GETIMPORT                        R10 K59 [Enum.InitialDockState.Left]
       99 LOADB                            R11 0
      100 LOADB                            R12 0
      101 LOADN                            R13 310
      102 LOADN                            R14 225
      103 LOADN                            R15 310
      104 LOADN                            R16 225
      105 CALL                             R9 7 1
      106 SETTABLEKS                       R9 R8 K49 ["dockWidgetPluginGuiInfo"]
      108 DUPCLOSURE                       R9 K60 [PROTO_3]
      109 SETTABLEKS                       R9 R8 K50 ["getDockTitle"]
      111 GETIMPORT                        R9 K63 [Enum.ZIndexBehavior.Sibling]
      113 SETTABLEKS                       R9 R8 K51 ["zIndexBehavior"]
      115 SETTABLEKS                       R8 R7 K34 ["dockWidgetInfo"]
      117 GETTABLEKS                       R8 R4 K64 ["build"]
      119 MOVE                             R9 R7
      120 CALL                             R8 1 1
      121 GETTABLEKS                       R9 R8 K65 ["pluginLoader"]
      123 NAMECALL                         R9 R9 K66 ["waitForUserInteraction"]
      125 CALL                             R9 1 1
      126 JUMPIF                           R9 ; [+1]
      127 RETURN                           R0 0
      128 GETIMPORT                        R10 K11 [require]
      130 GETIMPORT                        R11 K13 [script]
      132 GETTABLEKS                       R11 R11 K14 ["Parent"]
      134 GETTABLEKS                       R11 R11 K67 ["main"]
      136 CALL                             R10 1 1
      137 MOVE                             R11 R10
      138 GETIMPORT                        R12 K36 [plugin]
      140 MOVE                             R13 R8
      141 CALL                             R11 2 0
      142 RETURN                           R0 0
