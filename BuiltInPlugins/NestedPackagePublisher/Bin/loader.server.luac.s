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
       18 GETTABLEKS                       R2 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K8 ["launch"]
       25 LOADK                            R3 K9 ["NestedPackagePublisher"]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K11 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K1 [require]
       36 GETTABLEKS                       R3 R0 K10 ["Src"]
       38 GETTABLEKS                       R3 R3 K12 ["Util"]
       40 GETTABLEKS                       R3 R3 K13 ["shouldPluginRun"]
       42 CALL                             R2 1 1
       43 MOVE                             R3 R2
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+1]
       46 RETURN                           R0 0
       47 GETIMPORT                        R3 K1 [require]
       49 GETTABLEKS                       R4 R0 K6 ["Packages"]
       51 GETTABLEKS                       R4 R4 K14 ["PluginLoader"]
       53 CALL                             R3 1 1
       54 GETTABLEKS                       R4 R3 K15 ["PluginLoaderBuilder"]
       56 GETTABLEKS                       R5 R0 K10 ["Src"]
       58 GETTABLEKS                       R5 R5 K16 ["Resources"]
       60 GETTABLEKS                       R5 R5 K17 ["Localization"]
       62 GETTABLEKS                       R5 R5 K18 ["SourceStrings"]
       64 GETTABLEKS                       R6 R0 K10 ["Src"]
       66 GETTABLEKS                       R6 R6 K16 ["Resources"]
       68 GETTABLEKS                       R6 R6 K17 ["Localization"]
       70 GETTABLEKS                       R6 R6 K19 ["LocalizedStrings"]
       72 DUPTABLE                         R7 K30 [{["plugin"], ["pluginName"] = "NestedPackagePublisher", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       73 GETIMPORT                        R8 K31 [plugin]
       75 SETTABLEKS                       R8 R7 K20 ["plugin"]
       77 SETTABLEKS                       R6 R7 K22 ["translationResourceTable"]
       79 SETTABLEKS                       R5 R7 K23 ["fallbackResourceTable"]
       81 DUPCLOSURE                       R8 K32 [PROTO_0]
       82 SETTABLEKS                       R8 R7 K27 ["getToolbarName"]
       84 DUPTABLE                         R8 K40 [{["getName"], ["getDescription"], ["icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       85 DUPCLOSURE                       R9 K41 [PROTO_1]
       86 SETTABLEKS                       R9 R8 K33 ["getName"]
       88 DUPCLOSURE                       R9 K42 [PROTO_2]
       89 SETTABLEKS                       R9 R8 K34 ["getDescription"]
       91 SETTABLEKS                       R8 R7 K28 ["buttonInfo"]
       93 DUPTABLE                         R8 K47 [{["id"] = "NestedPackagePublisher", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       94 GETIMPORT                        R9 K50 [DockWidgetPluginGuiInfo.new]
       96 GETIMPORT                        R10 K54 [Enum.InitialDockState.Bottom]
       98 LOADB                            R11 0
       99 LOADB                            R12 0
      100 LOADN                            R13 640
      101 LOADN                            R14 480
      102 LOADN                            R15 250
      103 LOADN                            R16 200
      104 CALL                             R9 7 1
      105 SETTABLEKS                       R9 R8 K44 ["dockWidgetPluginGuiInfo"]
      107 DUPCLOSURE                       R9 K55 [PROTO_3]
      108 SETTABLEKS                       R9 R8 K45 ["getDockTitle"]
      110 GETIMPORT                        R9 K58 [Enum.ZIndexBehavior.Sibling]
      112 SETTABLEKS                       R9 R8 K46 ["zIndexBehavior"]
      114 SETTABLEKS                       R8 R7 K29 ["dockWidgetInfo"]
      116 GETTABLEKS                       R8 R4 K59 ["build"]
      118 MOVE                             R9 R7
      119 CALL                             R8 1 1
      120 GETTABLEKS                       R9 R8 K60 ["pluginLoader"]
      122 NAMECALL                         R9 R9 K61 ["waitForUserInteraction"]
      124 CALL                             R9 1 1
      125 JUMPIF                           R9 ; [+1]
      126 RETURN                           R0 0
      127 GETIMPORT                        R10 K1 [require]
      129 GETIMPORT                        R11 K3 [script]
      131 GETTABLEKS                       R11 R11 K4 ["Parent"]
      133 GETTABLEKS                       R11 R11 K62 ["main"]
      135 CALL                             R10 1 1
      136 MOVE                             R11 R10
      137 GETIMPORT                        R12 K31 [plugin]
      139 MOVE                             R13 R8
      140 CALL                             R11 2 0
      141 RETURN                           R0 0
