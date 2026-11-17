PROTO_0:
        0 LOADK                            R3 K0 ["Localization"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Tools"]
        1 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["ToolTipMessage"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K4 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
       22 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K11 [game]
       32 LOADK                            R4 K12 ["RunService"]
       33 NAMECALL                         R2 R2 K13 ["GetService"]
       35 CALL                             R2 2 1
       36 GETIMPORT                        R3 K4 [require]
       38 GETTABLEKS                       R4 R0 K14 ["Packages"]
       40 GETTABLEKS                       R4 R4 K15 ["PluginLoader"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K16 ["PluginLoaderBuilder"]
       45 GETTABLEKS                       R5 R0 K6 ["Src"]
       47 GETTABLEKS                       R5 R5 K17 ["Resources"]
       49 GETTABLEKS                       R5 R5 K18 ["Localization"]
       51 GETTABLEKS                       R5 R5 K19 ["SourceStrings"]
       53 GETTABLEKS                       R6 R0 K6 ["Src"]
       55 GETTABLEKS                       R6 R6 K17 ["Resources"]
       57 GETTABLEKS                       R6 R6 K18 ["Localization"]
       59 GETTABLEKS                       R6 R6 K20 ["LocalizedStrings"]
       61 DUPTABLE                         R7 K32 [{["plugin"], ["pluginName"] = "LocalizationTools", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       62 GETIMPORT                        R8 K33 [plugin]
       64 SETTABLEKS                       R8 R7 K21 ["plugin"]
       66 SETTABLEKS                       R6 R7 K24 ["translationResourceTable"]
       68 SETTABLEKS                       R5 R7 K25 ["fallbackResourceTable"]
       70 DUPCLOSURE                       R8 K34 [PROTO_0]
       71 SETTABLEKS                       R8 R7 K29 ["getToolbarName"]
       73 DUPTABLE                         R8 K41 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://LocalizationTools", ["text"] = , ["enabled"]}]
       74 DUPCLOSURE                       R9 K42 [PROTO_1]
       75 SETTABLEKS                       R9 R8 K35 ["getName"]
       77 DUPCLOSURE                       R9 K43 [PROTO_2]
       78 SETTABLEKS                       R9 R8 K36 ["getDescription"]
       80 NAMECALL                         R9 R2 K44 ["IsEdit"]
       82 CALL                             R9 1 1
       83 SETTABLEKS                       R9 R8 K40 ["enabled"]
       85 SETTABLEKS                       R8 R7 K30 ["buttonInfo"]
       87 DUPTABLE                         R8 K49 [{["id"] = "LocalizationTools", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       88 GETIMPORT                        R9 K52 [DockWidgetPluginGuiInfo.new]
       90 GETIMPORT                        R10 K56 [Enum.InitialDockState.Left]
       92 LOADB                            R11 0
       93 LOADB                            R12 0
       94 LOADN                            R13 300
       95 LOADN                            R14 250
       96 LOADN                            R15 0
       97 LOADN                            R16 0
       98 CALL                             R9 7 1
       99 SETTABLEKS                       R9 R8 K46 ["dockWidgetPluginGuiInfo"]
      101 DUPCLOSURE                       R9 K57 [PROTO_3]
      102 SETTABLEKS                       R9 R8 K47 ["getDockTitle"]
      104 GETIMPORT                        R9 K60 [Enum.ZIndexBehavior.Sibling]
      106 SETTABLEKS                       R9 R8 K48 ["zIndexBehavior"]
      108 SETTABLEKS                       R8 R7 K31 ["dockWidgetInfo"]
      110 GETTABLEKS                       R8 R4 K61 ["build"]
      112 MOVE                             R9 R7
      113 CALL                             R8 1 1
      114 GETTABLEKS                       R9 R8 K62 ["pluginLoader"]
      116 NAMECALL                         R9 R9 K63 ["waitForUserInteraction"]
      118 CALL                             R9 1 1
      119 JUMPIF                           R9 ; [+1]
      120 RETURN                           R0 0
      121 GETIMPORT                        R10 K4 [require]
      123 GETIMPORT                        R11 K1 [script]
      125 GETTABLEKS                       R11 R11 K2 ["Parent"]
      127 GETTABLEKS                       R11 R11 K64 ["main"]
      129 CALL                             R10 1 1
      130 MOVE                             R11 R10
      131 GETIMPORT                        R12 K33 [plugin]
      133 MOVE                             R13 R8
      134 CALL                             R11 2 0
      135 RETURN                           R0 0
