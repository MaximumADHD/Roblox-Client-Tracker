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
       10 GETIMPORT                        R0 K7 [game]
       12 LOADK                            R2 K8 ["DeviceEmulatorPluginBasedUi"]
       13 NAMECALL                         R0 R0 K9 ["GetFastFlag"]
       15 CALL                             R0 2 1
       16 JUMPIF                           R0 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R0 K3 [script]
       20 GETTABLEKS                       R0 R0 K4 ["Parent"]
       22 GETTABLEKS                       R0 R0 K4 ["Parent"]
       24 GETIMPORT                        R1 K1 [require]
       26 GETTABLEKS                       R2 R0 K10 ["Src"]
       28 GETTABLEKS                       R2 R2 K11 ["Util"]
       30 GETTABLEKS                       R2 R2 K12 ["DebugFlags"]
       32 CALL                             R1 1 1
       33 GETTABLEKS                       R2 R1 K13 ["RunningUnderCLI"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K1 [require]
       40 GETTABLEKS                       R3 R0 K14 ["Packages"]
       42 GETTABLEKS                       R3 R3 K15 ["PluginLoader"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R2 K16 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R4 R0 K10 ["Src"]
       49 GETTABLEKS                       R4 R4 K17 ["Resources"]
       51 GETTABLEKS                       R4 R4 K18 ["Localization"]
       53 GETTABLEKS                       R4 R4 K19 ["SourceStrings"]
       55 GETTABLEKS                       R5 R0 K10 ["Src"]
       57 GETTABLEKS                       R5 R5 K17 ["Resources"]
       59 GETTABLEKS                       R5 R5 K18 ["Localization"]
       61 GETTABLEKS                       R5 R5 K20 ["LocalizedStrings"]
       63 DUPTABLE                         R6 K32 [{["plugin"], ["pluginName"] = "DeviceEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       64 GETIMPORT                        R7 K33 [plugin]
       66 SETTABLEKS                       R7 R6 K21 ["plugin"]
       68 SETTABLEKS                       R5 R6 K24 ["translationResourceTable"]
       70 SETTABLEKS                       R4 R6 K25 ["fallbackResourceTable"]
       72 DUPCLOSURE                       R7 K34 [PROTO_0]
       73 SETTABLEKS                       R7 R6 K29 ["getToolbarName"]
       75 DUPTABLE                         R7 K42 [{["getName"], ["getDescription"], ["icon"] = "rbxasset://textures/DeviceEmulator/emulator.png", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       76 DUPCLOSURE                       R8 K43 [PROTO_1]
       77 SETTABLEKS                       R8 R7 K35 ["getName"]
       79 DUPCLOSURE                       R8 K44 [PROTO_2]
       80 SETTABLEKS                       R8 R7 K36 ["getDescription"]
       82 SETTABLEKS                       R7 R6 K30 ["buttonInfo"]
       84 DUPTABLE                         R7 K49 [{["id"] = "DeviceEmulator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       85 GETIMPORT                        R8 K52 [DockWidgetPluginGuiInfo.new]
       87 GETIMPORT                        R9 K56 [Enum.InitialDockState.Bottom]
       89 LOADB                            R10 0
       90 LOADB                            R11 0
       91 LOADN                            R12 360
       92 LOADN                            R13 420
       93 LOADN                            R14 300
       94 LOADN                            R15 200
       95 CALL                             R8 7 1
       96 SETTABLEKS                       R8 R7 K46 ["dockWidgetPluginGuiInfo"]
       98 DUPCLOSURE                       R8 K57 [PROTO_3]
       99 SETTABLEKS                       R8 R7 K47 ["getDockTitle"]
      101 GETIMPORT                        R8 K60 [Enum.ZIndexBehavior.Sibling]
      103 SETTABLEKS                       R8 R7 K48 ["zIndexBehavior"]
      105 SETTABLEKS                       R7 R6 K31 ["dockWidgetInfo"]
      107 GETTABLEKS                       R7 R3 K61 ["build"]
      109 MOVE                             R8 R6
      110 CALL                             R7 1 1
      111 GETTABLEKS                       R8 R7 K62 ["pluginLoader"]
      113 NAMECALL                         R8 R8 K63 ["waitForUserInteraction"]
      115 CALL                             R8 1 1
      116 JUMPIF                           R8 ; [+1]
      117 RETURN                           R0 0
      118 GETIMPORT                        R9 K1 [require]
      120 GETIMPORT                        R10 K3 [script]
      122 GETTABLEKS                       R10 R10 K4 ["Parent"]
      124 GETTABLEKS                       R10 R10 K64 ["main"]
      126 CALL                             R9 1 1
      127 MOVE                             R10 R9
      128 GETIMPORT                        R11 K33 [plugin]
      130 MOVE                             R12 R7
      131 CALL                             R10 2 0
      132 RETURN                           R0 0
