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
       63 DUPTABLE                         R6 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       64 GETIMPORT                        R7 K31 [plugin]
       66 SETTABLEKS                       R7 R6 K21 ["plugin"]
       68 LOADK                            R7 K32 ["DeviceEmulator"]
       69 SETTABLEKS                       R7 R6 K22 ["pluginName"]
       71 SETTABLEKS                       R5 R6 K23 ["translationResourceTable"]
       73 SETTABLEKS                       R4 R6 K24 ["fallbackResourceTable"]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K25 ["overrideLocaleId"]
       78 LOADNIL                          R7
       79 SETTABLEKS                       R7 R6 K26 ["localizationNamespace"]
       81 DUPCLOSURE                       R7 K33 [PROTO_0]
       82 SETTABLEKS                       R7 R6 K27 ["getToolbarName"]
       84 DUPTABLE                         R7 K39 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
       85 DUPCLOSURE                       R8 K40 [PROTO_1]
       86 SETTABLEKS                       R8 R7 K34 ["getName"]
       88 DUPCLOSURE                       R8 K41 [PROTO_2]
       89 SETTABLEKS                       R8 R7 K35 ["getDescription"]
       91 LOADK                            R8 K42 ["rbxasset://textures/DeviceEmulator/emulator.png"]
       92 SETTABLEKS                       R8 R7 K36 ["icon"]
       94 LOADNIL                          R8
       95 SETTABLEKS                       R8 R7 K37 ["text"]
       97 LOADB                            R8 1
       98 SETTABLEKS                       R8 R7 K38 ["clickableWhenViewportHidden"]
      100 SETTABLEKS                       R7 R6 K28 ["buttonInfo"]
      102 DUPTABLE                         R7 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      103 LOADK                            R8 K32 ["DeviceEmulator"]
      104 SETTABLEKS                       R8 R7 K43 ["id"]
      106 GETIMPORT                        R8 K50 [DockWidgetPluginGuiInfo.new]
      108 GETIMPORT                        R9 K54 [Enum.InitialDockState.Bottom]
      110 LOADB                            R10 0
      111 LOADB                            R11 0
      112 LOADN                            R12 104
      113 LOADN                            R13 164
      114 LOADN                            R14 44
      115 LOADN                            R15 200
      116 CALL                             R8 7 1
      117 SETTABLEKS                       R8 R7 K44 ["dockWidgetPluginGuiInfo"]
      119 DUPCLOSURE                       R8 K55 [PROTO_3]
      120 SETTABLEKS                       R8 R7 K45 ["getDockTitle"]
      122 GETIMPORT                        R8 K58 [Enum.ZIndexBehavior.Sibling]
      124 SETTABLEKS                       R8 R7 K46 ["zIndexBehavior"]
      126 SETTABLEKS                       R7 R6 K29 ["dockWidgetInfo"]
      128 GETTABLEKS                       R7 R3 K59 ["build"]
      130 MOVE                             R8 R6
      131 CALL                             R7 1 1
      132 GETTABLEKS                       R8 R7 K60 ["pluginLoader"]
      134 NAMECALL                         R8 R8 K61 ["waitForUserInteraction"]
      136 CALL                             R8 1 1
      137 JUMPIF                           R8 ; [+1]
      138 RETURN                           R0 0
      139 GETIMPORT                        R9 K1 [require]
      141 GETIMPORT                        R10 K3 [script]
      143 GETTABLEKS                       R10 R10 K4 ["Parent"]
      145 GETTABLEKS                       R10 R10 K62 ["main"]
      147 CALL                             R9 1 1
      148 MOVE                             R10 R9
      149 GETIMPORT                        R11 K31 [plugin]
      151 MOVE                             R12 R7
      152 CALL                             R10 2 0
      153 RETURN                           R0 0
